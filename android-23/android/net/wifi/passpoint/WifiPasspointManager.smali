.class public Landroid/net/wifi/passpoint/WifiPasspointManager;
.super Ljava/lang/Object;
.source "WifiPasspointManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;,
        Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;,
        Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;,
        Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;,
        Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x28000

.field private static final DBG:Z = true

.field public static final PASSPOINT_CRED_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.passpoint.CRED_CHANGE"

.field public static final PASSPOINT_OSU_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.passpoint.OSU_AVAILABLE"

.field public static final PASSPOINT_STATE_ACCESS:I = 0x3

.field public static final PASSPOINT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.passpoint.STATE_CHANGE"

.field public static final PASSPOINT_STATE_DISABLED:I = 0x1

.field public static final PASSPOINT_STATE_DISCOVERY:I = 0x2

.field public static final PASSPOINT_STATE_PROVISION:I = 0x4

.field public static final PASSPOINT_STATE_UNKNOWN:I = 0x0

.field public static final PASSPOINT_USER_REM_REQ_ACTION:Ljava/lang/String; = "android.net.wifi.passpoint.USER_REM_REQ"

.field public static final PROTOCOL_DM:Ljava/lang/String; = "OMA-DM-ClientInitiated"

.field public static final PROTOCOL_SOAP:Ljava/lang/String; = "SPP-ClientInitiated"

.field public static final REASON_BUSY:I = 0x2

.field public static final REASON_ERROR:I = 0x0

.field public static final REASON_INVALID_PARAMETER:I = 0x3

.field public static final REASON_NOT_TRUSTED:I = 0x4

.field public static final REASON_WIFI_DISABLED:I = 0x1

.field public static final REQUEST_ANQP_INFO:I = 0x28001

.field public static final REQUEST_ANQP_INFO_FAILED:I = 0x28002

.field public static final REQUEST_ANQP_INFO_SUCCEEDED:I = 0x28003

.field public static final REQUEST_OSU_ICON:I = 0x28004

.field public static final REQUEST_OSU_ICON_FAILED:I = 0x28005

.field public static final REQUEST_OSU_ICON_SUCCEEDED:I = 0x28006

.field public static final START_OSU:I = 0x28007

.field public static final START_OSU_BROWSER:I = 0x28008

.field public static final START_OSU_FAILED:I = 0x28009

.field public static final START_OSU_SUCCEEDED:I = 0x2800a

.field private static final TAG:Ljava/lang/String; = "PasspointManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/passpoint/IWifiPasspointManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/passpoint/IWifiPasspointManager;

    #@0
    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 404
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mContext:Landroid/content/Context;

    #@5
    .line 405
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    #@7
    .line 403
    return-void
.end method

.method private static checkChannel(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)V
    .locals 2
    .param p0, "c"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@0
    .prologue
    .line 565
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Channel needs to be initialized"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 564
    :cond_0
    return-void
.end method


# virtual methods
.method public addCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    .locals 2
    .param p1, "cred"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@0
    .prologue
    .line 514
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->addCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 515
    :catch_0
    move-exception v0

    #@8
    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public connect(Landroid/net/wifi/passpoint/WifiPasspointPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroid/net/wifi/passpoint/WifiPasspointPolicy;

    #@0
    .prologue
    .line 561
    return-void
.end method

.method public getCredentials()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointCredential;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 500
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->getCredentials()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 501
    :catch_0
    move-exception v0

    #@8
    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    #@0
    .prologue
    .line 440
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 441
    :catch_0
    move-exception v0

    #@8
    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getPasspointState()I
    .locals 2

    #@0
    .prologue
    .line 448
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->getPasspointState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 449
    :catch_0
    move-exception v0

    #@8
    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .locals 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 421
    invoke-virtual {p0}, Landroid/net/wifi/passpoint/WifiPasspointManager;->getMessenger()Landroid/os/Messenger;

    #@4
    move-result-object v1

    #@5
    .line 422
    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_0

    #@7
    .line 423
    return-object v4

    #@8
    .line 425
    :cond_0
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    #@a
    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)V

    #@d
    .line 426
    .local v0, "c":Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    invoke-static {v0}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-get0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    #@10
    move-result-object v2

    #@11
    invoke-static {v0}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-get2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 428
    return-object v0

    #@1c
    .line 430
    :cond_1
    return-object v4
.end method

