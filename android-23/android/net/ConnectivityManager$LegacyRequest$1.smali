.class Landroid/net/ConnectivityManager$LegacyRequest$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager$LegacyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/ConnectivityManager$LegacyRequest;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .locals 0
    .param p1, "this$1"    # Landroid/net/ConnectivityManager$LegacyRequest;

    #@0
    .prologue
    .line 1102
    iput-object p1, p0, Landroid/net/ConnectivityManager$LegacyRequest$1;->this$1:Landroid/net/ConnectivityManager$LegacyRequest;

    #@2
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 1105
    iget-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest$1;->this$1:Landroid/net/ConnectivityManager$LegacyRequest;

    #@2
    iput-object p1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    #@4
    .line 1106
    const-string/jumbo v0, "ConnectivityManager"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "startUsingNetworkFeature got Network:"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1107
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z

    #@21
    .line 1104
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 1111
    iget-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest$1;->this$1:Landroid/net/ConnectivityManager$LegacyRequest;

    #@2
    iget-object v0, v0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    #@4
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest$1;->this$1:Landroid/net/ConnectivityManager$LegacyRequest;

    #@c
    invoke-static {v0}, Landroid/net/ConnectivityManager$LegacyRequest;->-wrap0(Landroid/net/ConnectivityManager$LegacyRequest;)V

    #@f
    .line 1112
    :cond_0
    const-string/jumbo v0, "ConnectivityManager"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "startUsingNetworkFeature lost Network:"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1110
    return-void
.end method
