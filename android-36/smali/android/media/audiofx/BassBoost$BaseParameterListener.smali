.class Landroid/media/audiofx/BassBoost$BaseParameterListener;
.super Ljava/lang/Object;
.source "BassBoost.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/BassBoost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/BassBoost;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/BassBoost;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/BassBoost;Landroid/media/audiofx/BassBoost-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/BassBoost$BaseParameterListener;-><init>(Landroid/media/audiofx/BassBoost;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 11
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "l":Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-static {v1}, Landroid/media/audiofx/BassBoost;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/BassBoost;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 174
    :try_start_8
    iget-object v2, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-static {v2}, Landroid/media/audiofx/BassBoost;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 175
    iget-object v2, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-static {v2}, Landroid/media/audiofx/BassBoost;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    move-result-object v2

    move-object v0, v2

    .line 177
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_38

    .line 178
    if-eqz v0, :cond_37

    .line 179
    const/4 v1, -0x1

    .line 180
    .local v1, "p":I
    const/4 v2, -0x1

    .line 182
    .local v2, "v":S
    array-length v3, p3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_25

    .line 183
    invoke-static {p3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    .line 185
    :cond_25
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    .line 186
    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v2

    .line 188
    :cond_2d
    const/4 v3, -0x1

    if-eq v1, v3, :cond_37

    if-eq v2, v3, :cond_37

    .line 189
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/BassBoost$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/BassBoost;IIS)V

    .line 192
    .end local v1    # "p":I
    .end local v2    # "v":S
    :cond_37
    return-void

    .line 177
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method
