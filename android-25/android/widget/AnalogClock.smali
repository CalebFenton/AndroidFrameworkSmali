.class public Landroid/widget/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AnalogClock$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F


# direct methods
.method static synthetic -set0(Landroid/widget/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/AnalogClock;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 71
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
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 252
    new-instance v2, Landroid/widget/AnalogClock$1;

    #@5
    invoke-direct {v2, p0}, Landroid/widget/AnalogClock$1;-><init>(Landroid/widget/AnalogClock;)V

    #@8
    iput-object v2, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@a
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    .line 80
    .local v1, "r":Landroid/content/res/Resources;
    sget-object v2, Lcom/android/internal/R$styleable;->AnalogClock:[I

    #@10
    .line 79
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    #@15
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    #@1b
    .line 83
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    #@1d
    if-nez v2, :cond_0

    #@1f
    .line 84
    const v2, 0x1080244

    #@22
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    #@28
    .line 87
    :cond_0
    const/4 v2, 0x1

    #@29
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    #@2f
    .line 88
    iget-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    #@31
    if-nez v2, :cond_1

    #@33
    .line 89
    const v2, 0x1080245

    #@36
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@39
    move-result-object v2

    #@3a
    iput-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    #@3c
    .line 92
    :cond_1
    const/4 v2, 0x2

    #@3d
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@40
    move-result-object v2

    #@41
    iput-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    #@43
    .line 93
    iget-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    #@45
    if-nez v2, :cond_2

    #@47
    .line 94
    const v2, 0x1080246

    #@4a
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@4d
    move-result-object v2

    #@4e
    iput-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    #@50
    .line 97
    :cond_2
    new-instance v2, Landroid/text/format/Time;

    #@52
    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    #@55
    iput-object v2, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    #@57
    .line 99
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    #@59
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5c
    move-result v2

    #@5d
    iput v2, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    #@5f
    .line 100
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    #@61
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@64
    move-result v2

    #@65
    iput v2, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    #@67
    .line 75
    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    #@0
    .prologue
    const/high16 v5, 0x42700000    # 60.0f

    #@2
    .line 239
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    #@4
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    #@7
    .line 241
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    #@9
    iget v0, v3, Landroid/text/format/Time;->hour:I

    #@b
    .line 242
    .local v0, "hour":I
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    #@d
    iget v1, v3, Landroid/text/format/Time;->minute:I

    #@f
    .line 243
    .local v1, "minute":I
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    #@11
    iget v2, v3, Landroid/text/format/Time;->second:I

    #@13
    .line 245
    .local v2, "second":I
    int-to-float v3, v1

    #@14
    int-to-float v4, v2

    #@15
    div-float/2addr v4, v5

    #@16
    add-float/2addr v3, v4

    #@17
    iput v3, p0, Landroid/widget/AnalogClock;->mMinutes:F

    #@19
    .line 246
    int-to-float v3, v0

    #@1a
    iget v4, p0, Landroid/widget/AnalogClock;->mMinutes:F

    #@1c
    div-float/2addr v4, v5

    #@1d
    add-float/2addr v3, v4

    #@1e
    iput v3, p0, Landroid/widget/AnalogClock;->mHour:F

    #@20
    .line 247
    const/4 v3, 0x1

    #@21
    iput-boolean v3, p0, Landroid/widget/AnalogClock;->mChanged:Z

    #@23
    .line 249
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    #@25
    invoke-direct {p0, v3}, Landroid/widget/AnalogClock;->updateContentDescription(Landroid/text/format/Time;)V

    #@28
    .line 238
    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 6
    .param p1, "time"    # Landroid/text/format/Time;

    #@0
    .prologue
    .line 267
    const/16 v1, 0x81

    #@2
    .line 268
    .local v1, "flags":I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@4
    .line 269
    const/4 v3, 0x0

    #@5
    invoke-virtual {p1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    #@8
    move-result-wide v4

    #@9
    const/16 v3, 0x81

    #@b
    .line 268
    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 270
    .local v0, "contentDescription":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@12
    .line 266
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    #@0
    .prologue
    .line 105
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@3
    .line 107
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 108
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    #@a
    .line 109
    new-instance v3, Landroid/content/IntentFilter;

    #@c
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@f
    .line 111
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    #@12
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@15
    .line 112
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    #@18
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1b
    .line 113
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    #@1e
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@21
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@24
    move-result-object v0

    #@25
    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@27
    .line 123
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    #@2e
    move-result-object v5

    #@2f
    const/4 v4, 0x0

    #@30
    .line 122
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@33
    .line 130
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    #@35
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    #@38
    iput-object v0, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    #@3a
    .line 133
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    #@3d
    .line 104
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 138
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@3
    .line 139
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@10
    .line 141
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    #@13
    .line 137
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 178
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 180
    move-object/from16 v0, p0

    #@5
    iget-boolean v3, v0, Landroid/widget/AnalogClock;->mChanged:Z

    #@7
    .line 181
    .local v3, "changed":Z
    if-eqz v3, :cond_0

    #@9
    .line 182
    const/4 v13, 0x0

    #@a
    move-object/from16 v0, p0

    #@c
    iput-boolean v13, v0, Landroid/widget/AnalogClock;->mChanged:Z

    #@e
    .line 185
    :cond_0
    move-object/from16 v0, p0

    #@10
    iget v13, v0, Landroid/view/View;->mRight:I

    #@12
    move-object/from16 v0, p0

    #@14
    iget v14, v0, Landroid/view/View;->mLeft:I

    #@16
    sub-int v2, v13, v14

    #@18
    .line 186
    .local v2, "availableWidth":I
    move-object/from16 v0, p0

    #@1a
    iget v13, v0, Landroid/view/View;->mBottom:I

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget v14, v0, Landroid/view/View;->mTop:I

    #@20
    sub-int v1, v13, v14

    #@22
    .line 188
    .local v1, "availableHeight":I
    div-int/lit8 v11, v2, 0x2

    #@24
    .line 189
    .local v11, "x":I
    div-int/lit8 v12, v1, 0x2

    #@26
    .line 191
    .local v12, "y":I
    move-object/from16 v0, p0

    #@28
    iget-object v4, v0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    #@2a
    .line 192
    .local v4, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@2d
    move-result v10

    #@2e
    .line 193
    .local v10, "w":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@31
    move-result v5

    #@32
    .line 195
    .local v5, "h":I
    const/4 v9, 0x0

    #@33
    .line 197
    .local v9, "scaled":Z
    if-lt v2, v10, :cond_1

    #@35
    if-ge v1, v5, :cond_2

    #@37
    .line 198
    :cond_1
    const/4 v9, 0x1

    #@38
    .line 199
    int-to-float v13, v2

    #@39
    int-to-float v14, v10

    #@3a
    div-float/2addr v13, v14

    #@3b
    .line 200
    int-to-float v14, v1

    #@3c
    int-to-float v15, v5

    #@3d
    div-float/2addr v14, v15

    #@3e
    .line 199
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    #@41
    move-result v8

    #@42
    .line 201
    .local v8, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@45
    .line 202
    int-to-float v13, v11

    #@46
    int-to-float v14, v12

    #@47
    move-object/from16 v0, p1

    #@49
    invoke-virtual {v0, v8, v8, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    #@4c
    .line 205
    .end local v8    # "scale":F
    :cond_2
    if-eqz v3, :cond_3

    #@4e
    .line 206
    div-int/lit8 v13, v10, 0x2

    #@50
    sub-int v13, v11, v13

    #@52
    div-int/lit8 v14, v5, 0x2

    #@54
    sub-int v14, v12, v14

    #@56
    div-int/lit8 v15, v10, 0x2

    #@58
    add-int/2addr v15, v11

    #@59
    div-int/lit8 v16, v5, 0x2

    #@5b
    add-int v16, v16, v12

    #@5d
    move/from16 v0, v16

    #@5f
    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@62
    .line 208
    :cond_3
    move-object/from16 v0, p1

    #@64
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@67
    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@6a
    .line 211
    move-object/from16 v0, p0

    #@6c
    iget v13, v0, Landroid/widget/AnalogClock;->mHour:F

    #@6e
    const/high16 v14, 0x41400000    # 12.0f

    #@70
    div-float/2addr v13, v14

    #@71
    const/high16 v14, 0x43b40000    # 360.0f

    #@73
    mul-float/2addr v13, v14

    #@74
    int-to-float v14, v11

    #@75
    int-to-float v15, v12

    #@76
    move-object/from16 v0, p1

    #@78
    invoke-virtual {v0, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@7b
    .line 212
    move-object/from16 v0, p0

    #@7d
    iget-object v6, v0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    #@7f
    .line 213
    .local v6, "hourHand":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_4

    #@81
    .line 214
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@84
    move-result v10

    #@85
    .line 215
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@88
    move-result v5

    #@89
    .line 216
    div-int/lit8 v13, v10, 0x2

    #@8b
    sub-int v13, v11, v13

    #@8d
    div-int/lit8 v14, v5, 0x2

    #@8f
    sub-int v14, v12, v14

    #@91
    div-int/lit8 v15, v10, 0x2

    #@93
    add-int/2addr v15, v11

    #@94
    div-int/lit8 v16, v5, 0x2

    #@96
    add-int v16, v16, v12

    #@98
    move/from16 v0, v16

    #@9a
    invoke-virtual {v6, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@9d
    .line 218
    :cond_4
    move-object/from16 v0, p1

    #@9f
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@a2
    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@a5
    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@a8
    .line 222
    move-object/from16 v0, p0

    #@aa
    iget v13, v0, Landroid/widget/AnalogClock;->mMinutes:F

    #@ac
    const/high16 v14, 0x42700000    # 60.0f

    #@ae
    div-float/2addr v13, v14

    #@af
    const/high16 v14, 0x43b40000    # 360.0f

    #@b1
    mul-float/2addr v13, v14

    #@b2
    int-to-float v14, v11

    #@b3
    int-to-float v15, v12

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@b9
    .line 224
    move-object/from16 v0, p0

    #@bb
    iget-object v7, v0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    #@bd
    .line 225
    .local v7, "minuteHand":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5

    #@bf
    .line 226
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@c2
    move-result v10

    #@c3
    .line 227
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@c6
    move-result v5

    #@c7
    .line 228
    div-int/lit8 v13, v10, 0x2

    #@c9
    sub-int v13, v11, v13

    #@cb
    div-int/lit8 v14, v5, 0x2

    #@cd
    sub-int v14, v12, v14

    #@cf
    div-int/lit8 v15, v10, 0x2

    #@d1
    add-int/2addr v15, v11

    #@d2
    div-int/lit8 v16, v5, 0x2

    #@d4
    add-int v16, v16, v12

    #@d6
    move/from16 v0, v16

    #@d8
    invoke-virtual {v7, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@db
    .line 230
    :cond_5
    move-object/from16 v0, p1

    #@dd
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@e0
    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@e3
    .line 233
    if-eqz v9, :cond_6

    #@e5
    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@e8
    .line 177
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@4
    move-result v5

    #@5
    .line 149
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v6

    #@9
    .line 150
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@c
    move-result v1

    #@d
    .line 151
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@10
    move-result v2

    #@11
    .line 153
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    #@13
    .line 154
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    #@15
    .line 156
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    #@17
    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    #@19
    if-ge v6, v7, :cond_0

    #@1b
    .line 157
    int-to-float v7, v6

    #@1c
    iget v8, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    #@1e
    int-to-float v8, v8

    #@1f
    div-float v0, v7, v8

    #@21
    .line 160
    :cond_0
    if-eqz v1, :cond_1

    #@23
    iget v7, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    #@25
    if-ge v2, v7, :cond_1

    #@27
    .line 161
    int-to-float v7, v2

    #@28
    iget v8, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    #@2a
    int-to-float v8, v8

    #@2b
    div-float v4, v7, v8

    #@2d
    .line 164
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    #@30
    move-result v3

    #@31
    .line 166
    .local v3, "scale":F
    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    #@33
    int-to-float v7, v7

    #@34
    mul-float/2addr v7, v3

    #@35
    float-to-int v7, v7

    #@36
    invoke-static {v7, p1, v9}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    #@39
    move-result v7

    #@3a
    .line 167
    iget v8, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    #@3c
    int-to-float v8, v8

    #@3d
    mul-float/2addr v8, v3

    #@3e
    float-to-int v8, v8

    #@3f
    invoke-static {v8, p2, v9}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    #@42
    move-result v8

    #@43
    .line 166
    invoke-virtual {p0, v7, v8}, Landroid/view/View;->setMeasuredDimension(II)V

    #@46
    .line 146
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    #@3
    .line 173
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    #@6
    .line 171
    return-void
.end method
