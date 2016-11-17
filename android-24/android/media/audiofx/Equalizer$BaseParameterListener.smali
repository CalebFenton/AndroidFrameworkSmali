.class Landroid/media/audiofx/Equalizer$BaseParameterListener;
.super Ljava/lang/Object;
.source "Equalizer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Equalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/Equalizer;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/Equalizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/Equalizer;

    #@0
    .prologue
    .line 393
    iput-object p1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$BaseParameterListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/Equalizer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;)V

    #@3
    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 9
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x4

    #@2
    const/4 v6, 0x0

    #@3
    .line 397
    const/4 v0, 0x0

    #@4
    .line 399
    .local v0, "l":Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    #@6
    invoke-static {v1}, Landroid/media/audiofx/Equalizer;->-get1(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    monitor-enter v2

    #@b
    .line 400
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    #@d
    invoke-static {v1}, Landroid/media/audiofx/Equalizer;->-get0(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 401
    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    #@15
    invoke-static {v1}, Landroid/media/audiofx/Equalizer;->-get0(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v0

    #@19
    .end local v0    # "l":Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    :cond_0
    monitor-exit v2

    #@1a
    .line 404
    if-eqz v0, :cond_3

    #@1c
    .line 405
    const/4 v3, -0x1

    #@1d
    .line 406
    .local v3, "p1":I
    const/4 v4, -0x1

    #@1e
    .line 407
    .local v4, "p2":I
    const/4 v5, -0x1

    #@1f
    .line 409
    .local v5, "v":I
    array-length v1, p3

    #@20
    if-lt v1, v7, :cond_1

    #@22
    .line 410
    invoke-static {p3, v6}, Landroid/media/audiofx/Equalizer;->byteArrayToInt([BI)I

    #@25
    move-result v3

    #@26
    .line 411
    array-length v1, p3

    #@27
    const/16 v2, 0x8

    #@29
    if-lt v1, v2, :cond_1

    #@2b
    .line 412
    invoke-static {p3, v7}, Landroid/media/audiofx/Equalizer;->byteArrayToInt([BI)I

    #@2e
    move-result v4

    #@2f
    .line 415
    :cond_1
    array-length v1, p4

    #@30
    const/4 v2, 0x2

    #@31
    if-ne v1, v2, :cond_4

    #@33
    .line 416
    invoke-static {p4, v6}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    #@36
    move-result v5

    #@37
    .line 421
    :cond_2
    :goto_0
    if-eq v3, v8, :cond_3

    #@39
    if-eq v5, v8, :cond_3

    #@3b
    .line 422
    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    #@3d
    move v2, p2

    #@3e
    invoke-interface/range {v0 .. v5}, Landroid/media/audiofx/Equalizer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Equalizer;IIII)V

    #@41
    .line 396
    .end local v3    # "p1":I
    .end local v4    # "p2":I
    .end local v5    # "v":I
    :cond_3
    return-void

    #@42
    .line 399
    .restart local v0    # "l":Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    :catchall_0
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1

    #@45
    .line 417
    .end local v0    # "l":Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .restart local v3    # "p1":I
    .restart local v4    # "p2":I
    .restart local v5    # "v":I
    :cond_4
    array-length v1, p4

    #@46
    if-ne v1, v7, :cond_2

    #@48
    .line 418
    invoke-static {p4, v6}, Landroid/media/audiofx/Equalizer;->byteArrayToInt([BI)I

    #@4b
    move-result v5

    #@4c
    goto :goto_0
.end method
