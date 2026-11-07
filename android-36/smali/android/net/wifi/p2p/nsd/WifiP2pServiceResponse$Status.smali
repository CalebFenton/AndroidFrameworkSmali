.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final greylist-max-o BAD_REQUEST:I = 0x3

.field public static final greylist-max-o REQUESTED_INFORMATION_NOT_AVAILABLE:I = 0x2

.field public static final greylist-max-o SERVICE_PROTOCOL_NOT_AVAILABLE:I = 0x1

.field public static final greylist-max-o SUCCESS:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "status"    # I

    .line 113
    packed-switch p0, :pswitch_data_12

    .line 123
    const-string v0, "UNKNOWN"

    return-object v0

    .line 121
    :pswitch_6
    const-string v0, "BAD_REQUEST"

    return-object v0

    .line 119
    :pswitch_9
    const-string v0, "REQUESTED_INFORMATION_NOT_AVAILABLE"

    return-object v0

    .line 117
    :pswitch_c
    const-string v0, "SERVICE_PROTOCOL_NOT_AVAILABLE"

    return-object v0

    .line 115
    :pswitch_f
    const-string v0, "SUCCESS"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
