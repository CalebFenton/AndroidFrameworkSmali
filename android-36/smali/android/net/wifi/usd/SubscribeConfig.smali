.class public final Landroid/net/wifi/usd/SubscribeConfig;
.super Landroid/net/wifi/usd/Config;
.source "SubscribeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/usd/SubscribeConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/usd/SubscribeConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mQueryPeriodMillis:I

.field private final blacklist mRecommendedFrequencies:[I

.field private final blacklist mSubscribeType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Landroid/net/wifi/usd/SubscribeConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/usd/SubscribeConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/usd/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/usd/SubscribeConfig$Builder;)V
    .registers 10
    .param p1, "builder"    # Landroid/net/wifi/usd/SubscribeConfig$Builder;

    .line 47
    invoke-static {p1}, Landroid/net/wifi/usd/SubscribeConfig$Builder;->-$$Nest$fgetmServiceName(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[B

    move-result-object v1

    invoke-static {p1}, Landroid/net/wifi/usd/SubscribeConfig$Builder;->-$$Nest$fgetmTtlSeconds(Landroid/net/wifi/usd/SubscribeConfig$Builder;)I

    move-result v2

    invoke-static {p1}, Landroid/net/wifi/usd/SubscribeConfig$Builder;->-$$Nest$fgetmServiceProtoType(Landroid/net/wifi/usd/SubscribeConfig$Builder;)I

    move-result v3

    invoke-static {p1}, Landroid/net/wifi/usd/SubscribeConfig$Builder;->-$$Nest$fgetmTxMatchFilterTlv(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[B

    move-result-object v4

    invoke-static {p1}, Landroid/net/wifi/usd/SubscribeConfig$Builder;->-$$Nest$fgetmRxMatchFilterTlv(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[B

    move-result-object v5

    invoke-static {p1}, Landroid/net/wifi/usd/SubscribeConfig$Builder;->-$$Nest$fgetmServiceSpecificInfo(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[B

    move-result-object v6

    invoke-static {p1}, Landroid/net/wifi/usd/SubscribeConfig$Builder;->-$$Nest$fgetmOperatingFrequencies(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[I

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/usd/Config;-><init>([BII[B[B[B[I)V

    .line 50
    invoke-static {p1}, Landroid/net/wifi/usd/SubscribeConfig$Builder;->-$$Nest$fgetmSubscribeType(Landroid/net/wifi/usd/SubscribeConfig$Builder;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/usd/SubscribeConfig;->mSubscribeType:I

    .line 51
    invoke-static {p1}, Landroid/net/wifi/usd/SubscribeConfig$Builder;->-$$Nest$fgetmQueryPeriodMillis(Landroid/net/wifi/usd/SubscribeConfig$Builder;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/usd/SubscribeConfig;->mQueryPeriodMillis:I

    .line 52
    invoke-static {p1}, Landroid/net/wifi/usd/SubscribeConfig$Builder;->-$$Nest$fgetmRecommendedFrequencies(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/usd/SubscribeConfig;->mRecommendedFrequencies:[I

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/usd/SubscribeConfig$Builder;Landroid/net/wifi/usd/SubscribeConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/SubscribeConfig;-><init>(Landroid/net/wifi/usd/SubscribeConfig$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 61
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/usd/Config;-><init>([BII[B[B[B[I)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/usd/SubscribeConfig;->mSubscribeType:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/usd/SubscribeConfig;->mQueryPeriodMillis:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/usd/SubscribeConfig;->mRecommendedFrequencies:[I

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/usd/SubscribeConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/SubscribeConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 143
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/usd/SubscribeConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/usd/SubscribeConfig;

    .line 144
    .local v1, "that":Landroid/net/wifi/usd/SubscribeConfig;
    invoke-super {p0, p1}, Landroid/net/wifi/usd/Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    .line 145
    :cond_13
    iget v3, p0, Landroid/net/wifi/usd/SubscribeConfig;->mSubscribeType:I

    iget v4, v1, Landroid/net/wifi/usd/SubscribeConfig;->mSubscribeType:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/net/wifi/usd/SubscribeConfig;->mQueryPeriodMillis:I

    iget v4, v1, Landroid/net/wifi/usd/SubscribeConfig;->mQueryPeriodMillis:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Landroid/net/wifi/usd/SubscribeConfig;->mRecommendedFrequencies:[I

    iget-object v4, v1, Landroid/net/wifi/usd/SubscribeConfig;->mRecommendedFrequencies:[I

    .line 147
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 145
    :goto_2b
    return v0

    .line 143
    .end local v1    # "that":Landroid/net/wifi/usd/SubscribeConfig;
    :cond_2c
    return v2
.end method

.method public whitelist getQueryPeriodMillis()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/net/wifi/usd/SubscribeConfig;->mQueryPeriodMillis:I

    return v0
.end method

.method public whitelist getRecommendedOperatingFrequenciesMhz()[I
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig;->mRecommendedFrequencies:[I

    return-object v0
.end method

.method public whitelist getSubscribeType()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/net/wifi/usd/SubscribeConfig;->mSubscribeType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 152
    invoke-super {p0}, Landroid/net/wifi/usd/Config;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/usd/SubscribeConfig;->mSubscribeType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/usd/SubscribeConfig;->mQueryPeriodMillis:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 153
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/usd/SubscribeConfig;->mRecommendedFrequencies:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 154
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/net/wifi/usd/Config;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SubscribeConfig{mSubscribeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/usd/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQueryPeriodMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/usd/SubscribeConfig;->mQueryPeriodMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecommendedFrequencies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/usd/SubscribeConfig;->mRecommendedFrequencies:[I

    .line 137
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    invoke-virtual {p0}, Landroid/net/wifi/usd/SubscribeConfig;->getServiceName()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 71
    invoke-virtual {p0}, Landroid/net/wifi/usd/SubscribeConfig;->getTtlSeconds()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {p0}, Landroid/net/wifi/usd/SubscribeConfig;->getServiceProtoType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p0}, Landroid/net/wifi/usd/SubscribeConfig;->getTxMatchFilterTlv()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 74
    invoke-virtual {p0}, Landroid/net/wifi/usd/SubscribeConfig;->getRxMatchFilterTlv()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 75
    invoke-virtual {p0}, Landroid/net/wifi/usd/SubscribeConfig;->getServiceSpecificInfo()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 76
    invoke-virtual {p0}, Landroid/net/wifi/usd/SubscribeConfig;->getOperatingFrequenciesMhz()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 77
    iget v0, p0, Landroid/net/wifi/usd/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Landroid/net/wifi/usd/SubscribeConfig;->mQueryPeriodMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig;->mRecommendedFrequencies:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 80
    return-void
.end method
