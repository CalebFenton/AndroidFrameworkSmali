.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;
.super Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalClientInfo"
.end annotation


# static fields
.field private static final INTERNAL_CLIENT_HANDLER:I


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "requesterUid"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 1946
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    .line 1947
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V

    #@5
    .line 1946
    return-void
.end method


# virtual methods
.method public reportEvent(IIILjava/lang/Object;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1952
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v1

    #@4
    .line 1953
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    #@6
    .line 1954
    iput p2, v1, Landroid/os/Message;->arg1:I

    #@8
    .line 1955
    iput p3, v1, Landroid/os/Message;->arg2:I

    #@a
    .line 1956
    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 1958
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->mMessenger:Landroid/os/Messenger;

    #@e
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1951
    :goto_0
    return-void

    #@12
    .line 1959
    :catch_0
    move-exception v0

    #@13
    .line 1960
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Failed to send message: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@2c
    goto :goto_0
.end method

.method public sendRequestToClientHandler(I)V
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1989
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->sendRequestToClientHandler(ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)V

    #@4
    .line 1988
    return-void
.end method

.method public sendRequestToClientHandler(ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1970
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v1

    #@4
    .line 1971
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    #@6
    .line 1972
    const/4 v2, 0x0

    #@7
    iput v2, v1, Landroid/os/Message;->arg2:I

    #@9
    .line 1973
    if-eqz p2, :cond_0

    #@b
    .line 1974
    new-instance v0, Landroid/os/Bundle;

    #@d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@10
    .line 1975
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ScanSettings"

    #@13
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@16
    .line 1976
    const-string/jumbo v2, "WorkSource"

    #@19
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1c
    .line 1977
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e
    .line 1979
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->mMessenger:Landroid/os/Messenger;

    #@20
    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@22
    .line 1980
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->getUid()I

    #@25
    move-result v2

    #@26
    iput v2, v1, Landroid/os/Message;->sendingUid:I

    #@28
    .line 1981
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2a
    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    #@31
    .line 1969
    return-void
.end method
