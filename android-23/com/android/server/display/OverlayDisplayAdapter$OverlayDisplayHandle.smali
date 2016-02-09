.class final Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/OverlayDisplayWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayDisplayHandle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;
    }
.end annotation


# static fields
.field private static final DEFAULT_MODE_INDEX:I


# instance fields
.field private mActiveMode:I

.field private mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mGravity:I

.field private final mModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNumber:I

.field private final mResizeRunnable:Ljava/lang/Runnable;

.field private final mSecure:Z

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mWindow:Lcom/android/server/display/OverlayDisplayWindow;

.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->onActiveModeChangedLocked(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;IZI)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/OverlayDisplayAdapter;
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "gravity"    # I
    .param p5, "secure"    # Z
    .param p6, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;IZI)V"
        }
    .end annotation

    #@0
    .prologue
    .line 366
    .local p3, "modes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 454
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    #@a
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    #@c
    .line 470
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;

    #@e
    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    #@11
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    #@13
    .line 486
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;

    #@15
    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    #@18
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Ljava/lang/Runnable;

    #@1a
    .line 368
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    #@1c
    .line 369
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    #@1e
    .line 370
    iput p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    #@20
    .line 371
    iput-boolean p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    #@22
    .line 372
    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    #@24
    .line 374
    const/4 v0, 0x0

    #@25
    iput v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    #@27
    .line 376
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->showLocked()V

    #@2a
    .line 367
    return-void
.end method

.method private onActiveModeChangedLocked(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@2
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-get0(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b
    .line 390
    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    #@d
    .line 391
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 392
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@13
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-get0(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Ljava/lang/Runnable;

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1c
    .line 388
    :cond_0
    return-void
.end method

.method private showLocked()V
    .locals 2

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@2
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-get0(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@b
    .line 379
    return-void
.end method


# virtual methods
.method public dismissLocked()V
    .locals 2

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@2
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-get0(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b
    .line 385
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@d
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-get0(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@16
    .line 383
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "  "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ":"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v1, "    mModes="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    #@2e
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@41
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v1, "    mActiveMode="

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v1, "    mGravity="

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v1, "    mSecure="

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v1, "    mNumber="

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    #@9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v0

    #@a2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a5
    .line 446
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    #@a7
    if-eqz v0, :cond_0

    #@a9
    .line 447
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    #@ab
    const-string/jumbo v0, "    "

    #@ae
    invoke-direct {v2, p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@b1
    .line 448
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@b4
    .line 449
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@b6
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-get0(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    #@b9
    move-result-object v0

    #@ba
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    #@bc
    const-string/jumbo v3, ""

    #@bf
    const-wide/16 v4, 0xc8

    #@c1
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    #@c4
    .line 437
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 431
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->setStateLocked(I)V

    #@10
    .line 432
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@12
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    #@14
    const/4 v3, 0x2

    #@15
    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 428
    return-void

    #@1a
    .line 429
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public onWindowCreated(Landroid/graphics/SurfaceTexture;FJI)V
    .locals 19
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "refreshRate"    # F
    .param p3, "presentationDeadlineNanos"    # J
    .param p5, "state"    # I

    #@0
    .prologue
    .line 400
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@4
    invoke-virtual {v2}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@7
    move-result-object v18

    #@8
    monitor-enter v18

    #@9
    .line 401
    :try_start_0
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    #@d
    move-object/from16 v0, p0

    #@f
    iget-boolean v3, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    #@11
    invoke-static {v2, v3}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    #@14
    move-result-object v6

    #@15
    .line 402
    .local v6, "displayToken":Landroid/os/IBinder;
    new-instance v3, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;

    #@17
    move-object/from16 v0, p0

    #@19
    iget-object v5, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget-object v7, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v8, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    #@23
    move-object/from16 v0, p0

    #@25
    iget v9, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    #@27
    .line 404
    move-object/from16 v0, p0

    #@29
    iget-boolean v14, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    #@2f
    move/from16 v17, v0

    #@31
    .line 403
    const/4 v10, 0x0

    #@32
    move-object/from16 v4, p0

    #@34
    move/from16 v11, p2

    #@36
    move-wide/from16 v12, p3

    #@38
    move/from16 v15, p5

    #@3a
    move-object/from16 v16, p1

    #@3c
    .line 402
    invoke-direct/range {v3 .. v17}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJZILandroid/graphics/SurfaceTexture;I)V

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-object v3, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    #@43
    .line 411
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    #@4b
    const/4 v4, 0x1

    #@4c
    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    monitor-exit v18

    #@50
    .line 399
    return-void

    #@51
    .line 400
    .end local v6    # "displayToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    #@52
    monitor-exit v18

    #@53
    throw v2
.end method

.method public onWindowDestroyed()V
    .locals 4

    #@0
    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 420
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    #@d
    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->destroyLocked()V

    #@10
    .line 421
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@12
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    #@14
    const/4 v3, 0x3

    #@15
    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 417
    return-void

    #@1a
    .line 418
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method
