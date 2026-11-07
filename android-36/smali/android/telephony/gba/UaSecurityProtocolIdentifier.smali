.class public final Landroid/telephony/gba/UaSecurityProtocolIdentifier;
.super Ljava/lang/Object;
.source "UaSecurityProtocolIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;,
        Landroid/telephony/gba/UaSecurityProtocolIdentifier$UaSecurityProtocol3gpp;,
        Landroid/telephony/gba/UaSecurityProtocolIdentifier$OrganizationCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/gba/UaSecurityProtocolIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ORG_3GPP:I = 0x1

.field public static final whitelist ORG_3GPP2:I = 0x2

.field public static final whitelist ORG_GSMA:I = 0x4

.field public static final whitelist ORG_LOCAL:I = 0xff

.field public static final whitelist ORG_NONE:I = 0x0

.field public static final whitelist ORG_OMA:I = 0x3

.field private static final blacklist PROTOCOL_SIZE:I = 0x5

.field public static final whitelist UA_SECURITY_PROTOCOL_3GPP_GENERATION_TMPI:I = 0x100

.field public static final whitelist UA_SECURITY_PROTOCOL_3GPP_GENERIC_PUSH_LAYER:I = 0x5

.field public static final whitelist UA_SECURITY_PROTOCOL_3GPP_HTTP_BASED_MBMS:I = 0x3

.field public static final whitelist UA_SECURITY_PROTOCOL_3GPP_HTTP_DIGEST_AUTHENTICATION:I = 0x2

.field public static final whitelist UA_SECURITY_PROTOCOL_3GPP_IMS_MEDIA_PLANE:I = 0x6

.field public static final whitelist UA_SECURITY_PROTOCOL_3GPP_MBMS:I = 0x1

.field public static final whitelist UA_SECURITY_PROTOCOL_3GPP_SIP_BASED_MBMS:I = 0x4

.field public static final whitelist UA_SECURITY_PROTOCOL_3GPP_SUBSCRIBER_CERTIFICATE:I = 0x0

.field public static final whitelist UA_SECURITY_PROTOCOL_3GPP_TLS_BROWSER:I = 0x20000

.field public static final whitelist UA_SECURITY_PROTOCOL_3GPP_TLS_DEFAULT:I = 0x10000

.field private static final blacklist sUaSp3gppIds:[I


# instance fields
.field private blacklist mOrg:I

.field private blacklist mProtocol:I

.field private blacklist mTlsCipherSuite:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOrg(Landroid/telephony/gba/UaSecurityProtocolIdentifier;)I
    .registers 1

    iget p0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOrg(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProtocol(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTlsCipherSuite(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misTlsSupported(Landroid/telephony/gba/UaSecurityProtocolIdentifier;)Z
    .registers 1

    invoke-direct {p0}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->isTlsSupported()Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 173
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->sUaSp3gppIds:[I

    .line 247
    new-instance v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$1;

    invoke-direct {v0}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$1;-><init>()V

    sput-object v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x100
        0x10000
        0x20000
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier;)V
    .registers 3
    .param p1, "sp"    # Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iget v0, p1, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    iput v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    .line 193
    iget v0, p1, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    iput v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    .line 194
    iget v0, p1, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    iput v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    .line 195
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier;Landroid/telephony/gba/UaSecurityProtocolIdentifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;-><init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier;)V

    return-void
.end method

.method private blacklist isTlsSupported()Z
    .registers 4

    .line 313
    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_11

    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    const/high16 v2, 0x20000

    if-ne v0, v2, :cond_12

    .line 315
    :cond_11
    return v1

    .line 318
    :cond_12
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 296
    instance-of v0, p1, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 297
    return v1

    .line 300
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    .line 302
    .local v0, "other":Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    iget v3, v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    iget v3, v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    iget v3, v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    if-ne v2, v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public whitelist getOrg()I
    .registers 2

    .line 213
    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    return v0
.end method

.method public whitelist getProtocol()I
    .registers 2

    .line 222
    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    return v0
.end method

.method public whitelist getTlsCipherSuite()I
    .registers 2

    .line 229
    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 308
    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist toByteArray()[B
    .registers 5

    .line 202
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 203
    .local v0, "data":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 204
    .local v1, "buf":Ljava/nio/ByteBuffer;
    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 205
    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    iget v3, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 206
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UaSecurityProtocolIdentifier["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 237
    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    return-void
.end method
