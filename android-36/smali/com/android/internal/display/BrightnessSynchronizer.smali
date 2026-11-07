.class public Lcom/android/internal/display/BrightnessSynchronizer;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/display/BrightnessSynchronizer$Clock;,
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;,
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;,
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;
    }
.end annotation


# static fields
.field private static final blacklist BRIGHTNESS_URI:Landroid/net/Uri;

.field private static final blacklist DEBUG:Z = false

.field public static final blacklist EPSILON:F = 1.0E-4f

.field private static final blacklist MSG_RUN_UPDATE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "BrightnessSynchronizer"

.field private static final blacklist WAIT_FOR_RESPONSE_MILLIS:J = 0xc8L

.field private static blacklist sBrightnessUpdateCount:I


# instance fields
.field private final blacklist mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

.field private final blacklist mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

.field private blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIntRangeUserPerceptionEnabled:Z

.field private blacklist mLatestFloatBrightness:F

.field private blacklist mLatestIntBrightness:I

.field private blacklist mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClock(Lcom/android/internal/display/BrightnessSynchronizer;)Lcom/android/internal/display/BrightnessSynchronizer$Clock;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayManager(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntRangeUserPerceptionEnabled(Lcom/android/internal/display/BrightnessSynchronizer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mIntRangeUserPerceptionEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatestFloatBrightness(Lcom/android/internal/display/BrightnessSynchronizer;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatestIntBrightness(Lcom/android/internal/display/BrightnessSynchronizer;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLatestFloatBrightness(Lcom/android/internal/display/BrightnessSynchronizer;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLatestIntBrightness(Lcom/android/internal/display/BrightnessSynchronizer;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetScreenBrightnessFloat(Lcom/android/internal/display/BrightnessSynchronizer;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessFloat()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetScreenBrightnessInt(Lcom/android/internal/display/BrightnessSynchronizer;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessInt()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBrightnessChangeFloat(Lcom/android/internal/display/BrightnessSynchronizer;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChangeFloat(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBrightnessChangeInt(Lcom/android/internal/display/BrightnessSynchronizer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChangeInt(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunUpdate(Lcom/android/internal/display/BrightnessSynchronizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->runUpdate()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetBRIGHTNESS_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/internal/display/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBrightnessUpdateCount()I
    .registers 1

    sget v0, Lcom/android/internal/display/BrightnessSynchronizer;->sBrightnessUpdateCount:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsBrightnessUpdateCount(I)V
    .registers 1

    sput p0, Lcom/android/internal/display/BrightnessSynchronizer;->sBrightnessUpdateCount:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    nop

    .line 56
    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/display/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 65
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/display/BrightnessSynchronizer;->sBrightnessUpdateCount:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/display/BrightnessSynchronizer$Clock;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "clock"    # Lcom/android/internal/display/BrightnessSynchronizer$Clock;
    .param p4, "intRangeUserPerceptionEnabled"    # Z

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    .line 90
    iput-object p3, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    .line 91
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;Lcom/android/internal/display/BrightnessSynchronizer-IA;)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    .line 92
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    .line 93
    iput-boolean p4, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mIntRangeUserPerceptionEnabled:Z

    .line 94
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "intRangeUserPerceptionEnabled"    # Z

    .line 83
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/display/BrightnessSynchronizer;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/display/BrightnessSynchronizer$Clock;Z)V

    .line 84
    return-void
.end method

.method public static blacklist brightnessFloatToInt(F)I
    .registers 2
    .param p0, "brightnessFloat"    # F

    .line 167
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToIntRange(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static blacklist brightnessFloatToIntRange(F)F
    .registers 8
    .param p0, "brightnessFloat"    # F

    .line 177
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 178
    return v2

    .line 179
    :cond_a
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 180
    return v0

    .line 182
    :cond_11
    const/4 v0, 0x0

    .line 183
    .local v0, "minFloat":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 184
    .local v1, "maxFloat":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 185
    .local v3, "minInt":F
    const/high16 v4, 0x437f0000    # 255.0f

    .line 186
    .local v4, "maxInt":F
    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5, v2, v6, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v2

    return v2
.end method

.method public static blacklist brightnessFloatToIntSetting(Landroid/content/Context;F)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "brightnessFloat"    # F

    .line 344
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 345
    const/4 v0, 0x0

    return v0

    .line 346
    :cond_a
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_12

    .line 347
    return v1

    .line 350
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 351
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_19

    .line 352
    return v1

    .line 354
    :cond_19
    invoke-virtual {v0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object v2

    .line 355
    .local v2, "info":Landroid/hardware/display/BrightnessInfo;
    if-nez v2, :cond_20

    .line 356
    return v1

    .line 358
    :cond_20
    iget v1, v2, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    iget v3, v2, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    .line 359
    invoke-static {v1, v3, p1}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v1

    .line 362
    .local v1, "linearBrightness":F
    invoke-static {v1}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v3

    .line 365
    .local v3, "userPerceptionBrightness":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 366
    .local v4, "minInt":F
    const/high16 v5, 0x437f0000    # 255.0f

    .line 367
    .local v5, "maxInt":F
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x437f0000    # 255.0f

    invoke-static {v6, v7, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v6

    .line 368
    .local v6, "intBrightness":F
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    return v7
.end method

.method public static blacklist brightnessIntSettingToFloat(Landroid/content/Context;I)F
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "brightnessInt"    # I

    .line 308
    if-nez p1, :cond_5

    .line 309
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 310
    :cond_5
    const/4 v0, -0x1

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-ne p1, v0, :cond_b

    .line 311
    return v1

    .line 313
    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    .line 314
    .local v0, "minInt":F
    const/high16 v2, 0x437f0000    # 255.0f

    .line 317
    .local v2, "maxInt":F
    const/high16 v3, 0x437f0000    # 255.0f

    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3, v4}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v3

    .line 320
    .local v3, "userPerceptionBrightness":F
    invoke-static {v3}, Lcom/android/internal/display/BrightnessUtils;->convertGammaToLinear(F)F

    move-result v4

    .line 323
    .local v4, "linearBrightness":F
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    .line 324
    .local v5, "display":Landroid/view/Display;
    if-nez v5, :cond_23

    .line 325
    return v1

    .line 327
    :cond_23
    invoke-virtual {v5}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object v6

    .line 328
    .local v6, "info":Landroid/hardware/display/BrightnessInfo;
    if-nez v6, :cond_2a

    .line 329
    return v1

    .line 331
    :cond_2a
    iget v1, v6, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    iget v7, v6, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-static {v1, v7, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    return v1
.end method

.method public static blacklist brightnessIntToFloat(I)F
    .registers 9
    .param p0, "brightnessInt"    # I

    .line 150
    if-nez p0, :cond_5

    .line 151
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 152
    :cond_5
    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    .line 153
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 155
    :cond_b
    const/4 v0, 0x0

    .line 156
    .local v0, "minFloat":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 157
    .local v1, "maxFloat":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 158
    .local v2, "minInt":F
    const/high16 v3, 0x437f0000    # 255.0f

    .line 159
    .local v3, "maxInt":F
    const/high16 v4, 0x437f0000    # 255.0f

    int-to-float v5, p0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v7, v4, v5}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v4

    return v4
.end method

.method public static blacklist floatEquals(FF)Z
    .registers 5
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 289
    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 290
    return v1

    .line 291
    :cond_6
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 292
    return v1

    .line 293
    :cond_13
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_21

    .line 294
    return v1

    .line 296
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getScreenBrightnessFloat()F
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result v0

    return v0
.end method

.method private blacklist getScreenBrightnessInt()I
    .registers 5

    .line 275
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private blacklist handleBrightnessChange(IF)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "brightness"    # F

    .line 217
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 218
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->swallowUpdate(IF)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 219
    .local v0, "swallowUpdate":Z
    :goto_f
    const/4 v1, 0x0

    .line 220
    .local v1, "prevUpdate":Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;
    if-nez v0, :cond_1b

    .line 221
    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 222
    new-instance v2, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 224
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->runUpdate()V

    .line 227
    if-nez v0, :cond_48

    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz v2, :cond_48

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New PendingUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BrightnessSynchronizer"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_48
    return-void
.end method

.method private blacklist handleBrightnessChangeFloat(F)V
    .registers 3
    .param p1, "brightness"    # F

    .line 196
    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    .line 197
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChange(IF)V

    .line 198
    return-void
.end method

.method private blacklist handleBrightnessChangeInt(I)V
    .registers 4
    .param p1, "brightness"    # I

    .line 206
    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    .line 207
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChange(IF)V

    .line 208
    return-void
.end method

.method private blacklist runUpdate()V
    .registers 4

    .line 243
    nop

    :cond_1
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 244
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->update()V

    .line 245
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 246
    goto :goto_52

    .line 247
    :cond_14
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 248
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->madeUpdates()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed Update: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessSynchronizer"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_3e
    iput-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 255
    :cond_40
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz v0, :cond_4e

    .line 256
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 257
    iput-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 259
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-nez v0, :cond_1

    .line 260
    :goto_52
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 137
    const-string v0, "BrightnessSynchronizer:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    const-string v0, "-----------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLatestIntBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLatestFloatBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIntRangeUserPerceptionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mIntRangeUserPerceptionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public blacklist startSynchronizing()V
    .registers 6

    .line 104
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_10

    .line 105
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 107
    :cond_10
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->isObserving()Z

    move-result v0

    const-string v1, "BrightnessSynchronizer"

    if-eqz v0, :cond_20

    .line 108
    const-string v0, "Brightness sync observer requesting synchronization a second time."

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 111
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessFloat()F

    move-result v0

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    .line 112
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial brightness readings: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(int), "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(float)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_6a

    .line 117
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-direct {v0, p0, v3, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    goto :goto_a4

    .line 119
    :cond_6a
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_7a

    .line 120
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    int-to-float v1, v1

    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    goto :goto_a4

    .line 123
    :cond_7a
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x105010e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 125
    .local v0, "defaultBrightness":F
    new-instance v4, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v4, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting initial brightness to default value of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0    # "defaultBrightness":F
    :goto_a4
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->startObserving(Landroid/os/Handler;)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    invoke-interface {v1}, Lcom/android/internal/display/BrightnessSynchronizer$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 131
    return-void
.end method
