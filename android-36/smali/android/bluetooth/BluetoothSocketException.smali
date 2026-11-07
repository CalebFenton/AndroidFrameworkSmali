.class public Landroid/bluetooth/BluetoothSocketException;
.super Ljava/io/IOException;
.source "BluetoothSocketException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSocketException$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist BLUETOOTH_OFF_FAILURE:I = 0xf

.field private static final blacklist BLUETOOTH_OFF_FAILURE_MSG:Ljava/lang/String; = "Bluetooth is off"

.field public static final whitelist L2CAP_ACL_FAILURE:I = 0x2

.field private static final blacklist L2CAP_ACL_FAILURE_MSG:Ljava/lang/String; = "ACL connection failed"

.field public static final whitelist L2CAP_CLIENT_SECURITY_FAILURE:I = 0x3

.field private static final blacklist L2CAP_CLIENT_SECURITY_FAILURE_MSG:Ljava/lang/String; = "Client security clearance failed"

.field public static final whitelist L2CAP_INSUFFICIENT_AUTHENTICATION:I = 0x4

.field private static final blacklist L2CAP_INSUFFICIENT_AUTHENTICATION_MSG:Ljava/lang/String; = "Insufficient authentication"

.field public static final whitelist L2CAP_INSUFFICIENT_AUTHORIZATION:I = 0x5

.field private static final blacklist L2CAP_INSUFFICIENT_AUTHORIZATION_MSG:Ljava/lang/String; = "Insufficient authorization"

.field public static final whitelist L2CAP_INSUFFICIENT_ENCRYPTION:I = 0x7

.field private static final blacklist L2CAP_INSUFFICIENT_ENCRYPTION_MSG:Ljava/lang/String; = "Insufficient encryption"

.field public static final whitelist L2CAP_INSUFFICIENT_ENCRYPT_KEY_SIZE:I = 0x6

.field private static final blacklist L2CAP_INSUFFICIENT_ENCRYPT_KEY_SIZE_MSG:Ljava/lang/String; = "Insufficient encryption key size"

.field public static final whitelist L2CAP_INVALID_PARAMETERS:I = 0xb

.field private static final blacklist L2CAP_INVALID_PARAMETERS_MSG:Ljava/lang/String; = "Invalid Parameters"

.field public static final whitelist L2CAP_INVALID_SOURCE_CID:I = 0x8

.field private static final blacklist L2CAP_INVALID_SOURCE_CID_MSG:Ljava/lang/String; = "Invalid source CID"

.field public static final whitelist L2CAP_NO_PSM_AVAILABLE:I = 0xd

.field private static final blacklist L2CAP_NO_PSM_AVAILABLE_MSG:Ljava/lang/String; = "No PSM available"

.field public static final whitelist L2CAP_NO_RESOURCES:I = 0xc

.field private static final blacklist L2CAP_NO_RESOURCES_MSG:Ljava/lang/String; = "No resources Available"

.field public static final whitelist L2CAP_SOURCE_CID_ALREADY_ALLOCATED:I = 0x9

.field private static final blacklist L2CAP_SOURCE_CID_ALREADY_ALLOCATED_MSG:Ljava/lang/String; = "Source CID already allocated"

.field public static final whitelist L2CAP_TIMEOUT:I = 0xe

.field private static final blacklist L2CAP_TIMEOUT_MSG:Ljava/lang/String; = "Connection Timeout"

.field public static final whitelist L2CAP_UNACCEPTABLE_PARAMETERS:I = 0xa

.field private static final blacklist L2CAP_UNACCEPTABLE_PARAMETERS_MSG:Ljava/lang/String; = "Unacceptable Parameters"

.field public static final whitelist L2CAP_UNKNOWN:I = 0x1

.field private static final blacklist L2CAP_UNKNOWN_MSG:Ljava/lang/String; = "Connection failed for unknown reason"

.field public static final whitelist NULL_DEVICE:I = 0x13

.field private static final blacklist NULL_DEVICE_MSG:Ljava/lang/String; = "Connect is called on null device"

