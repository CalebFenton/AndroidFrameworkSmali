.class public final Landroid/bluetooth/BluetoothSocket;
.super Ljava/lang/Object;
.source "BluetoothSocket.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSocket$SocketState;,
        Landroid/bluetooth/BluetoothSocket$SocketType;
    }
.end annotation


# static fields
.field static final blacklist BTSOCK_FLAG_NO_SDP:I = 0x4

.field private static final blacklist DBG:Z

.field static final blacklist DEFAULT_SOCKET_NAME:Ljava/lang/String; = "default_name"

.field static final greylist-max-r EADDRINUSE:I = 0x62

.field static final blacklist EBADFD:I = 0x4d

.field private static final blacklist INVALID_SOCKET_ID:J = 0x0L

.field static final blacklist MAX_L2CAP_PACKAGE_SIZE:I = 0xffff

.field public static final blacklist MAX_RFCOMM_CHANNEL:I = 0x1e

.field static final blacklist SEC_FLAG_AUTH:I = 0x2

.field static final blacklist SEC_FLAG_AUTH_16_DIGIT:I = 0x10

.field static final blacklist SEC_FLAG_AUTH_PITM:I = 0x8

.field static final blacklist SEC_FLAG_ENCRYPT:I = 0x1

.field private static final blacklist SOCK_ACCEPT_SIGNAL_SIZE:I = 0x4

.field private static final blacklist SOCK_CONNECTION_SIGNAL_SIZE:I = 0x2c

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist TYPE_L2CAP:I = 0x3

.field public static final blacklist TYPE_L2CAP_BREDR:I = 0x3

.field public static final blacklist TYPE_L2CAP_LE:I = 0x4

.field public static final whitelist TYPE_LE:I = 0x4

.field public static final whitelist TYPE_RFCOMM:I = 0x1

.field public static final whitelist TYPE_SCO:I = 0x2

.field private static final blacklist VDBG:Z


# instance fields
.field private blacklist mAddress:Ljava/lang/String;

.field private final blacklist mAuth:Z

.field private blacklist mAuthPitm:Z

.field private blacklist mConnectionUuid:Landroid/os/ParcelUuid;

.field private final blacklist mDataPath:I

.field private blacklist mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final blacklist mEncrypt:Z

.field private final blacklist mEndpointId:J

.field private blacklist mExcludeSdp:Z

.field private final blacklist mHubId:J

.field private final blacklist mInputStream:Landroid/bluetooth/BluetoothInputStream;

.field private blacklist mL2capBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mMaxRxPacketSize:I

.field private blacklist mMaxTxPacketSize:I

.field private final blacklist mMaximumPacketSize:I

.field private blacklist mMin16DigitPin:Z

.field private final blacklist mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

.field private greylist mPfd:Landroid/os/ParcelFileDescriptor;

.field private greylist mPort:I

.field private blacklist mServiceName:Ljava/lang/String;

.field private greylist mSocket:Landroid/net/LocalSocket;

.field private blacklist mSocketCreationLatencyNanos:J

.field private blacklist mSocketCreationTimeNanos:J

.field private blacklist mSocketIS:Ljava/io/InputStream;

.field private blacklist mSocketId:J

.field private final blacklist mSocketName:Ljava/lang/String;

.field private blacklist mSocketOS:Ljava/io/OutputStream;

.field private volatile blacklist mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

.field private final blacklist mType:I

.field private final blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 97
    const-class v0, Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    .line 99
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    .line 100
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    return-void
.end method

.method constructor blacklist <init>(IZZILandroid/os/ParcelUuid;)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .param p5, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "type":I
    .end local p2    # "auth":Z
    .end local p3    # "encrypt":Z
    .end local p4    # "port":I
    .end local p5    # "uuid":Landroid/os/ParcelUuid;
    .local v1, "type":I
    .local v2, "auth":Z
    .local v3, "encrypt":Z
    .local v4, "port":I
    .local v5, "uuid":Landroid/os/ParcelUuid;
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IZZILandroid/os/ParcelUuid;ZZ)V

    .line 235
    return-void
.end method

.method constructor blacklist <init>(IZZILandroid/os/ParcelUuid;ZZ)V
    .registers 23
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .param p5, "uuid"    # Landroid/os/ParcelUuid;
    .param p6, "pitm"    # Z
    .param p7, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const-string v9, "default_name"

    const-wide/16 v10, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v14}, Landroid/bluetooth/BluetoothSocket;-><init>(IZZILandroid/os/ParcelUuid;ZZILjava/lang/String;JJI)V

    .line 260
    return-void
.end method

