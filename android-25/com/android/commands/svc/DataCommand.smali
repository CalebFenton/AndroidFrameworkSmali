.class public Lcom/android/commands/svc/DataCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "DataCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    const-string/jumbo v0, "data"

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
    invoke-virtual {p0}, Lcom/android/commands/svc/DataCommand;->shortHelp()Ljava/lang/String;

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
    const-string/jumbo v1, "usage: svc data [enable|disable]\n"

    #@1e
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 37
    const-string/jumbo v1, "         Turn mobile data on or off.\n\n"

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
    const/4 v3, 0x0

    #@2
    .line 42
    .local v3, "validCommand":Z
    array-length v4, p1

    #@3
    const/4 v5, 0x2

    #@4
    if-lt v4, v5, :cond_3

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
    const/4 v3, 0x1

    #@14
    .line 51
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    #@16
    .line 53
    const-string/jumbo v4, "phone"

    #@19
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1c
    move-result-object v4

    #@1d
    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    #@20
    move-result-object v2

    #@21
    .line 55
    .local v2, "phoneMgr":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    #@23
    .line 56
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 63
    :goto_1
    return-void

    #@27
    .line 47
    .end local v2    # "phoneMgr":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const-string/jumbo v4, "disable"

    #@2a
    aget-object v5, p1, v6

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_0

    #@32
    .line 48
    const/4 v1, 0x0

    #@33
    .line 49
    const/4 v3, 0x1

    #@34
    goto :goto_0

    #@35
    .line 58
    .restart local v2    # "phoneMgr":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@38
    goto :goto_1

    #@39
    .line 60
    :catch_0
    move-exception v0

    #@3a
    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3c
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v6, "Mobile data operation failed: "

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@53
    goto :goto_1

    #@54
    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "flag":Z
    .end local v2    # "phoneMgr":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@56
    invoke-virtual {p0}, Lcom/android/commands/svc/DataCommand;->longHelp()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    .line 40
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 30
    const-string/jumbo v0, "Control mobile data connectivity"

    #@3
    return-object v0
.end method
