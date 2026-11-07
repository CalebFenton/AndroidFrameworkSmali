.class public final Landroid/net/wifi/rtt/RangingRequest;
.super Ljava/lang/Object;
.source "RangingRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/RangingRequest$Builder;,
        Landroid/net/wifi/rtt/RangingRequest$SecurityMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/RangingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_RTT_BURST_SIZE:I = 0x8

.field private static final greylist-max-o MAX_PEERS:I = 0xa

.field private static final blacklist MAX_RTT_BURST_SIZE:I = 0x1f

.field private static final blacklist MIN_RTT_BURST_SIZE:I = 0x2

.field public static final whitelist SECURITY_MODE_OPEN:I = 0x0

.field public static final whitelist SECURITY_MODE_OPPORTUNISTIC:I = 0x1

.field public static final whitelist SECURITY_MODE_SECURE_AUTH:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "RangingRequest"


# instance fields
.field public final blacklist mRttBurstSize:I

.field public final greylist-max-o mRttPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mSecurityMode:I

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 234
    new-instance v0, Landroid/net/wifi/rtt/RangingRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/RangingRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/RangingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;IILjava/util/List;)V
    .registers 6
    .param p2, "rttBurstSize"    # I
    .param p3, "securityMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;II",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "rttPeers":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/ResponderConfig;>;"
    .local p4, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    .line 166
    iput p2, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    .line 167
    iput p3, p0, Landroid/net/wifi/rtt/RangingRequest;->mSecurityMode:I

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mVendorData:Ljava/util/List;

    .line 169
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;IILjava/util/List;Landroid/net/wifi/rtt/RangingRequest-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/rtt/RangingRequest;-><init>(Ljava/util/List;IILjava/util/List;)V

    return-void
.end method

.method public static whitelist getDefaultRttBurstSize()I
    .registers 1

    .line 127
    const/16 v0, 0x8

    return v0
.end method

.method public static whitelist getMaxPeers()I
    .registers 1

    .line 118
    const/16 v0, 0xa

    return v0
.end method

.method public static whitelist getMaxRttBurstSize()I
    .registers 1

    .line 145
    const/16 v0, 0x1f

    return v0
.end method

.method public static whitelist getMinRttBurstSize()I
    .registers 1

    .line 136
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o enforceValidity(Z)V
    .registers 5
    .param p1, "awareSupported"    # Z

    .line 262
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_50

    .line 266
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/rtt/ResponderConfig;

    .line 267
    .local v1, "peer":Landroid/net/wifi/rtt/ResponderConfig;
    invoke-virtual {v1, p1}, Landroid/net/wifi/rtt/ResponderConfig;->isValid(Z)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 270
    .end local v1    # "peer":Landroid/net/wifi/rtt/ResponderConfig;
    goto :goto_10

    .line 268
    .restart local v1    # "peer":Landroid/net/wifi/rtt/ResponderConfig;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Responder specification"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    .end local v1    # "peer":Landroid/net/wifi/rtt/ResponderConfig;
    :cond_2b
    iget v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    invoke-static {}, Landroid/net/wifi/rtt/RangingRequest;->getMinRttBurstSize()I

    move-result v1

    if-lt v0, v1, :cond_48

    iget v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    invoke-static {}, Landroid/net/wifi/rtt/RangingRequest;->getMaxRttBurstSize()I

    move-result v1

    if-gt v0, v1, :cond_48

    .line 274
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mVendorData:Ljava/util/List;

    if-eqz v0, :cond_40

    .line 277
    return-void

    .line 275
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vendor data must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RTT burst size is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ranging to too many peers requested. Use getMaxPeers() API to get limit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 652
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 653
    return v0

    .line 656
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/rtt/RangingRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 657
    return v2

    .line 660
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/rtt/RangingRequest;

    .line 662
    .local v1, "lhs":Landroid/net/wifi/rtt/RangingRequest;
    iget-object v3, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    .line 663
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget v3, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/net/wifi/rtt/RangingRequest;->mSecurityMode:I

    iget v4, v1, Landroid/net/wifi/rtt/RangingRequest;->mSecurityMode:I

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingRequest;->mVendorData:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingRequest;->mVendorData:Ljava/util/List;

    .line 666
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v2

    .line 662
    :goto_3d
    return v0
.end method

.method public whitelist getRttBurstSize()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    return v0
.end method

.method public whitelist getRttResponders()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSecurityMode()I
    .registers 2

    .line 200
    iget v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mSecurityMode:I

    return v0
.end method

.method public whitelist getVendorData()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 215
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mVendorData:Ljava/util/List;

    return-object v0

    .line 216
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 671
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    iget v1, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingRequest;->mSecurityMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingRequest;->mVendorData:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 250
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "RangingRequest: mRttPeers=["

    const-string v2, "]"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 251
    .local v0, "sj":Ljava/util/StringJoiner;
    iget-object v1, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/rtt/ResponderConfig;

    .line 252
    .local v2, "rc":Landroid/net/wifi/rtt/ResponderConfig;
    invoke-virtual {v2}, Landroid/net/wifi/rtt/ResponderConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 253
    .end local v2    # "rc":Landroid/net/wifi/rtt/ResponderConfig;
    goto :goto_11

    .line 254
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRttBurstSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSecurityMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/rtt/RangingRequest;->mSecurityMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVendorData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/rtt/RangingRequest;->mVendorData:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 228
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 229
    iget v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mSecurityMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 232
    return-void
.end method
