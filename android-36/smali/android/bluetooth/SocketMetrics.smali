.class Landroid/bluetooth/SocketMetrics;
.super Ljava/lang/Object;
.source "SocketMetrics.java"


# static fields
.field private static final blacklist RESULT_L2CAP_CONN_BLUETOOTH_GET_SOCKET_MANAGER_FAILED:I = 0x3ec

.field private static final blacklist RESULT_L2CAP_CONN_BLUETOOTH_NULL_BLUETOOTH_DEVICE:I = 0x3eb

.field private static final blacklist RESULT_L2CAP_CONN_BLUETOOTH_NULL_FILE_DESCRIPTOR:I = 0x3ed

.field private static final blacklist RESULT_L2CAP_CONN_BLUETOOTH_SOCKET_CONNECTION_CLOSED:I = 0x3e9

.field private static final blacklist RESULT_L2CAP_CONN_BLUETOOTH_SOCKET_CONNECTION_FAILED:I = 0x3e8

.field private static final blacklist RESULT_L2CAP_CONN_BLUETOOTH_UNABLE_TO_SEND_RPC:I = 0x3ea

.field static final blacklist RESULT_L2CAP_CONN_SERVER_FAILURE:I = 0x7d0

.field static final blacklist RESULT_L2CAP_CONN_SUCCESS:I = 0x1

.field private static final blacklist RESULT_L2CAP_CONN_UNKNOWN:I = 0x0

.field private static final blacklist RFCOMM_CONN_RESULT_FAILURE_UNKNOWN:I = 0x0

.field private static final blacklist RFCOMM_CONN_RESULT_GET_SOCKET_MANAGER_FAILED:I = 0x6

.field private static final blacklist RFCOMM_CONN_RESULT_NULL_BLUETOOTH_DEVICE:I = 0x5

.field private static final blacklist RFCOMM_CONN_RESULT_NULL_FILE_DESCRIPTOR:I = 0x7

.field private static final blacklist RFCOMM_CONN_RESULT_SOCKET_CONNECTION_CLOSED:I = 0x3

.field private static final blacklist RFCOMM_CONN_RESULT_SOCKET_CONNECTION_FAILED:I = 0x2

.field private static final blacklist RFCOMM_CONN_RESULT_SUCCESS:I = 0x1

.field private static final blacklist RFCOMM_CONN_RESULT_UNABLE_TO_SEND_RPC:I = 0x4

.field static final blacklist SOCKET_NO_ERROR:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    const-class v0, Landroid/bluetooth/SocketMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/SocketMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getL2capLeConnectStatusCode(I)I
    .registers 2
    .param p0, "socketExceptionCode"    # I

    .line 127
    sparse-switch p0, :sswitch_data_1a

    .line 143
    const/4 v0, 0x0

    return v0

    .line 141
    :sswitch_5
    const/16 v0, 0x3ed

    return v0

    .line 139
    :sswitch_8
    const/16 v0, 0x3ea

    return v0

    .line 131
    :sswitch_b
    const/16 v0, 0x3eb

    return v0

    .line 137
    :sswitch_e
    const/16 v0, 0x3e8

    return v0

    .line 135
    :sswitch_11
    const/16 v0, 0x3e9

    return v0

    .line 133
    :sswitch_14
    const/16 v0, 0x3ec

    return v0

    .line 129
    :sswitch_17
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_1a
    .sparse-switch
        -0x1 -> :sswitch_17
        0x10 -> :sswitch_14
        0x11 -> :sswitch_11
        0x12 -> :sswitch_e
        0x13 -> :sswitch_b
        0x14 -> :sswitch_8
        0x15 -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist getRfcommConnectStatusCode(I)I
    .registers 2
    .param p0, "socketExceptionCode"    # I

    .line 148
    sparse-switch p0, :sswitch_data_14

    .line 164
    const/4 v0, 0x0

    return v0

    .line 162
    :sswitch_5
    const/4 v0, 0x7

    return v0

    .line 160
    :sswitch_7
    const/4 v0, 0x4

    return v0

    .line 152
    :sswitch_9
    const/4 v0, 0x5

    return v0

    .line 158
    :sswitch_b
    const/4 v0, 0x2

    return v0

    .line 156
    :sswitch_d
    const/4 v0, 0x3

    return v0

    .line 154
    :sswitch_f
    const/4 v0, 0x6

    return v0

    .line 150
    :sswitch_11
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_14
    .sparse-switch
        -0x1 -> :sswitch_11
        0x10 -> :sswitch_f
        0x11 -> :sswitch_d
        0x12 -> :sswitch_b
        0x13 -> :sswitch_9
        0x14 -> :sswitch_7
        0x15 -> :sswitch_5
    .end sparse-switch
