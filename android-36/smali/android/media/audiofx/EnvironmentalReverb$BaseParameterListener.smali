.class Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;
.super Ljava/lang/Object;
.source "EnvironmentalReverb.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/EnvironmentalReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/EnvironmentalReverb;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/EnvironmentalReverb;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 452
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/EnvironmentalReverb;Landroid/media/audiofx/EnvironmentalReverb-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/EnvironmentalReverb;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 12
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, "l":Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {v1}, Landroid/media/audiofx/EnvironmentalReverb;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/EnvironmentalReverb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 459
    :try_start_8
    iget-object v2, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 460
    iget-object v2, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-static {v2}, Landroid/media/audiofx/EnvironmentalReverb;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    move-result-object v2

    move-object v0, v2

    .line 462
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_40

    .line 463
    if-eqz v0, :cond_3f

    .line 464
    const/4 v1, -0x1

    .line 465
    .local v1, "p":I
    const/4 v2, -0x1

    .line 467
    .local v2, "v":I
    array-length v3, p3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_25

    .line 468
    invoke-static {p3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    .line 470
    :cond_25
    array-length v3, p4

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2e

    .line 471
    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v2

    goto :goto_35

    .line 472
    :cond_2e
    array-length v3, p4

    if-ne v3, v4, :cond_35

    .line 473
    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v2

    .line 475
    :cond_35
    :goto_35
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3f

    if-eq v2, v3, :cond_3f

    .line 476
    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/EnvironmentalReverb;III)V

    .line 479
    .end local v1    # "p":I
    .end local v2    # "v":I
    :cond_3f
    return-void

    .line 462
    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v2
.end method
