.class Landroid/hardware/camera2/legacy/RequestThreadManager$3;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@0
    .prologue
    .line 252
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$3;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 4

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$3;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@5
    move-result-object v0

    #@6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->jpegCaptured(J)Landroid/hardware/camera2/legacy/RequestHolder;

    #@d
    .line 254
    return-void
.end method
