.class Landroid/app/trust/TrustManager$2;
.super Landroid/app/trust/ITrustListener$Stub;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/trust/TrustManager;

.field final synthetic val$trustListener:Landroid/app/trust/TrustManager$TrustListener;


# direct methods
.method constructor <init>(Landroid/app/trust/TrustManager;Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/trust/TrustManager;
    .param p2, "val$trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Landroid/app/trust/TrustManager$2;->this$0:Landroid/app/trust/TrustManager;

    #@2
    iput-object p2, p0, Landroid/app/trust/TrustManager$2;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    #@4
    invoke-direct {p0}, Landroid/app/trust/ITrustListener$Stub;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onTrustChanged(ZII)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 113
    iget-object v3, p0, Landroid/app/trust/TrustManager$2;->this$0:Landroid/app/trust/TrustManager;

    #@4
    invoke-static {v3}, Landroid/app/trust/TrustManager;->-get0(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    #@7
    move-result-object v3

    #@8
    if-eqz p1, :cond_0

    #@a
    move v1, v2

    #@b
    .line 114
    :cond_0
    iget-object v4, p0, Landroid/app/trust/TrustManager$2;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    #@d
    .line 113
    invoke-virtual {v3, v2, v1, p2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    .line 115
    .local v0, "m":Landroid/os/Message;
    if-eqz p3, :cond_1

    #@13
    .line 116
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "initiatedByUser"

    #@1a
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1d
    .line 118
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@20
    .line 112
    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 4
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/app/trust/TrustManager$2;->this$0:Landroid/app/trust/TrustManager;

    #@2
    invoke-static {v0}, Landroid/app/trust/TrustManager;->-get0(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    if-eqz p1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 124
    :goto_0
    iget-object v2, p0, Landroid/app/trust/TrustManager$2;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    #@b
    .line 123
    const/4 v3, 0x2

    #@c
    invoke-virtual {v1, v3, v0, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 122
    return-void

    #@14
    .line 123
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method
