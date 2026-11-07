.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final greylist-max-o codePath:Ljava/lang/String;

.field public final greylist-max-o configForSplit:Ljava/lang/String;

.field public final greylist-max-o coreApp:Z

.field public final greylist-max-o debuggable:Z

.field public final greylist-max-o extractNativeLibs:Z

.field public final greylist-max-o installLocation:I

.field public greylist-max-o isFeatureSplit:Z

.field public final blacklist isSplitRequired:Z

.field public final greylist-max-o isolatedSplits:Z

.field public final blacklist minSdkVersion:I

.field public final greylist-max-o multiArch:Z

.field public final blacklist overlayIsStatic:Z

.field public final blacklist overlayPriority:I

.field public final greylist-max-o packageName:Ljava/lang/String;

.field public final blacklist profilableByShell:Z

.field public final greylist-max-o revisionCode:I

.field public final blacklist rollbackDataPolicy:I

.field public final greylist-max-o signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field public final greylist-max-o splitName:Ljava/lang/String;

.field public final blacklist targetPackageName:Ljava/lang/String;

.field public final blacklist targetSdkVersion:I

.field public final greylist-max-o use32bitAbi:Z

.field public final blacklist useEmbeddedDex:Z

.field public final greylist-max-o usesSplitName:Ljava/lang/String;

.field public final greylist-max-o verifiers:[Landroid/content/pm/VerifierInfo;

.field public final greylist-max-o versionCode:I

.field public final greylist-max-o versionCodeMajor:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZZZLjava/lang/String;ZIIII)V
    .registers 44
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "isFeatureSplit"    # Z
    .param p5, "configForSplit"    # Ljava/lang/String;
    .param p6, "usesSplitName"    # Ljava/lang/String;
    .param p7, "isSplitRequired"    # Z
    .param p8, "versionCode"    # I
    .param p9, "versionCodeMajor"    # I
    .param p10, "revisionCode"    # I
    .param p11, "installLocation"    # I
    .param p13, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p14, "coreApp"    # Z
    .param p15, "debuggable"    # Z
    .param p16, "profilableByShell"    # Z
    .param p17, "multiArch"    # Z
    .param p18, "use32bitAbi"    # Z
    .param p19, "useEmbeddedDex"    # Z
    .param p20, "extractNativeLibs"    # Z
    .param p21, "isolatedSplits"    # Z
    .param p22, "targetPackageName"    # Ljava/lang/String;
    .param p23, "overlayIsStatic"    # Z
    .param p24, "overlayPriority"    # I
    .param p25, "minSdkVersion"    # I
    .param p26, "targetSdkVersion"    # I
    .param p27, "rollbackDataPolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIIII",
            "Ljava/util/List<",
            "Landroid/content/pm/VerifierInfo;",
            ">;",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "ZZZZZZZZ",
            "Ljava/lang/String;",
            "ZIIII)V"
        }
    .end annotation

    .line 513
    .local p12, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 514
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    .line 515
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 516
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    .line 517
    move/from16 v4, p4

    iput-boolean v4, v0, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    .line 518
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    .line 519
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    .line 520
    move/from16 v7, p8

    iput v7, v0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 521
    move/from16 v8, p9

    iput v8, v0, Landroid/content/pm/PackageParser$ApkLite;->versionCodeMajor:I

    .line 522
    move/from16 v9, p10

    iput v9, v0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    .line 523
    move/from16 v10, p11

    iput v10, v0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    .line 524
    move-object/from16 v11, p13

    iput-object v11, v0, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 525
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/content/pm/VerifierInfo;

    move-object/from16 v13, p12

    invoke-interface {v13, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/VerifierInfo;

    iput-object v12, v0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 526
    move/from16 v12, p14

    iput-boolean v12, v0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    .line 527
    move/from16 v14, p15

    iput-boolean v14, v0, Landroid/content/pm/PackageParser$ApkLite;->debuggable:Z

    .line 528
    move/from16 v15, p16

    iput-boolean v15, v0, Landroid/content/pm/PackageParser$ApkLite;->profilableByShell:Z

    .line 529
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    .line 530
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    .line 531
    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->useEmbeddedDex:Z

    .line 532
    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    .line 533
    move/from16 v1, p21

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->isolatedSplits:Z

    .line 534
    move/from16 v1, p7

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->isSplitRequired:Z

    .line 535
    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->targetPackageName:Ljava/lang/String;

    .line 536
    move/from16 v1, p23

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$ApkLite;->overlayIsStatic:Z

    .line 537
    move/from16 v1, p24

    iput v1, v0, Landroid/content/pm/PackageParser$ApkLite;->overlayPriority:I

    .line 538
    move/from16 v1, p25

    iput v1, v0, Landroid/content/pm/PackageParser$ApkLite;->minSdkVersion:I

    .line 539
    move/from16 v1, p26

    iput v1, v0, Landroid/content/pm/PackageParser$ApkLite;->targetSdkVersion:I

    .line 540
    move/from16 v1, p27

    iput v1, v0, Landroid/content/pm/PackageParser$ApkLite;->rollbackDataPolicy:I

    .line 541
    return-void
.end method


# virtual methods
.method public greylist-max-o getLongVersionCode()J
    .registers 3

    .line 544
    iget v0, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCodeMajor:I

    iget v1, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method
