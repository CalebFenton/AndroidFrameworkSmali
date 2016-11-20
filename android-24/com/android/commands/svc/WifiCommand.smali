.class public Lcom/android/commands/svc/WifiCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "WifiCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    const-string/jumbo v0, "wifi"

    #@3
    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    #@6
    .line 25
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/android/commands/svc/WifiCommand;->shortHelp()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "\n"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 35
    const-string/jumbo v1, "\n"

    #@17
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 36
    const-string/jumbo v1, "usage: svc wifi [enable|disable]\n"

    #@1e
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 37
    const-string/jumbo v1, "         Turn Wi-Fi on or off.\n\n"

    #@25
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 41
    const/4 v2, 0x0

    #@2
    .line 42
    .local v2, "validCommand":Z
    array-length v4, p1

    #@3
    const/4 v5, 0x2

    #@4
    if-lt v4, v5, :cond_2

    #@6
    .line 43
    const/4 v1, 0x0

    #@7
    .line 44
    .local v1, "flag":Z
    const-string/jumbo v4, "enable"

    #@a
    aget-object v5, p1, v6

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 45
    const/4 v1, 0x1

    #@13
    .line 46
    const/4 v2, 0x1

    #@14
    .line 51
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    #@16
    .line 53
    const-string/jumbo v4, "wifi"

    #@19
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1c
    move-result-object v4

    #@1d
    invoke-static {v4}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    #@20
    move-result-object v3

    #@21
    .line 55
    .local v3, "wifiMgr":Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-interface {v3, v1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 60
    :goto_1
    return-void

    #@25
    .line 47
    .end local v3    # "wifiMgr":Landroid/net/wifi/IWifiManager;
    :cond_1
    const-string/jumbo v4, "disable"

    #@28
    aget-object v5, p1, v6

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_0

    #@30
    .line 48
    const/4 v1, 0x0

    #@31
    .line 49
    const/4 v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 57
    .restart local v3    # "wifiMgr":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v0

    #@34
    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@36
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v6, "Wi-Fi operation failed: "

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4d
    goto :goto_1

    #@4e
    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "flag":Z
    .end local v3    # "wifiMgr":Landroid/net/wifi/IWifiManager;
    :cond_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@50
    invoke-virtual {p0}, Lcom/android/commands/svc/WifiCommand;->longHelp()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@57
    .line 40
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 30
    const-string/jumbo v0, "Control the Wi-Fi manager"

    #@3
    return-object v0
.end method
