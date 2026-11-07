.class public Landroid/net/sip/SipErrorCode;
.super Ljava/lang/Object;
.source "SipErrorCode.java"


# static fields
.field public static final whitelist CLIENT_ERROR:I = -0x4

.field public static final whitelist CROSS_DOMAIN_AUTHENTICATION:I = -0xb

.field public static final whitelist DATA_CONNECTION_LOST:I = -0xa

.field public static final whitelist INVALID_CREDENTIALS:I = -0x8

.field public static final whitelist INVALID_REMOTE_URI:I = -0x6

.field public static final whitelist IN_PROGRESS:I = -0x9

.field public static final whitelist NO_ERROR:I = 0x0

.field public static final whitelist PEER_NOT_REACHABLE:I = -0x7

.field public static final whitelist SERVER_ERROR:I = -0x2

.field public static final whitelist SERVER_UNREACHABLE:I = -0xc

.field public static final whitelist SOCKET_ERROR:I = -0x1

.field public static final whitelist TIME_OUT:I = -0x5

.field public static final whitelist TRANSACTION_TERMINTED:I = -0x3


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static whitelist toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "errorCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_2e

    .line 97
    const-string v0, "UNKNOWN"

    return-object v0

    .line 71
    :pswitch_6
    const-string v0, "NO_ERROR"

    return-object v0

    .line 73
    :pswitch_9
    const-string v0, "SOCKET_ERROR"

    return-object v0

    .line 75
    :pswitch_c
    const-string v0, "SERVER_ERROR"

    return-object v0

    .line 77
    :pswitch_f
    const-string v0, "TRANSACTION_TERMINTED"

    return-object v0

    .line 79
    :pswitch_12
    const-string v0, "CLIENT_ERROR"

    return-object v0

    .line 81
    :pswitch_15
    const-string v0, "TIME_OUT"

    return-object v0

    .line 83
    :pswitch_18
    const-string v0, "INVALID_REMOTE_URI"

    return-object v0

    .line 85
    :pswitch_1b
    const-string v0, "PEER_NOT_REACHABLE"

    return-object v0

    .line 87
    :pswitch_1e
    const-string v0, "INVALID_CREDENTIALS"

    return-object v0

    .line 89
    :pswitch_21
    const-string v0, "IN_PROGRESS"

    return-object v0

    .line 91
    :pswitch_24
    const-string v0, "DATA_CONNECTION_LOST"

    return-object v0

    .line 93
    :pswitch_27
    const-string v0, "CROSS_DOMAIN_AUTHENTICATION"

    return-object v0

    .line 95
    :pswitch_2a
    const-string v0, "SERVER_UNREACHABLE"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch -0xc
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
