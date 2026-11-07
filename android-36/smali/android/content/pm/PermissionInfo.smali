.class public Landroid/content/pm/PermissionInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "PermissionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PermissionInfo$Flags;,
        Landroid/content/pm/PermissionInfo$ProtectionFlags;,
        Landroid/content/pm/PermissionInfo$Protection;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_COSTS_MONEY:I = 0x1

.field public static final whitelist FLAG_HARD_RESTRICTED:I = 0x4

.field public static final whitelist FLAG_IMMUTABLY_RESTRICTED:I = 0x10

.field public static final whitelist FLAG_INSTALLED:I = 0x40000000

.field public static final whitelist FLAG_REMOVED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_SOFT_RESTRICTED:I = 0x8

.field public static final whitelist PROTECTION_DANGEROUS:I = 0x1

.field public static final whitelist PROTECTION_FLAG_APPOP:I = 0x40

.field public static final whitelist PROTECTION_FLAG_APP_PREDICTOR:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_COMPANION:I = 0x800000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_CONFIGURATOR:I = 0x80000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_DEVELOPMENT:I = 0x20

.field public static final whitelist PROTECTION_FLAG_DOCUMENTER:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_INCIDENT_REPORT_APPROVER:I = 0x100000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_INSTALLER:I = 0x100

.field public static final whitelist PROTECTION_FLAG_INSTANT:I = 0x1000

.field public static final whitelist PROTECTION_FLAG_KNOWN_SIGNER:I = 0x8000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_MODULE:I = 0x400000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_OEM:I = 0x4000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_PRE23:I = 0x80

.field public static final whitelist PROTECTION_FLAG_PREINSTALLED:I = 0x400

.field public static final whitelist PROTECTION_FLAG_PRIVILEGED:I = 0x10

.field public static final whitelist PROTECTION_FLAG_RECENTS:I = 0x2000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_RETAIL_DEMO:I = 0x1000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_ROLE:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_RUNTIME_ONLY:I = 0x2000

.field public static final whitelist PROTECTION_FLAG_SETUP:I = 0x800

.field public static final whitelist PROTECTION_FLAG_SYSTEM:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_SYSTEM_TEXT_CLASSIFIER:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_VENDOR_PRIVILEGED:I = 0x8000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_VERIFIER:I = 0x200

.field public static final whitelist PROTECTION_FLAG_WELLBEING:I = 0x20000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_INTERNAL:I = 0x4

.field public static final whitelist PROTECTION_MASK_BASE:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTECTION_MASK_FLAGS:I = 0xfff0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTECTION_NORMAL:I = 0x0

.field public static final whitelist PROTECTION_SIGNATURE:I = 0x2

.field public static final whitelist PROTECTION_SIGNATURE_OR_SYSTEM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public final whitelist backgroundPermission:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist descriptionRes:I

.field public whitelist flags:I

.field public whitelist group:Ljava/lang/String;

.field public whitelist knownCerts:Ljava/util/Set;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist nonLocalizedDescription:Ljava/lang/CharSequence;

.field public whitelist protectionLevel:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist requestRes:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 496
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 497
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Landroid/content/pm/PermissionInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 786
    new-instance v0, Landroid/content/pm/PermissionInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 664
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/PermissionInfo;)V
    .registers 3
    .param p1, "orig"    # Landroid/content/pm/PermissionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 672
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 507
    nop

    .line 509
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 673
    iget v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 674
    iget v0, p1, Landroid/content/pm/PermissionInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 675
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 676
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 677
    iget v0, p1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 678
    iget v0, p1, Landroid/content/pm/PermissionInfo;->requestRes:I

    iput v0, p0, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 679
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 681
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 682
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 799
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 507
    nop

    .line 509
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 802
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 803
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 805
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 806
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 807
    sget-object v0, Landroid/content/pm/PermissionInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 808
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/PermissionInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "backgroundPermission"    # Ljava/lang/String;

    .line 655
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 507
    nop

    .line 509
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 656
    iput-object p1, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 657
    return-void
.end method

