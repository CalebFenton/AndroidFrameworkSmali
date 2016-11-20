.class public Landroid/nfc/ErrorCodes;
.super Ljava/lang/Object;
.source "ErrorCodes.java"


# static fields
.field public static final ERROR_BUFFER_TO_SMALL:I = -0xc

.field public static final ERROR_BUSY:I = -0x4

.field public static final ERROR_CANCELLED:I = -0x2

.field public static final ERROR_CONNECT:I = -0x5

.field public static final ERROR_DISCONNECT:I = -0x5

.field public static final ERROR_INSUFFICIENT_RESOURCES:I = -0x9

.field public static final ERROR_INVALID_PARAM:I = -0x8

.field public static final ERROR_IO:I = -0x1

.field public static final ERROR_NFC_ON:I = -0x10

.field public static final ERROR_NOT_INITIALIZED:I = -0x11

.field public static final ERROR_NOT_SUPPORTED:I = -0x15

.field public static final ERROR_NO_SE_CONNECTED:I = -0x14

.field public static final ERROR_READ:I = -0x6

.field public static final ERROR_SAP_USED:I = -0xd

.field public static final ERROR_SERVICE_NAME_USED:I = -0xe

.field public static final ERROR_SE_ALREADY_SELECTED:I = -0x12

.field public static final ERROR_SE_CONNECTED:I = -0x13

.field public static final ERROR_SOCKET_CREATION:I = -0xa

.field public static final ERROR_SOCKET_NOT_CONNECTED:I = -0xb

.field public static final ERROR_SOCKET_OPTIONS:I = -0xf

.field public static final ERROR_TIMEOUT:I = -0x3

.field public static final ERROR_WRITE:I = -0x7

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static asString(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    #@0
    .prologue
    .line 37
    packed-switch p0, :pswitch_data_0

    #@3
    .line 61
    const-string/jumbo v0, "UNKNOWN ERROR"

    #@6
    return-object v0

    #@7
    .line 38
    :pswitch_0
    const-string/jumbo v0, "SUCCESS"

    #@a
    return-object v0

    #@b
    .line 39
    :pswitch_1
    const-string/jumbo v0, "IO"

    #@e
    return-object v0

    #@f
    .line 40
    :pswitch_2
    const-string/jumbo v0, "CANCELLED"

    #@12
    return-object v0

    #@13
    .line 41
    :pswitch_3
    const-string/jumbo v0, "TIMEOUT"

    #@16
    return-object v0

    #@17
    .line 42
    :pswitch_4
    const-string/jumbo v0, "BUSY"

    #@1a
    return-object v0

    #@1b
    .line 43
    :pswitch_5
    const-string/jumbo v0, "CONNECT/DISCONNECT"

    #@1e
    return-object v0

    #@1f
    .line 45
    :pswitch_6
    const-string/jumbo v0, "READ"

    #@22
    return-object v0

    #@23
    .line 46
    :pswitch_7
    const-string/jumbo v0, "WRITE"

    #@26
    return-object v0

    #@27
    .line 47
    :pswitch_8
    const-string/jumbo v0, "INVALID_PARAM"

    #@2a
    return-object v0

    #@2b
    .line 48
    :pswitch_9
    const-string/jumbo v0, "INSUFFICIENT_RESOURCES"

    #@2e
    return-object v0

    #@2f
    .line 49
    :pswitch_a
    const-string/jumbo v0, "SOCKET_CREATION"

    #@32
    return-object v0

    #@33
    .line 50
    :pswitch_b
    const-string/jumbo v0, "SOCKET_NOT_CONNECTED"

    #@36
    return-object v0

    #@37
    .line 51
    :pswitch_c
    const-string/jumbo v0, "BUFFER_TO_SMALL"

    #@3a
    return-object v0

    #@3b
    .line 52
    :pswitch_d
    const-string/jumbo v0, "SAP_USED"

    #@3e
    return-object v0

    #@3f
    .line 53
    :pswitch_e
    const-string/jumbo v0, "SERVICE_NAME_USED"

    #@42
    return-object v0

    #@43
    .line 54
    :pswitch_f
    const-string/jumbo v0, "SOCKET_OPTIONS"

    #@46
    return-object v0

    #@47
    .line 55
    :pswitch_10
    const-string/jumbo v0, "NFC_ON"

    #@4a
    return-object v0

    #@4b
    .line 56
    :pswitch_11
    const-string/jumbo v0, "NOT_INITIALIZED"

    #@4e
    return-object v0

    #@4f
    .line 57
    :pswitch_12
    const-string/jumbo v0, "SE_ALREADY_SELECTED"

    #@52
    return-object v0

    #@53
    .line 58
    :pswitch_13
    const-string/jumbo v0, "SE_CONNECTED"

    #@56
    return-object v0

    #@57
    .line 59
    :pswitch_14
    const-string/jumbo v0, "NO_SE_CONNECTED"

    #@5a
    return-object v0

    #@5b
    .line 60
    :pswitch_15
    const-string/jumbo v0, "NOT_SUPPORTED"

    #@5e
    return-object v0

    #@5f
    .line 37
    nop

    #@60
    :pswitch_data_0
    .packed-switch -0x15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isError(I)Z
    .locals 1
    .param p0, "code"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 29
    if-gez p0, :cond_0

    #@3
    .line 30
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 32
    :cond_0
    return v0
.end method
