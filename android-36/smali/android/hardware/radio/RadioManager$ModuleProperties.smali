.class public Landroid/hardware/radio/RadioManager$ModuleProperties;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleProperties"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private final greylist-max-o mClassId:I

.field private final greylist-max-o mDabFrequencyTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mId:I

.field private final greylist-max-o mImplementor:Ljava/lang/String;

.field private final greylist-max-o mIsBgScanSupported:Z

.field private final greylist-max-o mIsCaptureSupported:Z

.field private final greylist-max-o mIsInitializationRequired:Z

.field private final greylist-max-o mNumAudioSources:I

.field private final greylist-max-o mNumTuners:I

.field private final greylist-max-o mProduct:Ljava/lang/String;

.field private final greylist-max-o mSerial:Ljava/lang/String;

.field private final greylist-max-o mServiceName:Ljava/lang/String;

.field private final greylist-max-o mSupportedIdentifierTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSupportedProgramTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mVendorInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 525
    new-instance v0, Landroid/hardware/radio/RadioManager$ModuleProperties$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V
    .registers 34
    .param p1, "id"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "classId"    # I
    .param p4, "implementor"    # Ljava/lang/String;
    .param p5, "product"    # Ljava/lang/String;
    .param p6, "version"    # Ljava/lang/String;
    .param p7, "serial"    # Ljava/lang/String;
    .param p8, "numTuners"    # I
    .param p9, "numAudioSources"    # I
    .param p10, "isInitializationRequired"    # Z
    .param p11, "isCaptureSupported"    # Z
    .param p12, "bands"    # [Landroid/hardware/radio/RadioManager$BandDescriptor;
    .param p13, "isBgScanSupported"    # Z
    .param p14, "supportedProgramTypes"    # [I
    .param p15, "supportedIdentifierTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZZ[",
            "Landroid/hardware/radio/RadioManager$BandDescriptor;",
            "Z[I[I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 284
    .local p16, "dabFrequencyTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p17, "vendorInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 285
    move/from16 v1, p1

    iput v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    .line 286
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "default"

    goto :goto_14

    :cond_12
    move-object/from16 v2, p2

    :goto_14
    iput-object v2, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    .line 287
    move/from16 v2, p3

    iput v2, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    .line 288
    move-object/from16 v3, p4

    iput-object v3, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    .line 289
    move-object/from16 v4, p5

    iput-object v4, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    .line 290
    move-object/from16 v5, p6

    iput-object v5, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    .line 291
    move-object/from16 v6, p7

    iput-object v6, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    .line 292
    move/from16 v7, p8

    iput v7, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    .line 293
    move/from16 v8, p9

    iput v8, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    .line 294
    move/from16 v9, p10

    iput-boolean v9, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    .line 295
    move/from16 v10, p11

    iput-boolean v10, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    .line 296
    move-object/from16 v11, p12

    iput-object v11, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 297
    move/from16 v12, p13

    iput-boolean v12, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    .line 298
    invoke-static/range {p14 .. p14}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v13

    iput-object v13, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    .line 299
    invoke-static/range {p15 .. p15}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v13

    iput-object v13, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    .line 300
    if-eqz p16, :cond_77

    .line 301
    invoke-interface/range {p16 .. p16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_58
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_77

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 302
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_58

    .line 306
    :cond_77
    if-eqz p16, :cond_83

    invoke-interface/range {p16 .. p16}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_80

    goto :goto_83

    .line 307
    :cond_80
    move-object/from16 v13, p16

    goto :goto_84

    :cond_83
    :goto_83
    const/4 v13, 0x0

    :goto_84
    iput-object v13, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    .line 308
    if-nez p17, :cond_8e

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    goto :goto_90

    :cond_8e
    move-object/from16 v13, p17

    :goto_90
    iput-object v13, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    .line 309
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "default"

    goto :goto_17

    :cond_16
    move-object v1, v0

    :goto_17
    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4d

    move v1, v3

    goto :goto_4e

    :cond_4d
    move v1, v2

    :goto_4e
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_58

    move v1, v3

    goto :goto_59

    :cond_58
    move v1, v2

    :goto_59
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    .line 511
    const-class v1, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v4, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    .line 513
    .local v1, "tmp":[Landroid/os/Parcelable;
    array-length v4, v1

    new-array v4, v4, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    iput-object v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 514
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6f
    array-length v5, v1

    if-ge v4, v5, :cond_7d

    .line 515
    iget-object v5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    aget-object v6, v1, v4

    check-cast v6, Landroid/hardware/radio/RadioManager$BandDescriptor;

    aput-object v6, v5, v4

    .line 514
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 517
    .end local v4    # "i":I
    :cond_7d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_84

    move v2, v3

    :cond_84
    iput-boolean v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    .line 520
    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringIntMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    .line 521
    .local v2, "dabFrequencyTableIn":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a6

    const/4 v3, 0x0

    goto :goto_a7

    :cond_a6
    move-object v3, v2

    :goto_a7
    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    .line 522
    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    .line 523
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o arrayToSet([I)Ljava/util/Set;
    .registers 3
    .param p0, "arr"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 312
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private static greylist-max-o setToArray(Ljava/util/Set;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 316
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 587
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 588
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 589
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 591
    .local v1, "other":Landroid/hardware/radio/RadioManager$ModuleProperties;
    iget v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result v4

    if-eq v3, v4, :cond_16

    return v2

    .line 592
    :cond_16
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    return v2

    .line 593
    :cond_21
    iget v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    iget v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    if-eq v3, v4, :cond_28

    return v2

    .line 594
    :cond_28
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    return v2

    .line 595
    :cond_33
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    return v2

    .line 596
    :cond_3e
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    return v2

    .line 597
    :cond_49
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    return v2

    .line 598
    :cond_54
    iget v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    iget v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    if-eq v3, v4, :cond_5b

    return v2

    .line 599
    :cond_5b
    iget v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    iget v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    if-eq v3, v4, :cond_62

    return v2

    .line 600
    :cond_62
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    iget-boolean v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    if-eq v3, v4, :cond_69

    return v2

    .line 601
    :cond_69
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    iget-boolean v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    if-eq v3, v4, :cond_70

    return v2

    .line 602
    :cond_70
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    return v2

    .line 603
    :cond_7b
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    iget-boolean v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    if-eq v3, v4, :cond_82

    return v2

    .line 604
    :cond_82
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    return v2

    .line 605
    :cond_8d
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    return v2

    .line 606
    :cond_98
    return v0
.end method

.method public whitelist getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 2

    .line 495
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public whitelist getClassId()I
    .registers 2

    .line 343
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    return v0
.end method

.method public whitelist getDabFrequencyTable()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 327
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    return v0
.end method

.method public whitelist getImplementor()Ljava/lang/String;
    .registers 2

    .line 351
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNumAudioSources()I
    .registers 2

    .line 399
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    return v0
.end method

.method public whitelist getNumTuners()I
    .registers 2

    .line 386
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    return v0
.end method

.method public whitelist getProduct()Ljava/lang/String;
    .registers 2

    .line 358
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSerial()Ljava/lang/String;
    .registers 2

    .line 376
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .registers 2

    .line 335
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVendorInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getVersion()Ljava/lang/String;
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 18

    .line 579
    move-object/from16 v0, p0

    iget v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    iget v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    iget-object v6, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    iget-object v7, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    iget v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    .line 580
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    .line 581
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-object v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-boolean v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-object v15, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    iget-object v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    move-object/from16 v16, v1

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    .line 579
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isBackgroundScanningSupported()Z
    .registers 2

    .line 435
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    return v0
.end method

.method public whitelist isCaptureSupported()Z
    .registers 2

    .line 424
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    return v0
.end method

.method public whitelist isInitializationRequired()Z
    .registers 2

    .line 412
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    return v0
.end method

.method public whitelist isProgramIdentifierSupported(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 460
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProgramTypeSupported(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 447
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleProperties [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClassId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImplementor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProduct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumTuners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumAudioSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsInitializationRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsCaptureSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsBgScanSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 574
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 538
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 550
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    invoke-static {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->setToArray(Ljava/util/Set;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 552
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    invoke-static {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->setToArray(Ljava/util/Set;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 553
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeStringIntMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 554
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 555
    return-void
.end method