.method public static greylist-max-o fixProtectionLevel(I)I
    .registers 2
    .param p0, "level"    # I

    .line 513
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    .line 514
    const/16 p0, 0x12

    .line 516
    :cond_5
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_13

    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_13

    .line 520
    const v0, -0x8001

    and-int/2addr p0, v0

    .line 522
    :cond_13
    return p0
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "flags"    # I

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_7
    if-eqz p0, :cond_4a

    .line 622
    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 623
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p0, v2

    .line 624
    sparse-switch v1, :sswitch_data_56

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 641
    :sswitch_18
    const-string/jumbo v2, "installed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    goto :goto_41

    .line 638
    :sswitch_1f
    const-string/jumbo v2, "immutablyRestricted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    goto :goto_41

    .line 635
    :sswitch_26
    const-string/jumbo v2, "softRestricted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    goto :goto_41

    .line 632
    :sswitch_2d
    const-string/jumbo v2, "hardRestricted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    goto :goto_41

    .line 629
    :sswitch_34
    const-string/jumbo v2, "removed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    goto :goto_41

    .line 626
    :sswitch_3b
    const-string v2, "costsMoney"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    nop

    .line 645
    :goto_41
    if-eqz p0, :cond_49

    .line 646
    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .end local v1    # "flag":I
    :cond_49
    goto :goto_7

    .line 649
    :cond_4a
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_3b
        0x2 -> :sswitch_34
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_26
        0x10 -> :sswitch_1f
        0x40000000 -> :sswitch_18
    .end sparse-switch
.end method

.method public static greylist-max-r protectionToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "level"    # I

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .local v0, "protLevel":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0xf

    packed-switch v1, :pswitch_data_120

    .line 546
    const-string v1, "????"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 543
    :pswitch_10
    const-string/jumbo v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    goto :goto_32

    .line 540
    :pswitch_17
    const-string/jumbo v1, "signatureOrSystem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    goto :goto_32

    .line 537
    :pswitch_1e
    const-string/jumbo v1, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    goto :goto_32

    .line 531
    :pswitch_25
    const-string v1, "dangerous"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    goto :goto_32

    .line 534
    :pswitch_2b
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    nop

    .line 549
    :goto_32
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3c

    .line 550
    const-string/jumbo v1, "|privileged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_3c
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_46

    .line 553
    const-string/jumbo v1, "|development"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_46
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_50

    .line 556
    const-string/jumbo v1, "|appop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_50
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_5a

    .line 559
    const-string/jumbo v1, "|pre23"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_5a
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_64

    .line 562
    const-string/jumbo v1, "|installer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_64
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_6e

    .line 565
    const-string/jumbo v1, "|verifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_6e
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_78

    .line 568
    const-string/jumbo v1, "|preinstalled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_78
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_82

    .line 571
    const-string/jumbo v1, "|setup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_82
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_8c

    .line 574
    const-string/jumbo v1, "|instant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_8c
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_96

    .line 577
    const-string/jumbo v1, "|runtime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_96
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_a0

    .line 580
    const-string/jumbo v1, "|oem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_a0
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_ac

    .line 583
    const-string/jumbo v1, "|vendorPrivileged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_ac
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b7

    .line 586
    const-string/jumbo v1, "|textClassifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_b7
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_c2

    .line 589
    const-string/jumbo v1, "|configurator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_c2
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_cd

    .line 592
    const-string/jumbo v1, "|incidentReportApprover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_cd
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_d8

    .line 595
    const-string/jumbo v1, "|appPredictor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :cond_d8
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_e3

    .line 598
    const-string/jumbo v1, "|companion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :cond_e3
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_ee

    .line 601
    const-string/jumbo v1, "|retailDemo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_ee
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f9

    .line 604
    const-string/jumbo v1, "|recents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :cond_f9
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_104

    .line 607
    const-string/jumbo v1, "|role"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_104
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10f

    .line 610
    const-string/jumbo v1, "|knownSigner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :cond_10f
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11a

    .line 613
    const-string/jumbo v1, "|module"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_11a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_25
        :pswitch_1e
        :pswitch_17
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o calculateFootprint()I
    .registers 3

    .line 751
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 752
    .local v0, "size":I
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    .line 753
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 755
    :cond_11
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1c

    .line 756
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 758
    :cond_1c
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getProtection()I
    .registers 2

    .line 713
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public whitelist getProtectionFlags()I
    .registers 2

    .line 721
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, -0x10

    return v0
.end method

.method public greylist-max-o isAppOp()Z
    .registers 2

    .line 778
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isHardRestricted()Z
    .registers 2

    .line 763
    iget v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isRestricted()Z
    .registers 2

    .line 773
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist isRuntime()Z
    .registers 3

    .line 783
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public blacklist isSoftRestricted()Z
    .registers 2

    .line 768
    iget v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 696
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 697
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    return-object v0

    .line 699
    :cond_7
    iget v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 700
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 701
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_17

    .line 702
    return-object v0

    .line 705
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_17
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 727
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 738
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 739
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    iget v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 743
    iget v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    iget v0, p0, Landroid/content/pm/PermissionInfo;->requestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 746
    sget-object v0, Landroid/content/pm/PermissionInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 747
    return-void
.end method
