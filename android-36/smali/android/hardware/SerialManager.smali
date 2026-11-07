.class public Landroid/hardware/SerialManager;
.super Ljava/lang/Object;
.source "SerialManager.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SerialManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/hardware/ISerialManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/hardware/ISerialManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/ISerialManager;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/hardware/SerialManager;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    .line 45
    return-void
.end method


# virtual methods
.method public greylist-max-r getSerialPorts()[Ljava/lang/String;
    .registers 3

    .line 55
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    invoke-interface {v0}, Landroid/hardware/ISerialManager;->getSerialPorts()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 56
    :catch_7
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r openSerialPort(Ljava/lang/String;I)Landroid/hardware/SerialPort;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISerialManager;->openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 78
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_11

    .line 79
    new-instance v1, Landroid/hardware/SerialPort;

    invoke-direct {v1, p1}, Landroid/hardware/SerialPort;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "port":Landroid/hardware/SerialPort;
    invoke-virtual {v1, v0, p2}, Landroid/hardware/SerialPort;->open(Landroid/os/ParcelFileDescriptor;I)V

    .line 81
    return-object v1

    .line 83
    .end local v1    # "port":Landroid/hardware/SerialPort;
    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open serial port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/SerialManager;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "speed":I
    throw v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2a

    .line 85
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/hardware/SerialManager;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "speed":I
    :catch_2a
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
