.class public Landroid/view/HapticScrollFeedbackProvider;
.super Ljava/lang/Object;
.source "HapticScrollFeedbackProvider.java"

# interfaces
.implements Landroid/view/ScrollFeedbackProvider;


# static fields
.field private static final blacklist INITIAL_END_OF_LIST_HAPTICS_ENABLED:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "HapticScrollFeedbackProvider"

.field private static final blacklist TICK_INTERVAL_NO_TICK:I


# instance fields
.field private blacklist mAxis:I

.field private blacklist mCanPlayLimitFeedback:Z

.field private blacklist mDeviceId:I

.field private blacklist mHapticScrollFeedbackEnabled:Z

.field private final blacklist mIsFromView:Z

.field private blacklist mSource:I

.field private blacklist mTickIntervalPixels:I

.field private blacklist mTotalScrollPixels:I

.field private final blacklist mView:Landroid/view/View;

.field private final blacklist mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/HapticScrollFeedbackProvider;-><init>(Landroid/view/View;Landroid/view/ViewConfiguration;Z)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;Landroid/view/ViewConfiguration;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewConfig"    # Landroid/view/ViewConfiguration;
    .param p3, "isFromView"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mDeviceId:I

    .line 54
    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mAxis:I

    .line 56
    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mSource:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    .line 60
    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    .line 61
    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    .line 62
    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    .line 72
    iput-object p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    .line 73
    iput-object p2, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 74
    iput-boolean p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mIsFromView:Z

    .line 75
    invoke-static {}, Landroid/view/flags/Flags;->dynamicViewRotaryHapticsConfiguration()Z

    move-result v0

    if-eqz v0, :cond_24

    if-nez p3, :cond_24

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->disableRotaryScrollFeedback()V

    .line 82
    :cond_24
    return-void
.end method

.method private blacklist maybeUpdateCurrentConfig(III)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "axis"    # I

    .line 152
    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mAxis:I

    if-ne v0, p3, :cond_c

    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mSource:I

    if-ne v0, p2, :cond_c

    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mDeviceId:I

    if-eq v0, p1, :cond_3b

    .line 153
    :cond_c
    iput p2, p0, Landroid/view/HapticScrollFeedbackProvider;->mSource:I

    .line 154
    iput p3, p0, Landroid/view/HapticScrollFeedbackProvider;->mAxis:I

    .line 155
    iput p1, p0, Landroid/view/HapticScrollFeedbackProvider;->mDeviceId:I

    .line 157
    invoke-static {}, Landroid/view/flags/Flags;->dynamicViewRotaryHapticsConfiguration()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mIsFromView:Z

    if-nez v0, :cond_2c

    const/high16 v0, 0x400000

    if-ne p2, v0, :cond_2c

    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 160
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->isViewBasedRotaryEncoderHapticScrollFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 161
    iput-boolean v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    .line 162
    return-void

    .line 165
    :cond_2c
    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 166
    invoke-virtual {v0, p1, p3, p2}, Landroid/view/ViewConfiguration;->isHapticScrollFeedbackEnabled(III)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    .line 167
    iput-boolean v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    .line 168
    iput v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->updateTickIntervals(III)V

    .line 171
    :cond_3b
    return-void
.end method

.method private blacklist updateTickIntervals(III)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "axis"    # I

    .line 174
    iget-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-eqz v0, :cond_b

    .line 175
    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v0, p1, p3, p2}, Landroid/view/ViewConfiguration;->getHapticScrollFeedbackTickInterval(III)I

    move-result v0

    goto :goto_c

    .line 176
    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    .line 177
    return-void
.end method


# virtual methods
.method public whitelist onScrollLimit(IIIZ)V
    .registers 8
    .param p1, "inputDeviceId"    # I
    .param p2, "source"    # I
    .param p3, "axis"    # I
    .param p4, "isStart"    # Z

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->maybeUpdateCurrentConfig(III)V

    .line 118
    iget-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-nez v0, :cond_8

    .line 119
    return-void

    .line 122
    :cond_8
    iget-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    if-nez v0, :cond_d

    .line 123
    return-void

    .line 125
    :cond_d
    invoke-static {}, Landroid/os/vibrator/Flags;->hapticFeedbackInputSourceCustomizationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-eqz v0, :cond_1c

    .line 126
    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/view/View;->performHapticFeedbackForInputDevice(IIII)V

    goto :goto_21

    .line 129
    :cond_1c
    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 132
    :goto_21
    iput-boolean v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    .line 133
    return-void
.end method

.method public whitelist onScrollProgress(IIII)V
    .registers 8
    .param p1, "inputDeviceId"    # I
    .param p2, "source"    # I
    .param p3, "axis"    # I
    .param p4, "deltaInPixels"    # I

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->maybeUpdateCurrentConfig(III)V

    .line 87
    iget-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-nez v0, :cond_8

    .line 88
    return-void

    .line 93
    :cond_8
    if-eqz p4, :cond_d

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    .line 97
    :cond_d
    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    if-nez v0, :cond_12

    .line 99
    return-void

    .line 102
    :cond_12
    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    add-int/2addr v0, p4

    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    .line 104
    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    if-lt v0, v1, :cond_3c

    .line 105
    iget v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    iget v1, p0, Landroid/view/HapticScrollFeedbackProvider;->mTickIntervalPixels:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mTotalScrollPixels:I

    .line 106
    invoke-static {}, Landroid/os/vibrator/Flags;->hapticFeedbackInputSourceCustomizationEnabled()Z

    move-result v0

    const/16 v1, 0x12

    if-eqz v0, :cond_37

    .line 107
    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/view/View;->performHapticFeedbackForInputDevice(IIII)V

    goto :goto_3c

    .line 110
    :cond_37
    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 113
    :cond_3c
    :goto_3c
    return-void
.end method

.method public whitelist onSnapToItem(III)V
    .registers 7
    .param p1, "inputDeviceId"    # I
    .param p2, "source"    # I
    .param p3, "axis"    # I

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/view/HapticScrollFeedbackProvider;->maybeUpdateCurrentConfig(III)V

    .line 138
    iget-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mHapticScrollFeedbackEnabled:Z

    if-nez v0, :cond_8

    .line 139
    return-void

    .line 141
    :cond_8
    invoke-static {}, Landroid/os/vibrator/Flags;->hapticFeedbackInputSourceCustomizationEnabled()Z

    move-result v0

    const/16 v1, 0x13

    if-eqz v0, :cond_17

    .line 142
    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/view/View;->performHapticFeedbackForInputDevice(IIII)V

    goto :goto_1c

    .line 146
    :cond_17
    iget-object v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 148
    :goto_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HapticScrollFeedbackProvider;->mCanPlayLimitFeedback:Z

    .line 149
    return-void
.end method
