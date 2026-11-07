.class public final Landroid/hardware/radio/ProgramSelector;
.super Ljava/lang/Object;
.source "ProgramSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ProgramSelector$Identifier;,
        Landroid/hardware/radio/ProgramSelector$IdentifierType;,
        Landroid/hardware/radio/ProgramSelector$HdSubChannel;,
        Landroid/hardware/radio/ProgramSelector$ProgramType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramSelector;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_AMFM_FREQUENCY:I = 0x1

.field public static final whitelist IDENTIFIER_TYPE_DAB_DMB_SID_EXT:I = 0xe

.field public static final whitelist IDENTIFIER_TYPE_DAB_ENSEMBLE:I = 0x6

.field public static final whitelist IDENTIFIER_TYPE_DAB_FREQUENCY:I = 0x8

.field public static final whitelist IDENTIFIER_TYPE_DAB_SCID:I = 0x7

.field public static final whitelist IDENTIFIER_TYPE_DAB_SIDECC:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_DAB_SID_EXT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_DRMO_FREQUENCY:I = 0xa

.field public static final whitelist IDENTIFIER_TYPE_DRMO_MODULATION:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_DRMO_SERVICE_ID:I = 0x9

.field public static final whitelist IDENTIFIER_TYPE_HD_STATION_ID_EXT:I = 0x3

.field public static final whitelist IDENTIFIER_TYPE_HD_STATION_LOCATION:I = 0xf

.field public static final whitelist IDENTIFIER_TYPE_HD_STATION_NAME:I = 0x2714

.field public static final whitelist IDENTIFIER_TYPE_HD_SUBCHANNEL:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_INVALID:I = 0x0

.field public static final whitelist IDENTIFIER_TYPE_RDS_PI:I = 0x2

.field public static final whitelist IDENTIFIER_TYPE_SXM_CHANNEL:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_SXM_SERVICE_ID:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_END:I = 0x7cf

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_PRIMARY_END:I = 0x7cf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_PRIMARY_START:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_START:I = 0x3e8

.field public static final whitelist PROGRAM_TYPE_AM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_AM_HD:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_DAB:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_DRMO:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_FM:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_FM_HD:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_SXM:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_VENDOR_END:I = 0x7cf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_VENDOR_START:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUB_CHANNEL_HD_1:I = 0x1

.field public static final whitelist SUB_CHANNEL_HD_2:I = 0x2

.field public static final whitelist SUB_CHANNEL_HD_3:I = 0x4

.field public static final whitelist SUB_CHANNEL_HD_4:I = 0x8

.field public static final whitelist SUB_CHANNEL_HD_5:I = 0x10

.field public static final whitelist SUB_CHANNEL_HD_6:I = 0x20

.field public static final whitelist SUB_CHANNEL_HD_7:I = 0x40

.field public static final whitelist SUB_CHANNEL_HD_8:I = 0x80


# instance fields
.field private final greylist-max-o mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final greylist-max-o mProgramType:I

