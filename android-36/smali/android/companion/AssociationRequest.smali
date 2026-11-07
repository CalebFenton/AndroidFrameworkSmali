.class public final Landroid/companion/AssociationRequest;
.super Ljava/lang/Object;
.source "AssociationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/AssociationRequest$Builder;,
        Landroid/companion/AssociationRequest$DeviceProfile;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/AssociationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_PROFILE_APP_STREAMING:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_APP_STREAMING"

.field public static final whitelist DEVICE_PROFILE_AUTOMOTIVE_PROJECTION:Ljava/lang/String; = "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

.field public static final whitelist DEVICE_PROFILE_COMPUTER:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_COMPUTER"

.field public static final whitelist DEVICE_PROFILE_GLASSES:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_GLASSES"

.field public static final whitelist DEVICE_PROFILE_NEARBY_DEVICE_STREAMING:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

.field public static final blacklist DEVICE_PROFILE_VIRTUAL_DEVICE:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_VIRTUAL_DEVICE"

.field public static final whitelist DEVICE_PROFILE_WATCH:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_WATCH"

.field public static final blacklist DEVICE_PROFILE_WEARABLE_SENSING:Ljava/lang/String; = "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"


# instance fields
.field private blacklist mAssociatedDevice:Landroid/companion/AssociatedDevice;

.field private final blacklist mCreationTime:J

.field private final greylist-max-o mDeviceFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mDeviceIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mDeviceProfile:Ljava/lang/String;

.field private blacklist mDeviceProfilePrivilegesDescription:Ljava/lang/String;

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mForceConfirmation:Z

.field private blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSelfManaged:Z

.field private final greylist-max-o mSingleDevice:Z

.field private blacklist mSkipPrompt:Z

