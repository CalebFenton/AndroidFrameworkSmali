.class public final Landroid/net/wifi/usd/PublishConfig;
.super Landroid/net/wifi/usd/Config;
.source "PublishConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/usd/PublishConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/usd/PublishConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAnnouncementPeriodMillis:I

.field private final blacklist mEnableEvents:Z

.field private final blacklist mSolicitedTransmissionType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/net/wifi/usd/PublishConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/usd/PublishConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/usd/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/usd/PublishConfig$Builder;)V
    .registers 10
    .param p1, "builder"    # Landroid/net/wifi/usd/PublishConfig$Builder;

    .line 71
    invoke-static {p1}, Landroid/net/wifi/usd/PublishConfig$Builder;->-$$Nest$fgetmServiceName(Landroid/net/wifi/usd/PublishConfig$Builder;)[B

    move-result-object v1

    invoke-static {p1}, Landroid/net/wifi/usd/PublishConfig$Builder;->-$$Nest$fgetmTtlSeconds(Landroid/net/wifi/usd/PublishConfig$Builder;)I

    move-result v2

    invoke-static {p1}, Landroid/net/wifi/usd/PublishConfig$Builder;->-$$Nest$fgetmServiceProtoType(Landroid/net/wifi/usd/PublishConfig$Builder;)I

    move-result v3

    invoke-static {p1}, Landroid/net/wifi/usd/PublishConfig$Builder;->-$$Nest$fgetmTxMatchFilterTlv(Landroid/net/wifi/usd/PublishConfig$Builder;)[B

    move-result-object v4

    invoke-static {p1}, Landroid/net/wifi/usd/PublishConfig$Builder;->-$$Nest$fgetmRxMatchFilterTlv(Landroid/net/wifi/usd/PublishConfig$Builder;)[B

    move-result-object v5

    invoke-static {p1}, Landroid/net/wifi/usd/PublishConfig$Builder;->-$$Nest$fgetmServiceSpecificInfo(Landroid/net/wifi/usd/PublishConfig$Builder;)[B

    move-result-object v6

    invoke-static {p1}, Landroid/net/wifi/usd/PublishConfig$Builder;->-$$Nest$fgetmOperatingFrequencies(Landroid/net/wifi/usd/PublishConfig$Builder;)[I

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/usd/Config;-><init>([BII[B[B[B[I)V

    .line 74
    invoke-static {p1}, Landroid/net/wifi/usd/PublishConfig$Builder;->-$$Nest$fgetmSolicitedTransmissionType(Landroid/net/wifi/usd/PublishConfig$Builder;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/usd/PublishConfig;->mSolicitedTransmissionType:I

    .line 75
    invoke-static {p1}, Landroid/net/wifi/usd/PublishConfig$Builder;->-$$Nest$fgetmAnnouncementPeriodMillis(Landroid/net/wifi/usd/PublishConfig$Builder;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/usd/PublishConfig;->mAnnouncementPeriodMillis:I

    .line 76
    invoke-static {p1}, Landroid/net/wifi/usd/PublishConfig$Builder;->-$$Nest$fgetmEnableEvents(Landroid/net/wifi/usd/PublishConfig$Builder;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/usd/PublishConfig;->mEnableEvents:Z

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/usd/PublishConfig$Builder;Landroid/net/wifi/usd/PublishConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/PublishConfig;-><init>(Landroid/net/wifi/usd/PublishConfig$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 49
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/usd/Config;-><init>([BII[B[B[B[I)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/usd/PublishConfig;->mSolicitedTransmissionType:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/usd/PublishConfig;->mAnnouncementPeriodMillis:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/usd/PublishConfig;->mEnableEvents:Z

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/usd/PublishConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/PublishConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 133
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/usd/PublishConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/usd/PublishConfig;

    .line 134
    .local v1, "that":Landroid/net/wifi/usd/PublishConfig;
    invoke-super {p0, p1}, Landroid/net/wifi/usd/Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    .line 135
    :cond_13
    iget v3, p0, Landroid/net/wifi/usd/PublishConfig;->mSolicitedTransmissionType:I

    iget v4, v1, Landroid/net/wifi/usd/PublishConfig;->mSolicitedTransmissionType:I

    if-ne v3, v4, :cond_26

    iget v3, p0, Landroid/net/wifi/usd/PublishConfig;->mAnnouncementPeriodMillis:I

    iget v4, v1, Landroid/net/wifi/usd/PublishConfig;->mAnnouncementPeriodMillis:I

    if-ne v3, v4, :cond_26

    iget-boolean v3, p0, Landroid/net/wifi/usd/PublishConfig;->mEnableEvents:Z

    iget-boolean v4, v1, Landroid/net/wifi/usd/PublishConfig;->mEnableEvents:Z

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0

    .line 133
    .end local v1    # "that":Landroid/net/wifi/usd/PublishConfig;
    :cond_28
    return v2
.end method

.method public whitelist getAnnouncementPeriodMillis()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/net/wifi/usd/PublishConfig;->mAnnouncementPeriodMillis:I

    return v0
.end method

.method public whitelist getSolicitedTransmissionType()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/net/wifi/usd/PublishConfig;->mSolicitedTransmissionType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 142
    invoke-super {p0}, Landroid/net/wifi/usd/Config;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/usd/PublishConfig;->mSolicitedTransmissionType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/usd/PublishConfig;->mAnnouncementPeriodMillis:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/usd/PublishConfig;->mEnableEvents:Z

    .line 143
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 142
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEventsEnabled()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Landroid/net/wifi/usd/PublishConfig;->mEnableEvents:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/net/wifi/usd/Config;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PublishConfig{mSolicitedTransmissionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/usd/PublishConfig;->mSolicitedTransmissionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnnouncementPeriodMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/usd/PublishConfig;->mAnnouncementPeriodMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnableEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/usd/PublishConfig;->mEnableEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    invoke-virtual {p0}, Landroid/net/wifi/usd/PublishConfig;->getServiceName()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 87
    invoke-virtual {p0}, Landroid/net/wifi/usd/PublishConfig;->getTtlSeconds()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p0}, Landroid/net/wifi/usd/PublishConfig;->getServiceProtoType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p0}, Landroid/net/wifi/usd/PublishConfig;->getTxMatchFilterTlv()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 90
    invoke-virtual {p0}, Landroid/net/wifi/usd/PublishConfig;->getRxMatchFilterTlv()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 91
    invoke-virtual {p0}, Landroid/net/wifi/usd/PublishConfig;->getServiceSpecificInfo()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 92
    invoke-virtual {p0}, Landroid/net/wifi/usd/PublishConfig;->getOperatingFrequenciesMhz()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 93
    iget v0, p0, Landroid/net/wifi/usd/PublishConfig;->mSolicitedTransmissionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Landroid/net/wifi/usd/PublishConfig;->mAnnouncementPeriodMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean v0, p0, Landroid/net/wifi/usd/PublishConfig;->mEnableEvents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 96
    return-void
.end method
