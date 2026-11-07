.class Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;
.super Ljava/lang/Object;
.source "LoudnessEnhancer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/LoudnessEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/LoudnessEnhancer;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/LoudnessEnhancer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 163
    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/LoudnessEnhancer;Landroid/media/audiofx/LoudnessEnhancer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;-><init>(Landroid/media/audiofx/LoudnessEnhancer;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 11
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .line 168
    if-eqz p2, :cond_3

    .line 169
    return-void

    .line 171
    :cond_3
    const/4 v0, 0x0

    .line 172
    .local v0, "l":Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {v1}, Landroid/media/audiofx/LoudnessEnhancer;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/LoudnessEnhancer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 173
    :try_start_b
    iget-object v2, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {v2}, Landroid/media/audiofx/LoudnessEnhancer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 174
    iget-object v2, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {v2}, Landroid/media/audiofx/LoudnessEnhancer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    move-result-object v2

    move-object v0, v2

    .line 176
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_3d

    .line 177
    if-eqz v0, :cond_3c

    .line 178
    const/4 v1, -0x1

    .line 179
    .local v1, "p":I
    const/high16 v2, -0x80000000

    .line 181
    .local v2, "v":I
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_29

    .line 182
    invoke-static {p3, v4}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    .line 184
    :cond_29
    array-length v3, p4

    if-ne v3, v5, :cond_30

    .line 185
    invoke-static {p4, v4}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v2

    .line 187
    :cond_30
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3c

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3c

    .line 188
    iget-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-interface {v0, v3, v1, v2}, Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/LoudnessEnhancer;II)V

    .line 191
    .end local v1    # "p":I
    .end local v2    # "v":I
    :cond_3c
    return-void

    .line 176
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method
