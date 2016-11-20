.class public Lcom/android/commands/svc/UsbCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "UsbCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 27
    const-string/jumbo v0, "usb"

    #@3
    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    #@6
    .line 26
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/android/commands/svc/UsbCommand;->shortHelp()Ljava/lang/String;

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
    .line 38
    const-string/jumbo v1, "\n"

    #@17
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 39
    const-string/jumbo v1, "usage: svc usb setFunction [function]\n"

    #@1e
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 40
    const-string/jumbo v1, "         Set the current usb function.\n\n"

    #@25
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 41
    const-string/jumbo v1, "       svc usb getFunction\n"

    #@2c
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 42
    const-string/jumbo v1, "          Gets the list of currently enabled functions\n"

    #@33
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    .line 47
    const/4 v2, 0x0

    #@3
    .line 48
    .local v2, "validCommand":Z
    array-length v3, p1

    #@4
    if-lt v3, v4, :cond_2

    #@6
    .line 49
    const-string/jumbo v3, "setFunction"

    #@9
    aget-object v4, p1, v5

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 51
    const-string/jumbo v3, "usb"

    #@14
    .line 50
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    invoke-static {v3}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    #@1b
    move-result-object v1

    #@1c
    .line 53
    .local v1, "usbMgr":Landroid/hardware/usb/IUsbManager;
    :try_start_0
    array-length v3, p1

    #@1d
    const/4 v4, 0x3

    #@1e
    if-lt v3, v4, :cond_0

    #@20
    const/4 v3, 0x2

    #@21
    aget-object v3, p1, v3

    #@23
    :goto_0
    invoke-interface {v1, v3}, Landroid/hardware/usb/IUsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 57
    :goto_1
    return-void

    #@27
    .line 53
    :cond_0
    const/4 v3, 0x0

    #@28
    goto :goto_0

    #@29
    .line 54
    :catch_0
    move-exception v0

    #@2a
    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "Error communicating with UsbManager: "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    goto :goto_1

    #@44
    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "usbMgr":Landroid/hardware/usb/IUsbManager;
    :cond_1
    const-string/jumbo v3, "getFunction"

    #@47
    aget-object v4, p1, v5

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_2

    #@4f
    .line 59
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@51
    const-string/jumbo v4, "sys.usb.config"

    #@54
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5b
    .line 60
    return-void

    #@5c
    .line 63
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5e
    invoke-virtual {p0}, Lcom/android/commands/svc/UsbCommand;->longHelp()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@65
    .line 46
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 32
    const-string/jumbo v0, "Control Usb state"

    #@3
    return-object v0
.end method