.end method

.method static blacklist logSocketAccept(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothSocket;IIIIJJJ)V
    .registers 28
    .param p0, "acceptedSocket"    # Landroid/bluetooth/BluetoothSocket;
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .param p2, "connType"    # I
    .param p3, "channel"    # I
    .param p4, "timeout"    # I
    .param p5, "result"    # I
    .param p6, "socketCreationTimeMillis"    # J
    .param p8, "socketCreationLatencyMillis"    # J
    .param p10, "socketConnectionTimeMillis"    # J

    .line 103
    const/4 v0, 0x4

    move/from16 v1, p2

    if-eq v1, v0, :cond_6

    .line 104
    return-void

    .line 106
    :cond_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v2

    .line 107
    .local v2, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-nez v2, :cond_18

    .line 108
    sget-object v0, Landroid/bluetooth/SocketMetrics;->TAG:Ljava/lang/String;

    const-string v3, "logSocketConnect: bluetoothProxy is null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 112
    :cond_18
    nop

    .line 113
    if-nez p0, :cond_1d

    const/4 v0, 0x0

    goto :goto_21

    :cond_1d
    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :goto_21
    move-object v3, v0

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocket;->isAuth()Z

    move-result v5
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_39

    move/from16 v15, p4

    int-to-long v13, v15

    .line 112
    move/from16 v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    :try_start_33
    invoke-interface/range {v2 .. v14}, Landroid/bluetooth/IBluetooth;->logL2capcocServerConnection(Landroid/bluetooth/BluetoothDevice;IZIJJJJ)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    .line 123
    goto :goto_43

    .line 121
    :catch_37
    move-exception v0

    goto :goto_3c

    :catch_39
    move-exception v0

    move/from16 v15, p4

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3c
    sget-object v3, Landroid/bluetooth/SocketMetrics;->TAG:Ljava/lang/String;

    const-string v4, "logL2capcocServerConnection failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_43
    return-void
.end method

.method static blacklist logSocketConnect(IJILandroid/bluetooth/BluetoothDevice;IZJJ)V
    .registers 25
    .param p0, "socketExceptionCode"    # I
    .param p1, "socketConnectionTimeNanos"    # J
    .param p3, "connType"    # I
    .param p4, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p5, "port"    # I
    .param p6, "auth"    # Z
    .param p7, "socketCreationTimeNanos"    # J
    .param p9, "socketCreationLatencyNanos"    # J

    .line 58
    move/from16 v1, p3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v2

    .line 59
    .local v2, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-nez v2, :cond_14

    .line 60
    sget-object v0, Landroid/bluetooth/SocketMetrics;->TAG:Ljava/lang/String;

    const-string v3, "logSocketConnect: bluetoothProxy is null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 63
    :cond_14
    const/4 v0, 0x4

    const-string v13, "logL2capcocServerConnection failed"

    if-ne v1, v0, :cond_34

    .line 65
    nop

    .line 69
    :try_start_1a
    invoke-static {p0}, Landroid/bluetooth/SocketMetrics;->getL2capLeConnectStatusCode(I)I

    move-result v6

    .line 65
    move-wide v11, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetooth;->logL2capcocClientConnection(Landroid/bluetooth/BluetoothDevice;IZIJJJ)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2c} :catch_2d

    goto :goto_33

    .line 73
    :catch_2d
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/SocketMetrics;->TAG:Ljava/lang/String;

    invoke-static {v3, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_33
    goto :goto_66

    .line 76
    :cond_34
    const/4 v0, 0x1

    if-ne v1, v0, :cond_4e

    .line 77
    const/4 v8, 0x1

    .line 79
    .local v8, "isSerialPort":Z
    nop

    .line 82
    :try_start_39
    invoke-static {p0}, Landroid/bluetooth/SocketMetrics;->getRfcommConnectStatusCode(I)I

    move-result v5

    .line 79
    move-object/from16 v3, p4

    move/from16 v4, p6

    move-wide/from16 v6, p7

    invoke-interface/range {v2 .. v8}, Landroid/bluetooth/IBluetooth;->logRfcommConnectionAttempt(Landroid/bluetooth/BluetoothDevice;ZIJZ)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_46} :catch_47

    .line 87
    goto :goto_4d

    .line 85
    :catch_47
    move-exception v0

    .line 86
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/SocketMetrics;->TAG:Ljava/lang/String;

    invoke-static {v3, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v8    # "isSerialPort":Z
    :goto_4d
    goto :goto_66

    .line 89
    :cond_4e
    sget-object v0, Landroid/bluetooth/SocketMetrics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No metrics for connection type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_66
    return-void
.end method
