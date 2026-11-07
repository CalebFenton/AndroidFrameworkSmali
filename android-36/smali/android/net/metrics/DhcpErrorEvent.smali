.class public final Landroid/net/metrics/DhcpErrorEvent;
.super Ljava/lang/Object;
.source "DhcpErrorEvent.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DhcpErrorEvent$Decoder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist BOOTP_TOO_SHORT:I = 0x4010000

.field public static final whitelist BUFFER_UNDERFLOW:I = 0x5010000

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/DhcpErrorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DHCP_BAD_MAGIC_COOKIE:I = 0x4020000

.field public static final whitelist DHCP_ERROR:I = 0x4

.field private static final blacklist DHCP_ERROR_TYPE:I = 0x400

.field public static final whitelist DHCP_INVALID_OPTION_LENGTH:I = 0x4030000

.field public static final whitelist DHCP_NO_COOKIE:I = 0x4060000

.field public static final whitelist DHCP_NO_MSG_TYPE:I = 0x4040000

.field public static final whitelist DHCP_UNKNOWN_MSG_TYPE:I = 0x4050000

.field public static final whitelist L2_ERROR:I = 0x1

.field private static final blacklist L2_ERROR_TYPE:I = 0x100

.field public static final whitelist L2_TOO_SHORT:I = 0x1010000

.field public static final whitelist L2_WRONG_ETH_TYPE:I = 0x1020000

.field public static final whitelist L3_ERROR:I = 0x2

.field private static final blacklist L3_ERROR_TYPE:I = 0x200

.field public static final whitelist L3_INVALID_IP:I = 0x2030000

.field public static final whitelist L3_NOT_IPV4:I = 0x2020000

.field public static final whitelist L3_TOO_SHORT:I = 0x2010000

.field public static final whitelist L4_ERROR:I = 0x3

.field private static final blacklist L4_ERROR_TYPE:I = 0x300

.field public static final whitelist L4_NOT_UDP:I = 0x3010000

.field public static final whitelist L4_WRONG_PORT:I = 0x3020000

.field public static final whitelist MISC_ERROR:I = 0x5

.field private static final blacklist MISC_ERROR_TYPE:I = 0x500

.field public static final whitelist PARSING_ERROR:I = 0x5030000

.field public static final whitelist RECEIVE_ERROR:I = 0x5020000


# instance fields
.field public final greylist-max-o errorCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 99
    new-instance v0, Landroid/net/metrics/DhcpErrorEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/DhcpErrorEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/DhcpErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    .line 80
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/metrics/DhcpErrorEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist errorCodeWithOption(II)I
    .registers 4
    .param p0, "errorCode"    # I
    .param p1, "option"    # I

    .line 111
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 117
    sget-object v0, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v1, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DhcpErrorEvent(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