.method constructor blacklist <init>(IZZILandroid/os/ParcelUuid;ZZILjava/lang/String;JJI)V
    .registers 32
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .param p5, "uuid"    # Landroid/os/ParcelUuid;
    .param p6, "pitm"    # Z
    .param p7, "min16DigitPin"    # Z
    .param p8, "dataPath"    # I
    .param p9, "socketName"    # Ljava/lang/String;
    .param p10, "hubId"    # J
    .param p12, "endpointId"    # J
    .param p14, "maximumPacketSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 181
    iput-boolean v4, v0, Landroid/bluetooth/BluetoothSocket;->mAuthPitm:Z

    .line 184
    iput-boolean v4, v0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 199
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 200
    iput v4, v0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 201
    iput v4, v0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 205
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    .line 206
    iput-wide v6, v0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationLatencyNanos:J

    .line 294
    sget-boolean v4, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v4, :cond_3b

    sget-object v4, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creating new BluetoothSocket of type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_3b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    .line 296
    const/4 v4, 0x1

    if-ne v1, v4, :cond_69

    if-nez v3, :cond_69

    const/4 v8, -0x2

    if-eq v2, v8, :cond_69

    .line 299
    if-lt v2, v4, :cond_50

    const/16 v4, 0x1e

    if-gt v2, v4, :cond_50

    goto :goto_69

    .line 300
    :cond_50
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid RFCOMM channel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 303
    :cond_69
    :goto_69
    if-eqz v3, :cond_6e

    .line 304
    iput-object v3, v0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    goto :goto_7a

    .line 306
    :cond_6e
    new-instance v4, Landroid/os/ParcelUuid;

    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v6, v7, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v4, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v4, v0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    .line 308
    :goto_7a
    iput v1, v0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 309
    move/from16 v4, p2

    iput-boolean v4, v0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 310
    move/from16 v6, p6

    iput-boolean v6, v0, Landroid/bluetooth/BluetoothSocket;->mAuthPitm:Z

    .line 311
    move/from16 v7, p7

    iput-boolean v7, v0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 312
    move/from16 v8, p3

    iput-boolean v8, v0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 313
    iput v2, v0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 315
    iput-object v5, v0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 316
    move/from16 v5, p8

    iput v5, v0, Landroid/bluetooth/BluetoothSocket;->mDataPath:I

    .line 317
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/bluetooth/BluetoothSocket;->mSocketName:Ljava/lang/String;

    .line 318
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/bluetooth/BluetoothSocket;->mHubId:J

    .line 319
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/bluetooth/BluetoothSocket;->mEndpointId:J

    .line 320
    move/from16 v14, p14

    iput v14, v0, Landroid/bluetooth/BluetoothSocket;->mMaximumPacketSize:I

    .line 322
    sget-object v15, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v15, v0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 324
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v15

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 326
    new-instance v15, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v15, v0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v15, v0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 327
    new-instance v15, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v15, v0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v15, v0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 328
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    iget-wide v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    sub-long v1, v15, v1

    iput-wide v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationLatencyNanos:J

    .line 329
    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V
    .registers 16
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .param p5, "port"    # I
    .param p6, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "type":I
    .end local p3    # "auth":Z
    .end local p4    # "encrypt":Z
    .end local p5    # "port":I
    .end local p6    # "uuid":Landroid/os/ParcelUuid;
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    .local v2, "type":I
    .local v3, "auth":Z
    .local v4, "encrypt":Z
    .local v5, "port":I
    .local v6, "uuid":Landroid/os/ParcelUuid;
    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;ZZ)V

    .line 351
    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;ZZ)V
    .registers 25
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .param p5, "port"    # I
    .param p6, "uuid"    # Landroid/os/ParcelUuid;
    .param p7, "pitm"    # Z
    .param p8, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const-string v10, "default_name"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v15}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;ZZILjava/lang/String;JJI)V

    .line 390
    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;ZZILjava/lang/String;JJI)V
    .registers 34
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .param p5, "port"    # I
    .param p6, "uuid"    # Landroid/os/ParcelUuid;
    .param p7, "pitm"    # Z
    .param p8, "min16DigitPin"    # Z
    .param p9, "dataPath"    # I
    .param p10, "socketName"    # Ljava/lang/String;
    .param p11, "hubId"    # J
    .param p13, "endpointId"    # J
    .param p15, "maximumPacketSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 181
    iput-boolean v4, v0, Landroid/bluetooth/BluetoothSocket;->mAuthPitm:Z

    .line 184
    iput-boolean v4, v0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 199
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 200
    iput v4, v0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 201
    iput v4, v0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 205
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    .line 206
    iput-wide v4, v0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationLatencyNanos:J

    .line 425
    sget-boolean v6, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v6, :cond_3b

    sget-object v6, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating new BluetoothSocket of type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_3b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    .line 427
    const/4 v6, 0x1

    if-ne v1, v6, :cond_69

    if-nez v3, :cond_69

    const/4 v7, -0x2

    if-eq v2, v7, :cond_69

    .line 430
    if-lt v2, v6, :cond_50

    const/16 v6, 0x1e

    if-gt v2, v6, :cond_50

    goto :goto_69

    .line 431
    :cond_50
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid RFCOMM channel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 434
    :cond_69
    :goto_69
    if-eqz v3, :cond_6e

    .line 435
    iput-object v3, v0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    goto :goto_7a

    .line 437
    :cond_6e
    new-instance v6, Landroid/os/ParcelUuid;

    new-instance v7, Ljava/util/UUID;

    invoke-direct {v7, v4, v5, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v6, v0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    .line 439
    :goto_7a
    iput v1, v0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 440
    move/from16 v4, p3

    iput-boolean v4, v0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 441
    move/from16 v5, p7

    iput-boolean v5, v0, Landroid/bluetooth/BluetoothSocket;->mAuthPitm:Z

    .line 442
    move/from16 v6, p8

    iput-boolean v6, v0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 443
    move/from16 v7, p4

    iput-boolean v7, v0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 444
    move-object/from16 v8, p1

    iput-object v8, v0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 445
    iput v2, v0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 446
    move/from16 v9, p9

    iput v9, v0, Landroid/bluetooth/BluetoothSocket;->mDataPath:I

    .line 447
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/bluetooth/BluetoothSocket;->mSocketName:Ljava/lang/String;

    .line 448
    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroid/bluetooth/BluetoothSocket;->mHubId:J

    .line 449
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/bluetooth/BluetoothSocket;->mEndpointId:J

    .line 450
    move/from16 v15, p15

    iput v15, v0, Landroid/bluetooth/BluetoothSocket;->mMaximumPacketSize:I

    .line 452
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 455
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 457
    new-instance v1, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v1, v0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 458
    new-instance v1, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v1, v0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 459
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    iget-wide v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    sub-long v1, v16, v1

    iput-wide v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationLatencyNanos:J

    .line 460
    return-void
.end method

.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothSocket;)V
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 181
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuthPitm:Z

    .line 184
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 200
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 201
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 205
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    .line 206
    iput-wide v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationLatencyNanos:J

    .line 490
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_35

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new Private BluetoothSocket of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/bluetooth/BluetoothSocket;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_35
    iget-object v0, p1, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    .line 492
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mType:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 493
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 494
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 495
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 496
    new-instance v0, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 497
    new-instance v0, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 498
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 499
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 500
    iget-object v0, p1, Landroid/bluetooth/BluetoothSocket;->mConnectionUuid:Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mConnectionUuid:Landroid/os/ParcelUuid;

    .line 501
    iget-wide v0, p1, Landroid/bluetooth/BluetoothSocket;->mSocketId:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketId:J

    .line 503
    iget-object v0, p1, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    .line 504
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 505
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mAuthPitm:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuthPitm:Z

    .line 506
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 507
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mDataPath:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mDataPath:I

    .line 508
    iget-object v0, p1, Landroid/bluetooth/BluetoothSocket;->mSocketName:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketName:Ljava/lang/String;

    .line 509
    iget-wide v0, p1, Landroid/bluetooth/BluetoothSocket;->mHubId:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothSocket;->mHubId:J

    .line 510
    iget-wide v0, p1, Landroid/bluetooth/BluetoothSocket;->mEndpointId:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothSocket;->mEndpointId:J

    .line 511
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mMaximumPacketSize:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaximumPacketSize:I

    .line 512
    iget-wide v0, p1, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    .line 513
    iget-wide v0, p1, Landroid/bluetooth/BluetoothSocket;->mSocketCreationLatencyNanos:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationLatencyNanos:J

    .line 514
    return-void
.end method