.field private final greylist-max-o mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final greylist-max-o mVendorIds:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 735
    new-instance v0, Landroid/hardware/radio/ProgramSelector$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramSelector$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V
    .registers 7
    .param p1, "programType"    # I
    .param p2, "primaryId"    # Landroid/hardware/radio/ProgramSelector$Identifier;
    .param p3, "secondaryIds"    # [Landroid/hardware/radio/ProgramSelector$Identifier;
    .param p4, "vendorIds"    # [J

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    const/4 v0, 0x0

    if-nez p3, :cond_8

    new-array p3, v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 454
    :cond_8
    if-nez p4, :cond_c

    new-array p4, v0, [J

    .line 455
    :cond_c
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 458
    iput p1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 459
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 460
    iput-object p3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 461
    iput-object p4, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    .line 462
    return-void

    .line 456
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "secondaryIds list must not contain nulls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 714
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 715
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 716
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    .line 720
    return-void

    .line 717
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "secondaryIds list must not contain nulls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramSelector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramSelector;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createAmFmSelector(II)Landroid/hardware/radio/ProgramSelector;
    .registers 3
    .param p0, "band"    # I
    .param p1, "frequencyKhz"    # I

    .line 588
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;
    .registers 14
    .param p0, "band"    # I
    .param p1, "frequencyKhz"    # I
    .param p2, "subChannel"    # I

    .line 625
    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p0, v0, :cond_19

    .line 627
    const v0, 0xc350

    if-ge p1, v0, :cond_13

    .line 628
    if-gtz p2, :cond_10

    move v0, v3

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    move p0, v0

    goto :goto_19

    .line 630
    :cond_13
    if-gtz p2, :cond_17

    move v0, v4

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    move p0, v0

    .line 634
    :cond_19
    :goto_19
    if-eqz p0, :cond_20

    if-ne p0, v2, :cond_1e

    goto :goto_20

    :cond_1e
    move v0, v3

    goto :goto_21

    :cond_20
    :goto_20
    move v0, v4

    .line 635
    .local v0, "isAm":Z
    :goto_21
    if-eq p0, v2, :cond_28

    if-ne p0, v1, :cond_26

    goto :goto_28

    :cond_26
    move v2, v3

    goto :goto_29

    :cond_28
    :goto_28
    move v2, v4

    .line 636
    .local v2, "isDigital":Z
    :goto_29
    if-nez v0, :cond_49

    if-nez v2, :cond_49

    if-ne p0, v4, :cond_30

    goto :goto_49

    .line 637
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown band: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 639
    :cond_49
    :goto_49
    if-ltz p2, :cond_9c

    const/16 v5, 0x8

    if-gt p2, v5, :cond_9c

    .line 642
    if-lez p2, :cond_5c

    if-eqz v2, :cond_54

    goto :goto_5c

    .line 643
    :cond_54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Subchannels are not supported for non-HD radio"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    :cond_5c
    :goto_5c
    invoke-static {v0, p1}, Landroid/hardware/radio/ProgramSelector;->isValidAmFmFrequency(ZI)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 651
    if-eqz v0, :cond_65

    move v1, v4

    .line 652
    .local v1, "programType":I
    :cond_65
    new-instance v5, Landroid/hardware/radio/ProgramSelector$Identifier;

    int-to-long v6, p1

    invoke-direct {v5, v4, v6, v7}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    .line 654
    .local v5, "primary":Landroid/hardware/radio/ProgramSelector$Identifier;
    const/4 v6, 0x0

    .line 655
    .local v6, "secondary":[Landroid/hardware/radio/ProgramSelector$Identifier;
    if-lez p2, :cond_7c

    .line 661
    new-array v4, v4, [Landroid/hardware/radio/ProgramSelector$Identifier;

    new-instance v7, Landroid/hardware/radio/ProgramSelector$Identifier;

    add-int/lit8 v8, p2, -0x1

    int-to-long v8, v8

    const/4 v10, 0x4

    invoke-direct {v7, v10, v8, v9}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    aput-object v7, v4, v3

    move-object v6, v4

    .line 665
    :cond_7c
    new-instance v3, Landroid/hardware/radio/ProgramSelector;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v5, v6, v4}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v3

    .line 646
    .end local v1    # "programType":I
    .end local v5    # "primary":Landroid/hardware/radio/ProgramSelector$Identifier;
    .end local v6    # "secondary":[Landroid/hardware/radio/ProgramSelector$Identifier;
    :cond_83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provided value is not a valid AM/FM frequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 640
    :cond_9c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid subchannel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o isValidAmFmFrequency(ZI)Z
    .registers 5
    .param p0, "isAm"    # Z
    .param p1, "frequencyKhz"    # I

    .line 603
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_f

    .line 604
    const/16 v2, 0x96

    if-le p1, v2, :cond_d

    const/16 v2, 0x7530

    if-gt p1, v2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    .line 606
    :cond_f
    const v2, 0xea60

    if-le p1, v2, :cond_1a

    const v2, 0x1adb0

    if-ge p1, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .registers 2
    .param p0, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 455
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic blacklist lambda$new$3(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .registers 2
    .param p0, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 716
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic blacklist lambda$withSecondaryPreferred$1(ILandroid/hardware/radio/ProgramSelector$Identifier;)Z
    .registers 3
    .param p0, "preferredType"    # I
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 566
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    if-eq v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$withSecondaryPreferred$2(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2
    .param p0, "x$0"    # I

    .line 568
    new-array v0, p0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 691
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 692
    :cond_4
    instance-of v0, p1, Landroid/hardware/radio/ProgramSelector;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 693
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    .line 696
    .local v0, "other":Landroid/hardware/radio/ProgramSelector;
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramSelector$Identifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getAllIds(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 8
    .param p1, "type"    # I

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    if-ne v1, p1, :cond_12

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_12
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 527
    .local v4, "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    invoke-virtual {v4}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v5

    if-ne v5, p1, :cond_23

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    .end local v4    # "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 530
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v1
.end method

.method public whitelist getFirstId(I)J
    .registers 7
    .param p1, "type"    # I

    .line 506
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    if-ne v0, p1, :cond_f

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v0

    return-wide v0

    .line 507
    :cond_f
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 508
    .local v3, "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    invoke-virtual {v3}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v4

    if-ne v4, p1, :cond_22

    invoke-virtual {v3}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v0

    return-wide v0

    .line 507
    .end local v3    # "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 510
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    .line 482
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public whitelist getProgramType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    iget v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    return v0
.end method

.method public whitelist getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    .line 492
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public whitelist getVendorIds()[J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 686
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist strictEquals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 701
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 702
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/ProgramSelector;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 703
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/ProgramSelector;

    .line 706
    .local v1, "other":Landroid/hardware/radio/ProgramSelector;
    iget-object v3, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/radio/ProgramSelector$Identifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v3, v3

    iget-object v4, v1, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v4, v4

    if-ne v3, v4, :cond_34

    iget-object v3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 708
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 709
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 708
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v2

    .line 706
    :goto_35
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgramSelector(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 672
    const-string v1, ", primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 673
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v1, v1

    if-lez v1, :cond_2d

    .line 674
    const-string v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_2d
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    array-length v1, v1

    if-lez v1, :cond_41

    .line 677
    const-string v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :cond_41
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist withSecondaryPreferred(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/radio/ProgramSelector;
    .registers 8
    .param p1, "preferred"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 563
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    .line 564
    .local v0, "preferredType":I
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 566
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 568
    invoke-static {p1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 564
    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda1;-><init>()V

    .line 568
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 570
    .local v1, "secondaryIds":[Landroid/hardware/radio/ProgramSelector$Identifier;
    new-instance v2, Landroid/hardware/radio/ProgramSelector;

    iget v3, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    iget-object v4, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v5, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 724
    iget v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 726
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 727
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 728
    return-void
.end method
