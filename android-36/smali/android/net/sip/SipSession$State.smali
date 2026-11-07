.class public Landroid/net/sip/SipSession$State;
.super Ljava/lang/Object;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final whitelist DEREGISTERING:I = 0x2

.field public static final greylist-max-o ENDING_CALL:I = 0xa

.field public static final whitelist INCOMING_CALL:I = 0x3

.field public static final whitelist INCOMING_CALL_ANSWERING:I = 0x4

.field public static final whitelist IN_CALL:I = 0x8

.field public static final whitelist NOT_DEFINED:I = 0x65

.field public static final whitelist OUTGOING_CALL:I = 0x5

.field public static final whitelist OUTGOING_CALL_CANCELING:I = 0x7

.field public static final whitelist OUTGOING_CALL_RING_BACK:I = 0x6

.field public static final whitelist PINGING:I = 0x9

.field public static final whitelist READY_TO_CALL:I = 0x0

.field public static final whitelist REGISTERING:I = 0x1


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method public static whitelist toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 78
    packed-switch p0, :pswitch_data_24

    .line 100
    const-string v0, "NOT_DEFINED"

    return-object v0

    .line 98
    :pswitch_6
    const-string v0, "PINGING"

    return-object v0

    .line 96
    :pswitch_9
    const-string v0, "IN_CALL"

    return-object v0

    .line 94
    :pswitch_c
    const-string v0, "OUTGOING_CALL_CANCELING"

    return-object v0

    .line 92
    :pswitch_f
    const-string v0, "OUTGOING_CALL_RING_BACK"

    return-object v0

    .line 90
    :pswitch_12
    const-string v0, "OUTGOING_CALL"

    return-object v0

    .line 88
    :pswitch_15
    const-string v0, "INCOMING_CALL_ANSWERING"

    return-object v0

    .line 86
    :pswitch_18
    const-string v0, "INCOMING_CALL"

    return-object v0

    .line 84
    :pswitch_1b
    const-string v0, "DEREGISTERING"

    return-object v0

    .line 82
    :pswitch_1e
    const-string v0, "REGISTERING"

    return-object v0

    .line 80
    :pswitch_21
    const-string v0, "READY_TO_CALL"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
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
