.class public final Landroid/telephony/AccessNetworkConstants;
.super Ljava/lang/Object;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$NgranBands;,
        Landroid/telephony/AccessNetworkConstants$CdmaBands;,
        Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$EutranBand;,
        Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$UtranBand;,
        Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$GeranBand;,
        Landroid/telephony/AccessNetworkConstants$AccessNetworkType;,
        Landroid/telephony/AccessNetworkConstants$RadioAccessNetworkType;,
        Landroid/telephony/AccessNetworkConstants$TransportType;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist TRANSPORT_TYPE_INVALID:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TRANSPORT_TYPE_WLAN:I = 0x2

.field public static final whitelist TRANSPORT_TYPE_WWAN:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const-class v0, Landroid/telephony/AccessNetworkConstants;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/AccessNetworkConstants;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist transportTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "transportType"    # I

    .line 66
    packed-switch p0, :pswitch_data_12

    .line 70
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_8
    const-string v0, "WLAN"

    return-object v0

    .line 67
    :pswitch_b
    const-string v0, "WWAN"

    return-object v0

    .line 69
    :pswitch_e
    const-string v0, "INVALID"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_e
        :pswitch_3
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
