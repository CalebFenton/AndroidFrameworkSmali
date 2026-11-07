.class public Landroid/net/wifi/AnqpInformationElement;
.super Ljava/lang/Object;
.source "AnqpInformationElement.java"


# static fields
.field public static final greylist-max-o ANQP_3GPP_NETWORK:I = 0x108

.field public static final greylist-max-o ANQP_CAPABILITY_LIST:I = 0x101

.field public static final greylist-max-o ANQP_CIVIC_LOC:I = 0x10a

.field public static final greylist-max-o ANQP_DOM_NAME:I = 0x10c

.field public static final greylist-max-o ANQP_EMERGENCY_ALERT:I = 0x10d

.field public static final greylist-max-o ANQP_EMERGENCY_NAI:I = 0x10f

.field public static final greylist-max-o ANQP_EMERGENCY_NUMBER:I = 0x103

.field public static final greylist-max-o ANQP_GEO_LOC:I = 0x109

.field public static final greylist-max-o ANQP_IP_ADDR_AVAILABILITY:I = 0x106

.field public static final greylist-max-o ANQP_LOC_URI:I = 0x10b

.field public static final greylist-max-o ANQP_NAI_REALM:I = 0x107

.field public static final greylist-max-o ANQP_NEIGHBOR_REPORT:I = 0x110

.field public static final greylist-max-o ANQP_NWK_AUTH_TYPE:I = 0x104

.field public static final greylist-max-o ANQP_QUERY_LIST:I = 0x100

.field public static final greylist-max-o ANQP_ROAMING_CONSORTIUM:I = 0x105

.field public static final greylist-max-o ANQP_TDLS_CAP:I = 0x10e

.field public static final greylist-max-o ANQP_VENDOR_SPEC:I = 0xdddd

.field public static final greylist-max-o ANQP_VENUE_NAME:I = 0x102

.field public static final greylist-max-o HOTSPOT20_VENDOR_ID:I = 0x506f9a

.field public static final greylist-max-o HS_CAPABILITY_LIST:I = 0x2

.field public static final greylist-max-o HS_CONN_CAPABILITY:I = 0x5

.field public static final greylist-max-o HS_FRIENDLY_NAME:I = 0x3

.field public static final greylist-max-o HS_ICON_FILE:I = 0xb

.field public static final greylist-max-o HS_ICON_REQUEST:I = 0xa

.field public static final greylist-max-o HS_NAI_HOME_REALM_QUERY:I = 0x6

.field public static final greylist-max-o HS_OPERATING_CLASS:I = 0x7

.field public static final greylist-max-o HS_OSU_PROVIDERS:I = 0x8

.field public static final greylist-max-o HS_QUERY_LIST:I = 0x1

.field public static final greylist-max-o HS_WAN_METRICS:I = 0x4


# instance fields
.field private final greylist-max-o mElementId:I

.field private final greylist-max-o mPayload:[B

.field private final greylist-max-o mVendorId:I


# direct methods
.method public constructor greylist-max-o <init>(II[B)V
    .registers 4
    .param p1, "vendorId"    # I
    .param p2, "elementId"    # I
    .param p3, "payload"    # [B

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/net/wifi/AnqpInformationElement;->mVendorId:I

    .line 65
    iput p2, p0, Landroid/net/wifi/AnqpInformationElement;->mElementId:I

    .line 66
    iput-object p3, p0, Landroid/net/wifi/AnqpInformationElement;->mPayload:[B

    .line 67
    return-void
.end method


# virtual methods
.method public greylist-max-o getElementId()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/net/wifi/AnqpInformationElement;->mElementId:I

    return v0
.end method

.method public greylist-max-o getPayload()[B
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/net/wifi/AnqpInformationElement;->mPayload:[B

    return-object v0
.end method

.method public greylist-max-o getVendorId()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/net/wifi/AnqpInformationElement;->mVendorId:I

    return v0
.end method
