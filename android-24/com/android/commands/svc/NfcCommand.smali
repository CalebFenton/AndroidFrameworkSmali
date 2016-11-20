.class public Lcom/android/commands/svc/NfcCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "NfcCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    const-string/jumbo v0, "nfc"

    #@3
    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    #@6
    .line 28
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/android/commands/svc/NfcCommand;->shortHelp()Ljava/lang/String;

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
    .line 40
    const-string/jumbo v1, "\n"

    #@17
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 41
    const-string/jumbo v1, "usage: svc nfc [enable|disable]\n"

    #@1e
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 42
    const-string/jumbo v1, "         Turn NFC on or off.\n\n"

    #@25
    .line 39
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
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 47
    const/4 v4, 0x0

    #@2
    .line 48
    .local v4, "validCommand":Z
    array-length v5, p1

    #@3
    const/4 v6, 0x2

    #@4
    if-lt v5, v6, :cond_4

    #@6
    .line 49
    const/4 v1, 0x0

    #@7
    .line 50
    .local v1, "flag":Z
    const-string/jumbo v5, "enable"

    #@a
    aget-object v6, p1, v7

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_1

    #@12
    .line 51
    const/4 v1, 0x1

    #@13
    .line 52
    const/4 v4, 0x1

    #@14
    .line 57
    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    #@16
    .line 59
    const-string/jumbo v5, "package"

    #@19
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1c
    move-result-object v5

    #@1d
    .line 58
    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@20
    move-result-object v3

    #@21
    .line 61
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    const-string/jumbo v5, "android.hardware.nfc"

    #@24
    const/4 v6, 0x0

    #@25
    invoke-interface {v3, v5, v6}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_3

    #@2b
    .line 63
    const-string/jumbo v5, "nfc"

    #@2e
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@31
    move-result-object v5

    #@32
    .line 62
    invoke-static {v5}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@35
    move-result-object v2

    #@36
    .line 65
    .local v2, "nfc":Landroid/nfc/INfcAdapter;
    if-eqz v1, :cond_2

    #@38
    .line 66
    :try_start_1
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->enable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 79
    .end local v2    # "nfc":Landroid/nfc/INfcAdapter;
    :goto_1
    return-void

    #@3c
    .line 53
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1
    const-string/jumbo v5, "disable"

    #@3f
    aget-object v6, p1, v7

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_0

    #@47
    .line 54
    const/4 v1, 0x0

    #@48
    .line 55
    const/4 v4, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 68
    .restart local v2    # "nfc":Landroid/nfc/INfcAdapter;
    .restart local v3    # "pm":Landroid/content/pm/IPackageManager;
    :cond_2
    const/4 v5, 0x1

    #@4b
    :try_start_2
    invoke-interface {v2, v5}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@4e
    goto :goto_1

    #@4f
    .line 69
    :catch_0
    move-exception v0

    #@50
    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    new-instance v6, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v7, "NFC operation failed: "

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@69
    goto :goto_1

    #@6a
    .line 75
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "nfc":Landroid/nfc/INfcAdapter;
    :catch_1
    move-exception v0

    #@6b
    .line 76
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6d
    const-string/jumbo v6, "RemoteException while calling PackageManager, is the system running?"

    #@70
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@73
    goto :goto_1

    #@74
    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_4
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@76
    const-string/jumbo v6, "NFC feature not supported."

    #@79
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@7c
    goto :goto_1

    #@7d
    .line 82
    .end local v1    # "flag":Z
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :cond_4
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7f
    invoke-virtual {p0}, Lcom/android/commands/svc/NfcCommand;->longHelp()Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@86
    .line 46
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 34
    const-string/jumbo v0, "Control NFC functions"

    #@3
    return-object v0
.end method
