.class public final Landroid/net/metrics/DhcpErrorEvent;
.super Ljava/lang/Object;
.source "DhcpErrorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DhcpErrorEvent$1;,
        Landroid/net/metrics/DhcpErrorEvent$Decoder;
    }
.end annotation


# static fields
.field public static final BOOTP_TOO_SHORT:I

.field public static final BUFFER_UNDERFLOW:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/DhcpErrorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DHCP_BAD_MAGIC_COOKIE:I

.field public static final DHCP_ERROR:I = 0x4

.field public static final DHCP_INVALID_OPTION_LENGTH:I

.field public static final DHCP_NO_COOKIE:I

.field public static final DHCP_NO_MSG_TYPE:I

.field public static final DHCP_UNKNOWN_MSG_TYPE:I

.field public static final L2_ERROR:I = 0x1

.field public static final L2_TOO_SHORT:I

.field public static final L2_WRONG_ETH_TYPE:I

.field public static final L3_ERROR:I = 0x2

.field public static final L3_INVALID_IP:I

.field public static final L3_NOT_IPV4:I

.field public static final L3_TOO_SHORT:I

.field public static final L4_ERROR:I = 0x3

.field public static final L4_NOT_UDP:I

.field public static final L4_WRONG_PORT:I

.field public static final MISC_ERROR:I = 0x5

.field public static final PARSING_ERROR:I

.field public static final RECEIVE_ERROR:I


# instance fields
.field public final errorCode:I

.field public final ifName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x3

    #@2
    const/4 v3, 0x4

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x2

    #@5
    .line 38
    invoke-static {v2, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@8
    move-result v0

    #@9
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L2_TOO_SHORT:I

    #@b
    .line 39
    invoke-static {v2, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@e
    move-result v0

    #@f
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L2_WRONG_ETH_TYPE:I

    #@11
    .line 41
    invoke-static {v1, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@14
    move-result v0

    #@15
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L3_TOO_SHORT:I

    #@17
    .line 42
    invoke-static {v1, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@1a
    move-result v0

    #@1b
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L3_NOT_IPV4:I

    #@1d
    .line 43
    invoke-static {v1, v4}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@20
    move-result v0

    #@21
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L3_INVALID_IP:I

    #@23
    .line 45
    invoke-static {v4, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@26
    move-result v0

    #@27
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L4_NOT_UDP:I

    #@29
    .line 46
    invoke-static {v4, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@2c
    move-result v0

    #@2d
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L4_WRONG_PORT:I

    #@2f
    .line 48
    invoke-static {v3, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@32
    move-result v0

    #@33
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->BOOTP_TOO_SHORT:I

    #@35
    .line 49
    invoke-static {v3, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@38
    move-result v0

    #@39
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_BAD_MAGIC_COOKIE:I

    #@3b
    .line 50
    invoke-static {v3, v4}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@3e
    move-result v0

    #@3f
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_INVALID_OPTION_LENGTH:I

    #@41
    .line 51
    invoke-static {v3, v3}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@44
    move-result v0

    #@45
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_MSG_TYPE:I

    #@47
    .line 52
    invoke-static {v3, v5}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@4a
    move-result v0

    #@4b
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_UNKNOWN_MSG_TYPE:I

    #@4d
    .line 54
    const/4 v0, 0x6

    #@4e
    invoke-static {v3, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@51
    move-result v0

    #@52
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    #@54
    .line 56
    invoke-static {v5, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@57
    move-result v0

    #@58
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->BUFFER_UNDERFLOW:I

    #@5a
    .line 57
    invoke-static {v5, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@5d
    move-result v0

    #@5e
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->RECEIVE_ERROR:I

    #@60
    .line 59
    invoke-static {v5, v4}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    #@63
    move-result v0

    #@64
    sput v0, Landroid/net/metrics/DhcpErrorEvent;->PARSING_ERROR:I

    #@66
    .line 92
    new-instance v0, Landroid/net/metrics/DhcpErrorEvent$1;

    #@68
    invoke-direct {v0}, Landroid/net/metrics/DhcpErrorEvent$1;-><init>()V

    #@6b
    .line 91
    sput-object v0, Landroid/net/metrics/DhcpErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6d
    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/metrics/DhcpErrorEvent;->ifName:Ljava/lang/String;

    #@9
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    #@f
    .line 75
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DhcpErrorEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Landroid/net/metrics/DhcpErrorEvent;->ifName:Ljava/lang/String;

    #@5
    .line 72
    iput p2, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    #@7
    .line 70
    return-void
.end method

.method public static errorCodeWithOption(II)I
    .locals 2
    .param p0, "errorCode"    # I
    .param p1, "option"    # I

    #@0
    .prologue
    .line 109
    const/high16 v0, -0x10000

    #@2
    and-int/2addr v0, p0

    #@3
    and-int/lit16 v1, p1, 0xff

    #@5
    or-int/2addr v0, v1

    #@6
    return v0
.end method

.method public static logParseError(Ljava/lang/String;I)V
    .locals 0
    .param p0, "ifName"    # Ljava/lang/String;
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 102
    return-void
.end method

.method public static logReceiveError(Ljava/lang/String;)V
    .locals 0
    .param p0, "ifName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    return-void
.end method

.method private static makeErrorCode(II)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "subtype"    # I

    #@0
    .prologue
    .line 113
    shl-int/lit8 v0, p0, 0x18

    #@2
    and-int/lit16 v1, p1, 0xff

    #@4
    shl-int/lit8 v1, v1, 0x10

    #@6
    or-int/2addr v0, v1

    #@7
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 118
    const-string/jumbo v0, "DhcpErrorEvent(%s, %s)"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-object v2, p0, Landroid/net/metrics/DhcpErrorEvent;->ifName:Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    sget-object v2, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    #@d
    iget v3, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    #@f
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x1

    #@14
    aput-object v2, v1, v3

    #@16
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/metrics/DhcpErrorEvent;->ifName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 83
    iget v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 81
    return-void
.end method
