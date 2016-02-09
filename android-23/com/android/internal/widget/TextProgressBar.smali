.class public Lcom/android/internal/widget/TextProgressBar;
.super Landroid/widget/RelativeLayout;
.source "TextProgressBar.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field static final CHRONOMETER_ID:I = 0x1020014

.field static final PROGRESSBAR_ID:I = 0x102000d

.field public static final TAG:Ljava/lang/String; = "TextProgressBar"


# instance fields
.field mChronometer:Landroid/widget/Chronometer;

.field mChronometerFollow:Z

.field mChronometerGravity:I

.field mDuration:I

.field mDurationBase:J

.field mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #@5
    .line 53
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@7
    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@9
    .line 56
    const-wide/16 v0, -0x1

    #@b
    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    #@d
    .line 57
    const/4 v0, -0x1

    #@e
    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    #@10
    .line 59
    iput-boolean v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    #@12
    .line 60
    iput v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    #@14
    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 53
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@7
    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@9
    .line 56
    const-wide/16 v0, -0x1

    #@b
    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    #@d
    .line 57
    const/4 v0, -0x1

    #@e
    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    #@10
    .line 59
    iput-boolean v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    #@12
    .line 60
    iput v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    #@14
    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    .line 53
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@7
    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@9
    .line 56
    const-wide/16 v0, -0x1

    #@b
    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    #@d
    .line 57
    const/4 v0, -0x1

    #@e
    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    #@10
    .line 59
    iput-boolean v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    #@12
    .line 60
    iput v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    #@14
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 53
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@7
    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@9
    .line 56
    const-wide/16 v0, -0x1

    #@b
    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    #@d
    .line 57
    const/4 v0, -0x1

    #@e
    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    #@10
    .line 59
    iput-boolean v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    #@12
    .line 60
    iput v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    #@14
    .line 62
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@6
    move-result v0

    #@7
    .line 86
    .local v0, "childId":I
    const v1, 0x1020014

    #@a
    if-ne v0, v1, :cond_2

    #@c
    instance-of v1, p1, Landroid/widget/Chronometer;

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 87
    check-cast p1, Landroid/widget/Chronometer;

    #@12
    .end local p1    # "child":Landroid/view/View;
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@14
    .line 88
    iget-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@16
    invoke-virtual {v1, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    #@19
    .line 91
    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@1b
    const/4 v2, -0x2

    #@1c
    if-ne v1, v2, :cond_1

    #@1e
    const/4 v1, 0x1

    #@1f
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    #@21
    .line 92
    iget-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@23
    invoke-virtual {v1}, Landroid/widget/Chronometer;->getGravity()I

    #@26
    move-result v1

    #@27
    .line 93
    const v2, 0x800007

    #@2a
    .line 92
    and-int/2addr v1, v2

    #@2b
    iput v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    #@2d
    .line 82
    :cond_0
    :goto_1
    return-void

    #@2e
    .line 91
    :cond_1
    const/4 v1, 0x0

    #@2f
    goto :goto_0

    #@30
    .line 95
    .restart local p1    # "child":Landroid/view/View;
    :cond_2
    const v1, 0x102000d

    #@33
    if-ne v0, v1, :cond_0

    #@35
    instance-of v1, p1, Landroid/widget/ProgressBar;

    #@37
    if-eqz v1, :cond_0

    #@39
    .line 96
    check-cast p1, Landroid/widget/ProgressBar;

    #@3b
    .end local p1    # "child":Landroid/view/View;
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@3d
    goto :goto_1
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 12
    .param p1, "chronometer"    # Landroid/widget/Chronometer;

    #@0
    .prologue
    .line 133
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@2
    if-nez v9, :cond_0

    #@4
    .line 134
    new-instance v9, Ljava/lang/RuntimeException;

    #@6
    .line 135
    const-string/jumbo v10, "Expecting child ProgressBar with id \'android.R.id.progress\'"

    #@9
    .line 134
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v9

    #@d
    .line 139
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10
    move-result-wide v4

    #@11
    .line 140
    .local v4, "now":J
    iget-wide v10, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    #@13
    cmp-long v9, v4, v10

    #@15
    if-ltz v9, :cond_1

    #@17
    .line 141
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@19
    invoke-virtual {v9}, Landroid/widget/Chronometer;->stop()V

    #@1c
    .line 145
    :cond_1
    iget-wide v10, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    #@1e
    sub-long/2addr v10, v4

    #@1f
    long-to-int v6, v10

    #@20
    .line 146
    .local v6, "remaining":I
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@22
    iget v10, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    #@24
    sub-int/2addr v10, v6

    #@25
    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@28
    .line 149
    iget-boolean v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    #@2a
    if-eqz v9, :cond_4

    #@2c
    .line 153
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@2e
    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    #@34
    .line 154
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@36
    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getWidth()I

    #@39
    move-result v9

    #@3a
    iget v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@3c
    iget v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@3e
    add-int/2addr v10, v11

    #@3f
    sub-int v1, v9, v10

    #@41
    .line 155
    .local v1, "contentWidth":I
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@43
    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getProgress()I

    #@46
    move-result v9

    #@47
    mul-int/2addr v9, v1

    #@48
    .line 156
    iget-object v10, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@4a
    invoke-virtual {v10}, Landroid/widget/ProgressBar;->getMax()I

    #@4d
    move-result v10

    #@4e
    .line 155
    div-int/2addr v9, v10

    #@4f
    .line 156
    iget v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@51
    .line 155
    add-int v2, v9, v10

    #@53
    .line 159
    .local v2, "leadingEdge":I
    const/4 v0, 0x0

    #@54
    .line 160
    .local v0, "adjustLeft":I
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@56
    invoke-virtual {v9}, Landroid/widget/Chronometer;->getWidth()I

    #@59
    move-result v8

    #@5a
    .line 161
    .local v8, "textWidth":I
    iget v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    #@5c
    const v10, 0x800005

    #@5f
    if-ne v9, v10, :cond_5

    #@61
    .line 162
    neg-int v0, v8

    #@62
    .line 168
    :cond_2
    :goto_0
    add-int/2addr v2, v0

    #@63
    .line 169
    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@65
    sub-int v9, v1, v9

    #@67
    sub-int v7, v9, v8

    #@69
    .line 170
    .local v7, "rightLimit":I
    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@6b
    if-ge v2, v9, :cond_6

    #@6d
    .line 171
    iget v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@6f
    .line 176
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@71
    invoke-virtual {v9}, Landroid/widget/Chronometer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@74
    move-result-object v3

    #@75
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    #@77
    .line 177
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@79
    .line 180
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@7b
    invoke-virtual {v9}, Landroid/widget/Chronometer;->requestLayout()V

    #@7e
    .line 132
    .end local v0    # "adjustLeft":I
    .end local v1    # "contentWidth":I
    .end local v2    # "leadingEdge":I
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "rightLimit":I
    .end local v8    # "textWidth":I
    :cond_4
    return-void

    #@7f
    .line 163
    .restart local v0    # "adjustLeft":I
    .restart local v1    # "contentWidth":I
    .restart local v2    # "leadingEdge":I
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8    # "textWidth":I
    :cond_5
    iget v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    #@81
    const/4 v10, 0x1

    #@82
    if-ne v9, v10, :cond_2

    #@84
    .line 164
    div-int/lit8 v9, v8, 0x2

    #@86
    neg-int v0, v9

    #@87
    goto :goto_0

    #@88
    .line 172
    .restart local v7    # "rightLimit":I
    :cond_6
    if-le v2, v7, :cond_3

    #@8a
    .line 173
    move v2, v7

    #@8b
    goto :goto_1
.end method

.method public setDurationBase(J)V
    .locals 3
    .param p1, "durationBase"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    #@2
    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@8
    if-nez v0, :cond_1

    #@a
    .line 116
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v1, "Expecting child ProgressBar with id \'android.R.id.progress\' and Chronometer id \'android.R.id.text1\'"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    #@15
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    #@18
    move-result-wide v0

    #@19
    sub-long v0, p1, v0

    #@1b
    long-to-int v0, v0

    #@1c
    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    #@1e
    .line 122
    iget v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    #@20
    if-gtz v0, :cond_2

    #@22
    .line 123
    const/4 v0, 0x1

    #@23
    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    #@25
    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    #@27
    iget v1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    #@29
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    #@2c
    .line 112
    return-void
.end method