.method private blacklist acceptSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket;
    .registers 7
    .param p1, "remoteAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 518
    .local v0, "as":Landroid/bluetooth/BluetoothSocket;
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 519
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 520
    .local v1, "fds":[Ljava/io/FileDescriptor;
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v2, :cond_2f

    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceptSocket: socket fd passed by stack fds:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_2f
    if-eqz v1, :cond_64

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_64

    .line 527
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 528
    new-instance v3, Landroid/net/LocalSocket;

    aget-object v2, v1, v2

    invoke-direct {v3, v2}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v3, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 529
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 530
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 531
    iput-object p1, v0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 532
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 533
    return-object v0

    .line 522
    :cond_64
    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket fd passed from stack failed, fds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 524
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bt socket accept failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist convertAddr([B)Ljava/lang/String;
    .registers 9
    .param p0, "addr"    # [B

    .line 1287
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    .line 1290
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    .line 1291
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    .line 1292
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    .line 1293
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    .line 1294
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    .line 1295
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 1287
    const-string v2, "%02X:%02X:%02X:%02X:%02X:%02X"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createL2capRxBuffer()V
    .registers 4

    .line 1385
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7c

    .line 1387
    :cond_a
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_28

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Creating mL2capBuffer: mMaxPacketSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_28
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 1389
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_54

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mL2capBuffer.remaining()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_54
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1391
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_7c

    .line 1392
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mL2capBuffer.remaining() after limit(0):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_7c
    return-void
.end method

.method static blacklist createSocketFromOpenFd(Landroid/os/ParcelFileDescriptor;Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Landroid/bluetooth/BluetoothSocket;
    .registers 10
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move-object v6, p2

    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "uuid":Landroid/os/ParcelUuid;
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    .local v6, "uuid":Landroid/os/ParcelUuid;
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothDevice;IZZILandroid/os/ParcelUuid;)V

    .line 480
    .local v0, "bluetoothSocket":Landroid/bluetooth/BluetoothSocket;
    iput-object p0, v0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 481
    new-instance p1, Landroid/net/LocalSocket;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 482
    iget-object p1, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 483
    iget-object p1, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 484
    sget-object p1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object p1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 486
    return-object v0
.end method

.method private blacklist fillL2capRxBuffer()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1428
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1429
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 1430
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 1432
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1433
    return v1

    .line 1435
    :cond_1b
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1436
    return v0
.end method

.method private blacklist getSecurityFlags()I
    .registers 3

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "flags":I
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    if-eqz v1, :cond_7

    .line 550
    or-int/lit8 v0, v0, 0x2

    .line 552
    :cond_7
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    if-eqz v1, :cond_d

    .line 553
    or-int/lit8 v0, v0, 0x1

    .line 555
    :cond_d
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    if-eqz v1, :cond_13

    .line 556
    or-int/lit8 v0, v0, 0x4

    .line 558
    :cond_13
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mAuthPitm:Z

    if-eqz v1, :cond_19

    .line 559
    or-int/lit8 v0, v0, 0x8

    .line 561
    :cond_19
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    if-eqz v1, :cond_1f

    .line 562
    or-int/lit8 v0, v0, 0x10

    .line 564
    :cond_1f
    return v0
.end method

.method private static blacklist readAll(Ljava/io/InputStream;[B)I
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1398
    array-length v0, p1

    .line 1399
    .local v0, "left":I
    :goto_1
    if-lez v0, :cond_4d

    .line 1400
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1401
    .local v1, "ret":I
    if-lez v1, :cond_34

    .line 1405
    sub-int/2addr v0, v1

    .line 1406
    if-eqz v0, :cond_33

    .line 1407
    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAll() looping, read partial size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expect size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    .end local v1    # "ret":I
    :cond_33
    goto :goto_1

    .line 1402
    .restart local v1    # "ret":I
    :cond_34
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read failed, socket might closed or timeout, read ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1415
    .end local v1    # "ret":I
    :cond_4d
    array-length v1, p1

    return v1
.end method

.method private static blacklist readInt(Ljava/io/InputStream;)I
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1419
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1420
    .local v0, "ibytes":[B
    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothSocket;->readAll(Ljava/io/InputStream;[B)I

    move-result v1

    .line 1421
    .local v1, "ret":I
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v2, :cond_23

    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputStream.read ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_23
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1423
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1424
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    return v3
.end method

.method private blacklist sendSocketAcceptSignal(Ljava/io/OutputStream;Z)V
    .registers 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "isAccepting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1315
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->socketSettingsApi()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1316
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mDataPath:I

    if-nez v0, :cond_b

    .line 1317
    return-void

    .line 1319
    :cond_b
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSocketAcceptSignal isAccepting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 1321
    .local v1, "sig":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1322
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1323
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1324
    int-to-short v3, p2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1325
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1327
    .end local v1    # "sig":[B
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    :cond_3c
    return-void
.end method

.method private blacklist waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 19
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1330
    move-object/from16 v0, p0

    const/16 v1, 0x2c

    new-array v2, v1, [B

    .line 1331
    .local v2, "sig":[B
    move-object/from16 v3, p1

    invoke-static {v3, v2}, Landroid/bluetooth/BluetoothSocket;->readAll(Ljava/io/InputStream;[B)I

    move-result v4

    .line 1332
    .local v4, "ret":I
    sget-boolean v5, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v5, :cond_28

    .line 1333
    sget-object v5, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waitSocketSignal read 44 bytes signal ret: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_28
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1342
    .local v5, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1343
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 1344
    .local v6, "size":I
    if-ne v6, v1, :cond_107

    .line 1347
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 1348
    .local v1, "addr":[B
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1349
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 1350
    .local v7, "channel":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 1351
    .local v8, "status":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    const v10, 0xffff

    and-int/2addr v9, v10

    iput v9, v0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 1352
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    and-int/2addr v9, v10

    iput v9, v0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 1353
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v9

    .line 1354
    .local v9, "uuidLsb":J
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    .line 1355
    .local v11, "uuidMsb":J
    new-instance v13, Landroid/os/ParcelUuid;

    new-instance v14, Ljava/util/UUID;

    invoke-direct {v14, v11, v12, v9, v10}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v13, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v13, v0, Landroid/bluetooth/BluetoothSocket;->mConnectionUuid:Landroid/os/ParcelUuid;

    .line 1356
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/bluetooth/BluetoothSocket;->mSocketId:J

    .line 1357
    invoke-static {v1}, Landroid/bluetooth/BluetoothSocket;->convertAddr([B)Ljava/lang/String;

    move-result-object v13

    .line 1358
    .local v13, "RemoteAddr":Ljava/lang/String;
    sget-boolean v14, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v14, :cond_e8

    .line 1359
    sget-object v14, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "addr":[B
    .local v16, "addr":[B
    const-string v1, "waitSocketSignal: sig size: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ", remote addr: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ", channel: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ", status: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " MaxRxPktSize: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v15, v0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " MaxTxPktSize: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v15, v0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " mConnectionUuid: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v15, v0, Landroid/bluetooth/BluetoothSocket;->mConnectionUuid:Landroid/os/ParcelUuid;

    .line 1374
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " mSocketId: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v15, v2

    .end local v2    # "sig":[B
    .local v15, "sig":[B
    iget-wide v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocketId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1359
    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    .line 1358
    .end local v15    # "sig":[B
    .end local v16    # "addr":[B
    .restart local v1    # "addr":[B
    .restart local v2    # "sig":[B
    :cond_e8
    move-object/from16 v16, v1

    move-object v15, v2

    .line 1378
    .end local v1    # "addr":[B
    .end local v2    # "sig":[B
    .restart local v15    # "sig":[B
    .restart local v16    # "addr":[B
    :goto_eb
    if-nez v8, :cond_ee

    .line 1381
    return-object v13

    .line 1379
    :cond_ee
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection failure, status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1345
    .end local v7    # "channel":I
    .end local v8    # "status":I
    .end local v9    # "uuidLsb":J
    .end local v11    # "uuidMsb":J
    .end local v13    # "RemoteAddr":Ljava/lang/String;
    .end local v15    # "sig":[B
    .end local v16    # "addr":[B
    .restart local v2    # "sig":[B
    :cond_107
    move-object v15, v2

    .end local v2    # "sig":[B
    .restart local v15    # "sig":[B
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection failure, wrong signal size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method blacklist accept(I)Landroid/bluetooth/BluetoothSocket;
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 929
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_5e

    .line 932
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept(), timeout (ms):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    if-lez p1, :cond_25

    .line 934
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0, p1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 936
    :cond_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothSocket;->sendSocketAcceptSignal(Ljava/io/OutputStream;Z)V

    .line 939
    const/4 v0, 0x0

    :try_start_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothSocket;->waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_57

    .line 941
    .local v1, "RemoteAddr":Ljava/lang/String;
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v0}, Landroid/bluetooth/BluetoothSocket;->sendSocketAcceptSignal(Ljava/io/OutputStream;Z)V

    .line 942
    nop

    .line 943
    if-lez p1, :cond_3f

    .line 944
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 946
    :cond_3f
    monitor-enter p0

    .line 947
    :try_start_40
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v2, :cond_4c

    .line 950
    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothSocket;->acceptSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 952
    .local v0, "acceptedSocket":Landroid/bluetooth/BluetoothSocket;
    monitor-exit p0

    .line 953
    return-object v0

    .line 948
    .end local v0    # "acceptedSocket":Landroid/bluetooth/BluetoothSocket;
    :cond_4c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "bt socket is not in listen state"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "RemoteAddr":Ljava/lang/String;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    .end local p1    # "timeout":I
    throw v0

    .line 952
    .restart local v1    # "RemoteAddr":Ljava/lang/String;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    .restart local p1    # "timeout":I
    :catchall_54
    move-exception v0

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_54

    throw v0

    .line 941
    .end local v1    # "RemoteAddr":Ljava/lang/String;
    :catchall_57
    move-exception v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v0}, Landroid/bluetooth/BluetoothSocket;->sendSocketAcceptSignal(Ljava/io/OutputStream;Z)V

    .line 942
    throw v1

    .line 930
    :cond_5e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bt socket is not in listen state"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1e
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method blacklist bindListen()I
    .registers 11

    .line 767
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    const/16 v2, 0x4d

    if-ne v0, v1, :cond_9

    return v2

    .line 768
    :cond_9
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 769
    .local v1, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    const/4 v3, -0x1

    if-nez v1, :cond_1c

    .line 770
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v2, "bindListen fail, reason: bluetooth is off"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return v3

    .line 774
    :cond_1c
    :try_start_1c
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_46

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindListen(): mPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_46
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v0

    move-object v4, v0

    .line 776
    .local v4, "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    if-nez v4, :cond_55

    .line 777
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v2, "bindListen() bt get socket manager failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return v3

    .line 780
    :cond_55
    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v6, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    iget-object v7, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iget v8, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 782
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->getSecurityFlags()I

    move-result v9

    .line 781
    invoke-interface/range {v4 .. v9}, Landroid/bluetooth/IBluetoothSocketManager;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_67} :catch_189

    .line 786
    .end local v4    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    nop

    .line 790
    :try_start_68
    monitor-enter p0
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_69} :catch_148

    .line 791
    :try_start_69
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_93

    .line 792
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindListen(), SocketState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPfd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_93
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v4, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v0, v4, :cond_9b

    monitor-exit p0

    return v2

    .line 795
    :cond_9b
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_a1

    monitor-exit p0

    return v3

    .line 796
    :cond_a1
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 797
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_b2

    .line 798
    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v4, "bindListen(), null file descriptor"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    monitor-exit p0

    return v3

    .line 802
    :cond_b2
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v2, :cond_bd

    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v4, "bindListen(), Create LocalSocket"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_bd
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2, v0}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 804
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v2, :cond_cf

    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v4, "bindListen(), new LocalSocket.getInputStream()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_cf
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 806
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 807
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    monitor-exit p0
    :try_end_e0
    .catchall {:try_start_69 .. :try_end_e0} :catchall_145

    .line 808
    :try_start_e0
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_fe

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindListen(), readInt mSocketIS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_fe
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-static {v0}, Landroid/bluetooth/BluetoothSocket;->readInt(Ljava/io/InputStream;)I

    move-result v0

    move v2, v0

    .line 810
    .local v2, "channel":I
    monitor-enter p0
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_106} :catch_148

    .line 811
    :try_start_106
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v4, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v4, :cond_110

    .line 812
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 814
    :cond_110
    monitor-exit p0
    :try_end_111
    .catchall {:try_start_106 .. :try_end_111} :catchall_142

    .line 815
    :try_start_111
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_139

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindListen(): channel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_139
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    if-gt v0, v3, :cond_13f

    .line 817
    iput v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_13f} :catch_148

    .line 819
    :cond_13f
    const/4 v0, 0x0

    .line 831
    .end local v2    # "channel":I
    .local v0, "ret":I
    nop

    .line 832
    return v0

    .line 814
    .end local v0    # "ret":I
    .restart local v2    # "channel":I
    :catchall_142
    move-exception v0

    :try_start_143
    monitor-exit p0
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    .end local v1    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :try_start_144
    throw v0
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_145} :catch_148

    .line 807
    .end local v2    # "channel":I
    .restart local v1    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catchall_145
    move-exception v0

    :try_start_146
    monitor-exit p0
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    .end local v1    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :try_start_147
    throw v0
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_148} :catch_148

    .line 820
    .restart local v1    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catch_148
    move-exception v0

    move-object v2, v0

    .line 821
    .local v2, "e":Ljava/io/IOException;
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_170

    .line 823
    :try_start_14e
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_153} :catch_154

    .line 826
    goto :goto_16d

    .line 824
    :catch_154
    move-exception v0

    .line 825
    .local v0, "e1":Ljava/io/IOException;
    sget-object v4, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindListen, close mPfd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_16d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 829
    :cond_170
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindListen, fail to get port number, exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return v3

    .line 783
    .end local v2    # "e":Ljava/io/IOException;
    :catch_189
    move-exception v0

    .line 784
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return v3
.end method

.method blacklist bindListenWithOffload()I
    .registers 20

    .line 845
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    const/16 v3, 0x4d

    if-ne v0, v2, :cond_b

    return v3

    .line 846
    :cond_b
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v2

    .line 847
    .local v2, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    const/4 v4, -0x1

    if-nez v2, :cond_1e

    .line 848
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v3, "bindListenWithOffload() fail, reason: bluetooth is off"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return v4

    .line 852
    :cond_1e
    :try_start_1e
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_48

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindListenWithOffload(): mPort="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/bluetooth/BluetoothSocket;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_48
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v0

    move-object v5, v0

    .line 854
    .local v5, "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    if-nez v5, :cond_57

    .line 855
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v3, "bindListenWithOffload() bt get socket manager failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return v4

    .line 858
    :cond_57
    iget v6, v1, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v7, v1, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    iget-object v8, v1, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iget v9, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 864
    invoke-direct {v1}, Landroid/bluetooth/BluetoothSocket;->getSecurityFlags()I

    move-result v10

    iget v11, v1, Landroid/bluetooth/BluetoothSocket;->mDataPath:I

    iget-object v12, v1, Landroid/bluetooth/BluetoothSocket;->mSocketName:Ljava/lang/String;

    iget-wide v13, v1, Landroid/bluetooth/BluetoothSocket;->mHubId:J

    move v0, v3

    move/from16 v18, v4

    iget-wide v3, v1, Landroid/bluetooth/BluetoothSocket;->mEndpointId:J

    iget v15, v1, Landroid/bluetooth/BluetoothSocket;->mMaximumPacketSize:I

    .line 859
    move/from16 v17, v15

    move-wide v15, v3

    invoke-interface/range {v5 .. v17}, Landroid/bluetooth/IBluetoothSocketManager;->createSocketChannelWithOffload(ILjava/lang/String;Landroid/os/ParcelUuid;IIILjava/lang/String;JJI)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_79} :catch_19f

    .line 873
    .end local v5    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    nop

    .line 877
    :try_start_7a
    monitor-enter p0
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7b} :catch_15c

    .line 878
    :try_start_7b
    sget-boolean v3, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v3, :cond_a5

    .line 879
    sget-object v3, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindListenWithOffload(), SocketState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPfd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_a5
    iget-object v3, v1, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v4, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v3, v4, :cond_ad

    monitor-exit p0

    return v0

    .line 887
    :cond_ad
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_b3

    monitor-exit p0

    return v18

    .line 888
    :cond_b3
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 889
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_c4

    .line 890
    sget-object v3, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v4, "bindListenWithOffload(), null file descriptor"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    monitor-exit p0

    return v18

    .line 894
    :cond_c4
    sget-boolean v3, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v3, :cond_cf

    sget-object v3, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v4, "bindListenWithOffload(), Create LocalSocket"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_cf
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3, v0}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v3, v1, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 896
    sget-boolean v3, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v3, :cond_e1

    sget-object v3, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v4, "bindListenWithOffload(), new LocalSocket.getInputStream()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_e1
    iget-object v3, v1, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v1, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 898
    iget-object v3, v1, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, v1, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 899
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    monitor-exit p0
    :try_end_f2
    .catchall {:try_start_7b .. :try_end_f2} :catchall_159

    .line 900
    :try_start_f2
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_110

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindListenWithOffload(), readInt mSocketIS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_110
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-static {v0}, Landroid/bluetooth/BluetoothSocket;->readInt(Ljava/io/InputStream;)I

    move-result v0

    move v3, v0

    .line 902
    .local v3, "channel":I
    monitor-enter p0
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_118} :catch_15c

    .line 903
    :try_start_118
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v4, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v4, :cond_122

    .line 904
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 906
    :cond_122
    monitor-exit p0
    :try_end_123
    .catchall {:try_start_118 .. :try_end_123} :catchall_156

    .line 907
    :try_start_123
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_14b

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindListenWithOffload(): channel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_14b
    iget v0, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    move/from16 v4, v18

    if-gt v0, v4, :cond_153

    .line 909
    iput v3, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_153} :catch_15c

    .line 911
    :cond_153
    const/4 v0, 0x0

    .line 923
    .end local v3    # "channel":I
    .local v0, "ret":I
    nop

    .line 924
    return v0

    .line 906
    .end local v0    # "ret":I
    .restart local v3    # "channel":I
    :catchall_156
    move-exception v0

    :try_start_157
    monitor-exit p0
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_156

    .end local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :try_start_158
    throw v0
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_159} :catch_15c

    .line 899
    .end local v3    # "channel":I
    .restart local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catchall_159
    move-exception v0

    :try_start_15a
    monitor-exit p0
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_159

    .end local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :try_start_15b
    throw v0
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15c} :catch_15c

    .line 912
    .restart local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catch_15c
    move-exception v0

    move-object v3, v0

    .line 913
    .local v3, "e":Ljava/io/IOException;
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_184

    .line 915
    :try_start_162
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_167} :catch_168

    .line 918
    goto :goto_181

    .line 916
    :catch_168
    move-exception v0

    .line 917
    .local v0, "e1":Ljava/io/IOException;
    sget-object v4, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindListenWithOffload, close mPfd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_181
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 921
    :cond_184
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindListenWithOffload, fail to get port number, exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/16 v18, -0x1

    return v18

    .line 870
    .end local v3    # "e":Ljava/io/IOException;
    :catch_19f
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/16 v18, -0x1

    return v18
