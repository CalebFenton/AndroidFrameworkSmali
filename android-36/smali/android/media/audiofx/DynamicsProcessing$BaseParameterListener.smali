.class Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/DynamicsProcessing;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/DynamicsProcessing;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2241
    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2243
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/DynamicsProcessing;Landroid/media/audiofx/DynamicsProcessing-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;-><init>(Landroid/media/audiofx/DynamicsProcessing;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 11
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .line 2246
    if-eqz p2, :cond_3

    .line 2247
    return-void

    .line 2249
    :cond_3
    const/4 v0, 0x0

    .line 2250
    .local v0, "l":Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-static {v1}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/DynamicsProcessing;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2251
    :try_start_b
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-static {v2}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/DynamicsProcessing;)Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 2252
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-static {v2}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/DynamicsProcessing;)Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;

    move-result-object v2

    move-object v0, v2

    .line 2254
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_3d

    .line 2255
    if-eqz v0, :cond_3c

    .line 2256
    const/4 v1, -0x1

    .line 2257
    .local v1, "p":I
    const/high16 v2, -0x80000000

    .line 2259
    .local v2, "v":I
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_29

    .line 2260
    invoke-static {p3, v4}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    .line 2262
    :cond_29
    array-length v3, p4

    if-ne v3, v5, :cond_30

    .line 2263
    invoke-static {p4, v4}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v2

    .line 2265
    :cond_30
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3c

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3c

    .line 2266
    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$BaseParameterListener;->this$0:Landroid/media/audiofx/DynamicsProcessing;

    invoke-interface {v0, v3, v1, v2}, Landroid/media/audiofx/DynamicsProcessing$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/DynamicsProcessing;II)V

    .line 2269
    .end local v1    # "p":I
    .end local v2    # "v":I
    :cond_3c
    return-void

    .line 2254
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method