.field public static final whitelist RPC_FAILURE:I = 0x14

.field public static final whitelist SOCKET_CLOSED:I = 0x11

.field private static final blacklist SOCKET_CLOSED_MSG:Ljava/lang/String; = "socket closed"

.field public static final whitelist SOCKET_CONNECTION_FAILURE:I = 0x12

.field private static final blacklist SOCKET_CONNECTION_FAILURE_MSG:Ljava/lang/String; = "bt socket connect failed"

.field public static final whitelist SOCKET_MANAGER_FAILURE:I = 0x10

.field private static final blacklist SOCKET_MANAGER_FAILURE_MSG:Ljava/lang/String; = "bt get socket manager failed"

.field public static final whitelist UNIX_FILE_SOCKET_CREATION_FAILURE:I = 0x15

.field private static final blacklist UNIX_FILE_SOCKET_CREATION_FAILURE_MSG:Ljava/lang/String; = "Null file descriptor returned"

.field public static final whitelist UNSPECIFIED:I = 0x0

.field private static final blacklist UNSPECIFIED_MSG:Ljava/lang/String; = "A Bluetooth Socket failure occurred"


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "code"    # I

    .line 219
    invoke-static {p1}, Landroid/bluetooth/BluetoothSocketException;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothSocketException;-><init>(ILjava/lang/String;)V

    .line 220
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 208
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 209
    iput p1, p0, Landroid/bluetooth/BluetoothSocketException;->mErrorCode:I

    .line 210
    return-void
.end method

.method private static blacklist getMessage(I)Ljava/lang/String;
    .registers 2
    .param p0, "code"    # I

    .line 229
    packed-switch p0, :pswitch_data_42

    .line 272
    :pswitch_3
    const-string v0, "A Bluetooth Socket failure occurred"

    return-object v0

    .line 241
    :pswitch_6
    const-string v0, "Null file descriptor returned"

    return-object v0

    .line 239
    :pswitch_9
    const-string v0, "Connect is called on null device"

    return-object v0

    .line 237
    :pswitch_c
    const-string v0, "bt socket connect failed"

    return-object v0

    .line 235
    :pswitch_f
    const-string v0, "socket closed"

    return-object v0

    .line 233
    :pswitch_12
    const-string v0, "bt get socket manager failed"

    return-object v0

    .line 231
    :pswitch_15
    const-string v0, "Bluetooth is off"

    return-object v0

    .line 267
    :pswitch_18
    const-string v0, "Connection Timeout"

    return-object v0

    .line 265
    :pswitch_1b
    const-string v0, "No PSM available"

    return-object v0

    .line 263
    :pswitch_1e
    const-string v0, "No resources Available"

    return-object v0

    .line 261
    :pswitch_21
    const-string v0, "Invalid Parameters"

    return-object v0

    .line 259
    :pswitch_24
    const-string v0, "Unacceptable Parameters"

    return-object v0

    .line 257
    :pswitch_27
    const-string v0, "Source CID already allocated"

    return-object v0

    .line 255
    :pswitch_2a
    const-string v0, "Invalid source CID"

    return-object v0

    .line 253
    :pswitch_2d
    const-string v0, "Insufficient encryption"

    return-object v0

    .line 251
    :pswitch_30
    const-string v0, "Insufficient encryption key size"

    return-object v0

    .line 249
    :pswitch_33
    const-string v0, "Insufficient authorization"

    return-object v0

    .line 247
    :pswitch_36
    const-string v0, "Insufficient authentication"

    return-object v0

    .line 245
    :pswitch_39
    const-string v0, "Client security clearance failed"

    return-object v0

    .line 243
    :pswitch_3c
    const-string v0, "ACL connection failed"

    return-object v0

    .line 269
    :pswitch_3f
    const-string v0, "Connection failed for unknown reason"

    return-object v0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 225
    iget v0, p0, Landroid/bluetooth/BluetoothSocketException;->mErrorCode:I

    return v0
.end method
