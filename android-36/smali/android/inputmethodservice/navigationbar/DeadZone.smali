.class final Landroid/inputmethodservice/navigationbar/DeadZone;
.super Ljava/lang/Object;
.source "DeadZone.java"


# static fields
.field private static final blacklist CHATTY:Z = true

.field public static final blacklist DEBUG:Z = false

.field private static final blacklist FLASH_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/inputmethodservice/navigationbar/DeadZone;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HORIZONTAL:I = 0x0

.field public static final blacklist TAG:Ljava/lang/String; = "DeadZone"

.field public static final blacklist VERTICAL:I = 0x1


# instance fields
.field private final blacklist mDebugFlash:Ljava/lang/Runnable;

.field private blacklist mDecay:I

.field private blacklist mDisplayRotation:I

.field private blacklist mFlashFrac:F

.field private blacklist mHold:I

.field private blacklist mLastPokeTime:J

.field private final blacklist mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

.field private blacklist mShouldFlash:Z

.field private blacklist mSizeMax:I

.field private blacklist mSizeMin:I

.field private blacklist mVertical:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetFLASH_PROPERTY()Landroid/util/FloatProperty;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/navigationbar/DeadZone;->FLASH_PROPERTY:Landroid/util/FloatProperty;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Landroid/inputmethodservice/navigationbar/DeadZone$1;

    const-string v1, "DeadZoneFlash"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/DeadZone$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/DeadZone;->FLASH_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/NavigationBarView;)V
    .registers 3
    .param p1, "view"    # Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    .line 78
    new-instance v0, Landroid/inputmethodservice/navigationbar/DeadZone$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/DeadZone$2;-><init>(Landroid/inputmethodservice/navigationbar/DeadZone;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/DeadZone;->onConfigurationChanged(I)V

    .line 88
    return-void
.end method

.method private blacklist getSize(J)F
    .registers 9
    .param p1, "now"    # J

    .line 95
    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    if-nez v0, :cond_6

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_6
    iget-wide v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mLastPokeTime:J

    sub-long v0, p1, v0

    .line 99
    .local v0, "dt":J
    iget v2, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mHold:I

    iget v3, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDecay:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 100
    iget v2, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMin:I

    int-to-float v2, v2

    return v2

    .line 101
    :cond_18
    iget v2, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mHold:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    .line 102
    iget v2, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    int-to-float v2, v2

    return v2

    .line 104
    :cond_23
    iget v2, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    int-to-float v2, v2

    iget v3, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMin:I

    int-to-float v3, v3

    iget v4, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mHold:I

    int-to-long v4, v4

    sub-long v4, v0, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDecay:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Landroid/inputmethodservice/navigationbar/DeadZone;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    return v2
.end method

.method static blacklist lerp(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "f"    # F

    .line 91
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private blacklist poke(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mLastPokeTime:J

    .line 185
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    .line 186
    :cond_f
    return-void
.end method


# virtual methods
.method public blacklist getFlash()F
    .registers 2

    .line 194
    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    return v0
.end method

.method public blacklist onConfigurationChanged(I)V
    .registers 6
    .param p1, "rotation"    # I

    .line 114
    iput p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDisplayRotation:I

    .line 116
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    .local v0, "res":Landroid/content/res/Resources;
    const/16 v1, 0x14d

    iput v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mHold:I

    .line 118
    iput v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDecay:I

    .line 120
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMin:I

    .line 121
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    .line 122
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    move v1, v3

    :goto_2b
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mVertical:Z

    .line 128
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/DeadZone;->setFlashOnTouchCapture(Z)V

    .line 129
    return-void
.end method

.method public blacklist onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "can"    # Landroid/graphics/Canvas;

    .line 198
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_4f

    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    goto :goto_4f

    .line 202
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/DeadZone;->getSize(J)F

    move-result v0

    float-to-int v0, v0

    .line 203
    .local v0, "size":I
    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mVertical:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    .line 204
    iget v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDisplayRotation:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_30

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3f

    .line 207
    :cond_30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3f

    .line 210
    :cond_38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 213
    :goto_3f
    iget v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    .line 214
    .local v1, "frac":F
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/16 v3, 0xee

    const/16 v4, 0xaa

    const/16 v5, 0xdd

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 220
    return-void

    .line 199
    .end local v0    # "size":I
    .end local v1    # "frac":F
    :cond_4f
    :goto_4f
    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 140
    return v0

    .line 143
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 144
    .local v1, "action":I
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v1, v3, :cond_15

    .line 145
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 146
    return v4

    .line 147
    :cond_15
    if-nez v1, :cond_98

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Landroid/inputmethodservice/navigationbar/DeadZone;->getSize(J)F

    move-result v3

    float-to-int v3, v3

    .line 156
    .local v3, "size":I
    iget-boolean v5, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mVertical:Z

    if-eqz v5, :cond_49

    .line 157
    iget v5, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDisplayRotation:I

    if-ne v5, v2, :cond_3c

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v5}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3a

    move v2, v4

    goto :goto_3b

    :cond_3a
    move v2, v0

    .local v2, "consumeEvent":Z
    :goto_3b
    goto :goto_55

    .line 160
    .end local v2    # "consumeEvent":Z
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v5, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_47

    move v2, v4

    goto :goto_48

    :cond_47
    move v2, v0

    .restart local v2    # "consumeEvent":Z
    :goto_48
    goto :goto_55

    .line 163
    .end local v2    # "consumeEvent":Z
    :cond_49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v5, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_54

    move v2, v4

    goto :goto_55

    :cond_54
    move v2, v0

    .line 165
    .restart local v2    # "consumeEvent":Z
    :goto_55
    if-eqz v2, :cond_98

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consuming errant click: ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v5, "DeadZone"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_97

    .line 171
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->post(Ljava/lang/Runnable;)Z

    .line 172
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    .line 174
    :cond_97
    return v4

    .line 177
    .end local v2    # "consumeEvent":Z
    .end local v3    # "size":I
    :cond_98
    return v0
.end method

.method public blacklist setFlash(F)V
    .registers 3
    .param p1, "f"    # F

    .line 189
    iput p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    .line 190
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    .line 191
    return-void
.end method

.method public blacklist setFlashOnTouchCapture(Z)V
    .registers 3
    .param p1, "dbg"    # Z

    .line 108
    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    .line 110
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    .line 111
    return-void
.end method