.end method

.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1046
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSocketIS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSocketOS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSocket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSocketState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_5b

    .line 1061
    return-void

    .line 1063
    :cond_5b
    monitor-enter p0

    .line 1064
    :try_start_5c
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_64

    .line 1065
    monitor-exit p0

    return-void

    .line 1067
    :cond_64
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 1068
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_9c

    .line 1069
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_8b

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing mSocket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_8b
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 1071
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 1072
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 1073
    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 1075
    :cond_9c
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_a7

    .line 1076
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1077
    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 1079
    :cond_a7
    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mConnectionUuid:Landroid/os/ParcelUuid;

    .line 1080
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketId:J

    .line 1081
    monitor-exit p0

    .line 1083
    return-void

    .line 1081
    :catchall_af
    move-exception v0

    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_5c .. :try_end_b1} :catchall_af

    throw v0
.end method

.method public whitelist connect()V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    move-object/from16 v1, p0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v2

    .line 651
    .local v2, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 652
    .local v4, "socketConnectionTimeNanos":J
    if-eqz v2, :cond_1e9

    .line 656
    :try_start_10
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_167

    .line 659
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v0, v3, :cond_15d

    .line 663
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v0

    move-object v7, v0

    .line 664
    .local v7, "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    if-eqz v7, :cond_153

    .line 667
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->socketSettingsApi()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 668
    iget v0, v1, Landroid/bluetooth/BluetoothSocket;->mDataPath:I
    :try_end_29
    .catch Landroid/bluetooth/BluetoothSocketException; {:try_start_10 .. :try_end_29} :catch_1d1
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_29} :catch_175

    if-nez v0, :cond_4a

    .line 669
    :try_start_2b
    iget-object v8, v1, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v9, v1, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v10, v1, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iget v11, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 671
    invoke-direct {v1}, Landroid/bluetooth/BluetoothSocket;->getSecurityFlags()I

    move-result v12

    .line 670
    invoke-interface/range {v7 .. v12}, Landroid/bluetooth/IBluetoothSocketManager;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_3d
    .catch Landroid/bluetooth/BluetoothSocketException; {:try_start_2b .. :try_end_3d} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3d} :catch_40

    move-object/from16 v20, v2

    goto :goto_88

    .line 734
    .end local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    :catch_40
    move-exception v0

    move-object/from16 v20, v2

    goto/16 :goto_178

    .line 723
    :catch_45
    move-exception v0

    move-object/from16 v20, v2

    goto/16 :goto_1d4

    .line 673
    .restart local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    :cond_4a
    :try_start_4a
    iget-object v8, v1, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v9, v1, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v10, v1, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iget v11, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 679
    invoke-direct {v1}, Landroid/bluetooth/BluetoothSocket;->getSecurityFlags()I

    move-result v12

    iget v13, v1, Landroid/bluetooth/BluetoothSocket;->mDataPath:I

    iget-object v14, v1, Landroid/bluetooth/BluetoothSocket;->mSocketName:Ljava/lang/String;

    move-object v3, v7

    .end local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .local v3, "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    iget-wide v6, v1, Landroid/bluetooth/BluetoothSocket;->mHubId:J
    :try_end_5d
    .catch Landroid/bluetooth/BluetoothSocketException; {:try_start_4a .. :try_end_5d} :catch_1d1
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_5d} :catch_175

    move-object/from16 v20, v2

    move-object v15, v3

    .end local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local v3    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .local v15, "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .local v20, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    :try_start_60
    iget-wide v2, v1, Landroid/bluetooth/BluetoothSocket;->mEndpointId:J

    iget v0, v1, Landroid/bluetooth/BluetoothSocket;->mMaximumPacketSize:I

    .line 674
    move-wide/from16 v17, v6

    move-object v7, v15

    move-wide/from16 v15, v17

    move/from16 v19, v0

    move-wide/from16 v17, v2

    .end local v15    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    invoke-interface/range {v7 .. v19}, Landroid/bluetooth/IBluetoothSocketManager;->connectSocketWithOffload(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;IIILjava/lang/String;JJI)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    goto :goto_88

    .line 687
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    :cond_74
    move-object/from16 v20, v2

    .end local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    iget-object v8, v1, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v9, v1, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v10, v1, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iget v11, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 689
    invoke-direct {v1}, Landroid/bluetooth/BluetoothSocket;->getSecurityFlags()I

    move-result v12

    .line 688
    invoke-interface/range {v7 .. v12}, Landroid/bluetooth/IBluetoothSocketManager;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 691
    :goto_88
    monitor-enter p0
    :try_end_89
    .catch Landroid/bluetooth/BluetoothSocketException; {:try_start_60 .. :try_end_89} :catch_173
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_89} :catch_171

    .line 692
    :try_start_89
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect(), SocketState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPfd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v0, v2, :cond_148

    .line 696
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_140

    .line 700
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 701
    .local v0, "fd":Ljava/io/FileDescriptor;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2, v0}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, v1, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 702
    iget-object v2, v1, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v1, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 703
    iget-object v2, v1, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v1, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 704
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    monitor-exit p0
    :try_end_d7
    .catchall {:try_start_89 .. :try_end_d7} :catchall_150

    .line 705
    :try_start_d7
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-static {v0}, Landroid/bluetooth/BluetoothSocket;->readInt(Ljava/io/InputStream;)I

    move-result v0

    move v2, v0

    .line 706
    .local v2, "channel":I
    if-eqz v2, :cond_134

    .line 710
    if-ltz v2, :cond_12c

    .line 714
    iput v2, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 715
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-direct {v1, v0}, Landroid/bluetooth/BluetoothSocket;->waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;

    .line 716
    monitor-enter p0
    :try_end_ea
    .catch Landroid/bluetooth/BluetoothSocketException; {:try_start_d7 .. :try_end_ea} :catch_173
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_ea} :catch_171

    .line 717
    :try_start_ea
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v0, v3, :cond_121

    .line 720
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 721
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect(), socket connected. mPort="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    monitor-exit p0
    :try_end_10f
    .catchall {:try_start_ea .. :try_end_10f} :catchall_129

    .line 747
    .end local v2    # "channel":I
    .end local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    nop

    .line 748
    iget v6, v1, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v7, v1, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v8, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    iget-boolean v9, v1, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    iget-wide v10, v1, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    iget-wide v12, v1, Landroid/bluetooth/BluetoothSocket;->mSocketCreationLatencyNanos:J

    const/4 v3, -0x1

    invoke-static/range {v3 .. v13}, Landroid/bluetooth/SocketMetrics;->logSocketConnect(IJILandroid/bluetooth/BluetoothDevice;IZJJ)V

    .line 757
    return-void

    .line 718
    .restart local v2    # "channel":I
    .restart local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    :cond_121
    :try_start_121
    new-instance v0, Landroid/bluetooth/BluetoothSocketException;

    const/16 v3, 0x11

    invoke-direct {v0, v3}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    .end local v2    # "channel":I
    .end local v4    # "socketConnectionTimeNanos":J
    .end local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v0

    .line 722
    .restart local v2    # "channel":I
    .restart local v4    # "socketConnectionTimeNanos":J
    .restart local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catchall_129
    move-exception v0

    monitor-exit p0
    :try_end_12b
    .catchall {:try_start_121 .. :try_end_12b} :catchall_129

    .end local v4    # "socketConnectionTimeNanos":J
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :try_start_12b
    throw v0

    .line 711
    .restart local v4    # "socketConnectionTimeNanos":J
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_12c
    new-instance v0, Landroid/bluetooth/BluetoothSocketException;

    const/16 v3, 0x12

    invoke-direct {v0, v3}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    .end local v4    # "socketConnectionTimeNanos":J
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v0

    .line 707
    .restart local v4    # "socketConnectionTimeNanos":J
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_134
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 708
    .local v0, "errCode":I
    new-instance v3, Landroid/bluetooth/BluetoothSocketException;

    invoke-direct {v3, v0}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    .end local v4    # "socketConnectionTimeNanos":J
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v3
    :try_end_140
    .catch Landroid/bluetooth/BluetoothSocketException; {:try_start_12b .. :try_end_140} :catch_173
    .catch Landroid/os/RemoteException; {:try_start_12b .. :try_end_140} :catch_171

    .line 697
    .end local v0    # "errCode":I
    .end local v2    # "channel":I
    .restart local v4    # "socketConnectionTimeNanos":J
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_140
    :try_start_140
    new-instance v0, Landroid/bluetooth/BluetoothSocketException;

    const/16 v2, 0x15

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    .end local v4    # "socketConnectionTimeNanos":J
    .end local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v0

    .line 694
    .restart local v4    # "socketConnectionTimeNanos":J
    .restart local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_148
    new-instance v2, Landroid/bluetooth/BluetoothSocketException;

    const/16 v0, 0x11

    invoke-direct {v2, v0}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    .end local v4    # "socketConnectionTimeNanos":J
    .end local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v2

    .line 704
    .restart local v4    # "socketConnectionTimeNanos":J
    .restart local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catchall_150
    move-exception v0

    monitor-exit p0
    :try_end_152
    .catchall {:try_start_140 .. :try_end_152} :catchall_150

    .end local v4    # "socketConnectionTimeNanos":J
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :try_start_152
    throw v0

    .line 665
    .local v2, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v4    # "socketConnectionTimeNanos":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_153
    move-object/from16 v20, v2

    .end local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    new-instance v0, Landroid/bluetooth/BluetoothSocketException;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    .end local v4    # "socketConnectionTimeNanos":J
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v0

    .line 660
    .end local v7    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v4    # "socketConnectionTimeNanos":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_15d
    move-object/from16 v20, v2

    .end local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    new-instance v2, Landroid/bluetooth/BluetoothSocketException;

    const/16 v0, 0x11

    invoke-direct {v2, v0}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    .end local v4    # "socketConnectionTimeNanos":J
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v2

    .line 657
    .restart local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v4    # "socketConnectionTimeNanos":J
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_167
    move-object/from16 v20, v2

    .end local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    new-instance v0, Landroid/bluetooth/BluetoothSocketException;

    const/16 v2, 0x13

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    .end local v4    # "socketConnectionTimeNanos":J
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v0
    :try_end_171
    .catch Landroid/bluetooth/BluetoothSocketException; {:try_start_152 .. :try_end_171} :catch_173
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_171} :catch_171

    .line 734
    .restart local v4    # "socketConnectionTimeNanos":J
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catch_171
    move-exception v0

    goto :goto_178

    .line 723
    :catch_173
    move-exception v0

    goto :goto_1d4

    .line 734
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    :catch_175
    move-exception v0

    move-object/from16 v20, v2

    .line 735
    .end local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    :goto_178
    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget v6, v1, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v7, v1, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v8, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    iget-boolean v9, v1, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    iget-wide v10, v1, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    iget-wide v12, v1, Landroid/bluetooth/BluetoothSocket;->mSocketCreationLatencyNanos:J

    const/16 v3, 0x14

    invoke-static/range {v3 .. v13}, Landroid/bluetooth/SocketMetrics;->logSocketConnect(IJILandroid/bluetooth/BluetoothDevice;IZJJ)V

    .line 745
    new-instance v2, Landroid/bluetooth/BluetoothSocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to send RPC: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 746
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x14

    invoke-direct {v2, v6, v3}, Landroid/bluetooth/BluetoothSocketException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 723
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    :catch_1d1
    move-exception v0

    move-object/from16 v20, v2

    .line 724
    .end local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .local v0, "e":Landroid/bluetooth/BluetoothSocketException;
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    :goto_1d4
    nop

    .line 725
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocketException;->getErrorCode()I

    move-result v3

    iget v6, v1, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v7, v1, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v8, v1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    iget-boolean v9, v1, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    iget-wide v10, v1, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    iget-wide v12, v1, Landroid/bluetooth/BluetoothSocket;->mSocketCreationLatencyNanos:J

    .line 724
    invoke-static/range {v3 .. v13}, Landroid/bluetooth/SocketMetrics;->logSocketConnect(IJILandroid/bluetooth/BluetoothDevice;IZJJ)V

    .line 733
    throw v0

    .line 653
    .end local v0    # "e":Landroid/bluetooth/BluetoothSocketException;
    .end local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    :cond_1e9
    move-object/from16 v20, v2

    .end local v2    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v20    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    new-instance v0, Landroid/bluetooth/BluetoothSocketException;

    const/16 v2, 0xf

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 541
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 543
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 544
    nop

    .line 545
    return-void

    .line 543
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 544
    throw v0
