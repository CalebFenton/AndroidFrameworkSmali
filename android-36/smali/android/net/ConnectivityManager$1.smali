.class Landroid/net/ConnectivityManager$1;
.super Landroid/net/connectivity/android/net/INetworkActivityListener$Stub;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$l:Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# direct methods
.method constructor blacklist <init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/ConnectivityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2877
    iput-object p2, p0, Landroid/net/ConnectivityManager$1;->val$l:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    invoke-direct {p0}, Landroid/net/connectivity/android/net/INetworkActivityListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onNetworkActive()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2880
    iget-object v0, p0, Landroid/net/ConnectivityManager$1;->val$l:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    invoke-interface {v0}, Landroid/net/ConnectivityManager$OnNetworkActiveListener;->onNetworkActive()V

    .line 2881
    return-void
.end method
