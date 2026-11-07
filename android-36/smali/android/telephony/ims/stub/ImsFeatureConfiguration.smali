.class public final Landroid/telephony/ims/stub/ImsFeatureConfiguration;
.super Ljava/lang/Object;
.source "ImsFeatureConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;,
        Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 170
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$1;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    .line 127
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .local v0, "featurePairLength":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_26

    .line 166
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    new-instance v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 168
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "features":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    .line 139
    if-eqz p1, :cond_11

    .line 140
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 142
    :cond_11
    return-void
.end method


# virtual methods
.method greylist-max-o addFeature(II)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "feature"    # I

    .line 156
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    new-instance v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 206
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 207
    :cond_4
    instance-of v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 210
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    .line 212
    .local v0, "that":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    iget-object v2, v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getServiceFeatures()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 190
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 191
    .local v0, "featureSlotPairs":[Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->mFeatures:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 193
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 196
    .local v3, "featureSlotPair":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    iget v4, v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v4, v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    .end local v3    # "featureSlotPair":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 199
    :cond_24
    return-void
.end method