.method public removeCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    .locals 2
    .param p1, "cred"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@0
    .prologue
    .line 544
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->removeCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 545
    :catch_0
    move-exception v0

    #@8
    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public requestAnqpInfo(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/util/List;ILandroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;)V
    .locals 8
    .param p1, "c"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p3, "mask"    # I
    .param p4, "listener"    # Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;I",
            "Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 456
    .local p2, "requested":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-string/jumbo v5, "PasspointManager"

    #@3
    const-string/jumbo v6, "requestAnqpInfo start"

    #@6
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 457
    const-string/jumbo v5, "PasspointManager"

    #@c
    new-instance v6, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v7, "requested.size="

    #@14
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@1b
    move-result v7

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 458
    invoke-static {p1}, Landroid/net/wifi/passpoint/WifiPasspointManager;->checkChannel(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)V

    #@2a
    .line 459
    new-instance v2, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2f
    .line 460
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v4

    #@33
    .local v4, "sr$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_1

    #@39
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Landroid/net/wifi/ScanResult;

    #@3f
    .line 461
    .local v3, "sr":Landroid/net/wifi/ScanResult;
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@41
    const-string/jumbo v6, "[HS20]"

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_0

    #@4a
    .line 462
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4d
    .line 463
    invoke-static {p1, v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap6(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/ScanResult;)V

    #@50
    .line 464
    const-string/jumbo v5, "PasspointManager"

    #@53
    new-instance v6, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v7, "adding "

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    iget-object v7, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    goto :goto_0

    #@6d
    .line 466
    .end local v3    # "sr":Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@70
    move-result v0

    #@71
    .line 467
    .local v0, "count":I
    const-string/jumbo v5, "PasspointManager"

    #@74
    new-instance v6, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v7, "after filter, count="

    #@7c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v6

    #@88
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 468
    if-nez v0, :cond_2

    #@8d
    .line 470
    const-string/jumbo v5, "PasspointManager"

    #@90
    const-string/jumbo v6, "ANQP info request contains no HS20 APs, skipped"

    #@93
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    .line 471
    invoke-interface {p4}, Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;->onSuccess()V

    #@99
    .line 472
    return-void

    #@9a
    .line 474
    :cond_2
    invoke-static {p1, p4, v0}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap1(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/lang/Object;I)I

    #@9d
    move-result v1

    #@9e
    .line 475
    .local v1, "key":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a1
    move-result-object v4

    #@a2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@a5
    move-result v5

    #@a6
    if-eqz v5, :cond_3

    #@a8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ab
    move-result-object v3

    #@ac
    check-cast v3, Landroid/net/wifi/ScanResult;

    #@ae
    .line 476
    .restart local v3    # "sr":Landroid/net/wifi/ScanResult;
    invoke-static {p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-get0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    #@b1
    move-result-object v5

    #@b2
    const v6, 0x28001

    #@b5
    invoke-virtual {v5, v6, p3, v1, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@b8
    goto :goto_1

    #@b9
    .line 477
    .end local v3    # "sr":Landroid/net/wifi/ScanResult;
    :cond_3
    const-string/jumbo v5, "PasspointManager"

    #@bc
    const-string/jumbo v6, "requestAnqpInfo end"

    #@bf
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    .line 455
    return-void
.end method

.method public requestCredentialMatch(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointPolicy;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 486
    .local p1, "requested":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->requestCredentialMatch(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 487
    :catch_0
    move-exception v0

    #@8
    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public requestOsuIcons(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/util/List;ILandroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p3, "resolution"    # I
    .param p4, "listener"    # Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;",
            ">;I",
            "Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 481
    .local p2, "requested":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;>;"
    return-void
.end method

.method public startOsu(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p2, "osu"    # Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    .param p3, "listener"    # Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    #@0
    .prologue
    .line 551
    const-string/jumbo v1, "PasspointManager"

    #@3
    const-string/jumbo v2, "startOsu start"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 552
    invoke-static {p1}, Landroid/net/wifi/passpoint/WifiPasspointManager;->checkChannel(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)V

    #@c
    .line 553
    invoke-static {p1, p3}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    .line 554
    .local v0, "key":I
    invoke-static {p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-get0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    #@13
    move-result-object v1

    #@14
    const v2, 0x28007

    #@17
    const/4 v3, 0x0

    #@18
    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@1b
    .line 555
    const-string/jumbo v1, "PasspointManager"

    #@1e
    const-string/jumbo v2, "startOsu end"

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 550
    return-void
.end method

.method public startRemediation(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    #@0
    .prologue
    .line 558
    return-void
.end method

.method public updateCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    .locals 2
    .param p1, "cred"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@0
    .prologue
    .line 529
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->updateCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 530
    :catch_0
    move-exception v0

    #@8
    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method
