.class public final Landroid/telephony/ims/DelegateRegistrationState;
.super Ljava/lang/Object;
.source "DelegateRegistrationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/DelegateRegistrationState$Builder;,
        Landroid/telephony/ims/DelegateRegistrationState$DeregisteringReason;,
        Landroid/telephony/ims/DelegateRegistrationState$DeregisteredReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/DelegateRegistrationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEREGISTERED_REASON_NOT_PROVISIONED:I = 0x1

.field public static final whitelist DEREGISTERED_REASON_NOT_REGISTERED:I = 0x2

.field public static final whitelist DEREGISTERED_REASON_UNKNOWN:I = 0x0

.field public static final whitelist DEREGISTERING_REASON_DESTROY_PENDING:I = 0x6

.field public static final whitelist DEREGISTERING_REASON_FEATURE_TAGS_CHANGING:I = 0x5

.field public static final whitelist DEREGISTERING_REASON_LOSING_PDN:I = 0x7

.field public static final whitelist DEREGISTERING_REASON_PDN_CHANGE:I = 0x3

.field public static final whitelist DEREGISTERING_REASON_PROVISIONING_CHANGE:I = 0x4

.field public static final whitelist DEREGISTERING_REASON_UNSPECIFIED:I = 0x8


# instance fields
.field private final blacklist mDeregisteredTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeregisteringTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRegisteredTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRegisteringTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeregisteredTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeregisteringTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisteredTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisteringTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 311
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$1;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/DelegateRegistrationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    .line 140
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    .line 141
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    .line 142
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    .line 237
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    .line 140
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    .line 141
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    .line 142
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    .line 244
    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/DelegateRegistrationState;->readStateFromParcel(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 245
    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/DelegateRegistrationState;->readStateFromParcel(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    .line 247
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/DelegateRegistrationState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/DelegateRegistrationState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/DelegateRegistrationState-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/ims/DelegateRegistrationState;-><init>()V

    return-void
.end method

.method private blacklist readStateFromParcel(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    .line 346
    .local p2, "emptyState":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 347
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1a

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "ft":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 351
    .local v3, "reason":I
    new-instance v4, Landroid/telephony/ims/FeatureTagState;

    invoke-direct {v4, v2, v3}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v2    # "ft":Ljava/lang/String;
    .end local v3    # "reason":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 353
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method private blacklist writeStateToParcel(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    .line 338
    .local p2, "state":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/FeatureTagState;

    .line 340
    .local v1, "s":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    .end local v1    # "s":Landroid/telephony/ims/FeatureTagState;
    goto :goto_b

    .line 343
    :cond_26
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 357
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 358
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 359
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/DelegateRegistrationState;

    .line 360
    .local v2, "that":Landroid/telephony/ims/DelegateRegistrationState;
    iget-object v3, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    .line 361
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    .line 362
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    .line 363
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 360
    :goto_3f
    return v0

    .line 358
    .end local v2    # "that":Landroid/telephony/ims/DelegateRegistrationState;
    :cond_40
    :goto_40
    return v1
.end method

.method public whitelist getDeregisteredFeatureTags()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public whitelist getDeregisteringFeatureTags()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public whitelist getRegisteredFeatureTags()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public whitelist getRegisteringFeatureTags()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 368
    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DelegateRegistrationState{ registered={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, registering={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, deregistering={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, deregistered={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}}"

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

    .line 331
    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 332
    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/DelegateRegistrationState;->writeStateToParcel(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 333
    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/DelegateRegistrationState;->writeStateToParcel(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 334
    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 335
    return-void
.end method
