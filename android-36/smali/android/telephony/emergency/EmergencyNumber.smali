.class public final Landroid/telephony/emergency/EmergencyNumber;
.super Ljava/lang/Object;
.source "EmergencyNumber.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/emergency/EmergencyNumber$EmergencyCallRouting;,
        Landroid/telephony/emergency/EmergencyNumber$EmergencyNumberSources;,
        Landroid/telephony/emergency/EmergencyNumber$EmergencyServiceCategories;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/telephony/emergency/EmergencyNumber;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMERGENCY_CALL_ROUTING_EMERGENCY:I = 0x1

.field public static final whitelist EMERGENCY_CALL_ROUTING_NORMAL:I = 0x2

.field public static final whitelist EMERGENCY_CALL_ROUTING_UNKNOWN:I = 0x0

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_DATABASE:I = 0x10

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_DEFAULT:I = 0x8

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_MODEM_CONFIG:I = 0x4

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_NETWORK_SIGNALING:I = 0x1

.field private static final blacklist EMERGENCY_NUMBER_SOURCE_PRECEDENCE:[I

.field private static final blacklist EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_SIM:I = 0x2

.field public static final blacklist EMERGENCY_NUMBER_SOURCE_TEST:I = 0x20

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_AIEC:I = 0x40

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_AMBULANCE:I = 0x2

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_FIRE_BRIGADE:I = 0x4

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_MARINE_GUARD:I = 0x8

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_MIEC:I = 0x20

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_MOUNTAIN_RESCUE:I = 0x10

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_POLICE:I = 0x1

.field private static final blacklist EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_UNSPECIFIED:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "EmergencyNumber"


# instance fields
.field private final blacklist mCountryIso:Ljava/lang/String;

.field private final blacklist mEmergencyCallRouting:I

.field private final blacklist mEmergencyNumberSourceBitmask:I

.field private final blacklist mEmergencyServiceCategoryBitmask:I

.field private final blacklist mEmergencyUrns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMnc:Ljava/lang/String;

.field private final blacklist mNumber:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    .line 141
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    const/16 v10, 0x40

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;

    .line 211
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    new-array v0, v5, [I

    sput-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_PRECEDENCE:[I

    .line 260
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_PRECEDENCE:[I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 261
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_PRECEDENCE:[I

    aput v3, v0, v1

    .line 262
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_PRECEDENCE:[I

    aput v8, v0, v3

    .line 263
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_PRECEDENCE:[I

    const/4 v1, 0x3

    aput v5, v0, v1

    .line 304
    new-instance v0, Landroid/telephony/emergency/EmergencyNumber$1;

    invoke-direct {v0}, Landroid/telephony/emergency/EmergencyNumber$1;-><init>()V

    sput-object v0, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    .line 290
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V
    .registers 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;
    .param p4, "emergencyServiceCategories"    # I
    .param p6, "emergencyNumberSources"    # I
    .param p7, "emergencyCallRouting"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 271
    .local p5, "emergencyUrns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    .line 273
    iput-object p2, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    .line 274
    iput-object p3, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    .line 275
    iput p4, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    .line 276
    iput-object p5, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    .line 277
    iput p6, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    .line 278
    iput p7, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    .line 279
    return-void
.end method

.method public static blacklist areSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;Z)Z
    .registers 6
    .param p0, "first"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p1, "second"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "ignoreServiceCategoryAndUrns"    # Z

    .line 775
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 776
    return v1

    .line 778
    :cond_10
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 779
    return v1

    .line 781
    :cond_1f
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 782
    return v1

    .line 784
    :cond_2e
    if-nez p2, :cond_4a

    .line 785
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    .line 786
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v2

    if-eq v0, v2, :cond_3b

    .line 787
    return v1

    .line 789
    :cond_3b
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 790
    return v1

    .line 795
    :cond_4a
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v2

    .line 796
    invoke-virtual {p1, v0}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_58

    .line 797
    return v1

    .line 799
    :cond_58
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist categoriesToString(I)Ljava/lang/String;
    .registers 5
    .param p1, "categories"    # I

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_10

    .line 523
    const-string v1, "auto "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_10
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 527
    const-string v1, "ambulance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_1a
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_24

    .line 531
    const-string v1, "fire "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_24
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_30

    .line 535
    const-string/jumbo v1, "marine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_30
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3c

    .line 539
    const-string/jumbo v1, "mountain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_3c
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_47

    .line 542
    const-string/jumbo v1, "police "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_47
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_53

    .line 545
    const-string/jumbo v1, "manual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist fillServiceCategoryAndUrns(Landroid/telephony/emergency/EmergencyNumber;Landroid/util/SparseIntArray;Landroid/util/SparseArray;)V
    .registers 11
    .param p0, "num"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p1, "serviceCategoryArray"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/emergency/EmergencyNumber;",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 868
    .local p2, "urnsArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    .line 869
    .local v0, "numberSrc":I
    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_PRECEDENCE:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_3c

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 870
    .local v5, "source":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v6, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_39

    .line 871
    invoke-virtual {p0, v3}, Landroid/telephony/emergency/EmergencyNumber;->isInEmergencyServiceCategories(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 872
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 874
    :cond_2d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 875
    goto :goto_3c

    .line 869
    .end local v5    # "source":Ljava/lang/Integer;
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 878
    :cond_3c
    :goto_3c
    return-void
.end method

.method private blacklist getDisplayPriorityScore()I
    .registers 3

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "score":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 632
    add-int/lit8 v0, v0, 0x10

    .line 634
    :cond_a
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 635
    add-int/lit8 v0, v0, 0x8

    .line 637
    :cond_13
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 638
    add-int/lit8 v0, v0, 0x4

    .line 640
    :cond_1d
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 641
    add-int/lit8 v0, v0, 0x2

    .line 643
    :cond_27
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 644
    add-int/lit8 v0, v0, 0x1

    .line 646
    :cond_30
    return v0
.end method

.method private static blacklist mergeEmergencyUrns(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 843
    .local p0, "firstEmergencyUrns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "secondEmergencyUrns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v0, "mergedUrns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 845
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 846
    .local v2, "urn":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 847
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    .end local v2    # "urn":Ljava/lang/String;
    :cond_21
    goto :goto_c

    .line 850
    :cond_22
    return-object v0
.end method

.method public static blacklist mergeSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Landroid/telephony/emergency/EmergencyNumber;
    .registers 11
    .param p0, "first"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p1, "second"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 814
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/emergency/EmergencyNumber;->areSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 815
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    .line 817
    .local v0, "routing":I
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 818
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    move v8, v0

    goto :goto_1a

    .line 817
    :cond_19
    move v8, v0

    .line 821
    .end local v0    # "routing":I
    .local v8, "routing":I
    :goto_1a
    new-instance v1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v4

    .line 822
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v5

    .line 823
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v6

    .line 824
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    .line 825
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v7

    or-int/2addr v7, v0

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 821
    return-object v1

    .line 828
    .end local v8    # "routing":I
    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist mergeSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;Z)Landroid/telephony/emergency/EmergencyNumber;
    .registers 18
    .param p0, "first"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p1, "second"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "mergeServiceCategoriesAndUrns"    # Z

    .line 898
    move-object/from16 v0, p1

    if-nez p2, :cond_9

    .line 899
    invoke-static/range {p0 .. p1}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v1

    return-object v1

    .line 902
    :cond_9
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v1

    .line 903
    .local v1, "routing":I
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v2

    .line 904
    .local v2, "serviceCategory":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v3, "mergedEmergencyUrns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/util/SparseIntArray;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 908
    .local v4, "serviceCategoryArray":Landroid/util/SparseIntArray;
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 910
    .local v6, "urnsArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0, v4, v6}, Landroid/telephony/emergency/EmergencyNumber;->fillServiceCategoryAndUrns(Landroid/telephony/emergency/EmergencyNumber;Landroid/util/SparseIntArray;Landroid/util/SparseArray;)V

    .line 911
    invoke-static {v0, v4, v6}, Landroid/telephony/emergency/EmergencyNumber;->fillServiceCategoryAndUrns(Landroid/telephony/emergency/EmergencyNumber;Landroid/util/SparseIntArray;Landroid/util/SparseArray;)V

    .line 913
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 914
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v1

    move v14, v1

    goto :goto_36

    .line 913
    :cond_35
    move v14, v1

    .line 918
    .end local v1    # "routing":I
    .local v14, "routing":I
    :goto_36
    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_PRECEDENCE:[I

    array-length v5, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_3b
    if-ge v8, v5, :cond_4e

    aget v9, v1, v8

    .line 919
    .local v9, "sourceOfCategory":I
    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_4b

    .line 920
    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 921
    move v11, v2

    goto :goto_4f

    .line 918
    .end local v9    # "sourceOfCategory":I
    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_4e
    move v11, v2

    .line 926
    .end local v2    # "serviceCategory":I
    .local v11, "serviceCategory":I
    :goto_4f
    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_PRECEDENCE:[I

    array-length v2, v1

    move-object v12, v3

    .end local v3    # "mergedEmergencyUrns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "mergedEmergencyUrns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_53
    if-ge v7, v2, :cond_6c

    aget v3, v1, v7

    .line 927
    .local v3, "sourceOfUrn":I
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 928
    nop

    .line 929
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 928
    invoke-static {v12, v5}, Landroid/telephony/emergency/EmergencyNumber;->mergeEmergencyUrns(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object v12, v5

    .line 926
    .end local v3    # "sourceOfUrn":I
    :cond_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 933
    :cond_6c
    new-instance v7, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v10

    .line 935
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v1

    .line 936
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v2

    or-int v13, v1, v2

    invoke-direct/range {v7 .. v14}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 933
    return-object v7
.end method

.method public static blacklist mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 701
    .local p0, "emergencyNumberList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;Z)V

    .line 702
    return-void
.end method

.method public static blacklist mergeSameNumbersInEmergencyNumberList(Ljava/util/List;Z)V
    .registers 7
    .param p1, "mergeServiceCategoriesAndUrns"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;Z)V"
        }
    .end annotation

    .line 723
    .local p0, "emergencyNumberList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    if-nez p0, :cond_3

    .line 724
    return-void

    .line 727
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 728
    .local v0, "duplicatedEmergencyNumberPosition":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6f

    .line 729
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_10
    if-ge v2, v1, :cond_6c

    .line 730
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 731
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    .line 730
    invoke-static {v3, v4, p1}, Landroid/telephony/emergency/EmergencyNumber;->areSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;Z)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found unexpected duplicate numbers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 733
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 734
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 732
    const-string v4, "EmergencyNumber"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    nop

    .line 737
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 738
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    .line 737
    invoke-static {v3, v4, p1}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;Z)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v3

    .line 736
    invoke-interface {p0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 728
    .end local v2    # "j":I
    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 746
    .end local v1    # "i":I
    :cond_6f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_75
    if-ltz v1, :cond_87

    .line 747
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 748
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 746
    :cond_84
    add-int/lit8 v1, v1, -0x1

    goto :goto_75

    .line 751
    .end local v1    # "i":I
    :cond_87
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 752
    return-void
.end method

.method private blacklist routingToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "routing"    # I

    .line 555
    packed-switch p1, :pswitch_data_12

    .line 559
    const-string/jumbo v0, "\ud83e\udd37"

    goto :goto_11

    .line 557
    :pswitch_7
    const-string/jumbo v0, "normal"

    goto :goto_11

    .line 556
    :pswitch_b
    const-string v0, "emergency"

    goto :goto_11

    .line 558
    :pswitch_e
    const-string/jumbo v0, "unknown"

    .line 555
    :goto_11
    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist serviceUnspecified()Z
    .registers 2

    .line 423
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist sourceBitmaskToString(I)Ljava/lang/String;
    .registers 5
    .param p1, "sourceBitmask"    # I

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 572
    const-string/jumbo v1, "net "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_10
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 575
    const-string/jumbo v1, "sim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_1b
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_26

    .line 579
    const-string v1, "db "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_26
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_31

    .line 583
    const-string/jumbo v1, "mdm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_31
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3c

    .line 586
    const-string v1, "def "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_3c
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_48

    .line 589
    const-string/jumbo v1, "tst "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist validateEmergencyNumberAddress(Ljava/lang/String;)Z
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .line 947
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 948
    return v0

    .line 950
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_a
    if-ge v3, v2, :cond_18

    aget-char v4, v1, v3

    .line 951
    .local v4, "c":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-nez v5, :cond_15

    .line 952
    return v0

    .line 950
    .end local v4    # "c":C
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 955
    :cond_18
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist compareTo(Landroid/telephony/emergency/EmergencyNumber;)I
    .registers 6
    .param p1, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 659
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v0

    .line 660
    invoke-direct {p1}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v1, :cond_c

    .line 661
    return v2

    .line 662
    :cond_c
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v0

    .line 663
    invoke-direct {p1}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_18

    .line 664
    return v3

    .line 665
    :cond_18
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 666
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 667
    :cond_33
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4e

    .line 668
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 669
    :cond_4e
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_69

    .line 670
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 671
    :cond_69
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    .line 672
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v1

    if-eq v0, v1, :cond_81

    .line 674
    nop

    .line 673
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    .line 674
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v1

    if-le v0, v1, :cond_7f

    goto :goto_80

    :cond_7f
    move v2, v3

    .line 673
    :goto_80
    return v2

    .line 675
    :cond_81
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_ac

    .line 677
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 679
    :cond_ac
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    .line 680
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v1

    if-eq v0, v1, :cond_c4

    .line 682
    nop

    .line 681
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    .line 682
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v1

    if-le v0, v1, :cond_c2

    goto :goto_c3

    :cond_c2
    move v2, v3

    .line 681
    :goto_c3
    return v2

    .line 684
    :cond_c4
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 46
    check-cast p1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p0, p1}, Landroid/telephony/emergency/EmergencyNumber;->compareTo(Landroid/telephony/emergency/EmergencyNumber;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 596
    const-class v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 597
    return v1

    .line 599
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 600
    .local v0, "other":Landroid/telephony/emergency/EmergencyNumber;
    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    .line 602
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    iget v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    if-ne v2, v3, :cond_49

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    .line 604
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    iget v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    if-ne v2, v3, :cond_49

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    iget v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    if-ne v2, v3, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    nop

    .line 600
    :goto_4a
    return v1
.end method

.method public whitelist getCountryIso()Ljava/lang/String;
    .registers 2

    .line 338
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEmergencyCallRouting()I
    .registers 2

    .line 493
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    return v0
.end method

.method public blacklist getEmergencyNumberSourceBitmask()I
    .registers 2

    .line 453
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    return v0
.end method

.method public whitelist getEmergencyNumberSources()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 464
    .local v2, "source":Ljava/lang/Integer;
    iget v3, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_27

    .line 465
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v2    # "source":Ljava/lang/Integer;
    :cond_27
    goto :goto_b

    .line 468
    :cond_28
    return-object v0
.end method

.method public whitelist getEmergencyServiceCategories()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->serviceUnspecified()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 388
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    return-object v0

    .line 391
    :cond_14
    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 392
    .local v2, "category":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/telephony/emergency/EmergencyNumber;->isInEmergencyServiceCategories(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 393
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v2    # "category":Ljava/lang/Integer;
    :cond_33
    goto :goto_1a

    .line 396
    :cond_34
    return-object v0
.end method

.method public blacklist getEmergencyServiceCategoryBitmask()I
    .registers 2

    .line 358
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    return v0
.end method

.method public blacklist getEmergencyServiceCategoryBitmaskInternalDial()I
    .registers 3

    .line 370
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    .line 371
    const/4 v0, 0x0

    return v0

    .line 373
    :cond_8
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    return v0
.end method

.method public whitelist getEmergencyUrns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMnc()Ljava/lang/String;
    .registers 2

    .line 347
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNumber()Ljava/lang/String;
    .registers 2

    .line 329
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 611
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    iget v3, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    iget v5, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    .line 612
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 611
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isFromSources(I)Z
    .registers 3
    .param p1, "sources"    # I

    .line 480
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isInEmergencyServiceCategories(I)Z
    .registers 4
    .param p1, "categories"    # I

    .line 436
    if-nez p1, :cond_7

    .line 437
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->serviceUnspecified()Z

    move-result v0

    return v0

    .line 439
    :cond_7
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->serviceUnspecified()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 440
    return v1

    .line 442
    :cond_f
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 504
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    iget v3, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    .line 509
    invoke-direct {p0, v3}, Landroid/telephony/emergency/EmergencyNumber;->sourceBitmaskToString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    .line 510
    invoke-direct {p0, v4}, Landroid/telephony/emergency/EmergencyNumber;->routingToString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    .line 511
    invoke-direct {p0, v5}, Landroid/telephony/emergency/EmergencyNumber;->categoriesToString(I)Ljava/lang/String;

    move-result-object v5

    .line 512
    iget-object v6, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    if-nez v6, :cond_1f

    const-string v6, ""

    goto :goto_2f

    .line 513
    :cond_1f
    iget-object v6, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    :goto_2f
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 504
    const-string v1, "[EmergencyNumber: %s, countryIso=%s, mnc=%s, src=%s, routing=%s, categories=%s, urns=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 295
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 300
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    return-void
.end method
