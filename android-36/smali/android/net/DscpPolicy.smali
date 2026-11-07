.class public final Landroid/net/DscpPolicy;
.super Ljava/lang/Object;
.source "DscpPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DscpPolicy$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/DscpPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PROTOCOL_ANY:I = -0x1

.field public static final whitelist SOURCE_PORT_ANY:I = -0x1


# instance fields
.field private final blacklist mDscp:I

.field private final blacklist mDstAddr:Ljava/net/InetAddress;

.field private final blacklist mDstPortRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPolicyId:I

.field private final blacklist mProtocol:I

.field private final blacklist mSrcAddr:Ljava/net/InetAddress;

.field private final blacklist mSrcPort:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 256
    new-instance v0, Landroid/net/DscpPolicy$1;

    invoke-direct {v0}, Landroid/net/DscpPolicy$1;-><init>()V

    sput-object v0, Landroid/net/DscpPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IILjava/net/InetAddress;Ljava/net/InetAddress;IILandroid/util/Range;)V
    .registers 11
    .param p1, "policyId"    # I
    .param p2, "dscp"    # I
    .param p3, "srcAddr"    # Ljava/net/InetAddress;
    .param p4, "dstAddr"    # Ljava/net/InetAddress;
    .param p5, "srcPort"    # I
    .param p6, "protocol"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p7, "dstPortRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Landroid/net/DscpPolicy;->mPolicyId:I

    .line 91
    iput p2, p0, Landroid/net/DscpPolicy;->mDscp:I

    .line 92
    iput-object p3, p0, Landroid/net/DscpPolicy;->mSrcAddr:Ljava/net/InetAddress;

    .line 93
    iput-object p4, p0, Landroid/net/DscpPolicy;->mDstAddr:Ljava/net/InetAddress;

    .line 94
    iput p5, p0, Landroid/net/DscpPolicy;->mSrcPort:I

    .line 95
    iput p6, p0, Landroid/net/DscpPolicy;->mProtocol:I

    .line 96
    iput-object p7, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    .line 98
    iget v0, p0, Landroid/net/DscpPolicy;->mPolicyId:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c7

    iget v0, p0, Landroid/net/DscpPolicy;->mPolicyId:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_c7

    .line 101
    iget v0, p0, Landroid/net/DscpPolicy;->mDscp:I

    if-ltz v0, :cond_ac

    iget v0, p0, Landroid/net/DscpPolicy;->mDscp:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_ac

    .line 107
    iget v0, p0, Landroid/net/DscpPolicy;->mSrcPort:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_91

    iget v0, p0, Landroid/net/DscpPolicy;->mSrcPort:I

    const v1, 0xffff

    if-gt v0, v1, :cond_91

    .line 110
    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    if-eqz v0, :cond_75

    .line 111
    invoke-virtual {p7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_50

    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_75

    :cond_50
    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    .line 112
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_6d

    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_6d

    goto :goto_75

    .line 113
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination port not in valid range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_75
    :goto_75
    iget-object v0, p0, Landroid/net/DscpPolicy;->mSrcAddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_90

    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstAddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_90

    iget-object v0, p0, Landroid/net/DscpPolicy;->mSrcAddr:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    iget-object v1, p0, Landroid/net/DscpPolicy;->mDstAddr:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-ne v0, v1, :cond_88

    goto :goto_90

    .line 117
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source/destination address of different family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_90
    :goto_90
    return-void

    .line 108
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source port not in valid range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/DscpPolicy;->mSrcPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DSCP value not in valid range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/DscpPolicy;->mDscp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_c7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policy ID not in valid range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/DscpPolicy;->mPolicyId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DscpPolicy;->mPolicyId:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DscpPolicy;->mDscp:I

    .line 244
    invoke-static {p1}, Landroid/net/connectivity/com/android/net/module/util/InetAddressUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DscpPolicy;->mSrcAddr:Ljava/net/InetAddress;

    .line 245
    invoke-static {p1}, Landroid/net/connectivity/com/android/net/module/util/InetAddressUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DscpPolicy;->mDstAddr:Ljava/net/InetAddress;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DscpPolicy;->mSrcPort:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DscpPolicy;->mProtocol:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 249
    new-instance v0, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    goto :goto_48

    .line 251
    :cond_45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    .line 253
    :goto_48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 205
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 206
    :cond_4
    instance-of v1, p1, Landroid/net/DscpPolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 207
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/DscpPolicy;

    .line 208
    .local v1, "that":Landroid/net/DscpPolicy;
    iget v3, p0, Landroid/net/DscpPolicy;->mPolicyId:I

    iget v4, v1, Landroid/net/DscpPolicy;->mPolicyId:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/net/DscpPolicy;->mDscp:I

    iget v4, v1, Landroid/net/DscpPolicy;->mDscp:I

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/net/DscpPolicy;->mSrcAddr:Ljava/net/InetAddress;

    iget-object v4, v1, Landroid/net/DscpPolicy;->mSrcAddr:Ljava/net/InetAddress;

    .line 211
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/DscpPolicy;->mDstAddr:Ljava/net/InetAddress;

    iget-object v4, v1, Landroid/net/DscpPolicy;->mDstAddr:Ljava/net/InetAddress;

    .line 212
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget v3, p0, Landroid/net/DscpPolicy;->mSrcPort:I

    iget v4, v1, Landroid/net/DscpPolicy;->mSrcPort:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/net/DscpPolicy;->mProtocol:I

    iget v4, v1, Landroid/net/DscpPolicy;->mProtocol:I

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    iget-object v4, v1, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    .line 215
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    .line 208
    :goto_45
    return v0
.end method

.method public whitelist getDestinationAddress()Ljava/net/InetAddress;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstAddr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getDestinationPortRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getDscpValue()I
    .registers 2

    .line 140
    iget v0, p0, Landroid/net/DscpPolicy;->mDscp:I

    return v0
.end method

.method public whitelist getPolicyId()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/net/DscpPolicy;->mPolicyId:I

    return v0
.end method

.method public whitelist getProtocol()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/net/DscpPolicy;->mProtocol:I

    return v0
.end method

.method public whitelist getSourceAddress()Ljava/net/InetAddress;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/net/DscpPolicy;->mSrcAddr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getSourcePort()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/net/DscpPolicy;->mSrcPort:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 220
    iget v0, p0, Landroid/net/DscpPolicy;->mPolicyId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/net/DscpPolicy;->mDscp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/net/DscpPolicy;->mSrcAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstAddr:Ljava/net/InetAddress;

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/net/DscpPolicy;->mSrcPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/net/DscpPolicy;->mProtocol:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 220
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DscpPolicy { policyId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/DscpPolicy;->mPolicyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dscp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/DscpPolicy;->mDscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DscpPolicy;->mSrcAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dstAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DscpPolicy;->mDstAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcPort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/DscpPolicy;->mSrcPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", protocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/DscpPolicy;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dstPortRange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    iget-object v1, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    if-nez v1, :cond_5a

    const-string v1, "none"

    goto :goto_60

    :cond_5a
    iget-object v1, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 227
    iget v0, p0, Landroid/net/DscpPolicy;->mPolicyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Landroid/net/DscpPolicy;->mDscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v0, p0, Landroid/net/DscpPolicy;->mSrcAddr:Ljava/net/InetAddress;

    invoke-static {p1, v0, p2}, Landroid/net/connectivity/com/android/net/module/util/InetAddressUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    .line 230
    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstAddr:Ljava/net/InetAddress;

    invoke-static {p1, v0, p2}, Landroid/net/connectivity/com/android/net/module/util/InetAddressUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    .line 231
    iget v0, p0, Landroid/net/DscpPolicy;->mSrcPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Landroid/net/DscpPolicy;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 234
    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    if-eqz v0, :cond_4a

    .line 235
    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v0, p0, Landroid/net/DscpPolicy;->mDstPortRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    :cond_4a
    return-void
.end method
