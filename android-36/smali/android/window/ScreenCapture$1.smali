.class Landroid/window/ScreenCapture$1;
.super Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mConsumer:Ljava/util/function/ObjIntConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ObjIntConsumer<",
            "Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$bufferRef:[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

.field final synthetic blacklist val$consumer:Ljava/util/function/ObjIntConsumer;

.field final synthetic blacklist val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/ObjIntConsumer;Ljava/util/function/ObjIntConsumer;Ljava/util/concurrent/CountDownLatch;[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 5

    .line 778
    .local p1, "consumer":Ljava/util/function/ObjIntConsumer;, "Ljava/util/function/ObjIntConsumer<Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;>;"
    iput-object p2, p0, Landroid/window/ScreenCapture$1;->val$consumer:Ljava/util/function/ObjIntConsumer;

    iput-object p3, p0, Landroid/window/ScreenCapture$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Landroid/window/ScreenCapture$1;->val$bufferRef:[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;-><init>(Ljava/util/function/ObjIntConsumer;)V

    .line 783
    iget-object p2, p0, Landroid/window/ScreenCapture$1;->val$consumer:Ljava/util/function/ObjIntConsumer;

    iput-object p2, p0, Landroid/window/ScreenCapture$1;->mConsumer:Ljava/util/function/ObjIntConsumer;

    return-void
.end method


# virtual methods
.method public blacklist getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 7

    .line 788
    const-string v0, "ScreenCapture"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Landroid/window/ScreenCapture$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Landroid/window/ScreenCapture;->-$$Nest$sfgetSCREENSHOT_WAIT_TIME_S()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 789
    const-string v2, "Timed out waiting for screenshot results"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-object v1

    .line 792
    :cond_18
    iget-object v2, p0, Landroid/window/ScreenCapture$1;->val$bufferRef:[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    const/4 v3, 0x0

    aget-object v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1e

    return-object v0

    .line 793
    :catch_1e
    move-exception v2

    .line 794
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to wait for screen capture result"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    return-object v1
.end method