.field private final blacklist mSkipRoleGrant:Z

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 799
    new-instance v0, Landroid/companion/AssociationRequest$1;

    invoke-direct {v0}, Landroid/companion/AssociationRequest$1;-><init>()V

    sput-object v0, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 22
    .param p1, "in"    # Landroid/os/Parcel;

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 755
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 756
    .local v2, "flg":I
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    move v3, v4

    .line 757
    .local v3, "singleDevice":Z
    :goto_13
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    goto :goto_1a

    :cond_19
    move v6, v4

    .line 758
    .local v6, "selfManaged":Z
    :goto_1a
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_20

    const/4 v7, 0x1

    goto :goto_21

    :cond_20
    move v7, v4

    .line 759
    .local v7, "forceConfirmation":Z
    :goto_21
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    goto :goto_28

    :cond_27
    move v8, v4

    .line 760
    .local v8, "skipPrompt":Z
    :goto_28
    and-int/lit16 v9, v2, 0x200

    if-eqz v9, :cond_2d

    const/4 v4, 0x1

    .line 761
    .local v4, "skipRoleGrant":Z
    :cond_2d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v9, "deviceFilters":Ljava/util/List;, "Ljava/util/List<Landroid/companion/DeviceFilter<*>;>;"
    const-class v10, Landroid/companion/DeviceFilter;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-class v11, Landroid/companion/DeviceFilter;

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 765
    and-int/lit8 v10, v2, 0x10

    if-nez v10, :cond_43

    const/4 v10, 0x0

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 766
    .local v10, "deviceProfile":Ljava/lang/String;
    :goto_47
    and-int/lit8 v12, v2, 0x20

    if-nez v12, :cond_4d

    const/4 v12, 0x0

    goto :goto_51

    :cond_4d
    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v12

    .line 767
    .local v12, "displayName":Ljava/lang/CharSequence;
    :goto_51
    and-int/lit8 v13, v2, 0x40

    if-nez v13, :cond_57

    const/4 v13, 0x0

    goto :goto_5f

    .line 768
    :cond_57
    sget-object v13, Landroid/companion/AssociatedDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/companion/AssociatedDevice;

    :goto_5f
    nop

    .line 769
    .local v13, "associatedDevice":Landroid/companion/AssociatedDevice;
    and-int/lit16 v14, v2, 0x80

    if-nez v14, :cond_66

    const/4 v14, 0x0

    goto :goto_6a

    :cond_66
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 770
    .local v14, "packageName":Ljava/lang/String;
    :goto_6a
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 771
    .local v15, "userId":I
    and-int/lit16 v5, v2, 0x100

    if-nez v5, :cond_74

    const/4 v5, 0x0

    goto :goto_78

    :cond_74
    invoke-virtual {v1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v5

    .line 772
    .local v5, "deviceProfilePrivilegesDescription":Ljava/lang/String;
    :goto_78
    move-object/from16 v16, v12

    .end local v12    # "displayName":Ljava/lang/CharSequence;
    .local v16, "displayName":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 774
    .local v11, "creationTime":J
    iput-boolean v3, v0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    .line 775
    iput-object v9, v0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    .line 776
    move/from16 v17, v2

    .end local v2    # "flg":I
    .local v17, "flg":I
    const-class v2, Landroid/annotation/NonNull;

    move/from16 v18, v3

    .end local v3    # "singleDevice":Z
    .local v18, "singleDevice":Z
    iget-object v3, v0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    move-object/from16 v19, v9

    const/4 v9, 0x0

    .end local v9    # "deviceFilters":Ljava/util/List;, "Ljava/util/List<Landroid/companion/DeviceFilter<*>;>;"
    .local v19, "deviceFilters":Ljava/util/List;, "Ljava/util/List<Landroid/companion/DeviceFilter<*>;>;"
    invoke-static {v2, v9, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 778
    iput-object v10, v0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    .line 779
    move-object/from16 v2, v16

    .end local v16    # "displayName":Ljava/lang/CharSequence;
    .local v2, "displayName":Ljava/lang/CharSequence;
    iput-object v2, v0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    .line 780
    iput-object v13, v0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 781
    iput-boolean v6, v0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    .line 782
    iput-boolean v7, v0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    .line 783
    iput-boolean v4, v0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    .line 784
    iput-object v14, v0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    .line 785
    iput v15, v0, Landroid/companion/AssociationRequest;->mUserId:I

    .line 786
    const-class v3, Landroid/annotation/UserIdInt;

    iget v9, v0, Landroid/companion/AssociationRequest;->mUserId:I

    const/4 v2, 0x0

    .end local v2    # "displayName":Ljava/lang/CharSequence;
    .restart local v16    # "displayName":Ljava/lang/CharSequence;
    invoke-static {v3, v2, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V

    .line 788
    iput-object v5, v0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    .line 789
    iput-wide v11, v0, Landroid/companion/AssociationRequest;->mCreationTime:J

    .line 790
    iput-boolean v8, v0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c2

    .line 792
    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    iput-object v2, v0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    goto :goto_c5

    .line 794
    :cond_c2
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 796
    :goto_c5
    return-void
.end method

.method private constructor blacklist <init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZZLandroid/graphics/drawable/Icon;)V
    .registers 11
    .param p1, "singleDevice"    # Z
    .param p3, "deviceProfile"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "selfManaged"    # Z
    .param p6, "forceConfirmation"    # Z
    .param p7, "skipRoleGrant"    # Z
    .param p8, "deviceIcon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "ZZZ",
            "Landroid/graphics/drawable/Icon;",
            ")V"
        }
    .end annotation

    .line 311
    .local p2, "deviceFilters":Ljava/util/List;, "Ljava/util/List<Landroid/companion/DeviceFilter<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-boolean p1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    .line 313
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    .line 314
    iput-object p3, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    .line 315
    iput-object p4, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    .line 316
    iput-boolean p5, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    .line 317
    iput-boolean p6, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    .line 318
    iput-boolean p7, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    .line 320
    iput-object p8, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 321
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZZLandroid/graphics/drawable/Icon;Landroid/companion/AssociationRequest-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/companion/AssociationRequest;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZZLandroid/graphics/drawable/Icon;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 749
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 672
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 673
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_94

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_94

    .line 674
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/companion/AssociationRequest;

    .line 675
    .local v2, "that":Landroid/companion/AssociationRequest;
    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    iget-boolean v4, v2, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    if-ne v3, v4, :cond_92

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    .line 676
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    .line 677
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    .line 678
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 679
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    iget-boolean v4, v2, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    if-ne v3, v4, :cond_92

    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    iget-boolean v4, v2, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    if-ne v3, v4, :cond_92

    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    iget-boolean v4, v2, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    if-ne v3, v4, :cond_92

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    .line 683
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    iget v3, p0, Landroid/companion/AssociationRequest;->mUserId:I

    iget v4, v2, Landroid/companion/AssociationRequest;->mUserId:I

    if-ne v3, v4, :cond_92

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    .line 685
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-wide v3, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    iget-wide v5, v2, Landroid/companion/AssociationRequest;->mCreationTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_92

    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    iget-boolean v4, v2, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    if-ne v3, v4, :cond_92

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_87

    iget-object v3, v2, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_92

    goto :goto_91

    :cond_87
    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 690
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v3

    if-eqz v3, :cond_92

    :goto_91
    goto :goto_93

    :cond_92
    move v0, v1

    .line 675
    :goto_93
    return v0

    .line 673
    .end local v2    # "that":Landroid/companion/AssociationRequest;
    :cond_94
    :goto_94
    return v1
.end method

.method public blacklist getAssociatedDevice()Landroid/companion/AssociatedDevice;
    .registers 2

    .line 596
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-object v0
.end method

.method public blacklist getCreationTime()J
    .registers 3

    .line 638
    iget-wide v0, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    return-wide v0
.end method

.method public greylist-max-r getDeviceFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDeviceIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 394
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getDeviceProfile()Ljava/lang/String;
    .registers 2

    .line 329
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceProfilePrivilegesDescription()Ljava/lang/String;
    .registers 2

    .line 629
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 338
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 607
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 618
    iget v0, p0, Landroid/companion/AssociationRequest;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 695
    const/4 v0, 0x1

    .line 696
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 697
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 698
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 699
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 700
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 701
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 702
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 703
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 704
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 705
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/companion/AssociationRequest;->mUserId:I

    add-int/2addr v0, v2

    .line 706
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 707
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 708
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 709
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 711
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist isForceConfirmation()Z
    .registers 2

    .line 358
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    return v0
.end method

.method public whitelist isSelfManaged()Z
    .registers 2

    .line 347
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    return v0
.end method

.method public whitelist isSingleDevice()Z
    .registers 2

    .line 381
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    return v0
.end method

.method public blacklist isSkipPrompt()Z
    .registers 2

    .line 648
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    return v0
.end method

.method public blacklist isSkipRoleGrant()Z
    .registers 2

    .line 370
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    return v0
.end method

.method public blacklist setAssociatedDevice(Landroid/companion/AssociatedDevice;)V
    .registers 2
    .param p1, "associatedDevice"    # Landroid/companion/AssociatedDevice;

    .line 424
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 425
    return-void
.end method

.method public blacklist setDeviceIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "deviceIcon"    # Landroid/graphics/drawable/Icon;

    .line 428
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 429
    return-void
.end method

.method public blacklist setDeviceProfilePrivilegesDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "desc"    # Ljava/lang/String;

    .line 409
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public blacklist setDisplayName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "displayName"    # Ljava/lang/CharSequence;

    .line 419
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    .line 420
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 399
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public blacklist setSkipPrompt(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 414
    iput-boolean p1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    .line 415
    return-void
.end method

.method public blacklist setUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 404
    iput p1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    .line 405
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssociationRequest { singleDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceFilters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", associatedDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selfManaged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceConfirmation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipRoleGrant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceProfilePrivilegesDescription = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creationTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipPrompt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 716
    const/4 v0, 0x0

    .line 717
    .local v0, "flg":I
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    .line 718
    :cond_7
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    .line 719
    :cond_d
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    .line 720
    :cond_13
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x8

    .line 721
    :cond_19
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    if-eqz v1, :cond_1f

    or-int/lit8 v0, v0, 0x10

    .line 722
    :cond_1f
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_25

    or-int/lit8 v0, v0, 0x20

    .line 723
    :cond_25
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    if-eqz v1, :cond_2b

    or-int/lit8 v0, v0, 0x40

    .line 724
    :cond_2b
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_31

    or-int/lit16 v0, v0, 0x80

    .line 725
    :cond_31
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    if-eqz v1, :cond_37

    or-int/lit16 v0, v0, 0x100

    .line 726
    :cond_37
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    if-eqz v1, :cond_3d

    or-int/lit16 v0, v0, 0x200

    .line 728
    :cond_3d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 730
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 731
    :cond_4e
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_57

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 732
    :cond_57
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    if-eqz v1, :cond_60

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 733
    :cond_60
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_69

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 734
    :cond_69
    iget v1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    if-eqz v1, :cond_77

    .line 736
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 738
    :cond_77
    iget-wide v1, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 739
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_8a

    .line 740
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8e

    .line 743
    :cond_8a
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    :goto_8e
    return-void
.end method
