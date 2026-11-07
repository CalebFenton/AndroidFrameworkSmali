.class Landroid/app/trust/TrustManager$2;
.super Landroid/os/Handler;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/trust/TrustManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 348
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 351
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_86

    goto/16 :goto_85

    .line 373
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/TrustManager$TrustListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 374
    invoke-interface {v0, v1, v2}, Landroid/app/trust/TrustManager$TrustListener;->onIsActiveUnlockRunningChanged(ZI)V

    goto/16 :goto_85

    .line 370
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/TrustManager$TrustListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/app/trust/TrustManager$TrustListener;->onEnabledTrustAgentsChanged(I)V

    .line 371
    goto/16 :goto_85

    .line 366
    :pswitch_25
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 367
    .local v0, "message":Ljava/lang/CharSequence;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/TrustManager$TrustListener;

    invoke-interface {v1, v0}, Landroid/app/trust/TrustManager$TrustListener;->onTrustError(Ljava/lang/CharSequence;)V

    .line 368
    goto :goto_85

    .line 363
    .end local v0    # "message":Ljava/lang/CharSequence;
    :pswitch_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/TrustManager$TrustListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/app/trust/TrustManager$TrustListener;->onTrustManagedChanged(ZI)V

    .line 364
    goto :goto_85

    .line 353
    :pswitch_48
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    .line 354
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_56

    const-string/jumbo v3, "initiatedByUser"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_57

    :cond_56
    move v3, v2

    :goto_57
    move v8, v3

    .line 355
    .local v8, "flags":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_5e

    move v5, v1

    goto :goto_5f

    :cond_5e
    move v5, v2

    .line 357
    .local v5, "enabled":Z
    :goto_5f
    if-eqz v0, :cond_69

    const-string/jumbo v3, "newlyUnlocked"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_6a

    :cond_69
    move v3, v2

    .line 358
    .local v3, "newlyUnlockedInt":I
    :goto_6a
    if-eqz v3, :cond_6e

    move v6, v1

    goto :goto_6f

    :cond_6e
    move v6, v2

    .line 359
    .local v6, "newlyUnlocked":Z
    :goto_6f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/app/trust/TrustManager$TrustListener;

    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "grantedMessages"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 359
    invoke-interface/range {v4 .. v9}, Landroid/app/trust/TrustManager$TrustListener;->onTrustChanged(ZZIILjava/util/List;)V

    .line 361
    nop

    .line 377
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "newlyUnlockedInt":I
    .end local v5    # "enabled":Z
    .end local v6    # "newlyUnlocked":Z
    .end local v8    # "flags":I
    :goto_85
    return-void

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_48
        :pswitch_38
        :pswitch_25
        :pswitch_1a
        :pswitch_9
    .end packed-switch
.end method