.end method

.method public whitelist getConnectionType()I
    .registers 3

    .line 1125
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 1127
    const/4 v0, 0x3

    return v0

    .line 1129
    :cond_7
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    return v0
.end method

.method public whitelist getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    return-object v0
.end method

.method public blacklist getL2capLocalChannelId()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1191
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_93

    .line 1194
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    const/16 v2, 0x11

    if-ne v0, v1, :cond_8d

    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mConnectionUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_8d

    .line 1198
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1199
    .local v0, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_85

    .line 1203
    :try_start_1b
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v1

    .line 1204
    .local v1, "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    if-eqz v1, :cond_36

    .line 1207
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mConnectionUuid:Landroid/os/ParcelUuid;

    .line 1209
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 1208
    invoke-interface {v1, v3, v4}, Landroid/bluetooth/IBluetoothSocketManager;->getL2capLocalChannelId(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)I

    move-result v3
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2b} :catch_3e

    .line 1213
    .end local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .local v3, "cid":I
    nop

    .line 1214
    const/4 v1, -0x1

    if-eq v3, v1, :cond_30

    .line 1217
    return v3

    .line 1215
    :cond_30
    new-instance v1, Landroid/bluetooth/BluetoothSocketException;

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    throw v1

    .line 1205
    .end local v3    # "cid":I
    .restart local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    :cond_36
    :try_start_36
    new-instance v2, Landroid/bluetooth/BluetoothSocketException;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v2
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3e} :catch_3e

    .line 1210
    .end local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catch_3e
    move-exception v1

    .line 1211
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to send RPC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1200
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_85
    new-instance v1, Landroid/bluetooth/BluetoothSocketException;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    throw v1

    .line 1195
    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    :cond_8d
    new-instance v0, Landroid/bluetooth/BluetoothSocketException;

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    throw v0

    .line 1192
    :cond_93
    new-instance v0, Landroid/bluetooth/BluetoothSocketException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    throw v0
