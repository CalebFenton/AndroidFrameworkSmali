.class public Landroid/hardware/SerialManager;
.super Ljava/lang/Object;
.source "SerialManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/ISerialManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/ISerialManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/ISerialManager;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Landroid/hardware/SerialManager;->mContext:Landroid/content/Context;

    #@5
    .line 41
    iput-object p2, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    #@7
    .line 39
    return-void
.end method


# virtual methods
.method public getSerialPorts()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    #@2
    invoke-interface {v1}, Landroid/hardware/ISerialManager;->getSerialPorts()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 52
    :catch_0
    move-exception v0

    #@8
    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SerialManager"

    #@b
    const-string/jumbo v2, "RemoteException in getSerialPorts"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 54
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public openSerialPort(Ljava/lang/String;I)Landroid/hardware/SerialPort;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 71
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    #@3
    invoke-interface {v3, p1}, Landroid/hardware/ISerialManager;->openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@6
    move-result-object v1

    #@7
    .line 72
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    #@9
    .line 73
    new-instance v2, Landroid/hardware/SerialPort;

    #@b
    invoke-direct {v2, p1}, Landroid/hardware/SerialPort;-><init>(Ljava/lang/String;)V

    #@e
    .line 74
    .local v2, "port":Landroid/hardware/SerialPort;
    invoke-virtual {v2, v1, p2}, Landroid/hardware/SerialPort;->open(Landroid/os/ParcelFileDescriptor;I)V

    #@11
    .line 75
    return-object v2

    #@12
    .line 77
    .end local v2    # "port":Landroid/hardware/SerialPort;
    :cond_0
    new-instance v3, Ljava/io/IOException;

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Could not open serial port "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 79
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    #@2d
    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SerialManager"

    #@30
    const-string/jumbo v4, "exception in UsbManager.openDevice"

    #@33
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    .line 82
    return-object v6
.end method
