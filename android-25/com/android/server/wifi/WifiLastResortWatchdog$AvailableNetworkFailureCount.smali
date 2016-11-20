.class public Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
.super Ljava/lang/Object;
.source "WifiLastResortWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiLastResortWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvailableNetworkFailureCount"
.end annotation


# instance fields
.field public age:I

.field public associationRejection:I

.field public authenticationFailure:I

.field public config:Landroid/net/wifi/WifiConfiguration;

.field public dhcpFailure:I

.field public ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "configParam"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 496
    const-string/jumbo v0, ""

    #@7
    iput-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    #@9
    .line 500
    iput v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    #@b
    .line 504
    iput v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    #@d
    .line 508
    iput v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    #@f
    .line 512
    iput v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    #@11
    .line 515
    iput-object p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    #@13
    .line 514
    return-void
.end method


# virtual methods
.method public incrementFailureCount(I)V
    .locals 1
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 522
    packed-switch p1, :pswitch_data_0

    #@3
    .line 521
    :goto_0
    return-void

    #@4
    .line 524
    :pswitch_0
    iget v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    #@a
    goto :goto_0

    #@b
    .line 527
    :pswitch_1
    iget v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    #@11
    goto :goto_0

    #@12
    .line 530
    :pswitch_2
    iget v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    #@18
    goto :goto_0

    #@19
    .line 522
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method resetCounts()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 540
    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    #@3
    .line 541
    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    #@5
    .line 542
    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    #@7
    .line 539
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ", HasEverConnected: "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 547
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    #@18
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    #@1f
    move-result v0

    #@20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@23
    move-result-object v0

    #@24
    .line 546
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 548
    const-string/jumbo v1, ", Failures: {"

    #@2b
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 549
    const-string/jumbo v1, "Assoc: "

    #@32
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 549
    iget v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    #@38
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 550
    const-string/jumbo v1, ", Auth: "

    #@3f
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 550
    iget v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    #@45
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 551
    const-string/jumbo v1, ", Dhcp: "

    #@4c
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 551
    iget v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    #@52
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 552
    const-string/jumbo v1, "}"

    #@59
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 553
    const-string/jumbo v1, ", Age: "

    #@60
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 553
    iget v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    #@66
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    return-object v0

    #@6f
    .line 547
    :cond_0
    const-string/jumbo v0, "null_config"

    #@72
    goto :goto_0
.end method
