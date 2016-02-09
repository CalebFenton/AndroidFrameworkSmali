.class public Landroid/net/sip/SipErrorCode;
.super Ljava/lang/Object;
.source "SipErrorCode.java"


# static fields
.field public static final CLIENT_ERROR:I = -0x4

.field public static final CROSS_DOMAIN_AUTHENTICATION:I = -0xb

.field public static final DATA_CONNECTION_LOST:I = -0xa

.field public static final INVALID_CREDENTIALS:I = -0x8

.field public static final INVALID_REMOTE_URI:I = -0x6

.field public static final IN_PROGRESS:I = -0x9

.field public static final NO_ERROR:I = 0x0

.field public static final PEER_NOT_REACHABLE:I = -0x7

.field public static final SERVER_ERROR:I = -0x2

.field public static final SERVER_UNREACHABLE:I = -0xc

.field public static final SOCKET_ERROR:I = -0x1

.field public static final TIME_OUT:I = -0x5

.field public static final TRANSACTION_TERMINTED:I = -0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    #@0
    .prologue
    .line 67
    packed-switch p0, :pswitch_data_0

    #@3
    .line 95
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 69
    :pswitch_0
    const-string/jumbo v0, "NO_ERROR"

    #@a
    return-object v0

    #@b
    .line 71
    :pswitch_1
    const-string/jumbo v0, "SOCKET_ERROR"

    #@e
    return-object v0

    #@f
    .line 73
    :pswitch_2
    const-string/jumbo v0, "SERVER_ERROR"

    #@12
    return-object v0

    #@13
    .line 75
    :pswitch_3
    const-string/jumbo v0, "TRANSACTION_TERMINTED"

    #@16
    return-object v0

    #@17
    .line 77
    :pswitch_4
    const-string/jumbo v0, "CLIENT_ERROR"

    #@1a
    return-object v0

    #@1b
    .line 79
    :pswitch_5
    const-string/jumbo v0, "TIME_OUT"

    #@1e
    return-object v0

    #@1f
    .line 81
    :pswitch_6
    const-string/jumbo v0, "INVALID_REMOTE_URI"

    #@22
    return-object v0

    #@23
    .line 83
    :pswitch_7
    const-string/jumbo v0, "PEER_NOT_REACHABLE"

    #@26
    return-object v0

    #@27
    .line 85
    :pswitch_8
    const-string/jumbo v0, "INVALID_CREDENTIALS"

    #@2a
    return-object v0

    #@2b
    .line 87
    :pswitch_9
    const-string/jumbo v0, "IN_PROGRESS"

    #@2e
    return-object v0

    #@2f
    .line 89
    :pswitch_a
    const-string/jumbo v0, "DATA_CONNECTION_LOST"

    #@32
    return-object v0

    #@33
    .line 91
    :pswitch_b
    const-string/jumbo v0, "CROSS_DOMAIN_AUTHENTICATION"

    #@36
    return-object v0

    #@37
    .line 93
    :pswitch_c
    const-string/jumbo v0, "SERVER_UNREACHABLE"

    #@3a
    return-object v0

    #@3b
    .line 67
    nop

    #@3c
    :pswitch_data_0
    .packed-switch -0xc
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
