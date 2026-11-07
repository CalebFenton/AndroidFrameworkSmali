.class public Landroid/nfc/ErrorCodes;
.super Ljava/lang/Object;
.source "ErrorCodes.java"


# static fields
.field public static final greylist-max-o ERROR_BUFFER_TO_SMALL:I = -0xc

.field public static final greylist-max-o ERROR_BUSY:I = -0x4

.field public static final greylist-max-o ERROR_CANCELLED:I = -0x2

.field public static final greylist-max-o ERROR_CONNECT:I = -0x5

.field public static final greylist-max-o ERROR_DISCONNECT:I = -0x5

.field public static final greylist-max-o ERROR_INSUFFICIENT_RESOURCES:I = -0x9

.field public static final greylist-max-o ERROR_INVALID_PARAM:I = -0x8

.field public static final greylist-max-o ERROR_IO:I = -0x1

.field public static final greylist-max-o ERROR_NFC_ON:I = -0x10

.field public static final greylist-max-o ERROR_NOT_INITIALIZED:I = -0x11

.field public static final greylist-max-o ERROR_NOT_SUPPORTED:I = -0x15

.field public static final greylist-max-o ERROR_NO_SE_CONNECTED:I = -0x14

.field public static final greylist-max-o ERROR_READ:I = -0x6

.field public static final greylist-max-o ERROR_SAP_USED:I = -0xd

.field public static final greylist-max-o ERROR_SERVICE_NAME_USED:I = -0xe

.field public static final greylist-max-o ERROR_SE_ALREADY_SELECTED:I = -0x12

.field public static final greylist-max-o ERROR_SE_CONNECTED:I = -0x13

.field public static final greylist-max-o ERROR_SOCKET_CREATION:I = -0xa

.field public static final greylist-max-o ERROR_SOCKET_NOT_CONNECTED:I = -0xb

.field public static final greylist-max-o ERROR_SOCKET_OPTIONS:I = -0xf

.field public static final greylist-max-o ERROR_TIMEOUT:I = -0x3

.field public static final greylist-max-o ERROR_WRITE:I = -0x7

.field public static final greylist-max-o SUCCESS:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o asString(I)Ljava/lang/String;
    .registers 2
    .param p0, "code"    # I

    .line 40
    packed-switch p0, :pswitch_data_48

    .line 64
    const-string v0, "UNKNOWN ERROR"

    return-object v0

    .line 41
    :pswitch_6
    const-string v0, "SUCCESS"

    return-object v0

    .line 42
    :pswitch_9
    const-string v0, "IO"

    return-object v0

    .line 43
    :pswitch_c
    const-string v0, "CANCELLED"

    return-object v0

    .line 44
    :pswitch_f
    const-string v0, "TIMEOUT"

    return-object v0

    .line 45
    :pswitch_12
    const-string v0, "BUSY"

    return-object v0

    .line 46
    :pswitch_15
    const-string v0, "CONNECT/DISCONNECT"

    return-object v0

    .line 48
    :pswitch_18
    const-string v0, "READ"

    return-object v0

    .line 49
    :pswitch_1b
    const-string v0, "WRITE"

    return-object v0

    .line 50
    :pswitch_1e
    const-string v0, "INVALID_PARAM"

    return-object v0

    .line 51
    :pswitch_21
    const-string v0, "INSUFFICIENT_RESOURCES"

    return-object v0

    .line 52
    :pswitch_24
    const-string v0, "SOCKET_CREATION"

    return-object v0

    .line 53
    :pswitch_27
    const-string v0, "SOCKET_NOT_CONNECTED"

    return-object v0

    .line 54
    :pswitch_2a
    const-string v0, "BUFFER_TO_SMALL"

    return-object v0

    .line 55
    :pswitch_2d
    const-string v0, "SAP_USED"

    return-object v0

    .line 56
    :pswitch_30
    const-string v0, "SERVICE_NAME_USED"

    return-object v0

    .line 57
    :pswitch_33
    const-string v0, "SOCKET_OPTIONS"

    return-object v0

    .line 58
    :pswitch_36
    const-string v0, "NFC_ON"

    return-object v0

    .line 59
    :pswitch_39
    const-string v0, "NOT_INITIALIZED"

    return-object v0

    .line 60
    :pswitch_3c
    const-string v0, "SE_ALREADY_SELECTED"

    return-object v0

    .line 61
    :pswitch_3f
    const-string v0, "SE_CONNECTED"

    return-object v0

    .line 62
    :pswitch_42
    const-string v0, "NO_SE_CONNECTED"

    return-object v0

    .line 63
    :pswitch_45
    const-string v0, "NOT_SUPPORTED"

    return-object v0

    :pswitch_data_48
    .packed-switch -0x15
        :pswitch_45
        :pswitch_42
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
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist isError(I)Z
    .registers 2
    .param p0, "code"    # I

    .line 32
    if-gez p0, :cond_4

    .line 33
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_4
    const/4 v0, 0x0

    return v0
.end method
