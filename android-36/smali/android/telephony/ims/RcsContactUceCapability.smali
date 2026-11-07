.class public final Landroid/telephony/ims/RcsContactUceCapability;
.super Ljava/lang/Object;
.source "RcsContactUceCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;,
        Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;,
        Landroid/telephony/ims/RcsContactUceCapability$RequestResult;,
        Landroid/telephony/ims/RcsContactUceCapability$SourceType;,
        Landroid/telephony/ims/RcsContactUceCapability$CapabilityMechanism;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_MECHANISM_OPTIONS:I = 0x2

.field public static final whitelist CAPABILITY_MECHANISM_PRESENCE:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_RESULT_FOUND:I = 0x3

.field public static final whitelist REQUEST_RESULT_NOT_FOUND:I = 0x2

.field public static final whitelist REQUEST_RESULT_NOT_ONLINE:I = 0x1

.field public static final whitelist REQUEST_RESULT_UNKNOWN:I = 0x0

.field public static final whitelist SOURCE_TYPE_CACHED:I = 0x1

.field public static final whitelist SOURCE_TYPE_NETWORK:I


# instance fields
.field private blacklist mCapabilityMechanism:I

.field private final blacklist mContactUri:Landroid/net/Uri;

.field private blacklist mEntityUri:Landroid/net/Uri;

.field private final blacklist mFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPresenceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequestResult:I

.field private blacklist mSourceType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFeatureTags(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPresenceTuples(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEntityUri(Landroid/telephony/ims/RcsContactUceCapability;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestResult(Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 284
    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsContactUceCapability$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;II)V
    .registers 5
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "mechanism"    # I
    .param p3, "sourceType"    # I

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    .line 251
    iput-object p1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    .line 252
    iput p2, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    .line 253
    iput p3, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    .line 254
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;IILandroid/telephony/ims/RcsContactUceCapability-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/net/Uri;II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    .line 257
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    .line 261
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, "featureTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 264
    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 265
    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    const-class v2, Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 266
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsContactUceCapability-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCapabilityMechanism()I
    .registers 2

    .line 301
    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    return v0
.end method

.method public whitelist getCapabilityTuple(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple;
    .registers 6
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 342
    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    .line 343
    return-object v2

    .line 345
    :cond_7
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/RcsContactPresenceTuple;

    .line 346
    .local v1, "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    invoke-virtual {v1}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 347
    return-object v1

    .line 349
    .end local v1    # "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    :cond_2a
    goto :goto_d

    .line 350
    :cond_2b
    return-object v2
.end method

.method public whitelist getCapabilityTuples()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation

    .line 325
    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 328
    :cond_a
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContactUri()Landroid/net/Uri;
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getEntityUri()Landroid/net/Uri;
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    return-object v0
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

    .line 311
    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 312
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 314
    :cond_a
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRequestResult()I
    .registers 2

    .line 365
    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    return v0
.end method

.method public whitelist getSourceType()I
    .registers 2

    .line 358
    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RcsContactUceCapability"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_13

    .line 389
    const-string v1, "(presence) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 390
    :cond_13
    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    if-ne v1, v2, :cond_1d

    .line 391
    const-string v1, "(options) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 393
    :cond_1d
    const-string v1, "(?) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :goto_22
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    const-string v4, "XXX"

    const-string/jumbo v5, "null"

    if-eqz v1, :cond_37

    .line 396
    const-string/jumbo v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 399
    :cond_37
    const-string/jumbo v1, "uri (isNull)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_43

    move-object v1, v4

    goto :goto_44

    :cond_43
    move-object v1, v5

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :goto_47
    const-string v1, ", sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    const-string v1, ", requestResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_6e

    .line 407
    const-string v1, "entity uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    if-eqz v1, :cond_6a

    iget-object v5, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    :cond_6a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 410
    :cond_6e
    const-string v1, "entity uri (isNull)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    if-eqz v1, :cond_78

    goto :goto_79

    :cond_78
    move-object v4, v5

    :goto_79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :goto_7c
    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const-string/jumbo v4, "}"

    if-ne v1, v3, :cond_91

    .line 415
    const-string v1, ", presenceTuples={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 418
    :cond_91
    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    if-ne v1, v2, :cond_a2

    .line 419
    const-string v1, ", featureTags={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_a2
    :goto_a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 270
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 271
    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 276
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 277
    return-void
.end method
