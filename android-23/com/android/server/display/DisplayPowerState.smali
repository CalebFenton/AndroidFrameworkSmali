.class final Lcom/android/server/display/DisplayPowerState;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerState$PhotonicModulator;,
        Lcom/android/server/display/DisplayPowerState$1;,
        Lcom/android/server/display/DisplayPowerState$2;,
        Lcom/android/server/display/DisplayPowerState$3;,
        Lcom/android/server/display/DisplayPowerState$4;
    }
.end annotation


# static fields
.field public static final COLOR_FADE_LEVEL:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field public static final SCREEN_BRIGHTNESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DisplayPowerState"


# instance fields
.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCleanListener:Ljava/lang/Runnable;

.field private final mColorFade:Lcom/android/server/display/ColorFade;

.field private mColorFadeDrawPending:Z

.field private final mColorFadeDrawRunnable:Ljava/lang/Runnable;

.field private mColorFadeLevel:F

.field private mColorFadePrepared:Z

.field private mColorFadeReady:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

.field private mScreenBrightness:I

.field private mScreenReady:Z

.field private mScreenState:I

.field private mScreenUpdatePending:Z

.field private final mScreenUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/DisplayPowerState;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/DisplayPowerState;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/DisplayPowerState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/display/DisplayPowerState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->invokeCleanListenerIfNeeded()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 51
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    #@3
    .line 95
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    #@5
    const-string/jumbo v1, "electronBeamLevel"

    #@8
    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;)V

    #@b
    .line 94
    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    #@d
    .line 108
    new-instance v0, Lcom/android/server/display/DisplayPowerState$2;

    #@f
    const-string/jumbo v1, "screenBrightness"

    #@12
    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$2;-><init>(Ljava/lang/String;)V

    #@15
    .line 107
    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    #@17
    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V
    .locals 2
    .param p1, "blanker"    # Lcom/android/server/display/DisplayBlanker;
    .param p2, "colorFade"    # Lcom/android/server/display/ColorFade;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 296
    new-instance v0, Lcom/android/server/display/DisplayPowerState$3;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$3;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    #@9
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    #@b
    .line 317
    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    #@d
    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    #@10
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    #@12
    .line 72
    new-instance v0, Landroid/os/Handler;

    #@14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    #@17
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    #@19
    .line 73
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    #@1f
    .line 74
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    #@21
    .line 75
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    #@23
    .line 76
    new-instance v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    #@25
    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    #@28
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    #@2a
    .line 77
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    #@2c
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->start()V

    #@2f
    .line 85
    const/4 v0, 0x2

    #@30
    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    #@32
    .line 86
    const/16 v0, 0xff

    #@34
    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    #@36
    .line 87
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    #@39
    .line 89
    const/4 v0, 0x0

    #@3a
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    #@3c
    .line 90
    const/high16 v0, 0x3f800000    # 1.0f

    #@3e
    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    #@40
    .line 91
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    #@42
    .line 71
    return-void
.end method

.method private invokeCleanListenerIfNeeded()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 289
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    #@3
    .line 290
    .local v0, "listener":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 291
    iput-object v2, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    #@f
    .line 292
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@12
    .line 288
    :cond_0
    return-void
.end method

.method private postScreenUpdateThreadSafe()V
    .locals 2

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 277
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    #@9
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 275
    return-void
.end method

.method private scheduleColorFadeDraw()V
    .locals 4

    #@0
    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 282
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    #@7
    .line 283
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    #@9
    .line 284
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    #@b
    .line 283
    const/4 v2, 0x2

    #@c
    .line 284
    const/4 v3, 0x0

    #@d
    .line 283
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@10
    .line 280
    :cond_0
    return-void
.end method

.method private scheduleScreenUpdate()V
    .locals 1

    #@0
    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 270
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    #@7
    .line 271
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    #@a
    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissColorFade()V
    .locals 1

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    #@5
    .line 194
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    #@8
    .line 195
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    #@b
    .line 192
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 253
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 254
    const-string/jumbo v0, "Display Power State:"

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "  mScreenState="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    #@17
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v1, "  mScreenBrightness="

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v1, "  mScreenReady="

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v1, "  mScreenUpdatePending="

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v1, "  mColorFadePrepared="

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v1, "  mColorFadeLevel="

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a3
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v1, "  mColorFadeReady="

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v0

    #@af
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    #@b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v0

    #@b9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v1, "  mColorFadeDrawPending="

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    #@ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v0

    #@d2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d5
    .line 264
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    #@d7
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->dump(Ljava/io/PrintWriter;)V

    #@da
    .line 265
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    #@dc
    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorFade;->dump(Ljava/io/PrintWriter;)V

    #@df
    .line 252
    return-void
.end method

.method public getColorFadeLevel()F
    .locals 1

    #@0
    .prologue
    .line 233
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    #@2
    return v0
.end method

.method public getScreenBrightness()I
    .locals 1

    #@0
    .prologue
    .line 165
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    #@2
    return v0
.end method

.method public getScreenState()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    #@2
    return v0
.end method

.method public prepareColorFade(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 177
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/ColorFade;->prepare(Landroid/content/Context;I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 178
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    #@c
    .line 179
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    #@e
    .line 180
    return v1

    #@f
    .line 183
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    #@11
    .line 184
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    #@13
    .line 185
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    #@16
    .line 186
    return v2
.end method

.method public setColorFadeLevel(F)V
    .locals 4
    .param p1, "level"    # F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 212
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    #@3
    cmpl-float v0, v0, p1

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 213
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 214
    const-string/jumbo v0, "DisplayPowerState"

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "setColorFadeLevel: level="

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 217
    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    #@27
    .line 218
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    #@29
    const/4 v1, 0x1

    #@2a
    if-eq v0, v1, :cond_1

    #@2c
    .line 219
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    #@2e
    .line 220
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    #@31
    .line 222
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    #@33
    if-eqz v0, :cond_2

    #@35
    .line 223
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    #@37
    .line 224
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    #@3a
    .line 211
    :cond_2
    return-void
.end method

.method public setScreenBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    #@0
    .prologue
    .line 148
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 149
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 150
    const-string/jumbo v0, "DisplayPowerState"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "setScreenBrightness: brightness="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 153
    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    #@24
    .line 154
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    #@26
    const/4 v1, 0x1

    #@27
    if-eq v0, v1, :cond_1

    #@29
    .line 155
    const/4 v0, 0x0

    #@2a
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    #@2c
    .line 156
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    #@2f
    .line 147
    :cond_1
    return-void
.end method

.method public setScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 125
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 126
    const-string/jumbo v0, "DisplayPowerState"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "setScreenState: state="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 129
    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    #@24
    .line 130
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    #@27
    .line 131
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    #@2a
    .line 123
    :cond_1
    return-void
.end method

.method public waitUntilClean(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 247
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    #@b
    .line 248
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 244
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    #@f
    .line 245
    const/4 v0, 0x0

    #@10
    return v0
.end method
