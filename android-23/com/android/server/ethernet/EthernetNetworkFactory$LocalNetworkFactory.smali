.class Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "EthernetNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ethernet/EthernetNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalNetworkFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;


# direct methods
.method constructor <init>(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@2
    .line 113
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@4
    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    #@7
    invoke-direct {p0, p4, p3, p2, v0}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    #@a
    .line 112
    return-void
.end method


# virtual methods
.method protected startNetwork()V
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@2
    invoke-virtual {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->onRequestNetwork()V

    #@5
    .line 116
    return-void
.end method

.method protected stopNetwork()V
    .locals 0

    #@0
    .prologue
    .line 119
    return-void
.end method
