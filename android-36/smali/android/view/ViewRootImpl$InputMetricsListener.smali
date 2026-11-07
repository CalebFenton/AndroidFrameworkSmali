.class final Landroid/view/ViewRootImpl$InputMetricsListener;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InputMetricsListener"
.end annotation


# instance fields
.field public blacklist data:[J

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10707
    iput-object p1, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10709
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    return-void
.end method


# virtual methods
.method public blacklist onFrameMetricsAvailable(I)V
    .registers 13
    .param p1, "dropCountSinceLastInvocation"    # I

    .line 10713
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    long-to-int v3, v0

    .line 10714
    .local v3, "inputEventId":I
    if-nez v3, :cond_9

    .line 10715
    return-void

    .line 10717
    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    const/16 v1, 0x16

    aget-wide v6, v0, v1

    .line 10718
    .local v6, "presentTime":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_16

    .line 10721
    return-void

    .line 10723
    :cond_16
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    const/16 v1, 0x14

    aget-wide v4, v0, v1

    .line 10724
    .local v4, "gpuCompletedTime":J
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInputEventReceiver(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-result-object v0

    if-nez v0, :cond_25

    .line 10725
    return-void

    .line 10727
    :cond_25
    cmp-long v0, v4, v6

    if-ltz v0, :cond_64

    .line 10728
    sub-long v0, v4, v6

    long-to-double v0, v0

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v8

    .line 10729
    .local v0, "discrepancyMs":D
    iget-object v2, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    const/4 v8, 0x1

    aget-wide v8, v2, v8

    .line 10730
    .local v8, "vsyncId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not reporting timeline because gpuCompletedTime is "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "ms ahead of presentTime. FRAME_TIMELINE_VSYNC_ID="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", INPUT_EVENT_ID="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "ViewRootImpl"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10734
    return-void

    .line 10736
    .end local v0    # "discrepancyMs":D
    .end local v8    # "vsyncId":J
    :cond_64
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInputEventReceiver(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->reportTimeline(IJJ)V

    .line 10737
    return-void
.end method
