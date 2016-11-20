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
.field final synthetic this$0:Landroid/media/audiofx/BassBoost;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/BassBoost;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/BassBoost;

    #@0
    .prologue
    .line 167
    iput-object p1, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/BassBoost;Landroid/media/audiofx/BassBoost$BaseParameterListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/BassBoost;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/audiofx/BassBoost$BaseParameterListener;-><init>(Landroid/media/audiofx/BassBoost;)V

    #@3
    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 7
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 171
    const/4 v0, 0x0

    #@3
    .line 173
    .local v0, "l":Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    #@5
    invoke-static {v3}, Landroid/media/audiofx/BassBoost;->-get1(Landroid/media/audiofx/BassBoost;)Ljava/lang/Object;

    #@8
    move-result-object v4

    #@9
    monitor-enter v4

    #@a
    .line 174
    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    #@c
    invoke-static {v3}, Landroid/media/audiofx/BassBoost;->-get0(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    #@f
    move-result-object v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 175
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    #@14
    invoke-static {v3}, Landroid/media/audiofx/BassBoost;->-get0(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v0

    #@18
    .end local v0    # "l":Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    :cond_0
    monitor-exit v4

    #@19
    .line 178
    if-eqz v0, :cond_3

    #@1b
    .line 179
    const/4 v1, -0x1

    #@1c
    .line 180
    .local v1, "p":I
    const/4 v2, -0x1

    #@1d
    .line 182
    .local v2, "v":S
    array-length v3, p3

    #@1e
    const/4 v4, 0x4

    #@1f
    if-ne v3, v4, :cond_1

    #@21
    .line 183
    invoke-static {p3, v6}, Landroid/media/audiofx/BassBoost;->byteArrayToInt([BI)I

    #@24
    move-result v1

    #@25
    .line 185
    :cond_1
    array-length v3, p4

    #@26
    const/4 v4, 0x2

    #@27
    if-ne v3, v4, :cond_2

    #@29
    .line 186
    invoke-static {p4, v6}, Landroid/media/audiofx/BassBoost;->byteArrayToShort([BI)S

    #@2c
    move-result v2

    #@2d
    .line 188
    .end local v2    # "v":S
    :cond_2
    if-eq v1, v5, :cond_3

    #@2f
    if-eq v2, v5, :cond_3

    #@31
    .line 189
    iget-object v3, p0, Landroid/media/audiofx/BassBoost$BaseParameterListener;->this$0:Landroid/media/audiofx/BassBoost;

    #@33
    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/BassBoost$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/BassBoost;IIS)V

    #@36
    .line 170
    .end local v1    # "p":I
    :cond_3
    return-void

    #@37
    .line 173
    .restart local v0    # "l":Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    :catchall_0
    move-exception v3

    #@38
    monitor-exit v4

    #@39
    throw v3
.end method
