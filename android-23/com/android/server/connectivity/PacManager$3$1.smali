.class Lcom/android/server/connectivity/PacManager$3$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/PacManager$3;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/PacManager$3;

    #@0
    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    #@2
    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public setProxyPort(I)V
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 323
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    #@3
    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    #@5
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->-get1(Lcom/android/server/connectivity/PacManager;)I

    #@8
    move-result v0

    #@9
    if-eq v0, v2, :cond_0

    #@b
    .line 325
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    #@d
    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    #@f
    const/4 v1, 0x0

    #@10
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PacManager;->-set1(Lcom/android/server/connectivity/PacManager;Z)Z

    #@13
    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    #@15
    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    #@17
    invoke-static {v0, p1}, Lcom/android/server/connectivity/PacManager;->-set2(Lcom/android/server/connectivity/PacManager;I)I

    #@1a
    .line 328
    if-eq p1, v2, :cond_1

    #@1c
    .line 329
    const-string/jumbo v0, "PacManager"

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "Local proxy is bound on "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 330
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    #@38
    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    #@3a
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->-wrap4(Lcom/android/server/connectivity/PacManager;)V

    #@3d
    .line 322
    :goto_0
    return-void

    #@3e
    .line 332
    :cond_1
    const-string/jumbo v0, "PacManager"

    #@41
    const-string/jumbo v1, "Received invalid port from Local Proxy, PAC will not be operational"

    #@44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_0
.end method
