.class Landroid/media/audiofx/Virtualizer$BaseParameterListener;
.super Ljava/lang/Object;
.source "Virtualizer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Virtualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/Virtualizer;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/Virtualizer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 514
    iput-object p1, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/Virtualizer;Landroid/media/audiofx/Virtualizer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/Virtualizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Virtualizer;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 11
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .line 518
    const/4 v0, 0x0

    .line 520
    .local v0, "l":Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-static {v1}, Landroid/media/audiofx/Virtualizer;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/Virtualizer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 521
    :try_start_8
    iget-object v2, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-static {v2}, Landroid/media/audiofx/Virtualizer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 522
    iget-object v2, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-static {v2}, Landroid/media/audiofx/Virtualizer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    move-result-object v2

    move-object v0, v2

    .line 524
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_38

    .line 525
    if-eqz v0, :cond_37

    .line 526
    const/4 v1, -0x1

    .line 527
    .local v1, "p":I
    const/4 v2, -0x1

    .line 529
    .local v2, "v":S
    array-length v3, p3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_25

    .line 530
    invoke-static {p3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    .line 532
    :cond_25
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    .line 533
    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v2

    .line 535
    :cond_2d
    const/4 v3, -0x1

    if-eq v1, v3, :cond_37

    if-eq v2, v3, :cond_37

    .line 536
    iget-object v3, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Virtualizer;IIS)V

    .line 539
    .end local v1    # "p":I
    .end local v2    # "v":S
    :cond_37
    return-void

    .line 524
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method
