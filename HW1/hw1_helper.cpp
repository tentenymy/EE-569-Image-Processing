//
// Created by Maggie on 9/5/15.
//

#include "hw1_helper.h"

using namespace std;

Info::Info()
{
    filename = "the_starry_night.raw";
    byteperpixel = DEFAULTBYTE;
    width = DEFAULTSIZE;
    height = DEFAULTSIZE;
    if (!(file = fopen(filename, "rb")))
    {
        cout << "Cannot open file: " << filename <<endl;
        exit(1);
    }
}

Info::Info(const char* new_filename, int new_byteperpixel, int new_weight, int new_height)
{
    filename = new_filename;
    byteperpixel = new_byteperpixel;
    width = new_weight;
    height = new_height;
    if (filename == NULL)
    {
        cout << "Filename is invalid" << endl;
        exit(1);
    }
    if (byteperpixel <= 0 || byteperpixel > MAXBYTE)
    {
        cout << "Byte per pixel is invalid" << endl;
        exit(1);
    }
    if (width <= 0 || width > MAXSIZE || height <= 0 || height > MAXSIZE)
    {
        cout << "width or height is invalid" << endl;
        exit(1);
    }
    if (!(file = fopen(filename, "rb")))
    {
        cout << "Cannot open file: " << filename <<endl;
        exit(1);
    }
}

// print the information for me.
void Info::Info_Print()
{
    cout << "Filename: " << filename << endl;
    cout << "width: " << width << endl;
    cout << "Height: " << height << endl;
    cout << "Byte per pixel: " << byteperpixel << endl;
}



void Image_Print_By_Interger(unsigned char *pt_image, Info *pt_info, string filename)
{
    //Usage: Image_Print_By_Interger(&image_data[0][0][0], &info, "image_print_by_interger.txt");
    Check_Debug();
    ofstream fout;
    fout.open(filename);
    for(int i = 0; i < pt_info->width; i++)
    {
        fout << "ROW" << i << ": ";
        for (int j = 0; j < pt_info->height; j++)
        {
            for(int k = 0; k < pt_info->byteperpixel; k++)
            {
                fout << (int)*pt_image++ << " ";
            }
        }
        fout << endl;
        fout << endl;
    }
    fout.close();
}

void Image_Plot_Line(short * pt_line, int size, string filename)
{
    Check_Debug();
    int max = -1;
    int min = 1000;
    int total = 0;
    double average = 0;
    int color_occur_times[COLORSIZE] = {};
    int temp = 0;

    int color_per_group = (int)ceil(COLORSIZE/(double)PLOT_X_SIZE);
    int color_plot_times[PLOT_X_SIZE] = {};
    int *pt_color_occur_times = &color_occur_times[0];

    for(int i = 0; i <  size; i++)
    {
        temp = *pt_line++;
        color_occur_times[temp]++;
        if(temp > max)
        {
            max = temp;
        }
        if(temp < min)
        {
            min = temp;
        }
        total += temp;
    }
    average = total/(double)size;

    for(int i = 0; i < PLOT_X_SIZE; i++)
    {
        for (int j = 0; j < color_per_group; j++)
        {
            color_plot_times[i] += *pt_color_occur_times++;
        }
    }

    ofstream fout;
    fout.open(filename);
    fout << "Max: " << max << " Min: " << min << endl;
    fout << "Average: " << average << endl;
    fout << "Size: " << size << endl;
    fout << "PLOT: \t" << "0              " << PLOT_Y_SIZE * 14 << endl;
    for(int i = 0; i < PLOT_X_SIZE; i++)
    {
        fout << i * color_per_group << ": \t";
        color_plot_times[i] = color_plot_times[i]/PLOT_Y_SIZE;
        for(int j = 0; j < color_plot_times[i]; j++)
        {
            fout << "*";
        }
        fout << endl;
    }
    fout << endl;
    fout << endl;
    fout << endl;
    fout.close();
}

void Check_Debug()
{
    // Usage: Check_Debug();
    if (DEBUG == 0)
    {
        cout << "DEBUG" << endl;
        exit(1);
    }
}

