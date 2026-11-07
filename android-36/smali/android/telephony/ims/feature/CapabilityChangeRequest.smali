.class public final Landroid/telephony/ims/feature/CapabilityChangeRequest;
.super Ljava/lang/Object;
.source "CapabilityChangeRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCapabilitiesToDisable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCapabilitiesToEnable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 186
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$1;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    .line 115
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    .line 116
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, "enableSize":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_26

    .line 175
    iget-object v2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    new-instance v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 175
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 178
    .end local v1    # "i":I
    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .local v1, "disableSize":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    .line 180
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    if-ge v2, v1, :cond_49

    .line 181
    iget-object v3, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    new-instance v4, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 181
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 184
    .end local v2    # "i":I
    :cond_49
    return-void
.end method

.method private greylist-max-o addAllCapabilities(Ljava/util/Set;II)V
    .registers 9
    .param p2, "capabilities"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;II)V"
        }
    .end annotation

    .line 160
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    .line 161
    .local v0, "highestCapability":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-gtz v3, :cond_1a

    .line 162
    and-int v3, v2, p2

    if-lez v3, :cond_17

    .line 163
    new-instance v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {v3, v2, p3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_17
    mul-int/lit8 v2, v2, 0x2

    goto :goto_6

    .line 166
    .end local v2    # "i":I
    :cond_1a
    return-void
.end method


# virtual methods
.method public whitelist addCapabilitiesToDisableForTech(II)V
    .registers 4
    .param p1, "capabilities"    # I
    .param p2, "radioTech"    # I

    .line 140
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addAllCapabilities(Ljava/util/Set;II)V

    .line 141
    return-void
.end method

.method public whitelist addCapabilitiesToEnableForTech(II)V
    .registers 4
    .param p1, "capabilities"    # I
    .param p2, "radioTech"    # I

    .line 128
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addAllCapabilities(Ljava/util/Set;II)V

    .line 129
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 231
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 232
    :cond_4
    instance-of v0, p1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 235
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 237
    .local v0, "that":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    iget-object v2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    iget-object v3, v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    return v1

    .line 238
    :cond_18
    iget-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    iget-object v2, v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getCapabilitiesToDisable()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getCapabilitiesToEnable()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 246
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    .line 247
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 248
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapabilityChangeRequest{mCapabilitiesToEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCapabilitiesToDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 206
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToEnable:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 208
    .local v1, "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    .end local v1    # "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_f

    .line 211
    :cond_2a
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->mCapabilitiesToDisable:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 213
    .restart local v1    # "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    .end local v1    # "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_39

    .line 216
    :cond_54
    return-void
.end method
