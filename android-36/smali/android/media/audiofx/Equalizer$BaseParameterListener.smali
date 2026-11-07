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
.field final synthetic blacklist this$0:Landroid/media/audiofx/Equalizer;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/Equalizer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 392
    iput-object p1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 14
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .line 396
    const/4 v1, 0x0

    .line 398
    .local v1, "l":Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    iget-object v0, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 399
    :try_start_8
    iget-object v0, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_65

    if-eqz v0, :cond_1d

    .line 400
    :try_start_10
    iget-object v0, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_19

    move-object v1, v0

    move-object v3, v1

    goto :goto_1e

    .line 402
    :catchall_19
    move-exception v0

    move v5, p2

    goto/16 :goto_67

    .line 399
    :cond_1d
    move-object v3, v1

    .line 402
    .end local v1    # "l":Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .local v3, "l":Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    :goto_1e
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_61

    .line 403
    if-eqz v3, :cond_5f

    .line 404
    const/4 v0, -0x1

    .line 405
    .local v0, "p1":I
    const/4 v1, -0x1

    .line 406
    .local v1, "p2":I
    const/4 v2, -0x1

    .line 408
    .local v2, "v":I
    array-length v4, p3

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-lt v4, v6, :cond_3a

    .line 409
    invoke-static {p3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    .line 410
    array-length v4, p3

    const/16 v7, 0x8

    if-lt v4, v7, :cond_38

    .line 411
    invoke-static {p3, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    move v7, v1

    goto :goto_3b

    .line 410
    :cond_38
    move v7, v1

    goto :goto_3b

    .line 408
    :cond_3a
    move v7, v1

    .line 414
    .end local v1    # "p2":I
    .local v7, "p2":I
    :goto_3b
    array-length v1, p4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_45

    .line 415
    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v2

    move v8, v2

    goto :goto_4f

    .line 416
    :cond_45
    array-length v1, p4

    if-ne v1, v6, :cond_4e

    .line 417
    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v2

    move v8, v2

    goto :goto_4f

    .line 416
    :cond_4e
    move v8, v2

    .line 420
    .end local v2    # "v":I
    .local v8, "v":I
    :goto_4f
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5c

    if-eq v8, v1, :cond_5c

    .line 421
    iget-object v4, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    move v5, p2

    move v6, v0

    .end local v0    # "p1":I
    .end local p2    # "status":I
    .local v5, "status":I
    .local v6, "p1":I
    invoke-interface/range {v3 .. v8}, Landroid/media/audiofx/Equalizer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Equalizer;IIII)V

    goto :goto_60

    .line 420
    .end local v5    # "status":I
    .end local v6    # "p1":I
    .restart local v0    # "p1":I
    .restart local p2    # "status":I
    :cond_5c
    move v5, p2

    move v6, v0

    .end local v0    # "p1":I
    .end local p2    # "status":I
    .restart local v5    # "status":I
    .restart local v6    # "p1":I
    goto :goto_60

    .line 403
    .end local v5    # "status":I
    .end local v6    # "p1":I
    .end local v7    # "p2":I
    .end local v8    # "v":I
    .restart local p2    # "status":I
    :cond_5f
    move v5, p2

    .line 424
    .end local p2    # "status":I
    .restart local v5    # "status":I
    :goto_60
    return-void

    .line 402
    .end local v5    # "status":I
    .restart local p2    # "status":I
    :catchall_61
    move-exception v0

    move v5, p2

    move-object v1, v3

    .end local p2    # "status":I
    .restart local v5    # "status":I
    goto :goto_67

    .end local v3    # "l":Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .end local v5    # "status":I
    .local v1, "l":Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .restart local p2    # "status":I
    :catchall_65
    move-exception v0

    move v5, p2

    .end local p2    # "status":I
    .restart local v5    # "status":I
    :goto_67
    :try_start_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_69

    throw v0

    :catchall_69
    move-exception v0

    goto :goto_67
.end method
