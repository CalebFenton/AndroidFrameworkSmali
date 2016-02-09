.class Landroid/app/trust/TrustManager$1;
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


# instance fields
.field final synthetic this$0:Landroid/app/trust/TrustManager;


# direct methods
.method constructor <init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/trust/TrustManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 171
    iput-object p1, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 174
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 173
    :goto_0
    return-void

    #@8
    .line 176
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_0

    #@e
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v4, "initiatedByUser"

    #@15
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    .line 177
    .local v0, "flags":I
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b
    check-cast v1, Landroid/app/trust/TrustManager$TrustListener;

    #@1d
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@1f
    if-eqz v4, :cond_1

    #@21
    :goto_2
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@23
    invoke-interface {v1, v2, v3, v0}, Landroid/app/trust/TrustManager$TrustListener;->onTrustChanged(ZII)V

    #@26
    goto :goto_0

    #@27
    .line 176
    .end local v0    # "flags":I
    :cond_0
    const/4 v0, 0x0

    #@28
    .restart local v0    # "flags":I
    goto :goto_1

    #@29
    :cond_1
    move v2, v3

    #@2a
    .line 177
    goto :goto_2

    #@2b
    .line 180
    .end local v0    # "flags":I
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d
    check-cast v1, Landroid/app/trust/TrustManager$TrustListener;

    #@2f
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@31
    if-eqz v4, :cond_2

    #@33
    :goto_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@35
    invoke-interface {v1, v2, v3}, Landroid/app/trust/TrustManager$TrustListener;->onTrustManagedChanged(ZI)V

    #@38
    goto :goto_0

    #@39
    :cond_2
    move v2, v3

    #@3a
    goto :goto_3

    #@3b
    .line 174
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
