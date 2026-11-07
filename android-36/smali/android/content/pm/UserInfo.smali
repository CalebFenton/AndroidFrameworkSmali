.class public Landroid/content/pm/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/UserInfo$UserInfoFlag;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o FLAG_ADMIN:I = 0x2

.field public static final greylist-max-o FLAG_DEMO:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o FLAG_DISABLED:I = 0x40

.field public static final greylist-max-o FLAG_EPHEMERAL:I = 0x100

.field public static final blacklist FLAG_EPHEMERAL_ON_CREATE:I = 0x2000

.field public static final blacklist FLAG_FOR_TESTING:I = 0x8000

.field public static final blacklist FLAG_FULL:I = 0x400

.field public static final greylist-max-o FLAG_GUEST:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o FLAG_INITIALIZED:I = 0x10

.field public static final blacklist FLAG_MAIN:I = 0x4000

.field public static final greylist-max-o FLAG_MANAGED_PROFILE:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist FLAG_PRIMARY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_PROFILE:I = 0x1000

.field public static final greylist-max-o FLAG_QUIET_MODE:I = 0x80

.field public static final greylist-max-o FLAG_RESTRICTED:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_SYSTEM:I = 0x800

.field public static final greylist-max-o NO_PROFILE_GROUP_ID:I = -0x2710


# instance fields
.field public blacklist convertedFromPreCreated:Z

.field public greylist creationTime:J

.field public greylist flags:I

.field public greylist guestToRemove:Z

.field public greylist iconPath:Ljava/lang/String;

.field public greylist id:I

.field public greylist-max-o lastLoggedInFingerprint:Ljava/lang/String;

.field public greylist lastLoggedInTime:J

.field public greylist name:Ljava/lang/String;

.field public greylist partial:Z

.field public blacklist preCreated:Z

.field public greylist-max-o profileBadge:I

.field public greylist profileGroupId:I

.field public greylist-max-o restrictedProfileParentId:I

.field public greylist serialNumber:I

.field public blacklist userType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 592
    new-instance v0, Landroid/content/pm/UserInfo$1;

    invoke-direct {v0}, Landroid/content/pm/UserInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;I)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 310
    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 318
    invoke-static {p4}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "id":I
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "iconPath":Ljava/lang/String;
    .end local p4    # "flags":I
    .local v1, "id":I
    .local v2, "name":Ljava/lang/String;
    .local v3, "iconPath":Ljava/lang/String;
    .local v4, "flags":I
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "userType"    # Ljava/lang/String;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput p1, p0, Landroid/content/pm/UserInfo;->id:I

    .line 323
    iput-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 324
    iput p4, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 325
    iput-object p5, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 326
    iput-object p3, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 327
    const/16 v0, -0x2710

    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 328
    iput v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 329
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/UserInfo;)V
    .registers 4
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 519
    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 520
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 521
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 522
    iget-object v0, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 523
    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 524
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 525
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 526
    iget-object v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 527
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    .line 528
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->preCreated:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 529
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 530
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 531
    iget v0, p1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 532
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 533
    iget v0, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    iput v0, p0, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 534
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 618
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/UserInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist canSwitchToHeadlessSystemUser()Z
    .registers 3

    .line 480
    const-string v0, "android.os.usertype.system.HEADLESS"

    iget-object v1, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 481
    const v1, 0x111006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 480
    :goto_1a
    return v0
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "flags"    # I

    .line 564
    const-string v0, "FLAG_"

    int-to-long v1, p0

    const-class v3, Landroid/content/pm/UserInfo;

    invoke-static {v3, v0, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultUserType(I)Ljava/lang/String;
    .registers 5
    .param p0, "userInfoFlag"    # I

    .line 345
    and-int/lit16 v0, p0, 0x800

    const-string v1, "Cannot getDefaultUserType for flags "

    if-nez v0, :cond_3d

    .line 350
    const/16 v0, 0x22c

    .line 352
    .local v0, "supportedFlagTypes":I
    and-int/lit16 v2, p0, 0x22c

    sparse-switch v2, :sswitch_data_5e

    .line 359
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 360
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " because it doesn\'t correspond to a valid user type."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :sswitch_2e
    const-string v1, "android.os.usertype.full.DEMO"

    return-object v1

    .line 356
    :sswitch_31
    const-string v1, "android.os.usertype.profile.MANAGED"

    return-object v1

    .line 355
    :sswitch_34
    const-string v1, "android.os.usertype.full.RESTRICTED"

    return-object v1

    .line 354
    :sswitch_37
    const-string v1, "android.os.usertype.full.GUEST"

    return-object v1

    .line 353
    :sswitch_3a
    const-string v1, "android.os.usertype.full.SECONDARY"

    return-object v1

    .line 346
    .end local v0    # "supportedFlagTypes":I
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it corresponds to a SYSTEM user type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_3a
        0x4 -> :sswitch_37
        0x8 -> :sswitch_34
        0x20 -> :sswitch_31
        0x200 -> :sswitch_2e
    .end sparse-switch
.end method


# virtual methods
.method public greylist-max-o canHaveProfile()Z
    .registers 3

    .line 497
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_2e

    .line 504
    :cond_20
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Landroid/multiuser/Flags;->profilesForAll()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_2c
    const/4 v1, 0x1

    :cond_2d
    return v1

    .line 498
    :cond_2e
    :goto_2e
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 538
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public greylist isAdmin()Z
    .registers 3

    .line 377
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isCloneProfile()Z
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isCommunalProfile()Z
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeCommunalProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isDemo()Z
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public greylist isEnabled()Z
    .registers 3

    .line 421
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o isEphemeral()Z
    .registers 3

    .line 429
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isForTesting()Z
    .registers 3

    .line 435
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isFull()Z
    .registers 3

    .line 447
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist isGuest()Z
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isInitialized()Z
    .registers 3

    .line 439
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isMain()Z
    .registers 3

    .line 454
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist isManagedProfile()Z
    .registers 2

    .line 396
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist isPrimary()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isPrivateProfile()Z
    .registers 2

    .line 410
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isProfile()Z
    .registers 2

    .line 391
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isQuietModeEnabled()Z
    .registers 3

    .line 425
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist isRestricted()Z
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupervisingProfile()Z
    .registers 2

    .line 415
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeSupervisingProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o supportsSwitchTo()Z
    .registers 3

    .line 462
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1f

    .line 467
    :cond_c
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_11

    .line 469
    return v1

    .line 471
    :cond_11
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Landroid/content/pm/UserInfo;->canSwitchToHeadlessSystemUser()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1

    .line 465
    :cond_1f
    :goto_1f
    return v1
.end method

.method public greylist-max-o supportsSwitchToByUser()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v0

    return v0
.end method

.method public blacklist toFullString()Ljava/lang/String;
    .registers 4

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 555
    invoke-static {v1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    iget-boolean v1, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    const-string v2, ""

    if-eqz v1, :cond_42

    const-string v1, " (pre-created)"

    goto :goto_43

    :cond_42
    move-object v1, v2

    :goto_43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 557
    iget-boolean v1, p0, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v1, :cond_4e

    const-string v1, " (converted)"

    goto :goto_4f

    :cond_4e
    move-object v1, v2

    :goto_4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 558
    iget-boolean v1, p0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_59

    const-string v2, " (partial)"

    :cond_59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 574
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    iget-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 577
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 579
    iget v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget-wide v0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 581
    iget-wide v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 582
    iget-object v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 583
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 584
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 585
    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 587
    iget v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget v0, p0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    return-void
.end method