.end method

.method public blacklist getL2capRemoteChannelId()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1232
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_93

    .line 1235
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    const/16 v2, 0x11

    if-ne v0, v1, :cond_8d

    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mConnectionUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_8d

    .line 1239
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1240
    .local v0, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_85

    .line 1244
    :try_start_1b
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v1

    .line 1245
    .local v1, "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    if-eqz v1, :cond_36

    .line 1248
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mConnectionUuid:Landroid/os/ParcelUuid;

    .line 1250
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 1249
    invoke-interface {v1, v3, v4}, Landroid/bluetooth/IBluetoothSocketManager;->getL2capRemoteChannelId(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)I

    move-result v3
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2b} :catch_3e

    .line 1254
    .end local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .local v3, "cid":I
    nop

    .line 1255
    const/4 v1, -0x1

    if-eq v3, v1, :cond_30

    .line 1258
    return v3

    .line 1256
    :cond_30
    new-instance v1, Landroid/bluetooth/BluetoothSocketException;

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    throw v1

    .line 1246
    .end local v3    # "cid":I
    .restart local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    :cond_36
    :try_start_36
    new-instance v2, Landroid/bluetooth/BluetoothSocketException;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v2
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3e} :catch_3e

    .line 1251
    .end local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catch_3e
    move-exception v1

    .line 1252
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to send RPC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1241
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_85
    new-instance v1, Landroid/bluetooth/BluetoothSocketException;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    throw v1

    .line 1236
    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    :cond_8d
    new-instance v0, Landroid/bluetooth/BluetoothSocketException;

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    throw v0

    .line 1233
    :cond_93
    new-instance v0, Landroid/bluetooth/BluetoothSocketException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    throw v0
