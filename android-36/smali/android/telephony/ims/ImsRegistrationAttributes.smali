.class public final Landroid/telephony/ims/ImsRegistrationAttributes;
.super Ljava/lang/Object;
.source "ImsRegistrationAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRegistrationAttributes$Builder;,
        Landroid/telephony/ims/ImsRegistrationAttributes$ImsAttributeFlag;
    }
.end annotation


# static fields
.field public static final whitelist ATTR_EPDG_OVER_CELL_INTERNET:I = 0x1

.field public static final blacklist ATTR_REGISTRATION_TYPE_EMERGENCY:I = 0x2

.field public static final blacklist ATTR_VIRTUAL_FOR_ANONYMOUS_EMERGENCY_CALL:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsRegistrationAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFeatureTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsAttributeFlags:I

.field private final blacklist mRegistrationTech:I

.field private final blacklist mSipDetails:Landroid/telephony/ims/SipDetails;

.field private final blacklist mTransportType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 322
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsRegistrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/Set;)V
    .registers 6
    .param p1, "registrationTech"    # I
    .param p2, "transportType"    # I
    .param p3, "imsAttributeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p4, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    .line 194
    iput p2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    .line 195
    iput p3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    .line 198
    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/Set;Landroid/telephony/ims/SipDetails;)V
    .registers 7
    .param p1, "registrationTech"    # I
    .param p2, "transportType"    # I
    .param p3, "imsAttributeFlags"    # I
    .param p5, "details"    # Landroid/telephony/ims/SipDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/SipDetails;",
            ")V"
        }
    .end annotation

    .line 216
    .local p4, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    .line 218
    iput p2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    .line 219
    iput p3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 221
    iput-object p5, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    .line 222
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 230
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 231
    const-class v0, Landroid/telephony/ims/SipDetails;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/SipDetails;

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    .line 233
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 337
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 338
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3e

    .line 339
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 340
    .local v2, "that":Landroid/telephony/ims/ImsRegistrationAttributes;
    iget v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    iget v4, v2, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    iget v4, v2, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    iget v4, v2, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    .line 343
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    iget-object v4, v2, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    .line 344
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    .line 340
    :goto_3d
    return v0

    .line 338
    .end local v2    # "that":Landroid/telephony/ims/ImsRegistrationAttributes;
    :cond_3e
    :goto_3e
    return v1
.end method

.method public whitelist getAttributeFlags()I
    .registers 2

    .line 255
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    return v0
.end method

.method public whitelist getFeatureTags()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 298
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getFlagRegistrationTypeEmergency()Z
    .registers 2

    .line 265
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist getFlagVirtualRegistrationForEmergencyCall()Z
    .registers 2

    .line 275
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getRegistrationTechnology()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 241
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    return v0
.end method

.method public whitelist getSipDetails()Landroid/telephony/ims/SipDetails;
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-object v0
.end method

.method public whitelist getTransportType()I
    .registers 2

    .line 248
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 349
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRegistrationAttributes { transportType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributeFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", featureTags=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],SipDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 315
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 319
    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 320
    return-void
.end method
