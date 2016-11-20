.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
.super Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalClientInfo"
.end annotation


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private mDisconnected:Z

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "uid"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "c"    # Lcom/android/internal/util/AsyncChannel;

    #@0
    .prologue
    .line 1999
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    .line 2000
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V

    #@5
    .line 1997
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mDisconnected:Z

    #@8
    .line 2001
    iput-object p4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@a
    .line 1999
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    #@0
    .prologue
    .line 2014
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mDisconnected:Z

    #@3
    .line 2018
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@5
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->removeWifiChangeHandler(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@c
    .line 2019
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->removePnoSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@15
    .line 2020
    invoke-super {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->cleanup()V

    #@18
    .line 2013
    return-void
.end method

.method public reportEvent(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2007
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mDisconnected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2008
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@9
    .line 2006
    :cond_0
    return-void
.end method
