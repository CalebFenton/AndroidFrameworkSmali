.class public Landroid/net/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkRequest$Type;,
        Landroid/net/NetworkRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FIRST_REQUEST_ID:I = 0x1

.field public static final blacklist REQUEST_ID_NONE:I = -0x1


# instance fields
.field public final greylist-max-p legacyType:I

.field public final greylist-max-r networkCapabilities:Landroid/net/NetworkCapabilities;

.field public final greylist-max-r requestId:I

.field public final greylist-max-o type:Landroid/net/NetworkRequest$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 685
    new-instance v0, Landroid/net/NetworkRequest$1;

    invoke-direct {v0}, Landroid/net/NetworkRequest$1;-><init>()V

    sput-object v0, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V
    .registers 7
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "legacyType"    # I
    .param p3, "rId"    # I
    .param p4, "type"    # Landroid/net/NetworkRequest$Type;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    if-eqz p1, :cond_25

    .line 260
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getReservationId()I

    move-result v0

    if-nez v0, :cond_1d

    .line 263
    iput p3, p0, Landroid/net/NetworkRequest;->requestId:I

    .line 264
    iput-object p1, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 265
    sget-object v0, Landroid/net/NetworkRequest$Type;->RESERVATION:Landroid/net/NetworkRequest$Type;

    if-ne p4, v0, :cond_18

    .line 269
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p3}, Landroid/net/NetworkCapabilities;->setReservationId(I)V

    .line 271
    :cond_18
    iput p2, p0, Landroid/net/NetworkRequest;->legacyType:I

    .line 272
    iput-object p4, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    .line 273
    return-void

    .line 261
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReservationId must only be set by the system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/net/NetworkRequest;)V
    .registers 4
    .param p1, "that"    # Landroid/net/NetworkRequest;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 280
    iget v0, p1, Landroid/net/NetworkRequest;->requestId:I

    iput v0, p0, Landroid/net/NetworkRequest;->requestId:I

    .line 281
    iget v0, p1, Landroid/net/NetworkRequest;->legacyType:I

    iput v0, p0, Landroid/net/NetworkRequest;->legacyType:I

    .line 282
    iget-object v0, p1, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    iput-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    .line 283
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkCapabilities;

    iput-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkRequest;->legacyType:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkRequest;->requestId:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkRequest$Type;->valueOf(Ljava/lang/String;)Landroid/net/NetworkRequest$Type;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    .line 290
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/NetworkRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/NetworkRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z
    .registers 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 767
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 817
    instance-of v0, p1, Landroid/net/NetworkRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 818
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/NetworkRequest;

    .line 819
    .local v0, "that":Landroid/net/NetworkRequest;
    iget v2, v0, Landroid/net/NetworkRequest;->legacyType:I

    iget v3, p0, Landroid/net/NetworkRequest;->legacyType:I

    if-ne v2, v3, :cond_27

    iget v2, v0, Landroid/net/NetworkRequest;->requestId:I

    iget v3, p0, Landroid/net/NetworkRequest;->requestId:I

    if-ne v2, v3, :cond_27

    iget-object v2, v0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    iget-object v3, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    if-ne v2, v3, :cond_27

    iget-object v2, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 822
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    nop

    .line 819
    :goto_28
    return v1
.end method

.method public whitelist getCapabilities()[I
    .registers 2

    .line 838
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnterpriseIds()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 852
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getEnterpriseIds()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getForbiddenCapabilities()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 881
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getForbiddenCapabilities()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkSpecifier()Landroid/net/NetworkSpecifier;
    .registers 2

    .line 782
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRequestorPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 807
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getRequestorPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRequestorUid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 794
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getRequestorUid()I

    move-result v0

    return v0
.end method

.method public whitelist getSubscriptionIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 906
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransportTypes()[I
    .registers 2

    .line 893
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasCapability(I)Z
    .registers 3
    .param p1, "capability"    # I

    .line 745
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnterpriseId(I)Z
    .registers 3
    .param p1, "enterpriseId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 865
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasEnterpriseId(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasForbiddenCapability(I)Z
    .registers 3
    .param p1, "capability"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 756
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasForbiddenCapability(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasTransport(I)Z
    .registers 3
    .param p1, "transportType"    # I

    .line 774
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 826
    iget v0, p0, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkRequest;->legacyType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isBackgroundRequest()Z
    .registers 3

    .line 738
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isListen()Z
    .registers 3

    .line 701
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isListenForBest()Z
    .registers 3

    .line 710
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->LISTEN_FOR_BEST:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isRequest()Z
    .registers 3

    .line 729
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->RESERVATION:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequest [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 812
    iget v1, p0, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", legacyType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    :cond_38
    const-string v1, ""

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 813
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 679
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    .line 680
    iget v0, p0, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    iget v0, p0, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    return-void
.end method