.end method

.method public whitelist getMaxReceivePacketSize()I
    .registers 2

    .line 1115
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    return v0
.end method

.method public whitelist getMaxTransmitPacketSize()I
    .registers 2

    .line 1103
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    return v0
.end method

.method public whitelist getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    return-object v0
.end method

.method public blacklist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 1283
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method blacklist getPort()I
    .registers 2

    .line 1088
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    return v0
.end method

.method public whitelist getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 574
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method blacklist getSocketCreationTime()J
    .registers 3

    .line 1092
    iget-wide v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketCreationTimeNanos:J

    return-wide v0
.end method

.method public whitelist getSocketId()J
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1274
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_11

    iget-wide v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 1277
    iget-wide v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketId:J

    return-wide v0

    .line 1275
    :cond_11
    new-instance v0, Landroid/bluetooth/BluetoothSocketException;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothSocketException;-><init>(I)V

    throw v0
.end method

.method blacklist isAuth()Z
    .registers 2

    .line 619
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    return v0
.end method

.method public whitelist isConnected()Z
    .registers 3

    .line 611
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method blacklist read([BII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    const/4 v0, 0x0

    .line 963
    .local v0, "ret":I
    sget-boolean v1, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v1, :cond_29

    sget-object v1, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read in:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_29
    iget v1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v2, 0x3

    const-string v3, " length:"

    if-eq v1, v2, :cond_62

    iget v1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_36

    goto :goto_62

    .line 996
    :cond_36
    sget-boolean v1, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v1, :cond_5a

    sget-object v1, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default: read(): offset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_5a
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto/16 :goto_fb

    .line 965
    :cond_62
    :goto_62
    move v1, p3

    .line 966
    .local v1, "bytesToRead":I
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v2, :cond_93

    .line 967
    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "l2cap: read(): offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mL2capBuffer= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_93
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_9a

    .line 977
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->createL2capRxBuffer()V

    .line 979
    :cond_9a
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_c0

    .line 980
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v2, :cond_ad

    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v3, "l2cap buffer empty, refilling..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_ad
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->fillL2capRxBuffer()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c0

    .line 982
    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v4, "socket EOF, returning -1"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 984
    return v3

    .line 987
    :cond_c0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_ce

    .line 988
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 990
    :cond_ce
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v2, :cond_f4

    .line 991
    sget-object v2, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get(): offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytesToRead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_f4
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 994
    move v0, v1

    .line 995
    .end local v1    # "bytesToRead":I
    nop

    .line 999
    :goto_fb
    if-ltz v0, :cond_126

    .line 1003
    sget-boolean v1, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v1, :cond_125

    sget-object v1, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read out:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_125
    return v0

    .line 1000
    :cond_126
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 1001
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt socket closed, read return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist removeChannel()V
    .registers 1

    .line 1085
    return-void
.end method

.method public blacklist requestMaximumTxDataLength()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1156
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_8b

    .line 1161
    :try_start_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v0, v1, :cond_3c

    .line 1164
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1165
    .local v0, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_34

    .line 1169
    sget-boolean v1, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v1, :cond_1f

    sget-object v1, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    const-string v2, "requestMaximumTxDataLength"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_1f
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v1

    .line 1171
    .local v1, "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    if-eqz v1, :cond_2c

    .line 1172
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothSocketManager;->requestMaximumTxDataLength(Landroid/bluetooth/BluetoothDevice;)V

    .line 1176
    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    nop

    .line 1177
    return-void

    .line 1171
    .restart local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    :cond_2c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bt get socket manager failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v2

    .line 1166
    .end local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_34
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bluetooth is off"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v1

    .line 1162
    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_3c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v0
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_44} :catch_44

    .line 1173
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catch_44
    move-exception v0

    .line 1174
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to send RPC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1157
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "requestMaximumTxDataLength is called on null device"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setExcludeSdp(Z)V
    .registers 2
    .param p1, "excludeSdp"    # Z

    .line 1143
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 1144
    return-void
.end method

.method blacklist setServiceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 615
    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    .line 616
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1441
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist write([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1014
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    const-string v1, " length: "

    if-eqz v0, :cond_28

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_28
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_39

    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_33

    goto :goto_39

    .line 1037
    :cond_33
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_76

    .line 1016
    :cond_39
    :goto_39
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    if-gt p3, v0, :cond_43

    .line 1017
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_76

    .line 1019
    :cond_43
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_61

    .line 1020
    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: Write buffer larger than L2CAP packet size!\nPacket will be divided into SDU packets of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_61
    move v0, p2

    .line 1027
    .local v0, "tmpOffset":I
    move v2, p3

    .line 1028
    .local v2, "bytesToWrite":I
    :goto_63
    if-lez v2, :cond_75

    .line 1030
    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    if-le v2, v3, :cond_6c

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    goto :goto_6d

    :cond_6c
    move v3, v2

    .line 1031
    .local v3, "tmpLength":I
    :goto_6d
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1032
    add-int/2addr v0, v3

    .line 1033
    sub-int/2addr v2, v3

    .line 1034
    .end local v3    # "tmpLength":I
    goto :goto_63

    .line 1035
    .end local v0    # "tmpOffset":I
    .end local v2    # "bytesToWrite":I
    :cond_75
    nop

    .line 1040
    :goto_76
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_9c

    sget-object v0, Landroid/bluetooth/BluetoothSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_9c
    return p3
.end method
