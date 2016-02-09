.class final Landroid/view/ViewRootImpl$QueuedInputEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueuedInputEvent"
.end annotation


# static fields
.field public static final FLAG_DEFERRED:I = 0x2

.field public static final FLAG_DELIVER_POST_IME:I = 0x1

.field public static final FLAG_FINISHED:I = 0x4

.field public static final FLAG_FINISHED_HANDLED:I = 0x8

.field public static final FLAG_RESYNTHESIZED:I = 0x10

.field public static final FLAG_UNHANDLED:I = 0x20


# instance fields
.field public mEvent:Landroid/view/InputEvent;

.field public mFlags:I

.field public mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field public mReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>()V

    #@3
    return-void
.end method

.method private flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "hasPrevious"    # Z
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 5791
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@2
    and-int/2addr v0, p2

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 5792
    if-eqz p3, :cond_0

    #@7
    .line 5793
    const-string/jumbo v0, "|"

    #@a
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 5795
    :cond_0
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 5796
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 5798
    :cond_1
    return p3
.end method


# virtual methods
.method public shouldSendToSynthesizer()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5763
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@3
    and-int/lit8 v0, v0, 0x20

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 5764
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 5767
    :cond_0
    return v1
.end method

.method public shouldSkipIme()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5755
    iget v1, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 5756
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 5758
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@b
    instance-of v1, v1, Landroid/view/MotionEvent;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 5759
    iget-object v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@11
    const/4 v1, 0x2

    #@12
    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    #@15
    move-result v0

    #@16
    .line 5758
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 5772
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v2, "QueuedInputEvent{flags="

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 5773
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@9
    .line 5774
    .local v0, "hasPrevious":Z
    const-string/jumbo v2, "DELIVER_POST_IME"

    #@c
    const/4 v3, 0x1

    #@d
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    #@10
    move-result v0

    #@11
    .line 5775
    .local v0, "hasPrevious":Z
    const-string/jumbo v2, "DEFERRED"

    #@14
    const/4 v3, 0x2

    #@15
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    #@18
    move-result v0

    #@19
    .line 5776
    const-string/jumbo v2, "FINISHED"

    #@1c
    const/4 v3, 0x4

    #@1d
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    #@20
    move-result v0

    #@21
    .line 5777
    const-string/jumbo v2, "FINISHED_HANDLED"

    #@24
    const/16 v3, 0x8

    #@26
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    #@29
    move-result v0

    #@2a
    .line 5778
    const-string/jumbo v2, "RESYNTHESIZED"

    #@2d
    const/16 v3, 0x10

    #@2f
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    #@32
    move-result v0

    #@33
    .line 5779
    const-string/jumbo v2, "UNHANDLED"

    #@36
    const/16 v3, 0x20

    #@38
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    #@3b
    move-result v0

    #@3c
    .line 5780
    if-nez v0, :cond_0

    #@3e
    .line 5781
    const-string/jumbo v2, "0"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 5783
    :cond_0
    const-string/jumbo v2, ", hasNextQueuedEvent="

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@4d
    if-eqz v2, :cond_1

    #@4f
    const-string/jumbo v2, "true"

    #@52
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 5784
    const-string/jumbo v2, ", hasInputEventReceiver="

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    #@5e
    if-eqz v2, :cond_2

    #@60
    const-string/jumbo v2, "true"

    #@63
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 5785
    const-string/jumbo v2, ", mEvent="

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    iget-object v3, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@6f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    const-string/jumbo v3, "}"

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 5786
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    return-object v2

    #@7e
    .line 5783
    :cond_1
    const-string/jumbo v2, "false"

    #@81
    goto :goto_0

    #@82
    .line 5784
    :cond_2
    const-string/jumbo v2, "false"

    #@85
    goto :goto_1
.end method
