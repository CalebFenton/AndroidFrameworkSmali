.class Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "EthernetNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ethernet/EthernetNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;


# direct methods
.method private constructor <init>(Lcom/android/server/ethernet/EthernetNetworkFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@0
    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@2
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ethernet/EthernetNetworkFactory;Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory;)V

    #@3
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-wrap0(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;)Z

    #@5
    .line 156
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-wrap3(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;Z)V

    #@5
    .line 151
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->-wrap2(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;)V

    #@5
    .line 161
    return-void
.end method
