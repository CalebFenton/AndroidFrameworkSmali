.class public final Landroid/telephony/data/QosBearerFilter;
.super Ljava/lang/Object;
.source "QosBearerFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/QosBearerFilter$PortRange;,
        Landroid/telephony/data/QosBearerFilter$QosBearerFilterDirection;,
        Landroid/telephony/data/QosBearerFilter$QosProtocol;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/QosBearerFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist QOS_FILTER_DIRECTION_BIDIRECTIONAL:I = 0x2

.field public static final blacklist QOS_FILTER_DIRECTION_DOWNLINK:I = 0x0

.field public static final blacklist QOS_FILTER_DIRECTION_UPLINK:I = 0x1

.field public static final blacklist QOS_MAX_PORT:I = 0xffff

.field public static final blacklist QOS_MIN_PORT:I = 0x14

.field public static final blacklist QOS_PROTOCOL_AH:I = 0x33

.field public static final blacklist QOS_PROTOCOL_ESP:I = 0x32

.field public static final blacklist QOS_PROTOCOL_TCP:I = 0x6

.field public static final blacklist QOS_PROTOCOL_UDP:I = 0x11

.field public static final blacklist QOS_PROTOCOL_UNSPECIFIED:I = -0x1


# instance fields
.field private blacklist filterDirection:I

.field private blacklist flowLabel:J

.field private blacklist localAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

.field private blacklist precedence:I

.field private blacklist protocol:I

.field private blacklist remoteAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

.field private blacklist securityParameterIndex:J

.field private blacklist typeOfServiceMask:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 291
    new-instance v0, Landroid/telephony/data/QosBearerFilter$1;

    invoke-direct {v0}, Landroid/telephony/data/QosBearerFilter$1;-><init>()V

    sput-object v0, Landroid/telephony/data/QosBearerFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    .line 259
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    const-class v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/LinkAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    .line 261
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    const-class v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/LinkAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 262
    const-class v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    .line 263
    const-class v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    .line 270
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/QosBearerFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/QosBearerFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Landroid/telephony/data/QosBearerFilter$PortRange;Landroid/telephony/data/QosBearerFilter$PortRange;IIJJII)V
    .registers 14
    .param p3, "localPort"    # Landroid/telephony/data/QosBearerFilter$PortRange;
    .param p4, "remotePort"    # Landroid/telephony/data/QosBearerFilter$PortRange;
    .param p5, "protocol"    # I
    .param p6, "tos"    # I
    .param p7, "flowLabel"    # J
    .param p9, "spi"    # J
    .param p11, "direction"    # I
    .param p12, "precedence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Landroid/telephony/data/QosBearerFilter$PortRange;",
            "Landroid/telephony/data/QosBearerFilter$PortRange;",
            "IIJJII)V"
        }
    .end annotation

    .line 94
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .local p2, "remoteAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    .line 96
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    .line 98
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    iput-object p3, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    .line 100
    iput-object p4, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    .line 101
    iput p5, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    .line 102
    iput p6, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    .line 103
    iput-wide p7, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    .line 104
    iput-wide p9, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    .line 105
    iput p11, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    .line 106
    iput p12, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    .line 107
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 235
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 237
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_7f

    instance-of v2, p1, Landroid/telephony/data/QosBearerFilter;

    if-nez v2, :cond_d

    goto/16 :goto_7f

    .line 241
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/QosBearerFilter;

    .line 243
    .local v2, "other":Landroid/telephony/data/QosBearerFilter;
    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_7d

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    .line 244
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_7d

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    .line 245
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_7d

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    .line 246
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_7d

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    .line 247
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    .line 248
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    iget v3, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    iget v4, v2, Landroid/telephony/data/QosBearerFilter;->protocol:I

    if-ne v3, v4, :cond_7d

    iget v3, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    iget v4, v2, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    if-ne v3, v4, :cond_7d

    iget-wide v3, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    iget-wide v5, v2, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7d

    iget-wide v3, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    iget-wide v5, v2, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7d

    iget v3, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    iget v4, v2, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    if-ne v3, v4, :cond_7d

    iget v3, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    iget v4, v2, Landroid/telephony/data/QosBearerFilter;->precedence:I

    if-ne v3, v4, :cond_7d

    goto :goto_7e

    :cond_7d
    move v0, v1

    .line 243
    :goto_7e
    return v0

    .line 238
    .end local v2    # "other":Landroid/telephony/data/QosBearerFilter;
    :cond_7f
    :goto_7f
    return v1
.end method

.method public blacklist getLocalAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLocalPortRange()Landroid/telephony/data/QosBearerFilter$PortRange;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    return-object v0
.end method

.method public blacklist getPrecedence()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    return v0
.end method

.method public blacklist getProtocol()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    return v0
.end method

.method public blacklist getRemoteAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRemotePortRange()Landroid/telephony/data/QosBearerFilter$PortRange;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 228
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    iget-object v2, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    iget v4, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    .line 229
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    .line 230
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 228
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QosBearerFilter { localAddresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remoteAddresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " localPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remotePort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " typeOfServiceMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flowLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " securityParameterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filterDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " precedence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 274
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 275
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 276
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 277
    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 278
    iget v0, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget v0, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-wide v0, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    iget-wide v0, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 282
    iget v0, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    return-void
.end method
