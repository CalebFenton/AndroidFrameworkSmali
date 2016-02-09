.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field private mReqList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mServList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p2, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 3135
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3136
    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    #@7
    .line 3137
    new-instance v0, Landroid/util/SparseArray;

    #@9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;

    #@e
    .line 3138
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;

    #@15
    .line 3135
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p2, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;)V

    #@3
    return-void
.end method
