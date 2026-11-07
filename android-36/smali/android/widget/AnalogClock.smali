.class public Landroid/widget/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AnalogClock$TintInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AnalogClock"


# instance fields
.field private greylist-max-o mChanged:Z

.field private blacklist mClock:Ljava/time/Clock;

.field private blacklist mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

.field private greylist mDial:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDialHeight:I

.field private final blacklist mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private greylist-max-o mDialWidth:I

.field private greylist-max-o mHour:F

.field private greylist mHourHand:Landroid/graphics/drawable/Drawable;

.field private final blacklist mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private final greylist-max-o mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private greylist mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private final blacklist mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private greylist-max-o mMinutes:F

.field private blacklist mReceiverAttached:Z

.field private blacklist mSecondHand:Landroid/graphics/drawable/Drawable;

.field private final blacklist mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private blacklist mSeconds:F

.field private final blacklist mSecondsHandFps:I

.field private final blacklist mTick:Ljava/lang/Runnable;

.field private blacklist mTimeZone:Ljava/time/ZoneId;

.field private blacklist mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClock(Landroid/widget/AnalogClock;)Ljava/time/Clock;
    .registers 1

    iget-object p0, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecondHand(Landroid/widget/AnalogClock;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecondsHandFps(Landroid/widget/AnalogClock;)I
    .registers 1

    iget p0, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTick(Landroid/widget/AnalogClock;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisible(Landroid/widget/AnalogClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateClock(Landroid/widget/AnalogClock;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AnalogClock;->createClock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTimeChanged(Landroid/widget/AnalogClock;Ljava/time/LocalTime;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AnalogClock;->onTimeChanged(Ljava/time/LocalTime;J)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 115
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    new-instance v0, Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock-IA;)V

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    .line 84
    new-instance v0, Landroid/widget/AnalogClock$TintInfo;

    invoke-direct {v0, p0, v1}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock-IA;)V

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    .line 87
    new-instance v0, Landroid/widget/AnalogClock$TintInfo;

    invoke-direct {v0, p0, v1}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock-IA;)V

    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    .line 90
    new-instance v0, Landroid/widget/AnalogClock$TintInfo;

    invoke-direct {v0, p0, v1}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock-IA;)V

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    .line 791
    new-instance v0, Landroid/widget/AnalogClock$1;

    invoke-direct {v0, p0}, Landroid/widget/AnalogClock$1;-><init>(Landroid/widget/AnalogClock;)V

    iput-object v0, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 804
    new-instance v0, Landroid/widget/AnalogClock$2;

    invoke-direct {v0, p0}, Landroid/widget/AnalogClock$2;-><init>(Landroid/widget/AnalogClock;)V

    iput-object v0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Landroid/widget/TextClock$ClockEventDelegate;

    invoke-direct {v0, p1}, Landroid/widget/TextClock$ClockEventDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AnalogClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    .line 118
    nop

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    const v2, 0x10e0053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 118
    const-string/jumbo v2, "widget__analog_clock_seconds_hand_fps"

    invoke-static {v2, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    .line 124
    sget-object v0, Lcom/android/internal/R$styleable;->AnalogClock:[I

    move-object/from16 v5, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual {p1, v5, v0, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 126
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->AnalogClock:[I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/widget/AnalogClock;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_71

    .line 131
    const v0, 0x10802e5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 134
    :cond_71
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 136
    .local v0, "dialTintList":Landroid/content/res/ColorStateList;
    const/4 v4, 0x1

    if-eqz v0, :cond_81

    .line 137
    iget-object v5, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v0, v5, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 138
    iget-object v5, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v4, v5, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    .line 140
    :cond_81
    nop

    .line 141
    const/4 v5, 0x6

    const/4 v7, -0x1

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 140
    invoke-static {v5, v1}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v5

    .line 143
    .local v5, "dialTintMode":Landroid/graphics/BlendMode;
    if-eqz v5, :cond_96

    .line 144
    iget-object v8, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v5, v8, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    .line 145
    iget-object v8, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v4, v8, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    .line 147
    :cond_96
    iget-object v8, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v8, v8, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v8, :cond_a2

    iget-object v8, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v8, v8, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v8, :cond_ac

    .line 148
    :cond_a2
    iget-object v8, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v9, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 151
    :cond_ac
    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 152
    iget-object v8, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_bf

    .line 153
    const v8, 0x10802e6

    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 156
    :cond_bf
    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 158
    .local v8, "hourHandTintList":Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_ce

    .line 159
    iget-object v9, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v8, v9, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 160
    iget-object v9, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v4, v9, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    .line 162
    :cond_ce
    nop

    .line 163
    const/16 v9, 0x8

    invoke-virtual {v6, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 162
    invoke-static {v9, v1}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v9

    .line 165
    .local v9, "hourHandTintMode":Landroid/graphics/BlendMode;
    if-eqz v9, :cond_e3

    .line 166
    iget-object v10, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v9, v10, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    .line 167
    iget-object v10, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v4, v10, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    .line 169
    :cond_e3
    iget-object v10, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v10, v10, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v10, :cond_ef

    iget-object v10, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v10, v10, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v10, :cond_f9

    .line 170
    :cond_ef
    iget-object v10, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v11, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 173
    :cond_f9
    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 174
    iget-object v10, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_10d

    .line 175
    const v10, 0x10802e7

    invoke-virtual {p1, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 178
    :cond_10d
    const/16 v10, 0x9

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 180
    .local v10, "minuteHandTintList":Landroid/content/res/ColorStateList;
    if-eqz v10, :cond_11d

    .line 181
    iget-object v11, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v10, v11, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 182
    iget-object v11, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v4, v11, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    .line 184
    :cond_11d
    nop

    .line 185
    const/16 v11, 0xa

    invoke-virtual {v6, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 184
    invoke-static {v11, v1}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v11

    .line 187
    .local v11, "minuteHandTintMode":Landroid/graphics/BlendMode;
    if-eqz v11, :cond_132

    .line 188
    iget-object v12, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v11, v12, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    .line 189
    iget-object v12, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v4, v12, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    .line 191
    :cond_132
    iget-object v12, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v12, v12, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v12, :cond_13e

    iget-object v12, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v12, v12, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v12, :cond_148

    .line 192
    :cond_13e
    iget-object v12, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v13, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v13}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 195
    :cond_148
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 197
    const/16 v12, 0xb

    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 199
    .local v12, "secondHandTintList":Landroid/content/res/ColorStateList;
    if-eqz v12, :cond_15f

    .line 200
    iget-object v13, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v12, v13, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 201
    iget-object v13, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v4, v13, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    .line 203
    :cond_15f
    nop

    .line 204
    const/16 v13, 0xc

    invoke-virtual {v6, v13, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 203
    invoke-static {v7, v1}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v1

    .line 206
    .local v1, "secondHandTintMode":Landroid/graphics/BlendMode;
    if-eqz v1, :cond_174

    .line 207
    iget-object v7, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v1, v7, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    .line 208
    iget-object v7, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v4, v7, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    .line 210
    :cond_174
    iget-object v4, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v4, v4, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v4, :cond_180

    iget-object v4, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v4, v4, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v4, :cond_18a

    .line 211
    :cond_180
    iget-object v4, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v7, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 214
    :cond_18a
    const/4 v4, 0x3

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/AnalogClock;->toZoneId(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    .line 215
    invoke-direct {p0}, Landroid/widget/AnalogClock;->createClock()V

    .line 217
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    iget-object v4, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    .line 220
    iget-object v4, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    .line 221
    return-void
.end method

.method private blacklist createClock()V
    .registers 3

    .line 859
    iget-object v0, p0, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    .line 860
    .local v0, "zoneId":Ljava/time/ZoneId;
    if-nez v0, :cond_b

    .line 861
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    goto :goto_11

    .line 863
    :cond_b
    invoke-static {v0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    .line 865
    :goto_11
    return-void
.end method

.method private blacklist onInvisible()V
    .registers 2

    .line 635
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    if-eqz v0, :cond_c

    .line 636
    iget-object v0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AnalogClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    .line 639
    :cond_c
    return-void
.end method

.method private blacklist onTimeChanged(Ljava/time/LocalTime;J)V
    .registers 10
    .param p1, "localTime"    # Ljava/time/LocalTime;
    .param p2, "nowMillis"    # J

    .line 768
    iget v0, p0, Landroid/widget/AnalogClock;->mHour:F

    .line 769
    .local v0, "previousHour":F
    iget v1, p0, Landroid/widget/AnalogClock;->mMinutes:F

    .line 771
    .local v1, "previousMinutes":F
    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 776
    .local v2, "rawSeconds":F
    nop

    .line 777
    iget v3, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    if-gtz v3, :cond_1a

    .line 778
    move v3, v2

    goto :goto_27

    .line 779
    :cond_1a
    iget v3, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    :goto_27
    iput v3, p0, Landroid/widget/AnalogClock;->mSeconds:F

    .line 780
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AnalogClock;->mSeconds:F

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClock;->mMinutes:F

    .line 781
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClock;->mHour:F

    .line 782
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 785
    float-to-int v3, v0

    iget v4, p0, Landroid/widget/AnalogClock;->mHour:F

    float-to-int v4, v4

    if-ne v3, v4, :cond_50

    float-to-int v3, v1

    iget v4, p0, Landroid/widget/AnalogClock;->mMinutes:F

    float-to-int v4, v4

    if-eq v3, v4, :cond_53

    .line 786
    :cond_50
    invoke-direct {p0, p2, p3}, Landroid/widget/AnalogClock;->updateContentDescription(J)V

    .line 788
    :cond_53
    return-void
.end method

.method private blacklist onVisible()V
    .registers 2

    .line 627
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    if-nez v0, :cond_c

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    .line 629
    iget-object v0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 632
    :cond_c
    return-void
.end method

.method private static blacklist toZoneId(Ljava/lang/String;)Ljava/time/ZoneId;
    .registers 5
    .param p0, "timeZone"    # Ljava/lang/String;

    .line 887
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 888
    return-object v0

    .line 892
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0
    :try_end_8
    .catch Ljava/time/DateTimeException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 893
    :catch_9
    move-exception v1

    .line 894
    .local v1, "e":Ljava/time/DateTimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse time zone from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnalogClock"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    return-object v0
.end method

.method private blacklist updateContentDescription(J)V
    .registers 12
    .param p1, "timeMillis"    # J

    .line 868
    const/16 v0, 0x81

    .line 869
    .local v0, "flags":I
    iget-object v1, p0, Landroid/widget/AnalogClock;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/Formatter;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 872
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 876
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getTimeZone()Ljava/lang/String;

    move-result-object v8

    .line 870
    const/16 v7, 0x81

    move-wide v5, p1

    move-wide v3, p1

    .end local p1    # "timeMillis":J
    .local v3, "timeMillis":J
    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p1

    .line 877
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 878
    .local p1, "contentDescription":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/widget/AnalogClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 879
    return-void
.end method


# virtual methods
.method public whitelist getDialTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 296
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getDialTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getHourHandTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getHourHandTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getMinuteHandTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 450
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getMinuteHandTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 419
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getSecondHandTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 533
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getSecondHandTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 502
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getTimeZone()Ljava/lang/String;
    .registers 3

    .line 549
    iget-object v0, p0, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    .line 550
    .local v0, "zoneId":Ljava/time/ZoneId;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1
.end method

.method protected blacklist now()Ljava/time/Instant;
    .registers 2

    .line 756
    iget-object v0, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 589
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 591
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    if-nez v0, :cond_15

    .line 592
    iget-object v0, p0, Landroid/widget/AnalogClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock$ClockEventDelegate;->registerTimeChangeReceiver(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    .line 600
    :cond_15
    invoke-direct {p0}, Landroid/widget/AnalogClock;->createClock()V

    .line 603
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    .line 604
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 608
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    if-eqz v0, :cond_e

    .line 609
    iget-object v0, p0, Landroid/widget/AnalogClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;->unregisterTimeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    .line 612
    :cond_e
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 613
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 676
    iget-boolean v2, v0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 677
    .local v2, "changed":Z
    if-eqz v2, :cond_e

    .line 678
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 681
    :cond_e
    iget v3, v0, Landroid/widget/AnalogClock;->mRight:I

    iget v4, v0, Landroid/widget/AnalogClock;->mLeft:I

    sub-int/2addr v3, v4

    .line 682
    .local v3, "availableWidth":I
    iget v4, v0, Landroid/widget/AnalogClock;->mBottom:I

    iget v5, v0, Landroid/widget/AnalogClock;->mTop:I

    sub-int/2addr v4, v5

    .line 684
    .local v4, "availableHeight":I
    div-int/lit8 v5, v3, 0x2

    .line 685
    .local v5, "x":I
    div-int/lit8 v6, v4, 0x2

    .line 687
    .local v6, "y":I
    iget-object v7, v0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 688
    .local v7, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 689
    .local v8, "w":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 691
    .local v9, "h":I
    const/4 v10, 0x0

    .line 693
    .local v10, "scaled":Z
    if-lt v3, v8, :cond_2b

    if-ge v4, v9, :cond_3e

    .line 694
    :cond_2b
    const/4 v10, 0x1

    .line 695
    int-to-float v11, v3

    int-to-float v12, v8

    div-float/2addr v11, v12

    int-to-float v12, v4

    int-to-float v13, v9

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 697
    .local v11, "scale":F
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 698
    int-to-float v12, v5

    int-to-float v13, v6

    invoke-virtual {v1, v11, v11, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 701
    .end local v11    # "scale":F
    :cond_3e
    if-eqz v2, :cond_51

    .line 702
    div-int/lit8 v11, v8, 0x2

    sub-int v11, v5, v11

    div-int/lit8 v12, v9, 0x2

    sub-int v12, v6, v12

    div-int/lit8 v13, v8, 0x2

    add-int/2addr v13, v5

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v6

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 704
    :cond_51
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 706
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 707
    iget v11, v0, Landroid/widget/AnalogClock;->mHour:F

    const/high16 v12, 0x41400000    # 12.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x43b40000    # 360.0f

    mul-float/2addr v11, v12

    int-to-float v13, v5

    int-to-float v14, v6

    invoke-virtual {v1, v11, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 708
    iget-object v11, v0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 709
    .local v11, "hourHand":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_85

    .line 710
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 711
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 712
    div-int/lit8 v13, v8, 0x2

    sub-int v13, v5, v13

    div-int/lit8 v14, v9, 0x2

    sub-int v14, v6, v14

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v5

    div-int/lit8 v16, v9, 0x2

    move/from16 v17, v12

    add-int v12, v6, v16

    invoke-virtual {v11, v13, v14, v15, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_87

    .line 709
    :cond_85
    move/from16 v17, v12

    .line 714
    :goto_87
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 715
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 717
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 718
    iget v12, v0, Landroid/widget/AnalogClock;->mMinutes:F

    const/high16 v13, 0x42700000    # 60.0f

    div-float/2addr v12, v13

    mul-float v12, v12, v17

    int-to-float v14, v5

    int-to-float v15, v6

    invoke-virtual {v1, v12, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 720
    iget-object v12, v0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 721
    .local v12, "minuteHand":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_c0

    .line 722
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 723
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 724
    div-int/lit8 v14, v8, 0x2

    sub-int v14, v5, v14

    div-int/lit8 v15, v9, 0x2

    sub-int v15, v6, v15

    div-int/lit8 v16, v8, 0x2

    move/from16 v18, v13

    add-int v13, v5, v16

    div-int/lit8 v16, v9, 0x2

    move/from16 v19, v2

    .end local v2    # "changed":Z
    .local v19, "changed":Z
    add-int v2, v6, v16

    invoke-virtual {v12, v14, v15, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_c4

    .line 721
    .end local v19    # "changed":Z
    .restart local v2    # "changed":Z
    :cond_c0
    move/from16 v19, v2

    move/from16 v18, v13

    .line 726
    .end local v2    # "changed":Z
    .restart local v19    # "changed":Z
    :goto_c4
    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 727
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 729
    iget-object v2, v0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 730
    .local v2, "secondHand":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_102

    iget v13, v0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    if-lez v13, :cond_102

    .line 731
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 732
    iget v13, v0, Landroid/widget/AnalogClock;->mSeconds:F

    div-float v13, v13, v18

    mul-float v13, v13, v17

    int-to-float v14, v5

    int-to-float v15, v6

    invoke-virtual {v1, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 734
    if-eqz v19, :cond_fc

    .line 735
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 736
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 737
    div-int/lit8 v13, v8, 0x2

    sub-int v13, v5, v13

    div-int/lit8 v14, v9, 0x2

    sub-int v14, v6, v14

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v5

    div-int/lit8 v16, v9, 0x2

    add-int v0, v6, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 739
    :cond_fc
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 740
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 743
    :cond_102
    if-eqz v10, :cond_107

    .line 744
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 746
    :cond_107
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 644
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 645
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 646
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 647
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 649
    .local v3, "heightSize":I
    const/high16 v4, 0x3f800000    # 1.0f

    .line 650
    .local v4, "hScale":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 652
    .local v5, "vScale":F
    if-eqz v0, :cond_20

    iget v6, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    if-ge v1, v6, :cond_20

    .line 653
    int-to-float v6, v1

    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 656
    :cond_20
    if-eqz v2, :cond_2c

    iget v6, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    if-ge v3, v6, :cond_2c

    .line 657
    int-to-float v6, v3

    iget v7, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 660
    :cond_2c
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 662
    .local v6, "scale":F
    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    move-result v7

    iget v9, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-int v9, v9

    .line 663
    invoke-static {v9, p2, v8}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    move-result v8

    .line 662
    invoke-virtual {p0, v7, v8}, Landroid/widget/AnalogClock;->setMeasuredDimension(II)V

    .line 664
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 668
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 670
    return-void
.end method

.method protected greylist-max-o onTimeChanged()V
    .registers 5

    .line 763
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->now()Ljava/time/Instant;

    move-result-object v0

    .line 764
    .local v0, "now":Ljava/time/Instant;
    iget-object v1, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/AnalogClock;->onTimeChanged(Ljava/time/LocalTime;J)V

    .line 765
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .registers 2
    .param p1, "isVisible"    # Z

    .line 578
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 580
    if-eqz p1, :cond_9

    .line 581
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onVisible()V

    goto :goto_c

    .line 583
    :cond_9
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onInvisible()V

    .line 585
    :goto_c
    return-void
.end method

.method public blacklist setClockEventDelegate(Landroid/widget/TextClock$ClockEventDelegate;)V
    .registers 4
    .param p1, "delegate"    # Landroid/widget/TextClock$ClockEventDelegate;

    .line 622
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Clock events already registered"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 623
    iput-object p1, p0, Landroid/widget/AnalogClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    .line 624
    return-void
.end method

.method public whitelist setDial(Landroid/graphics/drawable/Icon;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 226
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    .line 228
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    .line 229
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_30

    .line 230
    :cond_26
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 233
    :cond_30
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 234
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    .line 235
    return-void
.end method

.method public whitelist setDialTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 282
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    .line 283
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    .line 285
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 286
    return-void
.end method

.method public whitelist setDialTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 252
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 253
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    .line 255
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 256
    return-void
.end method

.method public whitelist setHourHand(Landroid/graphics/drawable/Icon;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 302
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 303
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_20

    .line 304
    :cond_16
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 307
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 308
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    .line 309
    return-void
.end method

.method public whitelist setHourHandTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 358
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    .line 359
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    .line 361
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 362
    return-void
.end method

.method public whitelist setHourHandTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 327
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    .line 329
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 330
    return-void
.end method

.method public whitelist setMinuteHand(Landroid/graphics/drawable/Icon;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 379
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 380
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_20

    .line 381
    :cond_16
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 384
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 385
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    .line 386
    return-void
.end method

.method public whitelist setMinuteHandTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 435
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    .line 436
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    .line 438
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 439
    return-void
.end method

.method public whitelist setMinuteHandTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 403
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 404
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    .line 406
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 407
    return-void
.end method

.method public whitelist setSecondHand(Landroid/graphics/drawable/Icon;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 459
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 460
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_24

    .line 461
    :cond_1a
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 465
    :cond_24
    iget-object v0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 468
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    .line 469
    return-void
.end method

.method public whitelist setSecondHandTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 518
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    .line 519
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    .line 521
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 522
    return-void
.end method

.method public whitelist setSecondHandTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 486
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 487
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    .line 489
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 490
    return-void
.end method

.method public whitelist setTimeZone(Ljava/lang/String;)V
    .registers 3
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 570
    invoke-static {p1}, Landroid/widget/AnalogClock;->toZoneId(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    .line 572
    invoke-direct {p0}, Landroid/widget/AnalogClock;->createClock()V

    .line 573
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    .line 574
    return-void
.end method
