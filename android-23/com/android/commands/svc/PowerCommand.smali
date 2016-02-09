.class public Lcom/android/commands/svc/PowerCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "PowerCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 28
    const-string/jumbo v0, "power"

    #@3
    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    #@6
    .line 27
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->shortHelp()Ljava/lang/String;

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
    .line 37
    const-string/jumbo v1, "\n"

    #@17
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 38
    const-string/jumbo v1, "usage: svc power stayon [true|false|usb|ac|wireless]\n"

    #@1e
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 39
    const-string/jumbo v1, "         Set the \'keep awake while plugged in\' setting.\n"

    #@25
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 40
    const-string/jumbo v1, "       svc power reboot [reason]\n"

    #@2c
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 41
    const-string/jumbo v1, "         Perform a runtime shutdown and reboot device with specified reason.\n"

    #@33
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 42
    const-string/jumbo v1, "       svc power shutdown\n"

    #@3a
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 43
    const-string/jumbo v1, "         Perform a runtime shutdown and power off the device.\n"

    #@41
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x2

    #@3
    .line 48
    array-length v4, p1

    #@4
    if-lt v4, v6, :cond_8

    #@6
    .line 50
    const-string/jumbo v4, "power"

    #@9
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@c
    move-result-object v4

    #@d
    .line 49
    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    #@10
    move-result-object v2

    #@11
    .line 51
    .local v2, "pm":Landroid/os/IPowerManager;
    const-string/jumbo v4, "stayon"

    #@14
    aget-object v5, p1, v7

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_5

    #@1c
    array-length v4, p1

    #@1d
    if-ne v4, v8, :cond_5

    #@1f
    .line 53
    const-string/jumbo v4, "true"

    #@22
    aget-object v5, p1, v6

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_1

    #@2a
    .line 54
    const/4 v3, 0x7

    #@2b
    .line 70
    .local v3, "val":I
    :goto_0
    if-eqz v3, :cond_0

    #@2d
    .line 73
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@30
    move-result-wide v4

    #@31
    const-string/jumbo v6, "PowerCommand"

    #@34
    const/4 v7, 0x0

    #@35
    invoke-interface {v2, v4, v5, v6, v7}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V

    #@38
    .line 75
    :cond_0
    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setStayOnSetting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 80
    :goto_1
    return-void

    #@3c
    .line 58
    .end local v3    # "val":I
    :cond_1
    const-string/jumbo v4, "false"

    #@3f
    aget-object v5, p1, v6

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_2

    #@47
    .line 59
    const/4 v3, 0x0

    #@48
    .restart local v3    # "val":I
    goto :goto_0

    #@49
    .line 60
    .end local v3    # "val":I
    :cond_2
    const-string/jumbo v4, "usb"

    #@4c
    aget-object v5, p1, v6

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_3

    #@54
    .line 61
    const/4 v3, 0x2

    #@55
    .restart local v3    # "val":I
    goto :goto_0

    #@56
    .line 62
    .end local v3    # "val":I
    :cond_3
    const-string/jumbo v4, "ac"

    #@59
    aget-object v5, p1, v6

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v4

    #@5f
    if-eqz v4, :cond_4

    #@61
    .line 63
    const/4 v3, 0x1

    #@62
    .restart local v3    # "val":I
    goto :goto_0

    #@63
    .line 64
    .end local v3    # "val":I
    :cond_4
    const-string/jumbo v4, "wireless"

    #@66
    aget-object v5, p1, v6

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_8

    #@6e
    .line 65
    const/4 v3, 0x4

    #@6f
    .restart local v3    # "val":I
    goto :goto_0

    #@70
    .line 77
    :catch_0
    move-exception v0

    #@71
    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@73
    new-instance v5, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v6, "Faild to set setting: "

    #@7b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8a
    goto :goto_1

    #@8b
    .line 81
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "val":I
    :cond_5
    const-string/jumbo v4, "reboot"

    #@8e
    aget-object v5, p1, v7

    #@90
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v4

    #@94
    if-eqz v4, :cond_7

    #@96
    .line 82
    const/4 v1, 0x0

    #@97
    .line 83
    .local v1, "mode":Ljava/lang/String;
    array-length v4, p1

    #@98
    if-ne v4, v8, :cond_6

    #@9a
    .line 84
    aget-object v1, p1, v6

    #@9c
    .line 88
    .end local v1    # "mode":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    #@9d
    const/4 v5, 0x1

    #@9e
    :try_start_1
    invoke-interface {v2, v4, v1, v5}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@a1
    .line 92
    :goto_2
    return-void

    #@a2
    .line 89
    :catch_1
    move-exception v0

    #@a3
    .line 90
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a5
    const-string/jumbo v5, "Failed to reboot."

    #@a8
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ab
    goto :goto_2

    #@ac
    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string/jumbo v4, "shutdown"

    #@af
    aget-object v5, p1, v7

    #@b1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v4

    #@b5
    if-eqz v4, :cond_8

    #@b7
    .line 96
    const/4 v4, 0x0

    #@b8
    const/4 v5, 0x1

    #@b9
    :try_start_2
    invoke-interface {v2, v4, v5}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@bc
    .line 100
    :goto_3
    return-void

    #@bd
    .line 97
    :catch_2
    move-exception v0

    #@be
    .line 98
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c0
    const-string/jumbo v5, "Failed to shutdown."

    #@c3
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c6
    goto :goto_3

    #@c7
    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pm":Landroid/os/IPowerManager;
    :cond_8
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c9
    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->longHelp()Ljava/lang/String;

    #@cc
    move-result-object v5

    #@cd
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d0
    .line 46
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 32
    const-string/jumbo v0, "Control the power manager"

    #@3
    return-object v0
.end method
