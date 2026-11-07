.class public Lcom/android/internal/widget/TextProgressBar;
.super Landroid/widget/RelativeLayout;
.source "TextProgressBar.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field static final blacklist CHRONOMETER_ID:I = 0x1020014

.field static final blacklist PROGRESSBAR_ID:I = 0x102000d

.field public static final blacklist TAG:Ljava/lang/String; = "TextProgressBar"


# instance fields
.field blacklist mChronometer:Landroid/widget/Chronometer;

.field blacklist mChronometerFollow:Z

.field blacklist mChronometerGravity:I

.field blacklist mDuration:I

.field blacklist mDurationBase:J

.field blacklist mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 86
    .local v0, "childId":I
    const v1, 0x1020014

    if-ne v0, v1, :cond_31

    instance-of v1, p1, Landroid/widget/Chronometer;

    if-eqz v1, :cond_31

    .line 87
    move-object v1, p1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 88
    iget-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 91
    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    iput-boolean v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 92
    iget-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->getGravity()I

    move-result v1

    const v2, 0x800007

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    goto :goto_3f

    .line 95
    :cond_31
    const v1, 0x102000d

    if-ne v0, v1, :cond_3f

    instance-of v1, p1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3f

    .line 96
    move-object v1, p1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 98
    :cond_3f
    :goto_3f
    return-void
.end method

.method public whitelist onChronometerTick(Landroid/widget/Chronometer;)V
    .registers 12
    .param p1, "chronometer"    # Landroid/widget/Chronometer;

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_81

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 140
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_13

    .line 141
    iget-object v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->stop()V

    .line 145
    :cond_13
    iget-wide v2, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    sub-long/2addr v2, v0

    long-to-int v2, v2

    .line 146
    .local v2, "remaining":I
    iget-object v3, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    iget v4, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 149
    iget-boolean v3, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    if-eqz v3, :cond_80

    .line 153
    iget-object v3, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v4

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    .line 155
    .local v4, "contentWidth":I
    iget-object v5, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v5

    mul-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 156
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    move-result v6

    div-int/2addr v5, v6

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    .line 159
    .local v5, "leadingEdge":I
    const/4 v6, 0x0

    .line 160
    .local v6, "adjustLeft":I
    iget-object v7, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v7}, Landroid/widget/Chronometer;->getWidth()I

    move-result v7

    .line 161
    .local v7, "textWidth":I
    iget v8, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    const v9, 0x800005

    if-ne v8, v9, :cond_58

    .line 162
    neg-int v6, v7

    goto :goto_60

    .line 163
    :cond_58
    iget v8, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_60

    .line 164
    div-int/lit8 v8, v7, 0x2

    neg-int v6, v8

    .line 168
    :cond_60
    :goto_60
    add-int/2addr v5, v6

    .line 169
    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int v8, v4, v8

    sub-int/2addr v8, v7

    .line 170
    .local v8, "rightLimit":I
    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ge v5, v9, :cond_6d

    .line 171
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_70

    .line 172
    :cond_6d
    if-le v5, v8, :cond_70

    .line 173
    move v5, v8

    .line 176
    :cond_70
    :goto_70
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v3, v9

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 180
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->requestLayout()V

    .line 183
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "contentWidth":I
    .end local v5    # "leadingEdge":I
    .end local v6    # "adjustLeft":I
    .end local v7    # "textWidth":I
    .end local v8    # "rightLimit":I
    :cond_80
    return-void

    .line 134
    .end local v0    # "now":J
    .end local v2    # "remaining":I
    :cond_81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting child ProgressBar with id \'android.R.id.progress\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setDurationBase(J)V
    .registers 5
    .param p1, "durationBase"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 113
    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    if-eqz v0, :cond_24

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    sub-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 122
    iget v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    if-gtz v0, :cond_1c

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 125
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 126
    return-void

    .line 116
    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting child ProgressBar with id \'android.R.id.progress\' and Chronometer id \'android.R.id.text1\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