// Re-write if have time OMG TOO LONG;
void Image_Plot_All_Line(unsigned char *pt_image, Info *pt_info, string filename)
{
    // Usage: Image_Plot_All_Line(&image_data[0][0][0], &info, "image_plot_all_line.txt");
    Check_Debug();
    cout << "Image_Plot_All_Line() begin" << endl;

    // 1. Get each color line
    short redline[pt_info->width * pt_info->height];
    short greenline[pt_info->width * pt_info->height];
    short blueline[pt_info->width * pt_info->height];

    for(int i = 0; i < pt_info->width; i++)
    {
        for (int j = 0; j < pt_info->height; j++)
        {
            redline[i * pt_info->width + j] = (short)*pt_image++;
            greenline[i * pt_info->width + j] = (short)*pt_image++;
            blueline[i * pt_info->width + j] = (short)*pt_image++;
        }
    }

    // 2. Set all the parameters
    // raw data
    short * pt_redline = redline;
    short * pt_greenline  = greenline;
    short * pt_blueline = blueline;
    int size = pt_info->width * pt_info->height;

    // for statistics
    int max = -1;
    int min = 1000;
    int total = 0;
    double average = 0;
    int temp = 0;

    // for plot
    int redcolor_occur_times[COLORSIZE] = {}; // 256 groups
    int redcolor_plot_times[PLOT_X_SIZE] = {}; // turn to plot 32 groups
    int *pt_redcolor_occur_times = &redcolor_occur_times[0];
    int greencolor_occur_times[COLORSIZE] = {};
    int greencolor_plot_times[PLOT_X_SIZE] = {};
    int *pt_greencolor_occur_times = &greencolor_occur_times[0];
    int bluecolor_occur_times[COLORSIZE] = {};
    int bluecolor_plot_times[PLOT_X_SIZE] = {};
    int *pt_bluecolor_occur_times = &bluecolor_occur_times[0];
    int color_per_group = (int)ceil(COLORSIZE/(double)PLOT_X_SIZE);

    // for file
    ofstream fout;
    fout.open(filename);

    // 3. Red begin to calculate and write in file
    // change to times * 256 and calculate max, min, total, avg
    for(int i = 0; i < size; i++)
    {
        temp = *pt_redline++;
        redcolor_occur_times[temp]++;
        if(temp > max)
            max = temp;
        if(temp < min)
            min = temp;
        total += temp;
    }
    average = total/(double)size;

    // change to times * PLOT_X_SIZE
    for(int i = 0; i < PLOT_X_SIZE; i++)
    {
        for (int j = 0; j < color_per_group; j++)
            redcolor_plot_times[i] += *pt_redcolor_occur_times++;
    }

    // write to file
    fout << "------------------------- RED -------------------------" << endl;
    fout << "Max: " << max << " Min: " << min << " Average: " << average << " Size: " << size << endl;
    for(int i = 0; i < PLOT_X_SIZE; i++)
    {
        fout << i * color_per_group << ": \t";
        redcolor_plot_times[i] = redcolor_plot_times[i]/PLOT_Y_SIZE;
        for(int j = 0; j < redcolor_plot_times[i]; j++)
            fout << "*";
        fout << endl;
    }

    // 4. Green begin to calculate and write in file
    // reset the parameter
    max = -1;
    min = 1000;
    total = 0;
    average = 0;

    // change to times * 256 and calculate max, min, total, avg
    for(int i = 0; i <  size; i++)
    {
        temp = *pt_greenline++;
        greencolor_occur_times[temp]++;
        if(temp > max)
            max = temp;
        if(temp < min)
            min = temp;
        total += temp;
    }
    average = total/(double)size;

    // change to times * PLOT_X_SIZE
    for(int i = 0; i < PLOT_X_SIZE; i++)
    {
        for (int j = 0; j < color_per_group; j++)
            greencolor_plot_times[i] += *pt_greencolor_occur_times++;
    }

    // write to file
    fout << "------------------------- GREEN -------------------------" << endl;
    fout << "Max: " << max << " Min: " << min << " Average: " << average << " Size: " << size << endl;
    for(int i = 0; i < PLOT_X_SIZE; i++)
    {
        fout << i * color_per_group << ": \t";
        greencolor_plot_times[i] = greencolor_plot_times[i]/PLOT_Y_SIZE;
        for(int j = 0; j < greencolor_plot_times[i]; j++)
            fout << "*";
        fout << endl;
    }

    // 5. Blue begin to calculate and write in file
    // reset the parameter
    max = -1;
    min = 1000;
    total = 0;
    average = 0;

    // change to times * 256 and calculate max, min, total, avg
    for(int i = 0; i <  size; i++)
    {
        temp = *pt_blueline++;
        bluecolor_occur_times[temp]++;
        if(temp > max)
            max = temp;
        if(temp < min)
            min = temp;
        total += temp;
    }
    average = total/(double)size;

    // change to times * PLOT_X_SIZE
    for(int i = 0; i < PLOT_X_SIZE; i++)
    {
        for (int j = 0; j < color_per_group; j++)
            bluecolor_plot_times[i] += *pt_bluecolor_occur_times++;
    }

    // write to file
    fout << "------------------------- BLUE -------------------------" << endl;
    fout << "Max: " << max << " Min: " << min << " Average: " << average << " Size: " << size << endl;
    for(int i = 0; i < PLOT_X_SIZE; i++)
    {
        fout << i * color_per_group << ": \t";
        bluecolor_plot_times[i] = bluecolor_plot_times[i]/PLOT_Y_SIZE;
        for(int j = 0; j < bluecolor_plot_times[i]; j++)
            fout << "*";
        fout << endl;
    }

    // 6. Close the file
    fout.close();
}
