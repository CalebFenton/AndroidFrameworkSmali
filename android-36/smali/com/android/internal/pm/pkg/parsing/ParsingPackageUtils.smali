.class public Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
.super Ljava/lang/Object;
.source "ParsingPackageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;,
        Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseFlags;
    }
.end annotation


# static fields
.field public static final blacklist ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field public static final blacklist ASPECT_RATIO_NOT_SET:F = -1.0f

.field public static final blacklist DEBUG_BACKUP:Z = false

.field public static final blacklist DEBUG_JAR:Z = false

.field public static final blacklist DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field private static final blacklist MAXIMUM_LAUNCHER_ALTERNATE_IDS_LENGTH:I = 0x1f4

.field public static final blacklist METADATA_ACTIVITY_LAUNCH_MODE:Ljava/lang/String; = "android.activity.launch_mode"

.field public static final blacklist METADATA_ACTIVITY_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "android.activity_window_layout_affinity"

.field public static final blacklist METADATA_CAN_DISPLAY_ON_REMOTE_DEVICES:Ljava/lang/String; = "android.can_display_on_remote_devices"

.field public static final blacklist METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field public static final blacklist METADATA_SUPPORTS_SIZE_CHANGES:Ljava/lang/String; = "android.supports_size_changes"

.field public static final blacklist MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field public static final blacklist PARSE_APEX:I = 0x400

.field public static final blacklist PARSE_APK_IN_APEX:I = 0x200

.field public static final blacklist PARSE_CHATTY:I = -0x80000000

.field public static final blacklist PARSE_COLLECT_CERTIFICATES:I = 0x20

.field public static final blacklist PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final blacklist PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final blacklist PARSE_ENFORCE_CODE:I = 0x40

.field public static final blacklist PARSE_EXTERNAL_STORAGE:I = 0x8

.field public static final blacklist PARSE_IGNORE_OVERLAY_REQUIRED_SYSTEM_PROPERTY:I = 0x80

.field public static final blacklist PARSE_IGNORE_PROCESSES:I = 0x2

.field public static final blacklist PARSE_IS_SYSTEM_DIR:I = 0x10

.field public static final blacklist PARSE_MUST_BE_APK:I = 0x1

.field public static final blacklist RIGID_PARSER:Z = false

.field public static final blacklist SDK_CODENAMES:[Ljava/lang/String;

.field public static final blacklist SDK_VERSION:I

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"

.field public static final blacklist TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field public static final blacklist TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final blacklist TAG_ATTRIBUTION:Ljava/lang/String; = "attribution"

.field public static final blacklist TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field public static final blacklist TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field public static final blacklist TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field public static final blacklist TAG_INSTALL_CONSTRAINTS:Ljava/lang/String; = "install-constraints"

.field public static final blacklist TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field public static final blacklist TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field public static final blacklist TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field public static final blacklist TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field public static final blacklist TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field public static final blacklist TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final blacklist TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field public static final blacklist TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final blacklist TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field public static final blacklist TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field public static final blacklist TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field public static final blacklist TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field public static final blacklist TAG_QUERIES:Ljava/lang/String; = "queries"

.field public static final blacklist TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final blacklist TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field public static final blacklist TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field public static final blacklist TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field public static final blacklist TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field public static final blacklist TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field public static final blacklist TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field public static final blacklist TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field public static final blacklist TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field public static final blacklist TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field public static final blacklist TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field public static final blacklist TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field private static final blacklist TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final blacklist TYPE_STRING:Ljava/lang/String; = "string"

.field private static final blacklist sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

.field public static blacklist sCompatibilityModeEnabled:Z

.field public static blacklist sUseRoundIcon:Z


# instance fields
.field private final blacklist mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

.field private final blacklist mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final blacklist mSeparateProcesses:[Ljava/lang/String;

.field private final blacklist mSplitPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    .line 222
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 224
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    .line 225
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 304
    new-instance v0, Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/AconfigFlags;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .registers 5
    .param p1, "separateProcesses"    # [Ljava/lang/String;
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p4, "callback"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/util/DisplayMetrics;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;",
            ")V"
        }
    .end annotation

    .line 308
    .local p3, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    .line 310
    iput-object p2, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 311
    iput-object p3, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    .line 312
    iput-object p4, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 313
    return-void
.end method

.method private static blacklist aFloat(FILandroid/content/res/TypedArray;)F
    .registers 4
    .param p0, "defaultValue"    # F
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3417
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method private static blacklist aFloat(ILandroid/content/res/TypedArray;)F
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3421
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method private static blacklist adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 7
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3170
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 3171
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3172
    .local v1, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_9
    if-ge v2, v1, :cond_24

    .line 3173
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3174
    .local v3, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setResizeMode(Lcom/android/internal/pm/pkg/component/ParsedActivity;I)V

    .line 3175
    nop

    .line 3176
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v4

    const v5, -0x400001

    and-int/2addr v4, v5

    .line 3175
    invoke-static {v3, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExactFlags(Lcom/android/internal/pm/pkg/component/ParsedComponent;I)V

    .line 3172
    .end local v3    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3178
    .end local v2    # "index":I
    :cond_24
    return-void
.end method

.method private blacklist afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 3
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2375
    invoke-static {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setMaxAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2376
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setMinAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2377
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setSupportsSizeChanges(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2379
    invoke-static {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->hasDomainURLs(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHasDomainUrls(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2380
    return-void
.end method

.method private static blacklist anInt(IILandroid/content/res/TypedArray;)I
    .registers 4
    .param p0, "defaultValue"    # I
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3425
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private static blacklist anInt(ILandroid/content/res/TypedArray;)I
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3433
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private static blacklist anInteger(IILandroid/content/res/TypedArray;)I
    .registers 4
    .param p0, "defaultValue"    # I
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3429
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method private static blacklist bool(ZILandroid/content/res/TypedArray;)Z
    .registers 4
    .param p0, "defaultValue"    # Z
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3413
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method private static blacklist convertCompatPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 6
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3133
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v1, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    array-length v1, v1

    .local v1, "size":I
    :goto_4
    if-ge v0, v1, :cond_2d

    .line 3134
    sget-object v2, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    aget-object v2, v2, v0

    .line 3135
    .local v2, "info":Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v4

    if-lt v3, v4, :cond_15

    .line 3136
    goto :goto_2d

    .line 3138
    :cond_15
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 3139
    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3133
    .end local v2    # "info":Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3142
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2d
    :goto_2d
    return-void
.end method

.method private blacklist convertSplitPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 10
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3145
    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3146
    .local v0, "listSize":I
    const/4 v1, 0x0

    .local v1, "is":I
    :goto_7
    if-ge v1, v0, :cond_4a

    .line 3147
    iget-object v2, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 3148
    .local v2, "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    .line 3149
    .local v3, "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v4

    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v5

    if-ge v4, v5, :cond_47

    .line 3150
    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 3151
    goto :goto_47

    .line 3153
    :cond_2a
    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v4

    .line 3154
    .local v4, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "in":I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_47

    .line 3155
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3156
    .local v6, "perm":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_44

    .line 3157
    invoke-interface {p1, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3154
    .end local v6    # "perm":Ljava/lang/String;
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 3146
    .end local v2    # "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .end local v3    # "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "in":I
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3161
    .end local v1    # "is":I
    :cond_4a
    return-void
.end method

.method private static blacklist drawableResIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "sa"    # Landroid/content/res/TypedArray;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I
    .param p4, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[I>;"
        }
    .end annotation

    .line 3448
    const-string v4, "drawable"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "sa":Landroid/content/res/TypedArray;
    .end local p2    # "res":Landroid/content/res/Resources;
    .end local p3    # "resourceId":I
    .end local p4    # "maxSize":I
    .local v0, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v1, "sa":Landroid/content/res/TypedArray;
    .local v2, "res":Landroid/content/res/Resources;
    .local v3, "resourceId":I
    .local v5, "maxSize":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .registers 5
    .param p0, "input"    # Landroid/util/SparseIntArray;

    .line 1769
    if-nez p0, :cond_4

    .line 1770
    const/4 v0, 0x0

    return-object v0

    .line 1772
    :cond_4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1773
    .local v0, "output":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1774
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1773
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1776
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method private static blacklist generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 2881
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2882
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, ":app_details"

    invoke-static {v0, v0, v1, p0}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2884
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2885
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 2888
    :cond_15
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2891
    .local v2, "taskAffinity":Ljava/lang/String;
    nop

    .line 2892
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v4

    .line 2893
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isHardwareAccelerated()Z

    move-result v5

    .line 2891
    invoke-static {v0, v3, v4, v2, v5}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;
    .registers 1

    .line 3624
    sget-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    return-object v0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .param p2, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/parsing/pkg/ParsedPackage;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3250
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v2

    .line 3251
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    .line 3250
    move-object v0, p0

    move v5, p2

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "skipVerify":Z
    .local v0, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v5, "skipVerify":Z
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3257
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isStaticSharedLibrary()Z

    move-result v2

    .line 3258
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    .line 3257
    move-object v0, p0

    move v5, p2

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "skipVerify":Z
    .local v0, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v5, "skipVerify":Z
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 19
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "baseApkPath"    # Ljava/lang/String;
    .param p2, "isStaticSharedLibrary"    # Z
    .param p3, "targetSdkVersion"    # I
    .param p4, "splitCodePaths"    # [Ljava/lang/String;
    .param p5, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZI[",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3273
    move-object/from16 v7, p4

    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 3275
    .local v5, "signingDetails":Landroid/content/pm/SigningDetails;
    const-string v0, "collectCertificates"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3277
    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move/from16 v6, p3

    move/from16 v3, p5

    :try_start_13
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 3285
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3286
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_71

    .line 3311
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3286
    return-object v2

    .line 3289
    :cond_25
    :try_start_25
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SigningDetails;

    move-object v5, v2

    .line 3290
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework/framework-res.apk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v2

    .line 3292
    .local v10, "frameworkRes":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 3293
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v11, v2

    .line 3294
    .local v11, "isFrameworkResSplit":Z
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    if-nez v11, :cond_6c

    .line 3295
    const/4 v2, 0x0

    move v12, v2

    .local v12, "i":I
    :goto_4b
    array-length v2, v7

    if-ge v12, v2, :cond_6c

    .line 3296
    aget-object v2, v7, v12

    move-object v1, p0

    move v4, p2

    move/from16 v6, p3

    move/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v0, v2

    .line 3304
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 3305
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_65
    .catchall {:try_start_25 .. :try_end_65} :catchall_71

    .line 3311
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3305
    return-object v2

    .line 3295
    :cond_69
    add-int/lit8 v12, v12, 0x1

    goto :goto_4b

    .line 3309
    .end local v12    # "i":I
    :cond_6c
    nop

    .line 3311
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3309
    return-object v0

    .line 3311
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    .end local v10    # "frameworkRes":Ljava/io/File;
    .end local v11    # "isFrameworkResSplit":Z
    :catchall_71
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3312
    throw v0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "baseCodePath"    # Ljava/lang/String;
    .param p2, "skipVerify"    # Z
    .param p3, "isStaticSharedLibrary"    # Z
    .param p4, "existingSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p5, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/content/pm/SigningDetails;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3319
    invoke-static {p5}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v0

    .line 3321
    .local v0, "minSignatureScheme":I
    if-eqz p3, :cond_7

    .line 3323
    const/4 v0, 0x2

    .line 3326
    :cond_7
    if-eqz p2, :cond_e

    .line 3328
    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .local v1, "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    goto :goto_12

    .line 3331
    .end local v1    # "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_e
    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 3334
    .restart local v1    # "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :goto_12
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3335
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 3341
    :cond_1d
    sget-object v2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p4, v2, :cond_22

    .line 3342
    return-object v1

    .line 3344
    :cond_22
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SigningDetails;

    invoke-static {p4, v2}, Landroid/content/pm/Signature;->areExactMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 3345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has mismatched certificates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x68

    invoke-interface {p0, v3, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 3349
    :cond_48
    invoke-interface {p0, p4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "apkPath"    # Ljava/lang/String;

    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "/mnt/expand/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 568
    const/16 v2, 0x2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 569
    .local v2, "end":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 571
    .end local v2    # "end":I
    :cond_1b
    return-object v0
.end method

.method private static blacklist hasDomainURLs(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z
    .registers 11
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2904
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 2905
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2906
    .local v1, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_9
    if-ge v2, v1, :cond_4f

    .line 2907
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2908
    .local v3, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v4

    .line 2909
    .local v4, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 2910
    .local v5, "filtersSize":I
    const/4 v6, 0x0

    .local v6, "filtersIndex":I
    :goto_1a
    if-ge v6, v5, :cond_4c

    .line 2911
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v7

    .line 2912
    .local v7, "aii":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    goto :goto_47

    .line 2913
    :cond_2f
    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_36

    goto :goto_47

    .line 2914
    :cond_36
    const-string v8, "http"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 2915
    const-string v8, "https"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    goto :goto_4a

    .line 2910
    .end local v7    # "aii":Landroid/content/IntentFilter;
    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 2916
    .restart local v7    # "aii":Landroid/content/IntentFilter;
    :cond_4a
    :goto_4a
    const/4 v8, 0x1

    return v8

    .line 2906
    .end local v3    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v4    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;"
    .end local v5    # "filtersSize":I
    .end local v6    # "filtersIndex":I
    .end local v7    # "aii":Landroid/content/IntentFilter;
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2920
    .end local v2    # "index":I
    :cond_4f
    const/4 v2, 0x0

    return v2
.end method

.method static synthetic blacklist lambda$resIdArray$0(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 3526
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 4
    .param p0, "allowedChangingConfigs"    # I
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3536
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 3
    .param p0, "index"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3540
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2833
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2834
    .local v0, "certSha256Digests":[Ljava/lang/String;
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2836
    .local v1, "depth":I
    :goto_6
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_7b

    const/4 v2, 0x3

    if-ne v3, v2, :cond_17

    .line 2838
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_7b

    .line 2839
    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    .line 2840
    goto :goto_6

    .line 2842
    :cond_1b
    sget-object v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2843
    goto :goto_6

    .line 2846
    :cond_24
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2847
    .local v2, "nodeName":Ljava/lang/String;
    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 2848
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2851
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    :try_start_37
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2854
    .local v5, "certSha256Digest":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 2855
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_58
    .catchall {:try_start_37 .. :try_end_58} :catchall_75

    .line 2866
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2855
    return-object v6

    .line 2862
    :cond_5c
    :try_start_5c
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2863
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    .local v6, "certSha256Digest":Ljava/lang/String;
    const-class v5, Ljava/lang/String;

    invoke-static {v5, v0, v6}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_5c .. :try_end_70} :catchall_75

    .line 2866
    .end local v0    # "certSha256Digests":[Ljava/lang/String;
    .end local v6    # "certSha256Digest":Ljava/lang/String;
    .local v5, "certSha256Digests":[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2867
    move-object v0, v5

    goto :goto_7a

    .line 2866
    .end local v5    # "certSha256Digests":[Ljava/lang/String;
    .restart local v0    # "certSha256Digests":[Ljava/lang/String;
    :catchall_75
    move-exception v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2867
    throw v5

    .line 2869
    .end local v2    # "nodeName":Ljava/lang/String;
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    :cond_7a
    :goto_7a
    goto :goto_6

    .line 2871
    :cond_7b
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3120
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAdoptPermissions:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3122
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1, v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 3123
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 3124
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3126
    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 3128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3126
    return-object v2

    .line 3128
    .end local v1    # "name":Ljava/lang/String;
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3129
    throw v1
.end method

.method private static blacklist parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1321
    invoke-static {p2, p3, p0}, Lcom/android/internal/pm/pkg/component/ParsedAttributionUtils;->parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1323
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedAttribution;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1324
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1326
    :cond_f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private blacklist parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 27
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "apkFile"    # Ljava/io/File;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "assetLoader"    # Lcom/android/internal/pm/split/SplitAssetLoader;
    .param p5, "flags"    # I
    .param p6, "shouldSkipComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/split/SplitAssetLoader;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 577
    move-object/from16 v2, p1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "apkPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 585
    .local v9, "volumeUuid":Ljava/lang/String;
    :try_start_a
    invoke-interface/range {p4 .. p4}, Lcom/android/internal/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_e} :catch_183

    move-object v10, v0

    .line 589
    .local v10, "assets":Landroid/content/res/AssetManager;
    nop

    .line 590
    invoke-virtual {v10, v3}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v11

    .line 591
    .local v11, "cookie":I
    if-nez v11, :cond_30

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed adding asset path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x65

    invoke-interface {v2, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 596
    :cond_30
    :try_start_30
    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v10, v11, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_168

    .line 598
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_36
    new-instance v5, Landroid/content/res/Resources;

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    invoke-direct {v5, v10, v0, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 600
    .local v5, "res":Landroid/content/res/Resources;
    move-object/from16 v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    .line 602
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 603
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " (at "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 604
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 605
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 603
    invoke-interface {v2, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_82
    .catchall {:try_start_36 .. :try_end_82} :catchall_15b

    .line 657
    if-eqz v6, :cond_87

    :try_start_84
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_168

    .line 603
    :cond_87
    return-object v0

    .line 608
    :cond_88
    :try_start_88
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-object v4, v0

    .line 609
    .local v4, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    invoke-virtual {v10}, Landroid/content/res/AssetManager;->containsAllocatedTable()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 610
    const-string v0, "Targeting R+ (version 30 and above) requires the resources.arsc of installed APKs to be stored uncompressed and aligned on a 4-byte boundary"

    const-wide/32 v7, 0x7e97bf3

    invoke-interface {v2, v0, v7, v8}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 615
    .local v0, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 616
    nop

    .line 617
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    .line 616
    const/16 v8, -0x7c

    invoke-interface {v2, v8, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_af
    .catchall {:try_start_88 .. :try_end_af} :catchall_15b

    .line 657
    if-eqz v6, :cond_b4

    :try_start_b1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_168

    .line 616
    :cond_b4
    return-object v7

    .line 621
    .end local v0    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_b5
    :try_start_b5
    invoke-interface/range {p4 .. p4}, Lcom/android/internal/pm/split/SplitAssetLoader;->getBaseApkAssets()Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_15b

    move-object v7, v0

    .line 622
    .local v7, "apkAssets":Landroid/content/res/ApkAssets;
    const/4 v8, 0x0

    .line 624
    .local v8, "definesOverlayable":Z
    :try_start_bb
    invoke-virtual {v7}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result v0
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_bf} :catch_c1
    .catchall {:try_start_bb .. :try_end_bf} :catchall_15b

    move v8, v0

    .line 627
    goto :goto_c2

    .line 625
    :catch_c1
    move-exception v0

    .line 629
    :goto_c2
    if-eqz v8, :cond_122

    .line 630
    :try_start_c4
    invoke-virtual {v10}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    .line 631
    .local v0, "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 632
    .local v12, "size":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_cd
    if-ge v13, v12, :cond_11d

    .line 633
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 634
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v14}, Landroid/content/res/AssetManager;->getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 635
    .local v15, "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v15, :cond_112

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_112

    .line 636
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_e9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .line 637
    .local v18, "overlayable":Ljava/lang/String;
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "overlayable":Ljava/lang/String;
    .local v0, "overlayable":Ljava/lang/String;
    .local v17, "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .local v19, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    move-object/from16 v1, v18

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 638
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    .end local v0    # "overlayable":Ljava/lang/String;
    goto :goto_e9

    .line 636
    .end local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .local v0, "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_10d
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    .end local v0    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    goto :goto_116

    .line 635
    .end local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v0    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_112
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    .line 632
    .end local v0    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :goto_116
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    goto :goto_cd

    .end local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v0    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_11d
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    .end local v0    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    goto :goto_124

    .line 629
    .end local v12    # "size":I
    .end local v13    # "index":I
    .end local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_122
    move-object/from16 v19, v1

    .line 643
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :goto_124
    invoke-interface {v4, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 645
    and-int/lit8 v0, p5, 0x20

    if-eqz v0, :cond_14c

    .line 646
    nop

    .line 647
    const/4 v0, 0x0

    invoke-static {v2, v4, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 648
    .local v0, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_141

    .line 649
    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_13b
    .catchall {:try_start_c4 .. :try_end_13b} :catchall_15b

    .line 657
    if-eqz v6, :cond_140

    :try_start_13d
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_140} :catch_168

    .line 649
    :cond_140
    return-object v1

    .line 651
    :cond_141
    :try_start_141
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SigningDetails;

    invoke-interface {v4, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 652
    nop

    .end local v0    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    goto :goto_151

    .line 653
    :cond_14c
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    invoke-interface {v4, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 656
    :goto_151
    invoke-interface {v2, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_155
    .catchall {:try_start_141 .. :try_end_155} :catchall_15b

    .line 657
    if-eqz v6, :cond_15a

    :try_start_157
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_168

    .line 656
    :cond_15a
    return-object v0

    .line 596
    .end local v4    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v7    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local v8    # "definesOverlayable":Z
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :catchall_15b
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_167

    :try_start_15f
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_163

    goto :goto_167

    :catchall_163
    move-exception v0

    :try_start_164
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v9    # "volumeUuid":Ljava/lang/String;
    .end local v10    # "assets":Landroid/content/res/AssetManager;
    .end local v11    # "cookie":I
    .end local p0    # "this":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "apkFile":Ljava/io/File;
    .end local p3    # "codePath":Ljava/lang/String;
    .end local p4    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .end local p5    # "flags":I
    .end local p6    # "shouldSkipComponents":Z
    :cond_167
    :goto_167
    throw v1
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_168} :catch_168

    .line 657
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v9    # "volumeUuid":Ljava/lang/String;
    .restart local v10    # "assets":Landroid/content/res/AssetManager;
    .restart local v11    # "cookie":I
    .restart local p0    # "this":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "apkFile":Ljava/io/File;
    .restart local p3    # "codePath":Ljava/lang/String;
    .restart local p4    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .restart local p5    # "flags":I
    .restart local p6    # "shouldSkipComponents":Z
    :catch_168
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read manifest from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, -0x66

    invoke-interface {v2, v4, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "assets":Landroid/content/res/AssetManager;
    .end local v11    # "cookie":I
    :catch_183
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_18e

    const/4 v1, -0x2

    goto :goto_190

    .line 588
    :cond_18e
    const/16 v1, -0x64

    :goto_190
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 587
    invoke-interface {v2, v1, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private blacklist parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .param p7, "shouldSkipComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    move-object/from16 v2, p1

    move-object/from16 v6, p5

    .line 712
    invoke-static {v2, v6}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 713
    .local v9, "packageSplitResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 714
    invoke-interface {v2, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 717
    :cond_13
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/util/Pair;

    .line 718
    .local v10, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 719
    .local v12, "pkgName":Ljava/lang/String;
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 721
    .local v1, "splitName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected base APK, but found split "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x6a

    invoke-interface {v2, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 728
    :cond_44
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v5, p4

    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 730
    .local v15, "manifestArray":Landroid/content/res/TypedArray;
    :try_start_4c
    const-string v0, "coreApp"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v6, v4, v0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    .line 732
    .local v16, "isCoreApp":Z
    move-object/from16 v3, p0

    iget-object v11, v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0
    :try_end_60
    .catchall {:try_start_4c .. :try_end_60} :catchall_85

    .line 734
    .local v0, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    nop

    .line 735
    move/from16 v7, p6

    move/from16 v8, p7

    move-object v11, v1

    move-object v1, v3

    move-object v4, v15

    move-object v3, v0

    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v1    # "splitName":Ljava/lang/String;
    .end local v15    # "manifestArray":Landroid/content/res/TypedArray;
    .local v3, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v4, "manifestArray":Landroid/content/res/TypedArray;
    .local v11, "splitName":Ljava/lang/String;
    :try_start_69
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_82

    .line 737
    .end local v4    # "manifestArray":Landroid/content/res/TypedArray;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v15    # "manifestArray":Landroid/content/res/TypedArray;
    :try_start_6d
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_80

    if-eqz v1, :cond_78

    .line 738
    nop

    .line 743
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 738
    return-object v0

    .line 741
    :cond_78
    :try_start_78
    invoke-interface {v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_80

    .line 743
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 741
    return-object v1

    .line 743
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v16    # "isCoreApp":Z
    :catchall_80
    move-exception v0

    goto :goto_87

    .end local v15    # "manifestArray":Landroid/content/res/TypedArray;
    .restart local v4    # "manifestArray":Landroid/content/res/TypedArray;
    :catchall_82
    move-exception v0

    move-object v15, v4

    .end local v4    # "manifestArray":Landroid/content/res/TypedArray;
    .restart local v15    # "manifestArray":Landroid/content/res/TypedArray;
    goto :goto_87

    .end local v11    # "splitName":Ljava/lang/String;
    .restart local v1    # "splitName":Ljava/lang/String;
    :catchall_85
    move-exception v0

    move-object v11, v1

    .end local v1    # "splitName":Ljava/lang/String;
    .restart local v11    # "splitName":Ljava/lang/String;
    :goto_87
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 744
    throw v0
.end method

.method private blacklist parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p3, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1091
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1b6

    :cond_7
    goto/16 :goto_13e

    :sswitch_9
    const-string v0, "compatible-screens"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x14

    goto/16 :goto_13f

    :sswitch_15
    const-string/jumbo v0, "uses-feature"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_13f

    :sswitch_22
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto/16 :goto_13f

    :sswitch_2f
    const-string v0, "feature-group"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto/16 :goto_13f

    :sswitch_3b
    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto/16 :goto_13f

    :sswitch_48
    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto/16 :goto_13f

    :sswitch_55
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto/16 :goto_13f

    :sswitch_62
    const-string v0, "install-constraints"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x18

    goto/16 :goto_13f

    :sswitch_6e
    const-string/jumbo v0, "queries"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x19

    goto/16 :goto_13f

    :sswitch_7b
    const-string v0, "adopt-permissions"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x12

    goto/16 :goto_13f

    :sswitch_87
    const-string/jumbo v0, "uses-permission"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_13f

    :sswitch_93
    const-string v0, "instrumentation"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    goto/16 :goto_13f

    :sswitch_9f
    const-string v0, "key-sets"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_13f

    :sswitch_aa
    const-string/jumbo v0, "supports-input"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x15

    goto/16 :goto_13f

    :sswitch_b7
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x13

    goto/16 :goto_13f

    :sswitch_c4
    const-string v0, "eat-comment"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    goto/16 :goto_13f

    :sswitch_d0
    const-string/jumbo v0, "permission-group"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_13f

    :sswitch_db
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_13f

    :sswitch_e7
    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_13f

    :sswitch_f1
    const-string/jumbo v0, "permission"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_13f

    :sswitch_fc
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_13f

    :sswitch_106
    const-string/jumbo v0, "restrict-update"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x17

    goto :goto_13f

    :sswitch_112
    const-string v0, "overlay"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_13f

    :sswitch_11c
    const-string v0, "original-package"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x11

    goto :goto_13f

    :sswitch_127
    const-string/jumbo v0, "permission-tree"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_13f

    :sswitch_132
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_13f

    :goto_13e
    const/4 v0, -0x1

    :goto_13f
    packed-switch v0, :pswitch_data_220

    .line 1142
    const-string v0, "<manifest>"

    invoke-static {v0, p3, p5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1140
    :pswitch_149
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1137
    :pswitch_14e
    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 1138
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->getInstallConstraintsAllowlist()Ljava/util/Set;

    move-result-object v0

    .line 1137
    invoke-static {p2, p3, p4, p5, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1135
    :pswitch_159
    invoke-static {p6, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1132
    :pswitch_15e
    invoke-static {p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1133
    invoke-interface {p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1126
    :pswitch_166
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1124
    :pswitch_16b
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1122
    :pswitch_170
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1120
    :pswitch_175
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1118
    :pswitch_17a
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1116
    :pswitch_17f
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1114
    :pswitch_184
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1112
    :pswitch_189
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1110
    :pswitch_18e
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1108
    :pswitch_193
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1104
    :pswitch_198
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1102
    :pswitch_19d
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1100
    :pswitch_1a2
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1098
    :pswitch_1a7
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1095
    :pswitch_1ac
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1093
    :pswitch_1b1
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :sswitch_data_1b6
    .sparse-switch
        -0x69b7c34b -> :sswitch_132
        -0x6366e724 -> :sswitch_127
        -0x420dbfb6 -> :sswitch_11c
        -0x410bbbb0 -> :sswitch_112
        -0x3b806306 -> :sswitch_106
        -0x3a5d850a -> :sswitch_fc
        -0x1eda3a31 -> :sswitch_f1
        -0x12786f81 -> :sswitch_e7
        -0xfe5a947 -> :sswitch_db
        -0xa2d06ff -> :sswitch_d0
        -0x7b47f16 -> :sswitch_c4
        0x71978d4 -> :sswitch_b7
        0x14d5f341 -> :sswitch_aa
        0x1b1d76ff -> :sswitch_9f
        0x20752f6e -> :sswitch_93
        0x23c12e70 -> :sswitch_87
        0x25af09e7 -> :sswitch_7b
        0x270bd766 -> :sswitch_6e
        0x33694d04 -> :sswitch_62
        0x3573e73e -> :sswitch_55
        0x501aeeb1 -> :sswitch_48
        0x55ccf562 -> :sswitch_3b
        0x6446f4e8 -> :sswitch_2f
        0x65ae49fd -> :sswitch_22
        0x6adbbdf5 -> :sswitch_15
        0x6c5ff78e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_220
    .packed-switch 0x0
        :pswitch_1b1
        :pswitch_1ac
        :pswitch_1a7
        :pswitch_1a7
        :pswitch_1a2
        :pswitch_19d
        :pswitch_198
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_18e
        :pswitch_189
        :pswitch_184
        :pswitch_17f
        :pswitch_17a
        :pswitch_175
        :pswitch_170
        :pswitch_16b
        :pswitch_166
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_159
        :pswitch_14e
        :pswitch_149
    .end packed-switch
.end method

.method private blacklist parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 26
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "sa"    # Landroid/content/res/TypedArray;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .param p7, "shouldSkipComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 972
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v4, p5

    invoke-static/range {p1 .. p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 973
    .local v8, "sharedUserResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 974
    return-object v8

    .line 977
    :cond_13
    const-string/jumbo v0, "updatableSystem"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v4, v9, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 979
    .local v11, "updatableSystem":Z
    const-string v0, "emergencyInstaller"

    invoke-interface {v4, v9, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 982
    .local v12, "emergencyInstaller":Ljava/lang/String;
    const/4 v0, -0x1

    const/4 v3, 0x4

    invoke-static {v0, v3, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 984
    const/4 v3, 0x7

    invoke-static {v10, v3, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_3b

    move v3, v10

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    .line 987
    :goto_3c
    invoke-interface {v0, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 988
    invoke-interface {v0, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUpdatableSystem(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 989
    invoke-interface {v0, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 991
    const/4 v0, 0x0

    .line 992
    .local v0, "foundApp":Z
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    move v14, v0

    .line 994
    .end local v0    # "foundApp":Z
    .local v13, "depth":I
    .local v14, "foundApp":Z
    :goto_4d
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v15, v0

    .local v15, "type":I
    if-eq v0, v10, :cond_cb

    const/4 v0, 0x3

    if-ne v15, v0, :cond_62

    .line 996
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v13, :cond_5e

    goto :goto_62

    :cond_5e
    move/from16 v5, p6

    goto/16 :goto_cd

    .line 997
    :cond_62
    :goto_62
    const/4 v0, 0x2

    if-eq v15, v0, :cond_66

    .line 998
    goto :goto_4d

    .line 1000
    :cond_66
    sget-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1001
    goto :goto_4d

    .line 1004
    :cond_6f
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "tagName":Ljava/lang/String;
    const-string v3, "application"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1009
    if-eqz v14, :cond_8b

    .line 1013
    const-string v3, "PackageParsing"

    const-string v5, "<manifest> has more than one <application>"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-interface {v1, v9}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    move/from16 v5, p6

    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_bd

    .line 1017
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_8b
    const/4 v14, 0x1

    .line 1018
    move-object/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    .end local v0    # "tagName":Ljava/lang/String;
    .local v16, "tagName":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    .local v17, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_bd

    .line 1022
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .restart local v0    # "tagName":Ljava/lang/String;
    :cond_a3
    move-object/from16 v16, v0

    .end local v0    # "tagName":Ljava/lang/String;
    .restart local v16    # "tagName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v1, v16

    .end local v16    # "tagName":Ljava/lang/String;
    .local v1, "tagName":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v5, v6

    move-object/from16 v3, v16

    .line 1025
    .end local v1    # "tagName":Ljava/lang/String;
    .restart local v0    # "tagName":Ljava/lang/String;
    .restart local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_bd
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 1026
    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 1028
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_c8
    move-object/from16 v4, p5

    goto :goto_4d

    .line 994
    :cond_cb
    move/from16 v5, p6

    .line 1030
    :goto_cd
    if-nez v14, :cond_ed

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_ed

    .line 1031
    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const-wide/32 v3, 0x8fcab42

    invoke-interface {v1, v0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1034
    .local v0, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 1035
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1039
    .end local v0    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_ed
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private blacklist parseBaseAppBasicFlags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V
    .registers 11
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 2390
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    .line 2393
    .local v0, "targetSdk":I
    nop

    .line 2395
    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-static {v1, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2396
    const/4 v3, 0x5

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2397
    const/16 v3, 0x36

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2398
    const/16 v3, 0x3b

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2399
    const/16 v3, 0x9

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2400
    const/16 v3, 0x22

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2401
    const/4 v3, 0x7

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2403
    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-static {v3, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskReparentingAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2404
    const/16 v5, 0x2f

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSaveStateDisallowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2405
    const/16 v5, 0x3a

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCrossProfile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2406
    const/16 v5, 0xa

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDebuggable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2407
    const/16 v5, 0x26

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2408
    const/16 v5, 0x27

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2409
    const/16 v5, 0x39

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setForceQueryable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2410
    const/16 v5, 0x1f

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGame(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2411
    const/16 v5, 0x32

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2412
    const/16 v5, 0x18

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargeHeap(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2413
    const/16 v5, 0x21

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMultiArch(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2414
    const/16 v5, 0x3d

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2415
    const/16 v5, 0x1b

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiredForAllUsers(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2416
    const/16 v5, 0x1a

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRtlSupported(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2417
    const/16 v5, 0xf

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTestOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2418
    const/16 v5, 0x35

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2419
    const/16 v5, 0x31

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNonSdkApiRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2420
    const/16 v5, 0x14

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVmSafeMode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2421
    const/16 v5, 0x3c

    invoke-static {v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAutoRevokePermissions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2422
    const/16 v5, 0x45

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAttributionsAreUserVisible(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2423
    const/16 v5, 0x46

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_123

    move v6, v1

    goto :goto_124

    :cond_123
    move v6, v3

    .line 2427
    :goto_124
    const/16 v7, 0x37

    invoke-static {v6, v7, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    if-lt v0, v4, :cond_132

    move v4, v1

    goto :goto_133

    :cond_132
    move v4, v3

    .line 2428
    :goto_133
    const/16 v6, 0x17

    invoke-static {v4, v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    if-ge v0, v5, :cond_141

    move v4, v1

    goto :goto_142

    :cond_141
    move v4, v3

    .line 2429
    :goto_142
    const/16 v6, 0x38

    invoke-static {v4, v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_152

    move v6, v1

    goto :goto_153

    :cond_152
    move v6, v3

    .line 2430
    :goto_153
    const/16 v7, 0x24

    invoke-static {v6, v7, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2437
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackDefaultEnableSdk36()Z

    move-result v6

    if-eqz v6, :cond_169

    const/16 v6, 0x23

    if-le v0, v6, :cond_169

    move v6, v1

    goto :goto_16a

    :cond_169
    move v6, v3

    .line 2436
    :goto_16a
    const/16 v7, 0x49

    invoke-static {v6, v7, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOnBackInvokedCallbackEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2441
    const/16 v6, 0x19

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUiOptions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2443
    const/4 v6, -0x1

    const/16 v7, 0x2b

    invoke-static {v6, v7, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2445
    const/16 v6, 0x2c

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2446
    const/16 v6, 0x33

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2448
    const/16 v6, 0x1e

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBannerResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2449
    const/16 v6, 0xd

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDescriptionResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2450
    const/4 v6, 0x2

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2451
    const/16 v6, 0x16

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLogoResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2452
    const/16 v6, 0x29

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2453
    const/16 v6, 0x2a

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRoundIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2454
    invoke-static {v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setThemeResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2456
    const/16 v6, 0x42

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    .line 2455
    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2457
    const/16 v6, 0x47

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLocaleConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2459
    const/16 v6, 0x2e

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2460
    invoke-static {v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2461
    invoke-static {v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2462
    const/16 v4, 0x34

    invoke-static {v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2464
    const/4 v4, 0x6

    invoke-static {v3, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2465
    const/16 v3, 0x4a

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {v2, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowCrossUidActivitySwitchFromBelow(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2469
    return-void
.end method

.method private blacklist parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2479
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_140

    :cond_7
    goto/16 :goto_91

    :sswitch_9
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_92

    :sswitch_16
    const-string/jumbo v0, "profileable"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_92

    :sswitch_23
    const-string v0, "library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_92

    :sswitch_2d
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_92

    :sswitch_38
    const-string/jumbo v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_92

    :sswitch_43
    const-string/jumbo v0, "static-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_92

    :sswitch_4e
    const-string/jumbo v0, "processes"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_92

    :sswitch_5a
    const-string v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_92

    :sswitch_64
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_92

    :sswitch_6f
    const-string/jumbo v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_92

    :sswitch_7a
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_92

    :sswitch_86
    const-string/jumbo v0, "sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_92

    :goto_91
    const/4 v0, -0x1

    :goto_92
    packed-switch v0, :pswitch_data_172

    .line 2521
    move-object v5, p1

    move-object v0, p3

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .local v0, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "input":Landroid/content/pm/parsing/result/ParseInput;
    const-string p1, "<application>"

    invoke-static {p1, v0, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2519
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_9f
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2517
    :pswitch_a4
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2513
    :pswitch_aa
    iget-object v5, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p6    # "flags":I
    .local v1, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v2, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v3, "res":Landroid/content/res/Resources;
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    .local v6, "flags":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    move-object v5, v1

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    .end local v1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v2, "res":Landroid/content/res/Resources;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    return-object p1

    .line 2511
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v6    # "flags":I
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p6    # "flags":I
    :pswitch_ba
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2509
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_c3
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2507
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_cc
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2505
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_d5
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2503
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_de
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v0, v2, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2501
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_e7
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v0, v2, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseStaticLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2499
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_f0
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v0, v2, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSdkLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2492
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_f9
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move v6, p6

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p6    # "flags":I
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v6    # "flags":I
    const/4 v1, 0x0

    const-string v4, "<property>"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 2494
    .local p1, "propertyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_114

    .line 2495
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2497
    :cond_114
    return-object p1

    .line 2485
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v6    # "flags":I
    .local p1, "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p6    # "flags":I
    :pswitch_115
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move v6, p6

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p6    # "flags":I
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v6    # "flags":I
    const/4 v1, 0x0

    const-string v4, "<meta-data>"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 2487
    .local p1, "metaDataResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_13e

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_13e

    .line 2488
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2490
    :cond_13e
    return-object p1

    nop

    :sswitch_data_140
    .sparse-switch
        -0x6b7c15d8 -> :sswitch_86
        -0x5fe67eda -> :sswitch_7a
        -0x5aaa6a59 -> :sswitch_6f
        -0x50de9846 -> :sswitch_64
        -0x4284098e -> :sswitch_5a
        -0x4140b4a3 -> :sswitch_4e
        -0x3efb77a4 -> :sswitch_43
        -0x3b32222b -> :sswitch_38
        0x88b87d -> :sswitch_2d
        0x9e824bb -> :sswitch_23
        0xa9d2283 -> :sswitch_16
        0x751e7745 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_115
        :pswitch_f9
        :pswitch_f0
        :pswitch_e7
        :pswitch_de
        :pswitch_d5
        :pswitch_cc
        :pswitch_c3
        :pswitch_ba
        :pswitch_aa
        :pswitch_a4
        :pswitch_9f
    .end packed-switch
.end method

.method private blacklist parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 32
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "shouldSkipComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1984
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1985
    .local v2, "pkgName":Ljava/lang/String;
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v12

    .line 1987
    .local v12, "targetSdk":I
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v10, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1992
    .local v13, "sa":Landroid/content/res/TypedArray;
    if-nez v13, :cond_2a

    .line 1993
    :try_start_1a
    const-string v0, "<application> does not contain any attributes"

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1993
    return-object v0

    .line 2227
    :catchall_24
    move-exception v0

    move-object/from16 v23, v2

    move-object v3, v8

    goto/16 :goto_573

    .line 1996
    :cond_2a
    const/4 v0, 0x3

    const/4 v14, 0x0

    :try_start_2c
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_56f

    move-object v15, v3

    .line 1998
    .local v15, "name":Ljava/lang/String;
    const-string v3, "Empty class name in package "

    if-eqz v15, :cond_6d

    .line 1999
    :try_start_35
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2000
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2001
    .local v5, "outInfoName":Ljava/lang/String;
    sget-object v6, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 2002
    const-string v0, "<application> invalid android:name"

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_24

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2002
    return-object v0

    .line 2003
    :cond_4f
    if-nez v5, :cond_6a

    .line 2004
    :try_start_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_66
    .catchall {:try_start_51 .. :try_end_66} :catchall_24

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2004
    return-object v0

    .line 2007
    :cond_6a
    :try_start_6a
    invoke-interface {v8, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_24

    .line 2010
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "outInfoName":Ljava/lang/String;
    :cond_6d
    const/4 v4, 0x1

    :try_start_6e
    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_56f

    .line 2011
    .local v5, "labelValue":Landroid/util/TypedValue;
    if-eqz v5, :cond_84

    .line 2012
    :try_start_74
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2013
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-nez v6, :cond_84

    .line 2014
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_84
    .catchall {:try_start_74 .. :try_end_84} :catchall_24

    .line 2018
    :cond_84
    :try_start_84
    invoke-direct {v1, v8, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppBasicFlags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V

    .line 2020
    const/4 v6, 0x4

    const/16 v7, 0x400

    invoke-static {v7, v6, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v16
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_56f

    move-object/from16 v17, v16

    .line 2022
    .local v17, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v17, :cond_bb

    .line 2023
    move-object/from16 v0, v17

    .end local v17    # "manageSpaceActivity":Ljava/lang/String;
    .local v0, "manageSpaceActivity":Ljava/lang/String;
    :try_start_94
    invoke-static {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 2026
    .local v18, "manageSpaceActivityName":Ljava/lang/String;
    if-nez v18, :cond_b5

    .line 2027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_b1
    .catchall {:try_start_94 .. :try_end_b1} :catchall_24

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2027
    return-object v3

    .line 2030
    :cond_b5
    move-object/from16 v6, v18

    .end local v18    # "manageSpaceActivityName":Ljava/lang/String;
    .local v6, "manageSpaceActivityName":Ljava/lang/String;
    :try_start_b7
    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_24

    goto :goto_bd

    .line 2022
    .end local v0    # "manageSpaceActivity":Ljava/lang/String;
    .end local v6    # "manageSpaceActivityName":Ljava/lang/String;
    .restart local v17    # "manageSpaceActivity":Ljava/lang/String;
    :cond_bb
    move-object/from16 v0, v17

    .line 2033
    .end local v17    # "manageSpaceActivity":Ljava/lang/String;
    .restart local v0    # "manageSpaceActivity":Ljava/lang/String;
    :goto_bd
    :try_start_bd
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->changeLauncherBadging()Z

    move-result v6
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_56f

    if-eqz v6, :cond_101

    .line 2034
    const/16 v6, 0x4e

    const/16 v14, 0x1f4

    :try_start_c7
    invoke-static {v9, v13, v10, v6, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->drawableResIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 2037
    .local v6, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[I>;"
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v19

    if-eqz v19, :cond_d9

    .line 2038
    invoke-interface {v9, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_d5
    .catchall {:try_start_c7 .. :try_end_d5} :catchall_24

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2038
    return-object v3

    .line 2040
    :cond_d9
    :try_start_d9
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v4, v19

    check-cast v4, [I

    invoke-interface {v8, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAlternateLauncherIconResIds([I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2042
    const/16 v4, 0x4f

    invoke-static {v9, v13, v10, v4, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->stringResIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 2045
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[I>;"
    .local v4, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[I>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 2046
    invoke-interface {v9, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_f4
    .catchall {:try_start_d9 .. :try_end_f4} :catchall_24

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2046
    return-object v3

    .line 2048
    :cond_f8
    :try_start_f8
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAlternateLauncherLabelResIds([I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_101
    .catchall {:try_start_f8 .. :try_end_101} :catchall_24

    .line 2051
    .end local v4    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[I>;"
    :cond_101
    :try_start_101
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isBackupAllowed()Z

    move-result v4
    :try_end_105
    .catchall {:try_start_101 .. :try_end_105} :catchall_56f

    if-eqz v4, :cond_17b

    .line 2055
    const/16 v4, 0x10

    :try_start_109
    invoke-static {v7, v4, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    .line 2057
    .local v4, "backupAgent":Ljava/lang/String;
    if-eqz v4, :cond_15e

    .line 2058
    invoke-static {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 2059
    .local v6, "backupAgentName":Ljava/lang/String;
    if-nez v6, :cond_12e

    .line 2060
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_12a
    .catchall {:try_start_109 .. :try_end_12a} :catchall_24

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2060
    return-object v3

    .line 2068
    :cond_12e
    :try_start_12e
    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v14

    .line 2069
    const/16 v7, 0x12

    move-object/from16 v22, v0

    const/4 v0, 0x1

    .end local v0    # "manageSpaceActivity":Ljava/lang/String;
    .local v22, "manageSpaceActivity":Ljava/lang/String;
    invoke-static {v0, v7, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v7

    invoke-interface {v14, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2071
    const/16 v7, 0x15

    const/4 v14, 0x0

    invoke-static {v14, v7, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v7

    invoke-interface {v0, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestoreAnyVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2073
    const/16 v7, 0x20

    invoke-static {v14, v7, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v7

    invoke-interface {v0, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setFullBackupOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2075
    const/16 v7, 0x28

    invoke-static {v14, v7, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v7

    invoke-interface {v0, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupInForeground(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_160

    .line 2057
    .end local v6    # "backupAgentName":Ljava/lang/String;
    .end local v22    # "manageSpaceActivity":Ljava/lang/String;
    .restart local v0    # "manageSpaceActivity":Ljava/lang/String;
    :cond_15e
    move-object/from16 v22, v0

    .line 2079
    .end local v0    # "manageSpaceActivity":Ljava/lang/String;
    .restart local v22    # "manageSpaceActivity":Ljava/lang/String;
    :goto_160
    const/16 v0, 0x23

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 2081
    .local v0, "v":Landroid/util/TypedValue;
    const/4 v6, 0x0

    .line 2083
    .local v6, "fullBackupContent":I
    if-eqz v0, :cond_17d

    .line 2084
    iget v7, v0, Landroid/util/TypedValue;->resourceId:I

    .line 2086
    .end local v6    # "fullBackupContent":I
    .local v7, "fullBackupContent":I
    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v6, :cond_177

    .line 2092
    iget v6, v0, Landroid/util/TypedValue;->data:I

    if-nez v6, :cond_175

    const/4 v6, -0x1

    goto :goto_176

    :cond_175
    const/4 v6, 0x0

    :goto_176
    move v7, v6

    .line 2095
    :cond_177
    invoke-interface {v8, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setFullBackupContentResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_17a
    .catchall {:try_start_12e .. :try_end_17a} :catchall_24

    goto :goto_17d

    .line 2051
    .end local v4    # "backupAgent":Ljava/lang/String;
    .end local v7    # "fullBackupContent":I
    .end local v22    # "manageSpaceActivity":Ljava/lang/String;
    .local v0, "manageSpaceActivity":Ljava/lang/String;
    :cond_17b
    move-object/from16 v22, v0

    .line 2102
    .end local v0    # "manageSpaceActivity":Ljava/lang/String;
    .restart local v22    # "manageSpaceActivity":Ljava/lang/String;
    :cond_17d
    :goto_17d
    const/16 v0, 0x8

    const/4 v14, 0x0

    :try_start_180
    invoke-virtual {v13, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4
    :try_end_184
    .catchall {:try_start_180 .. :try_end_184} :catchall_56f

    if-eqz v4, :cond_19d

    .line 2104
    const/16 v4, 0x2d

    :try_start_188
    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    .line 2106
    .local v4, "requiredFeature":Ljava/lang/String;
    if-eqz v4, :cond_199

    iget-object v6, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v6, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_197

    goto :goto_199

    :cond_197
    const/4 v6, 0x0

    goto :goto_19a

    :cond_199
    :goto_199
    const/4 v6, 0x1

    :goto_19a
    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPersistent(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_19d
    .catchall {:try_start_188 .. :try_end_19d} :catchall_24

    .line 2109
    .end local v4    # "requiredFeature":Ljava/lang/String;
    :cond_19d
    const/16 v4, 0x25

    :try_start_19f
    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v6
    :try_end_1a3
    .catchall {:try_start_19f .. :try_end_1a3} :catchall_56f

    if-eqz v6, :cond_1b2

    .line 2110
    const/4 v6, 0x1

    :try_start_1a6
    invoke-virtual {v13, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v8, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_1b1
    .catchall {:try_start_1a6 .. :try_end_1b1} :catchall_24

    goto :goto_1bd

    .line 2113
    :cond_1b2
    const/4 v6, 0x1

    const/16 v4, 0x18

    if-lt v12, v4, :cond_1b9

    move v4, v6

    goto :goto_1ba

    :cond_1b9
    const/4 v4, 0x0

    :goto_1ba
    :try_start_1ba
    invoke-interface {v8, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_1bd
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_56f

    .line 2118
    :goto_1bd
    const/16 v4, 0xc

    if-lt v12, v0, :cond_1c9

    .line 2119
    const/16 v7, 0x400

    :try_start_1c3
    invoke-virtual {v13, v4, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4
    :try_end_1c7
    .catchall {:try_start_1c3 .. :try_end_1c7} :catchall_24

    move-object v14, v4

    .local v4, "taskAffinity":Ljava/lang/String;
    goto :goto_1ce

    .line 2126
    .end local v4    # "taskAffinity":Ljava/lang/String;
    :cond_1c9
    :try_start_1c9
    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    .line 2130
    .local v14, "taskAffinity":Ljava/lang/String;
    :goto_1ce
    invoke-static {v2, v2, v14, v9}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 2132
    .local v4, "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7
    :try_end_1d6
    .catchall {:try_start_1c9 .. :try_end_1d6} :catchall_56f

    if-eqz v7, :cond_1e0

    .line 2133
    :try_start_1d8
    invoke-interface {v9, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1dc
    .catchall {:try_start_1d8 .. :try_end_1dc} :catchall_24

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2133
    return-object v0

    .line 2136
    :cond_1e0
    :try_start_1e0
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2137
    const/16 v7, 0x30

    invoke-virtual {v13, v7}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1ef
    .catchall {:try_start_1e0 .. :try_end_1ef} :catchall_56f

    .line 2139
    .local v7, "factory":Ljava/lang/String;
    if-eqz v7, :cond_217

    .line 2140
    :try_start_1f1
    invoke-static {v2, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v23, v20

    .line 2141
    .local v23, "appComponentFactory":Ljava/lang/String;
    if-nez v23, :cond_212

    .line 2142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_20e
    .catchall {:try_start_1f1 .. :try_end_20e} :catchall_24

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2142
    return-object v0

    .line 2145
    :cond_212
    move-object/from16 v3, v23

    .end local v23    # "appComponentFactory":Ljava/lang/String;
    .local v3, "appComponentFactory":Ljava/lang/String;
    :try_start_214
    invoke-interface {v8, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2149
    .end local v3    # "appComponentFactory":Ljava/lang/String;
    :cond_217
    const/16 v3, 0xb

    if-lt v12, v0, :cond_222

    .line 2150
    const/16 v0, 0x400

    invoke-virtual {v13, v3, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_221
    .catchall {:try_start_214 .. :try_end_221} :catchall_24

    .local v0, "pname":Ljava/lang/CharSequence;
    goto :goto_226

    .line 2157
    .end local v0    # "pname":Ljava/lang/CharSequence;
    :cond_222
    :try_start_222
    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 2160
    .restart local v0    # "pname":Ljava/lang/CharSequence;
    :goto_226
    move/from16 v20, v6

    iget-object v6, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;
    :try_end_22a
    .catchall {:try_start_222 .. :try_end_22a} :catchall_56f

    const/4 v3, 0x0

    move-object/from16 v17, v4

    const/16 v21, 0x4

    move-object v4, v0

    move/from16 v0, v20

    move-object/from16 v20, v7

    move-object v7, v9

    move-object v9, v5

    move/from16 v5, p5

    .end local v0    # "pname":Ljava/lang/CharSequence;
    .end local v5    # "labelValue":Landroid/util/TypedValue;
    .end local v7    # "factory":Ljava/lang/String;
    .local v4, "pname":Ljava/lang/CharSequence;
    .local v9, "labelValue":Landroid/util/TypedValue;
    .local v17, "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .local v20, "factory":Ljava/lang/String;
    :try_start_238
    invoke-static/range {v2 .. v7}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 2162
    .local v3, "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5
    :try_end_240
    .catchall {:try_start_238 .. :try_end_240} :catchall_56a

    if-eqz v5, :cond_251

    .line 2163
    :try_start_242
    invoke-interface {v7, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_246
    .catchall {:try_start_242 .. :try_end_246} :catchall_24a

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2163
    return-object v0

    .line 2227
    .end local v3    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v4    # "pname":Ljava/lang/CharSequence;
    .end local v9    # "labelValue":Landroid/util/TypedValue;
    .end local v14    # "taskAffinity":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v20    # "factory":Ljava/lang/String;
    .end local v22    # "manageSpaceActivity":Ljava/lang/String;
    :catchall_24a
    move-exception v0

    move-object/from16 v23, v2

    move-object v9, v7

    move-object v3, v8

    goto/16 :goto_573

    .line 2166
    .restart local v3    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .restart local v4    # "pname":Ljava/lang/CharSequence;
    .restart local v9    # "labelValue":Landroid/util/TypedValue;
    .restart local v14    # "taskAffinity":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .restart local v20    # "factory":Ljava/lang/String;
    .restart local v22    # "manageSpaceActivity":Ljava/lang/String;
    :cond_251
    :try_start_251
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2167
    .local v5, "processName":Ljava/lang/String;
    invoke-interface {v8, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2169
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v6
    :try_end_25e
    .catchall {:try_start_251 .. :try_end_25e} :catchall_56a

    if-eqz v6, :cond_272

    .line 2172
    if-eqz v5, :cond_272

    :try_start_262
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_272

    .line 2173
    const-string v0, "cantSaveState applications can not use custom processes"

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_26e
    .catchall {:try_start_262 .. :try_end_26e} :catchall_24a

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2173
    return-object v0

    .line 2178
    :cond_272
    :try_start_272
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v6

    .line 2179
    .local v6, "classLoaderName":Ljava/lang/String;
    if-eqz v6, :cond_29e

    .line 2180
    invoke-static {v6}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_29b

    .line 2181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_283
    .catchall {:try_start_272 .. :try_end_283} :catchall_56a

    move-object/from16 v23, v2

    .end local v2    # "pkgName":Ljava/lang/String;
    .local v23, "pkgName":Ljava/lang/String;
    :try_start_285
    const-string v2, "Invalid class loader name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_297
    .catchall {:try_start_285 .. :try_end_297} :catchall_566

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2181
    return-object v0

    .line 2180
    .end local v23    # "pkgName":Ljava/lang/String;
    .restart local v2    # "pkgName":Ljava/lang/String;
    :cond_29b
    move-object/from16 v23, v2

    .end local v2    # "pkgName":Ljava/lang/String;
    .restart local v23    # "pkgName":Ljava/lang/String;
    goto :goto_2a0

    .line 2179
    .end local v23    # "pkgName":Ljava/lang/String;
    .restart local v2    # "pkgName":Ljava/lang/String;
    :cond_29e
    move-object/from16 v23, v2

    .line 2184
    .end local v2    # "pkgName":Ljava/lang/String;
    .restart local v23    # "pkgName":Ljava/lang/String;
    :goto_2a0
    const/16 v2, 0x3e

    move-object/from16 v24, v6

    const/4 v6, -0x1

    .end local v6    # "classLoaderName":Ljava/lang/String;
    .local v24, "classLoaderName":Ljava/lang/String;
    :try_start_2a5
    invoke-virtual {v13, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2185
    const/16 v2, 0x40

    invoke-virtual {v13, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2187
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->appCompatOption16kb()Z

    move-result v2

    if-eqz v2, :cond_2c6

    .line 2188
    nop

    .line 2189
    const/16 v2, 0x4c

    const/4 v6, 0x0

    invoke-virtual {v13, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 2188
    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2193
    :cond_2c6
    const/16 v2, 0x41

    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2dc

    .line 2194
    const/4 v6, 0x0

    invoke-virtual {v13, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 2196
    .local v2, "v":Z
    nop

    .line 2197
    if-eqz v2, :cond_2d8

    move v6, v0

    goto :goto_2d9

    :cond_2d8
    const/4 v6, 0x0

    .line 2196
    :goto_2d9
    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2199
    .end local v2    # "v":Z
    :cond_2dc
    const/16 v2, 0x43

    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2f0

    .line 2201
    const/4 v6, 0x0

    invoke-virtual {v13, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2205
    :cond_2f0
    const/16 v2, 0x44

    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_300

    .line 2207
    const/4 v6, 0x0

    invoke-virtual {v13, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2211
    :cond_300
    nop

    .line 2212
    const/16 v2, 0x48

    invoke-static {v13, v10, v2, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 2215
    .local v2, "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_315

    .line 2216
    invoke-interface {v7, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_311
    .catchall {:try_start_2a5 .. :try_end_311} :catchall_566

    .line 2227
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2216
    return-object v0

    .line 2218
    :cond_315
    nop

    .line 2219
    :try_start_316
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 2220
    .local v6, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_321

    .line 2221
    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2224
    .end local v6    # "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_321
    nop

    .line 2225
    const/16 v6, 0x4b

    const/4 v0, 0x0

    invoke-virtual {v13, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 2224
    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIntentMatchingFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_32c
    .catchall {:try_start_316 .. :try_end_32c} :catchall_566

    .line 2227
    nop

    .end local v2    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v4    # "pname":Ljava/lang/CharSequence;
    .end local v5    # "processName":Ljava/lang/String;
    .end local v9    # "labelValue":Landroid/util/TypedValue;
    .end local v14    # "taskAffinity":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v20    # "factory":Ljava/lang/String;
    .end local v22    # "manageSpaceActivity":Ljava/lang/String;
    .end local v24    # "classLoaderName":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2228
    nop

    .line 2230
    const/4 v2, 0x0

    .line 2231
    .local v2, "hasActivityOrder":Z
    const/4 v3, 0x0

    .line 2232
    .local v3, "hasReceiverOrder":Z
    const/4 v4, 0x0

    .line 2233
    .local v4, "hasServiceOrder":Z
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    move v15, v2

    move/from16 v17, v3

    move/from16 v18, v4

    .line 2235
    .end local v2    # "hasActivityOrder":Z
    .end local v3    # "hasReceiverOrder":Z
    .end local v4    # "hasServiceOrder":Z
    .local v14, "depth":I
    .local v15, "hasActivityOrder":Z
    .local v17, "hasReceiverOrder":Z
    .local v18, "hasServiceOrder":Z
    :goto_33d
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v9, v2

    const/4 v3, 0x1

    .local v9, "type":I
    if-eq v2, v3, :cond_51f

    const/4 v2, 0x3

    if-ne v9, v2, :cond_355

    .line 2237
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v14, :cond_34f

    goto :goto_355

    :cond_34f
    move-object v3, v8

    move/from16 v22, v9

    move-object v9, v7

    goto/16 :goto_523

    .line 2238
    :cond_355
    :goto_355
    const/4 v4, 0x2

    if-eq v9, v4, :cond_360

    .line 2239
    move v11, v2

    move/from16 v20, v3

    move-object v3, v8

    const/16 v19, -0x1

    goto/16 :goto_4c3

    .line 2241
    :cond_360
    sget-object v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v5, v8, v11}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_370

    .line 2242
    move v11, v2

    move/from16 v20, v3

    move-object v3, v8

    const/16 v19, -0x1

    goto/16 :goto_4c3

    .line 2246
    :cond_370
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2247
    .local v5, "tagName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2248
    .local v16, "isActivity":Z
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_578

    :cond_37d
    goto :goto_3bd

    :sswitch_37e
    const-string/jumbo v6, "service"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37d

    goto :goto_3be

    :sswitch_388
    const-string v4, "activity-alias"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37d

    move/from16 v4, v21

    goto :goto_3be

    :sswitch_393
    const-string/jumbo v4, "receiver"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37d

    move v4, v3

    goto :goto_3be

    :sswitch_39e
    const-string/jumbo v4, "provider"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37d

    move v4, v2

    goto :goto_3be

    :sswitch_3a9
    const-string v4, "apex-system-service"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37d

    const/4 v4, 0x5

    goto :goto_3be

    :sswitch_3b3
    const-string v4, "activity"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37d

    move v4, v0

    goto :goto_3be

    :goto_3bd
    const/4 v4, -0x1

    :goto_3be
    packed-switch v4, :pswitch_data_592

    .line 2332
    move v11, v2

    move/from16 v20, v3

    move-object v10, v5

    move-object v3, v8

    move/from16 v22, v9

    const/16 v19, -0x1

    .end local v5    # "tagName":Ljava/lang/String;
    .end local v9    # "type":I
    .local v10, "tagName":Ljava/lang/String;
    .local v22, "type":I
    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object v4, v3

    move-object v3, v10

    .end local v10    # "tagName":Ljava/lang/String;
    .local v3, "tagName":Ljava/lang/String;
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    move-object v9, v2

    move-object v3, v4

    move-object v6, v8

    .end local v3    # "tagName":Ljava/lang/String;
    .local v8, "result":Landroid/content/pm/parsing/result/ParseResult;
    .restart local v10    # "tagName":Ljava/lang/String;
    goto/16 :goto_50c

    .line 2320
    .end local v8    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v22    # "type":I
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v9    # "type":I
    :pswitch_3dd
    nop

    .line 2321
    invoke-static {v10, v11, v7}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceUtils;->parseApexSystemService(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 2323
    .local v4, "systemServiceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_3f2

    .line 2324
    nop

    .line 2325
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;

    .line 2326
    .local v6, "systemService":Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;
    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2329
    .end local v6    # "systemService":Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;
    :cond_3f2
    move-object v6, v4

    .line 2330
    .local v6, "result":Landroid/content/pm/parsing/result/ParseResult;
    move v11, v2

    move/from16 v20, v3

    move-object v10, v5

    move-object v3, v8

    move/from16 v22, v9

    const/16 v19, -0x1

    move-object v9, v7

    goto/16 :goto_50c

    .line 2305
    .end local v4    # "systemServiceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;>;"
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_3ff
    if-eqz p6, :cond_409

    .line 2306
    move v11, v2

    move/from16 v20, v3

    move-object v3, v8

    const/16 v19, -0x1

    goto/16 :goto_4c3

    .line 2308
    :cond_409
    move-object v4, v5

    .end local v5    # "tagName":Ljava/lang/String;
    .local v4, "tagName":Ljava/lang/String;
    sget-boolean v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v6, 0x0

    move/from16 v20, v3

    move-object v3, v10

    const/16 v19, -0x1

    move-object v10, v4

    move-object v4, v11

    move v11, v2

    move-object v2, v8

    .end local v4    # "tagName":Ljava/lang/String;
    .restart local v10    # "tagName":Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 2311
    move-object v3, v2

    .local v5, "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_435

    .line 2312
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2313
    .local v2, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v4

    if-eqz v4, :cond_430

    move/from16 v4, v20

    goto :goto_431

    :cond_430
    move v4, v0

    :goto_431
    or-int/2addr v15, v4

    .line 2314
    invoke-interface {v3, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2317
    .end local v2    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_435
    move-object v6, v5

    .line 2318
    .restart local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move/from16 v22, v9

    move-object/from16 v9, p1

    goto/16 :goto_50c

    .line 2291
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v10    # "tagName":Ljava/lang/String;
    .local v5, "tagName":Ljava/lang/String;
    :pswitch_43c
    move v11, v2

    move/from16 v20, v3

    move-object v10, v5

    move-object v3, v8

    const/16 v19, -0x1

    .end local v5    # "tagName":Ljava/lang/String;
    .restart local v10    # "tagName":Ljava/lang/String;
    if-eqz p6, :cond_447

    .line 2292
    goto/16 :goto_4c3

    .line 2294
    :cond_447
    iget-object v2, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 2295
    const/4 v8, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v22, v9

    move-object/from16 v9, p1

    .end local v9    # "type":I
    .restart local v22    # "type":I
    invoke-static/range {v2 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 2298
    .local v2, "providerResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProvider;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_469

    .line 2299
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2302
    :cond_469
    move-object v6, v2

    .line 2303
    .restart local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v9, p1

    goto/16 :goto_50c

    .line 2275
    .end local v2    # "providerResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProvider;>;"
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v22    # "type":I
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v9    # "type":I
    :pswitch_46e
    move v11, v2

    move/from16 v20, v3

    move-object v10, v5

    move-object v3, v8

    move/from16 v22, v9

    const/16 v19, -0x1

    .end local v5    # "tagName":Ljava/lang/String;
    .end local v9    # "type":I
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v22    # "type":I
    if-eqz p6, :cond_47a

    .line 2276
    goto :goto_4c3

    .line 2278
    :cond_47a
    iget-object v2, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 2279
    const/4 v8, 0x0

    move-object/from16 v9, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v2 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 2282
    .local v2, "serviceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedService;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_4a6

    .line 2283
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 2284
    .local v4, "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedService;->getOrder()I

    move-result v5

    if-eqz v5, :cond_4a0

    move/from16 v5, v20

    goto :goto_4a1

    :cond_4a0
    move v5, v0

    :goto_4a1
    or-int v18, v18, v5

    .line 2285
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2288
    .end local v4    # "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    :cond_4a6
    move-object v6, v2

    .line 2289
    .restart local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v9, p1

    goto/16 :goto_50c

    .line 2248
    .end local v2    # "serviceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedService;>;"
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v22    # "type":I
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v9    # "type":I
    :pswitch_4ab
    move v11, v2

    move/from16 v20, v3

    move-object v10, v5

    move-object v3, v8

    move/from16 v22, v9

    const/16 v19, -0x1

    .end local v5    # "tagName":Ljava/lang/String;
    .end local v9    # "type":I
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v22    # "type":I
    goto :goto_4c0

    .line 2250
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v22    # "type":I
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v9    # "type":I
    :pswitch_4b5
    move v11, v2

    move/from16 v20, v3

    move-object v10, v5

    move-object v3, v8

    move/from16 v22, v9

    const/16 v19, -0x1

    .end local v5    # "tagName":Ljava/lang/String;
    .end local v9    # "type":I
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v22    # "type":I
    const/16 v16, 0x1

    .line 2253
    :goto_4c0
    if-eqz p6, :cond_4cc

    .line 2254
    nop

    .line 2235
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v16    # "isActivity":Z
    .end local v22    # "type":I
    :goto_4c3
    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v8, v3

    goto/16 :goto_33d

    .line 2256
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v16    # "isActivity":Z
    .restart local v22    # "type":I
    :cond_4cc
    iget-object v2, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 2257
    const/4 v8, 0x0

    move-object/from16 v9, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v2 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 2261
    .local v2, "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_509

    .line 2262
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2263
    .local v4, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    if-eqz v16, :cond_4fa

    .line 2264
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v5

    if-eqz v5, :cond_4f4

    move/from16 v5, v20

    goto :goto_4f5

    :cond_4f4
    move v5, v0

    :goto_4f5
    or-int/2addr v15, v5

    .line 2265
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_509

    .line 2267
    :cond_4fa
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v5

    if-eqz v5, :cond_503

    move/from16 v5, v20

    goto :goto_504

    :cond_503
    move v5, v0

    :goto_504
    or-int v17, v17, v5

    .line 2268
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2272
    .end local v4    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_509
    :goto_509
    move-object v6, v2

    .line 2273
    .restart local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v9, p1

    .line 2336
    .end local v2    # "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    :goto_50c
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_517

    .line 2337
    invoke-interface {v9, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2339
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v16    # "isActivity":Z
    :cond_517
    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v8, v3

    move-object v7, v9

    goto/16 :goto_33d

    .line 2235
    .end local v22    # "type":I
    .restart local v9    # "type":I
    :cond_51f
    move-object v3, v8

    move/from16 v22, v9

    move-object v9, v7

    .line 2341
    .end local v9    # "type":I
    .restart local v22    # "type":I
    :goto_523
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54f

    .line 2342
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    .line 2341
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54f

    .line 2345
    invoke-static/range {p1 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2346
    .local v0, "a":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_546

    .line 2351
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 2354
    :cond_546
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v3, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2357
    .end local v0    # "a":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    :cond_54f
    if-eqz v15, :cond_554

    .line 2358
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortActivities()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2360
    :cond_554
    if-eqz v17, :cond_559

    .line 2361
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortReceivers()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2363
    :cond_559
    if-eqz v18, :cond_55e

    .line 2364
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortServices()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2367
    :cond_55e
    invoke-direct {v1, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2369
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2227
    .end local v14    # "depth":I
    .end local v15    # "hasActivityOrder":Z
    .end local v17    # "hasReceiverOrder":Z
    .end local v18    # "hasServiceOrder":Z
    .end local v22    # "type":I
    :catchall_566
    move-exception v0

    move-object v9, v7

    move-object v3, v8

    goto :goto_573

    .end local v23    # "pkgName":Ljava/lang/String;
    .local v2, "pkgName":Ljava/lang/String;
    :catchall_56a
    move-exception v0

    move-object/from16 v23, v2

    move-object v9, v7

    goto :goto_572

    :catchall_56f
    move-exception v0

    move-object/from16 v23, v2

    :goto_572
    move-object v3, v8

    .end local v2    # "pkgName":Ljava/lang/String;
    .restart local v23    # "pkgName":Ljava/lang/String;
    :goto_573
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2228
    throw v0

    nop

    :sswitch_data_578
    .sparse-switch
        -0x62b40cf1 -> :sswitch_3b3
        -0x5db446de -> :sswitch_3a9
        -0x3adbfa0f -> :sswitch_39e
        -0x30341611 -> :sswitch_393
        0x2f1ad612 -> :sswitch_388
        0x7643c6b5 -> :sswitch_37e
    .end sparse-switch

    :pswitch_data_592
    .packed-switch 0x0
        :pswitch_4b5
        :pswitch_4ab
        :pswitch_46e
        :pswitch_43c
        :pswitch_3ff
        :pswitch_3dd
    .end packed-switch
.end method

.method private blacklist parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "packageDir"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 349
    move-object/from16 v2, p1

    move/from16 v6, p3

    const/4 v0, 0x0

    .line 350
    .local v0, "liteParseFlags":I
    and-int/lit16 v1, v6, 0x200

    if-eqz v1, :cond_b

    .line 351
    or-int/lit16 v0, v0, 0x200

    .line 353
    :cond_b
    and-int/lit16 v1, v6, 0x400

    if-eqz v1, :cond_13

    .line 354
    or-int/lit16 v0, v0, 0x400

    move v8, v0

    goto :goto_14

    .line 353
    :cond_13
    move v8, v0

    .line 356
    .end local v0    # "liteParseFlags":I
    .local v8, "liteParseFlags":I
    :goto_14
    nop

    .line 357
    move-object/from16 v9, p2

    invoke-static {v2, v9, v8}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    .line 358
    .local v10, "liteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 359
    invoke-interface {v2, v10}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 362
    :cond_26
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/pm/parsing/PackageLite;

    .line 364
    .local v11, "lite":Landroid/content/pm/parsing/PackageLite;
    const/4 v1, 0x0

    .line 366
    .local v1, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->isIsolatedSplits()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 368
    :try_start_3e
    invoke-static {v11}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/parsing/PackageLite;)Landroid/util/SparseArray;

    move-result-object v0

    move-object v1, v0

    .line 369
    new-instance v0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v0, v11, v1, v6}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/parsing/PackageLite;Landroid/util/SparseArray;I)V
    :try_end_48
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_3e .. :try_end_48} :catch_4b

    .line 372
    .local v0, "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    move-object v5, v0

    move-object v12, v1

    goto :goto_5e

    .line 370
    .end local v0    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :catch_4b
    move-exception v0

    .line 371
    .local v0, "e":Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    const/16 v3, -0x65

    invoke-virtual {v0}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 374
    .end local v0    # "e":Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    :cond_57
    new-instance v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v0, v11, v6}, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    move-object v5, v0

    move-object v12, v1

    .line 378
    .end local v1    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v5, "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .local v12, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :goto_5e
    :try_start_5e
    new-instance v3, Ljava/io/File;

    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v3, "baseApk":Ljava/io/File;
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v0
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_6b} :catch_fa
    .catchall {:try_start_5e .. :try_end_6b} :catchall_f7

    if-eqz v0, :cond_7d

    :try_start_6d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->disallowSdkLibsToBeApps()Z

    move-result v0
    :try_end_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_71} :catch_79
    .catchall {:try_start_6d .. :try_end_71} :catchall_75

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    goto :goto_7e

    .line 412
    .end local v3    # "baseApk":Ljava/io/File;
    :catchall_75
    move-exception v0

    move-object v14, v5

    goto/16 :goto_115

    .line 408
    :catch_79
    move-exception v0

    move-object v14, v5

    goto/16 :goto_fc

    .line 379
    .restart local v3    # "baseApk":Ljava/io/File;
    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    move v7, v0

    .line 380
    .local v7, "shouldSkipComponents":Z
    nop

    .line 381
    :try_start_80
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 380
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_8a} :catch_fa
    .catchall {:try_start_80 .. :try_end_8a} :catchall_f7

    move-object v14, v5

    move v13, v7

    move-object v7, v3

    .line 382
    .end local v3    # "baseApk":Ljava/io/File;
    .end local v5    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .local v7, "baseApk":Ljava/io/File;
    .local v13, "shouldSkipComponents":Z
    .local v14, "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :try_start_8d
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 383
    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_97} :catch_f5
    .catchall {:try_start_8d .. :try_end_97} :catchall_114

    .line 412
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 383
    return-object v1

    .line 386
    :cond_9b
    :try_start_9b
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 387
    .local v3, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e6

    .line 388
    nop

    .line 389
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v4

    .line 391
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object v5

    .line 388
    invoke-interface {v3, v1, v4, v5, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 394
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    move v15, v1

    .line 396
    .local v15, "num":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "i":I
    :goto_c4
    if-ge v4, v15, :cond_e6

    .line 397
    invoke-interface {v14, v4}, Lcom/android/internal/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v5

    .line 398
    .local v5, "splitAssets":Landroid/content/res/AssetManager;
    nop

    .line 399
    move-object/from16 v1, p0

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16

    move-object/from16 v1, v16

    .line 400
    .local v1, "split":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 401
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_df
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_df} :catch_f5
    .catchall {:try_start_9b .. :try_end_df} :catchall_114

    .line 412
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 401
    return-object v6

    .line 396
    .end local v1    # "split":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v5    # "splitAssets":Landroid/content/res/AssetManager;
    :cond_e3
    add-int/lit8 v4, v4, 0x1

    goto :goto_c4

    .line 406
    .end local v4    # "i":I
    .end local v15    # "num":I
    :cond_e6
    :try_start_e6
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result v1

    invoke-interface {v3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 407
    invoke-interface {v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_f1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e6 .. :try_end_f1} :catch_f5
    .catchall {:try_start_e6 .. :try_end_f1} :catchall_114

    .line 412
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 407
    return-object v1

    .line 408
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v7    # "baseApk":Ljava/io/File;
    .end local v13    # "shouldSkipComponents":Z
    :catch_f5
    move-exception v0

    goto :goto_fc

    .line 412
    .end local v14    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .local v5, "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :catchall_f7
    move-exception v0

    move-object v14, v5

    .end local v5    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .restart local v14    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    goto :goto_115

    .line 408
    .end local v14    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .restart local v5    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :catch_fa
    move-exception v0

    move-object v14, v5

    .line 409
    .end local v5    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v14    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :goto_fc
    :try_start_fc
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_106

    const/4 v1, -0x2

    goto :goto_108

    .line 410
    :cond_106
    const/16 v1, -0x64

    :goto_108
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-interface {v2, v1, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_110
    .catchall {:try_start_fc .. :try_end_110} :catchall_114

    .line 412
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 409
    return-object v1

    .line 412
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_114
    move-exception v0

    :goto_115
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 413
    throw v0
.end method

.method public static blacklist parseDefault(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "parseFlags"    # I
    .param p4, "collectCertificates"    # Z
    .param p5, "callback"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;Z",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/parsing/pkg/ParsedPackage;",
            ">;"
        }
    .end annotation

    .line 278
    .local p3, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    new-instance v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p3, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    .line 280
    .local v0, "parser":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 281
    .local v1, "parseResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 282
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 285
    :cond_15
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v2

    .line 287
    .local v2, "pkg":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    if-eqz p4, :cond_3b

    .line 288
    nop

    .line 289
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 290
    .local v3, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 291
    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 293
    :cond_32
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SigningDetails;

    invoke-interface {v2, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 296
    .end local v3    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_3b
    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "minExtensionVersions"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 1784
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestExtensionSdk:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1786
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_8
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1787
    .local v1, "sdkVersion":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_85

    .line 1789
    .local v2, "minVersion":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1790
    nop

    .line 1792
    const/16 v3, -0x6c

    if-gez v1, :cond_20

    .line 1793
    const-string v4, "<extension-sdk> must specify an sdkVersion >= 0"

    invoke-interface {p0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1797
    :cond_20
    if-gez v2, :cond_29

    .line 1798
    const-string v4, "<extension-sdk> must specify minExtensionVersion >= 0"

    invoke-interface {p0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1804
    :cond_29
    :try_start_29
    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v4

    .line 1805
    .local v4, "version":I
    if-ge v4, v2, :cond_5d

    .line 1806
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " extension version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " which exceeds device version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0xc

    invoke-interface {p0, v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_5c} :catch_66

    return-object v3

    .line 1815
    .end local v4    # "version":I
    :cond_5d
    nop

    .line 1816
    invoke-virtual {p3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1817
    invoke-interface {p0, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1811
    :catch_66
    move-exception v4

    .line 1812
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Specified sdkVersion "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1789
    .end local v1    # "sdkVersion":I
    .end local v2    # "minVersion":I
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catchall_85
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1790
    throw v1
.end method

.method private static blacklist parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1612
    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 1613
    .local v0, "group":Landroid/content/pm/FeatureGroupInfo;
    const/4 v1, 0x0

    .line 1614
    .local v1, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 1616
    .local v2, "depth":I
    :goto_a
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_78

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1b

    .line 1618
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_78

    .line 1619
    :cond_1b
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1f

    .line 1620
    goto :goto_a

    .line 1622
    :cond_1f
    sget-object v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v3, p1, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1623
    goto :goto_a

    .line 1626
    :cond_28
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1627
    .local v3, "innerTagName":Ljava/lang/String;
    const-string/jumbo v6, "uses-feature"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 1628
    invoke-static {p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v6

    .line 1631
    .local v6, "featureInfo":Landroid/content/pm/FeatureInfo;
    iget v7, v6, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/FeatureInfo;->flags:I

    .line 1632
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1633
    .end local v6    # "featureInfo":Landroid/content/pm/FeatureInfo;
    goto :goto_77

    .line 1634
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <feature-group>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1636
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1637
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1634
    const-string v6, "PackageParsing"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    .end local v3    # "innerTagName":Ljava/lang/String;
    :goto_77
    goto :goto_a

    .line 1641
    :cond_78
    if-eqz v1, :cond_8c

    .line 1642
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1643
    iget-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1646
    :cond_8c
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1647
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1589
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1590
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1594
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 1595
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 1596
    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_24

    .line 1597
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 1600
    :cond_24
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1601
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_35

    .line 1603
    :cond_30
    nop

    .line 1605
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1603
    return-object v0

    .line 1605
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1606
    throw v2
.end method

.method private static blacklist parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1851
    .local p4, "allowlist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/pm/pkg/component/InstallConstraintsTagParser;->parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3094
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationUtils;->parseInstrumentation(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 3096
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3097
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 3099
    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1182
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 1183
    .local v5, "outerDepth":I
    const/4 v0, -0x1

    .line 1185
    .local v0, "currentKeySetDepth":I
    const/4 v6, 0x0

    .line 1186
    .local v6, "currentKeySet":Ljava/lang/String;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1187
    .local v7, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1188
    .local v8, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 1189
    .local v9, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v6

    move v6, v0

    .line 1190
    .end local v0    # "currentKeySetDepth":I
    .local v6, "currentKeySetDepth":I
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "currentKeySet":Ljava/lang/String;
    :goto_24
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v12, v0

    .local v12, "type":I
    const-string v13, "PackageParsing"

    const/4 v14, 0x1

    if-eq v0, v14, :cond_228

    const/4 v0, 0x3

    if-ne v12, v0, :cond_40

    .line 1191
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v5, :cond_38

    goto :goto_40

    :cond_38
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    goto/16 :goto_22e

    .line 1192
    :cond_40
    :goto_40
    if-ne v12, v0, :cond_51

    .line 1193
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-ne v0, v6, :cond_4b

    .line 1194
    const/4 v11, 0x0

    .line 1195
    const/4 v6, -0x1

    goto :goto_24

    .line 1193
    :cond_4b
    move/from16 v18, v5

    move/from16 v19, v6

    goto/16 :goto_167

    .line 1199
    :cond_51
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1200
    .local v15, "tagName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_338

    :cond_5c
    goto :goto_7d

    :sswitch_5d
    const-string/jumbo v0, "public-key"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    goto :goto_7e

    :sswitch_68
    const-string v0, "key-set"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x0

    goto :goto_7e

    :sswitch_72
    const-string/jumbo v0, "upgrade-key-set"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x2

    goto :goto_7e

    :goto_7d
    const/4 v0, -0x1

    :goto_7e
    const-string v14, "Improperly nested \'key-set\' tag at "

    packed-switch v0, :pswitch_data_346

    .line 1275
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .local v18, "outerDepth":I
    .local v19, "currentKeySetDepth":I
    .local v20, "type":I
    const-string v0, "<key-sets>"

    invoke-static {v0, v2, v4, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1277
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_222

    .line 1278
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 1263
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .restart local v5    # "outerDepth":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :pswitch_9a
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1266
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_a1
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1269
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_b7

    .line 1271
    .end local v0    # "name":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1272
    nop

    .line 1273
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    goto/16 :goto_222

    .line 1271
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    :catchall_b7
    move-exception v0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1272
    throw v0

    .line 1218
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    :pswitch_bc
    if-nez v11, :cond_d8

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1220
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1219
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1222
    :cond_d8
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1225
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_df
    invoke-static {v0, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_1d3

    .line 1227
    .local v0, "publicKeyName":Ljava/lang/String;
    move/from16 v18, v5

    const/4 v5, 0x1

    .end local v5    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :try_start_e6
    invoke-static {v5, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v5
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_1cd

    .line 1229
    .local v5, "encodedKey":Ljava/lang/String;
    if-nez v5, :cond_124

    :try_start_ec
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_124

    .line 1230
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5    # "encodedKey":Ljava/lang/String;
    .local v16, "encodedKey":Ljava/lang/String;
    const-string v5, "\'public-key\' "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " must define a public-key value on first use at "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1232
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1230
    invoke-interface {v1, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_119
    .catchall {:try_start_ec .. :try_end_119} :catchall_11d

    .line 1259
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1230
    return-object v5

    .line 1259
    .end local v0    # "publicKeyName":Ljava/lang/String;
    .end local v16    # "encodedKey":Ljava/lang/String;
    :catchall_11d
    move-exception v0

    move/from16 v19, v6

    move/from16 v20, v12

    goto/16 :goto_1da

    .line 1229
    .restart local v0    # "publicKeyName":Ljava/lang/String;
    .restart local v5    # "encodedKey":Ljava/lang/String;
    :cond_124
    move-object/from16 v16, v5

    .line 1233
    .end local v5    # "encodedKey":Ljava/lang/String;
    .restart local v16    # "encodedKey":Ljava/lang/String;
    if-eqz v16, :cond_1b6

    .line 1234
    nop

    .line 1235
    :try_start_129
    invoke-static/range {v16 .. v16}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5
    :try_end_12d
    .catchall {:try_start_129 .. :try_end_12d} :catchall_1cd

    .line 1236
    .local v5, "currentKey":Ljava/security/PublicKey;
    if-nez v5, :cond_172

    .line 1237
    move/from16 v19, v6

    .end local v6    # "currentKeySetDepth":I
    .restart local v19    # "currentKeySetDepth":I
    :try_start_131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_136
    .catchall {:try_start_131 .. :try_end_136} :catchall_16d

    move/from16 v20, v12

    .end local v12    # "type":I
    .restart local v20    # "type":I
    :try_start_138
    const-string v12, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1238
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " key-set "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1237
    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1242
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_163
    .catchall {:try_start_138 .. :try_end_163} :catchall_1cb

    .line 1259
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1243
    nop

    .line 1190
    .end local v0    # "publicKeyName":Ljava/lang/String;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tagName":Ljava/lang/String;
    .end local v16    # "encodedKey":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .local v5, "outerDepth":I
    .restart local v6    # "currentKeySetDepth":I
    :goto_167
    move/from16 v5, v18

    move/from16 v6, v19

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    goto/16 :goto_24

    .line 1259
    .restart local v12    # "type":I
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "tagName":Ljava/lang/String;
    :catchall_16d
    move-exception v0

    move/from16 v20, v12

    .end local v12    # "type":I
    .restart local v20    # "type":I
    goto/16 :goto_1da

    .line 1245
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .restart local v0    # "publicKeyName":Ljava/lang/String;
    .local v5, "currentKey":Ljava/security/PublicKey;
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    .restart local v16    # "encodedKey":Ljava/lang/String;
    :cond_172
    move/from16 v19, v6

    move/from16 v20, v12

    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    :try_start_176
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1b2

    .line 1246
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PublicKey;

    invoke-interface {v6, v5}, Ljava/security/PublicKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_189

    goto :goto_1b2

    .line 1251
    :cond_189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value of \'public-key\' "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " conflicts with previously defined value at "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1253
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1251
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_1ae
    .catchall {:try_start_176 .. :try_end_1ae} :catchall_1cb

    .line 1259
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1251
    return-object v6

    .line 1249
    :cond_1b2
    :goto_1b2
    :try_start_1b2
    invoke-virtual {v7, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ba

    .line 1233
    .end local v5    # "currentKey":Ljava/security/PublicKey;
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_1b6
    move/from16 v19, v6

    move/from16 v20, v12

    .line 1256
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    :goto_1ba
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1257
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1c6
    .catchall {:try_start_1b2 .. :try_end_1c6} :catchall_1cb

    .line 1259
    .end local v0    # "publicKeyName":Ljava/lang/String;
    .end local v16    # "encodedKey":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1260
    nop

    .line 1261
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    goto :goto_222

    .line 1259
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    :catchall_1cb
    move-exception v0

    goto :goto_1da

    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :catchall_1cd
    move-exception v0

    move/from16 v19, v6

    move/from16 v20, v12

    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    goto :goto_1da

    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .local v5, "outerDepth":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :catchall_1d3
    move-exception v0

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    :goto_1da
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1260
    throw v0

    .line 1202
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .restart local v5    # "outerDepth":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :pswitch_1de
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    if-eqz v11, :cond_200

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1204
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1203
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1206
    :cond_200
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1208
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_207
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "keysetName":Ljava/lang/String;
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    move-object v11, v0

    .line 1212
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6
    :try_end_218
    .catchall {:try_start_207 .. :try_end_218} :catchall_21d

    .line 1214
    .end local v0    # "keysetName":Ljava/lang/String;
    .end local v19    # "currentKeySetDepth":I
    .restart local v6    # "currentKeySetDepth":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1215
    nop

    .line 1216
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    goto :goto_224

    .line 1214
    .end local v6    # "currentKeySetDepth":I
    .restart local v5    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "currentKeySetDepth":I
    :catchall_21d
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1215
    throw v0

    .line 1282
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tagName":Ljava/lang/String;
    :cond_222
    :goto_222
    move/from16 v6, v19

    .end local v19    # "currentKeySetDepth":I
    .restart local v6    # "currentKeySetDepth":I
    :goto_224
    move/from16 v5, v18

    goto/16 :goto_24

    .line 1190
    .end local v18    # "outerDepth":I
    .end local v20    # "type":I
    .local v5, "outerDepth":I
    .restart local v12    # "type":I
    :cond_228
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    .line 1283
    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    :goto_22e
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1284
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1285
    .local v5, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    const-string v12, "Package"

    if-eqz v6, :cond_25e

    .line 1286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " AndroidManifest.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 1290
    :cond_25e
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_266
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_306

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1291
    .local v14, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1292
    .local v15, "keySetName":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArraySet;->size()I

    move-result v16

    const-string v3, " AndroidManifest.xml \'key-set\' "

    if-nez v16, :cond_2ad

    .line 1293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_266

    .line 1297
    :cond_2ad
    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2da

    .line 1298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_266

    .line 1304
    :cond_2da
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_300

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1305
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Ljava/security/PublicKey;

    invoke-interface {v2, v15, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1306
    .end local v4    # "s":Ljava/lang/String;
    move-object/from16 v3, v17

    goto :goto_2e4

    .line 1307
    .end local v14    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v15    # "keySetName":Ljava/lang/String;
    :cond_300
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto/16 :goto_266

    .line 1308
    :cond_306
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_31c

    .line 1309
    invoke-interface {v2, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1315
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1311
    :cond_31c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AndroidManifest.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :sswitch_data_338
    .sparse-switch
        -0x519cd6bd -> :sswitch_72
        -0x30ac780c -> :sswitch_68
        0x717268fb -> :sswitch_5d
    .end sparse-switch

    :pswitch_data_346
    .packed-switch 0x0
        :pswitch_1de
        :pswitch_bc
        :pswitch_9a
    .end packed-switch
.end method

.method private static blacklist parseLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2603
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2607
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2609
    .local v1, "lname":Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 2610
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2611
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2612
    invoke-interface {p0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2615
    :cond_1f
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_27

    .line 2617
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2615
    return-object v2

    .line 2617
    .end local v1    # "lname":Ljava/lang/String;
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2618
    throw v1
.end method

.method public static blacklist parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "component"    # Lcom/android/internal/pm/pkg/component/ParsedComponent;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "tagName"    # Ljava/lang/String;
    .param p5, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/internal/pm/pkg/component/ParsedComponent;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 3186
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3189
    .local v1, "sa":Landroid/content/res/TypedArray;
    nop

    .line 3190
    const/4 v0, 0x0

    :try_start_8
    invoke-static {v0, v0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    .line 3189
    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 3191
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_2e

    .line 3192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requires an android:name attribute"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_107

    .line 3235
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3192
    return-object v0

    .line 3195
    :cond_2e
    :try_start_2e
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3196
    .local v7, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_3c

    :cond_3b
    move-object v8, v2

    .line 3197
    .local v8, "className":Ljava/lang/String;
    :goto_3c
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    move-object v9, v3

    .line 3198
    .local v9, "v":Landroid/util/TypedValue;
    if-eqz v9, :cond_52

    iget v3, v9, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_52

    .line 3199
    new-instance v3, Landroid/content/pm/PackageManager$Property;

    iget v5, v9, Landroid/util/TypedValue;->resourceId:I

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .local v3, "property":Landroid/content/pm/PackageManager$Property;
    goto/16 :goto_e4

    .line 3201
    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_52
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    move-object v9, v5

    .line 3202
    if-eqz v9, :cond_ec

    .line 3203
    iget v5, v9, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_70

    .line 3204
    invoke-virtual {v9}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3205
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_69

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3206
    .local v2, "stringValue":Ljava/lang/String;
    :cond_69
    new-instance v3, Landroid/content/pm/PackageManager$Property;

    invoke-direct {v3, v4, v2, v7, v8}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    .end local v0    # "cs":Ljava/lang/CharSequence;
    .end local v2    # "stringValue":Ljava/lang/String;
    .restart local v3    # "property":Landroid/content/pm/PackageManager$Property;
    goto/16 :goto_e4

    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_70
    iget v2, v9, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-ne v2, v5, :cond_82

    .line 3208
    new-instance v2, Landroid/content/pm/PackageManager$Property;

    iget v5, v9, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_7d

    move v0, v3

    :cond_7d
    invoke-direct {v2, v4, v0, v7, v8}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .restart local v3    # "property":Landroid/content/pm/PackageManager$Property;
    goto :goto_e4

    .line 3209
    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_82
    iget v0, v9, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_97

    iget v0, v9, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_97

    .line 3211
    new-instance v3, Landroid/content/pm/PackageManager$Property;

    iget v5, v9, Landroid/util/TypedValue;->data:I

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "property":Landroid/content/pm/PackageManager$Property;
    goto :goto_e4

    .line 3212
    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_97
    iget v0, v9, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_a7

    .line 3213
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-direct {v0, v4, v2, v7, v8}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    .restart local v3    # "property":Landroid/content/pm/PackageManager$Property;
    goto :goto_e4

    .line 3216
    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_a7
    const-string v0, "PackageParsing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3219
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3220
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3221
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3216
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    const/4 v3, 0x0

    .line 3233
    .restart local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :goto_e4
    invoke-interface {p5, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_e8
    .catchall {:try_start_2e .. :try_end_e8} :catchall_107

    .line 3235
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3233
    return-object v0

    .line 3229
    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_ec
    :try_start_ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requires an android:value or android:resource attribute"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_103
    .catchall {:try_start_ec .. :try_end_103} :catchall_107

    .line 3235
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3229
    return-object v0

    .line 3235
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "v":Landroid/util/TypedValue;
    :catchall_107
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3236
    throw v0
.end method

.method private blacklist parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I
    .registers 8
    .param p1, "sa"    # Landroid/content/res/TypedArray;
    .param p2, "attr"    # I
    .param p3, "defaultValue"    # I

    .line 1367
    move v0, p3

    .line 1368
    .local v0, "val":I
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 1369
    .local v1, "peekVal":Landroid/util/TypedValue;
    if-eqz v1, :cond_15

    .line 1370
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_15

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_15

    .line 1372
    iget v0, v1, Landroid/util/TypedValue;->data:I

    .line 1375
    :cond_15
    return v0
.end method

.method private blacklist parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "apkFile"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 425
    and-int/lit8 v1, p3, -0x21

    .line 426
    .local v1, "liteParseFlags":I
    nop

    .line 427
    invoke-static {p1, p2, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 428
    .local v2, "liteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 429
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 432
    :cond_12
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/parsing/PackageLite;

    .line 433
    .local v3, "lite":Landroid/content/pm/parsing/PackageLite;
    new-instance v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v0, v3, p3}, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    move-object v8, v0

    .line 435
    .local v8, "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :try_start_1f
    invoke-virtual {v3}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_72
    .catchall {:try_start_1f .. :try_end_23} :catchall_6d

    if-eqz v0, :cond_38

    :try_start_25
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->disallowSdkLibsToBeApps()Z

    move-result v0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_33
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    .line 450
    :catchall_2d
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    goto/16 :goto_94

    .line 446
    :catch_33
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    goto :goto_76

    .line 435
    :cond_38
    const/4 v0, 0x0

    :goto_39
    move v10, v0

    .line 436
    .local v10, "shouldSkipComponents":Z
    nop

    .line 438
    :try_start_3b
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_72
    .catchall {:try_start_3b .. :try_end_3f} :catchall_6d

    .line 436
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "apkFile":Ljava/io/File;
    .end local p3    # "flags":I
    .local v5, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v6, "apkFile":Ljava/io/File;
    .local v9, "flags":I
    :try_start_43
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 440
    .local p1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_55

    .line 441
    invoke-interface {v5, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_51} :catch_6b
    .catchall {:try_start_43 .. :try_end_51} :catchall_93

    .line 450
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 441
    return-object p2

    .line 444
    :cond_55
    :try_start_55
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 445
    invoke-virtual {v3}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result p3

    invoke-interface {p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p2

    .line 444
    invoke-interface {v5, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_67} :catch_6b
    .catchall {:try_start_55 .. :try_end_67} :catchall_93

    .line 450
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 444
    return-object p2

    .line 446
    .end local v10    # "shouldSkipComponents":Z
    .end local p1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :catch_6b
    move-exception v0

    goto :goto_76

    .line 450
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v6    # "apkFile":Ljava/io/File;
    .end local v9    # "flags":I
    .local p1, "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "apkFile":Ljava/io/File;
    .restart local p3    # "flags":I
    :catchall_6d
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "apkFile":Ljava/io/File;
    .end local p3    # "flags":I
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v6    # "apkFile":Ljava/io/File;
    .restart local v9    # "flags":I
    goto :goto_94

    .line 446
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v6    # "apkFile":Ljava/io/File;
    .end local v9    # "flags":I
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "apkFile":Ljava/io/File;
    .restart local p3    # "flags":I
    :catch_72
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    .line 447
    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "apkFile":Ljava/io/File;
    .end local p3    # "flags":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v6    # "apkFile":Ljava/io/File;
    .restart local v9    # "flags":I
    :goto_76
    :try_start_76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get path: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x66

    invoke-interface {v5, p2, p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_8f
    .catchall {:try_start_76 .. :try_end_8f} :catchall_93

    .line 450
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 447
    return-object p1

    .line 450
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_93
    move-exception v0

    :goto_94
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 451
    throw v0
.end method

.method private static blacklist parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3104
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3106
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 3109
    .local v1, "orig":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 3110
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3112
    :cond_18
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 3114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3112
    return-object v2

    .line 3114
    .end local v1    # "orig":Ljava/lang/String;
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3115
    throw v1
.end method

.method private static blacklist parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3002
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3004
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3005
    .local v2, "target":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3, v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 3007
    .local v4, "priority":I
    if-nez v2, :cond_1c

    .line 3008
    const-string v1, "<overlay> does not specify a target package"

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_af

    .line 3037
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3008
    return-object v1

    .line 3009
    :cond_1c
    if-ltz v4, :cond_a5

    const/16 v5, 0x270f

    if-le v4, v5, :cond_24

    goto/16 :goto_a5

    .line 3014
    :cond_24
    const/4 v5, 0x5

    :try_start_25
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3016
    .local v5, "propName":Ljava/lang/String;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3018
    .local v6, "propValue":Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 3019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping target and overlay pair "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3020
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": overlay ignored due to required system property: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3023
    .local v1, "message":Ljava/lang/String;
    const-string v3, "PackageParsing"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_72
    .catchall {:try_start_25 .. :try_end_72} :catchall_af

    .line 3037
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3024
    return-object v3

    .line 3027
    .end local v1    # "message":Ljava/lang/String;
    :cond_76
    :try_start_76
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResourceOverlay(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3028
    invoke-interface {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3029
    invoke-interface {v1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayPriority(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3031
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3030
    invoke-interface {v1, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3033
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3032
    invoke-interface {v1, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3035
    const/4 v7, 0x4

    invoke-static {v3, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    .line 3034
    invoke-interface {v1, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayIsStatic(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3027
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_a1
    .catchall {:try_start_76 .. :try_end_a1} :catchall_af

    .line 3037
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3027
    return-object v1

    .line 3010
    .end local v5    # "propName":Ljava/lang/String;
    .end local v6    # "propValue":Ljava/lang/String;
    :cond_a5
    :goto_a5
    :try_start_a5
    const-string v1, "<overlay> priority must be between 0 and 9999"

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_af

    .line 3037
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3010
    return-object v1

    .line 3037
    .end local v2    # "target":Ljava/lang/String;
    .end local v4    # "priority":I
    :catchall_af
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3038
    throw v1
.end method

.method private static blacklist parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1343
    sget-boolean v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object v4, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p2    # "res":Landroid/content/res/Resources;
    .end local p3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p4    # "flags":I
    .local v0, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v1, "res":Landroid/content/res/Resources;
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v5, "flags":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 1345
    .local p0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermission;>;"
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1346
    invoke-interface {v4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1348
    :cond_16
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 1349
    .local p1, "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    if-eqz p1, :cond_21

    .line 1350
    invoke-interface {v0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1352
    :cond_21
    invoke-interface {v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    return-object p2
.end method

.method private static blacklist parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1332
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermissionGroup(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1334
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1335
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1337
    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1358
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermissionTree(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1360
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermission;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1361
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1363
    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2806
    nop

    .line 2807
    move v2, p5

    move-object p5, p0

    move-object p0, p4

    move p4, v2

    .local p0, "separateProcesses":[Ljava/lang/String;
    .local p4, "flags":I
    .local p5, "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static/range {p0 .. p5}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseProcesses([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2809
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedProcess;>;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2810
    invoke-interface {p5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 2813
    :cond_14
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p5, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2819
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2821
    .local v0, "sa":Landroid/content/res/TypedArray;
    :try_start_6
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isProfileableByShell()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_17

    .line 2822
    invoke-static {v2, v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    move v1, v2

    goto :goto_18

    :cond_17
    :goto_17
    move v1, v3

    .line 2821
    :goto_18
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProfileableByShell(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 2823
    .local v1, "newPkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isProfileable()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2824
    invoke-static {v3, v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move v2, v3

    goto :goto_2b

    :cond_2a
    nop

    .line 2823
    :goto_2b
    invoke-interface {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProfileable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_37

    .line 2826
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2823
    return-object v2

    .line 2826
    .end local v1    # "newPkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2827
    throw v1
.end method

.method private static blacklist parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3043
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3047
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 3048
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 3049
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3051
    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 3053
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3051
    return-object v2

    .line 3053
    .end local v1    # "name":Ljava/lang/String;
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3054
    throw v1
.end method

.method private static blacklist parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1857
    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1859
    .local v7, "depth":I
    :goto_8
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v8, v0

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v0, v9, :cond_1e7

    const/4 v0, 0x3

    if-ne v8, v0, :cond_24

    .line 1861
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v7, :cond_1a

    goto :goto_24

    :cond_1a
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move/from16 v18, v7

    move/from16 v20, v8

    goto/16 :goto_1ef

    .line 1862
    :cond_24
    :goto_24
    const/4 v0, 0x2

    if-eq v8, v0, :cond_28

    .line 1863
    goto :goto_8

    .line 1865
    :cond_28
    sget-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1866
    goto :goto_8

    .line 1868
    :cond_31
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "intent"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 1869
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v0, 0x0

    move-object/from16 v6, p0

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1872
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1873
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 1876
    :cond_53
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 1878
    .local v4, "intentInfo":Landroid/content/IntentFilter;
    const/4 v5, 0x0

    .line 1879
    .local v5, "data":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 1880
    .local v11, "dataType":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1881
    .local v12, "host":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countActions()I

    move-result v13

    .line 1882
    .local v13, "numActions":I
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v14

    .line 1883
    .local v14, "numSchemes":I
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v15

    .line 1884
    .local v15, "numTypes":I
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    .line 1885
    .local v10, "numHosts":I
    if-nez v14, :cond_80

    if-nez v15, :cond_80

    if-nez v13, :cond_80

    .line 1886
    const-string v9, "intent tags must contain either an action or data."

    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    return-object v9

    .line 1888
    :cond_80
    if-le v13, v9, :cond_89

    .line 1889
    const-string v9, "intent tag may have at most one action."

    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    return-object v9

    .line 1891
    :cond_89
    if-le v15, v9, :cond_92

    .line 1892
    const-string v9, "intent tag may have at most one data type."

    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    return-object v9

    .line 1894
    :cond_92
    if-le v14, v9, :cond_9b

    .line 1895
    const-string v9, "intent tag may have at most one data scheme."

    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    return-object v9

    .line 1897
    :cond_9b
    if-le v10, v9, :cond_a4

    .line 1898
    const-string v9, "intent tag may have at most one data host."

    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    return-object v9

    .line 1900
    :cond_a4
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    move-object/from16 v18, v17

    .line 1901
    .local v18, "intent":Landroid/content/Intent;
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countCategories()I

    move-result v9

    move-object/from16 v19, v0

    move/from16 v0, v17

    .end local v17    # "i":I
    .local v0, "i":I
    .local v9, "max":I
    .local v19, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    :goto_b5
    if-ge v0, v9, :cond_ca

    .line 1902
    move-object/from16 v17, v5

    .end local v5    # "data":Landroid/net/Uri;
    .local v17, "data":Landroid/net/Uri;
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v20, v0

    move-object/from16 v0, v18

    .end local v18    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    .local v20, "i":I
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1901
    add-int/lit8 v5, v20, 0x1

    move v0, v5

    move-object/from16 v5, v17

    .end local v20    # "i":I
    .local v5, "i":I
    goto :goto_b5

    .end local v17    # "data":Landroid/net/Uri;
    .local v0, "i":I
    .local v5, "data":Landroid/net/Uri;
    .restart local v18    # "intent":Landroid/content/Intent;
    :cond_ca
    move/from16 v20, v0

    move-object/from16 v17, v5

    move-object/from16 v0, v18

    .line 1904
    .end local v5    # "data":Landroid/net/Uri;
    .end local v9    # "max":I
    .end local v18    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    .restart local v17    # "data":Landroid/net/Uri;
    const/4 v5, 0x1

    if-ne v10, v5, :cond_d9

    .line 1905
    invoke-virtual {v4}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v9

    aget-object v12, v9, v16

    .line 1907
    :cond_d9
    const-string v9, "/*"

    if-ne v14, v5, :cond_fd

    .line 1908
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 1909
    move/from16 v18, v7

    move/from16 v20, v8

    move/from16 v7, v16

    .end local v7    # "depth":I
    .end local v8    # "type":I
    .local v18, "depth":I
    .local v20, "type":I
    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1910
    invoke-virtual {v5, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1911
    invoke-virtual {v5, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1912
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .end local v17    # "data":Landroid/net/Uri;
    .restart local v5    # "data":Landroid/net/Uri;
    goto :goto_103

    .line 1907
    .end local v5    # "data":Landroid/net/Uri;
    .end local v18    # "depth":I
    .end local v20    # "type":I
    .restart local v7    # "depth":I
    .restart local v8    # "type":I
    .restart local v17    # "data":Landroid/net/Uri;
    :cond_fd
    move/from16 v18, v7

    move/from16 v20, v8

    .end local v7    # "depth":I
    .end local v8    # "type":I
    .restart local v18    # "depth":I
    .restart local v20    # "type":I
    move-object/from16 v5, v17

    .line 1914
    .end local v17    # "data":Landroid/net/Uri;
    .restart local v5    # "data":Landroid/net/Uri;
    :goto_103
    const/4 v7, 0x1

    if-ne v15, v7, :cond_142

    .line 1915
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v8

    .line 1918
    .end local v11    # "dataType":Ljava/lang/String;
    .local v8, "dataType":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_126

    .line 1919
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    .end local v8    # "dataType":Ljava/lang/String;
    .local v7, "dataType":Ljava/lang/String;
    goto :goto_127

    .line 1918
    .end local v7    # "dataType":Ljava/lang/String;
    .restart local v8    # "dataType":Ljava/lang/String;
    :cond_126
    move-object v11, v8

    .line 1921
    .end local v8    # "dataType":Ljava/lang/String;
    .restart local v11    # "dataType":Ljava/lang/String;
    :goto_127
    if-nez v5, :cond_142

    .line 1922
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 1923
    const-string v8, "content"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1924
    const-string v8, "*"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1925
    invoke-virtual {v7, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1926
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1929
    :cond_142
    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1930
    const/4 v7, 0x1

    if-ne v13, v7, :cond_150

    .line 1931
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1933
    :cond_150
    invoke-interface {v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1934
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "intentInfo":Landroid/content/IntentFilter;
    .end local v5    # "data":Landroid/net/Uri;
    .end local v10    # "numHosts":I
    .end local v11    # "dataType":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "numActions":I
    .end local v14    # "numSchemes":I
    .end local v15    # "numTypes":I
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    move/from16 v7, v18

    goto/16 :goto_8

    .end local v18    # "depth":I
    .end local v20    # "type":I
    .local v7, "depth":I
    .local v8, "type":I
    :cond_157
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move/from16 v18, v7

    move/from16 v20, v8

    .end local v7    # "depth":I
    .end local v8    # "type":I
    .restart local v18    # "depth":I
    .restart local v20    # "type":I
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "package"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 1935
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesPackage:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1938
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    :try_start_172
    invoke-virtual {v4, v7, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 1940
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_186

    .line 1941
    const-string v5, "Package name is missing from package tag."

    invoke-interface {v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_182
    .catchall {:try_start_172 .. :try_end_182} :catchall_192

    .line 1945
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1941
    return-object v5

    .line 1943
    :cond_186
    :try_start_186
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_18d
    .catchall {:try_start_186 .. :try_end_18d} :catchall_192

    .line 1945
    nop

    .end local v0    # "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1946
    goto :goto_1e3

    .line 1945
    :catchall_192
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1946
    throw v0

    .line 1947
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    :cond_197
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "provider"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 1948
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesProvider:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1951
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    :try_start_1ab
    invoke-virtual {v4, v7, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 1953
    .local v0, "authorities":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c1

    .line 1954
    const-string v5, "Authority missing from provider tag."

    const/16 v7, -0x6c

    invoke-interface {v6, v7, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_1bd
    .catchall {:try_start_1ab .. :try_end_1bd} :catchall_1de

    .line 1964
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1954
    return-object v5

    .line 1959
    :cond_1c1
    :try_start_1c1
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ";"

    invoke-direct {v5, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    .local v5, "authoritiesTokenizer":Ljava/util/StringTokenizer;
    :goto_1c8
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1d6

    .line 1961
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_1d5
    .catchall {:try_start_1c1 .. :try_end_1d5} :catchall_1de

    goto :goto_1c8

    .line 1964
    .end local v0    # "authorities":Ljava/lang/String;
    .end local v5    # "authoritiesTokenizer":Ljava/util/StringTokenizer;
    :cond_1d6
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1965
    nop

    .line 1966
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    move/from16 v7, v18

    goto/16 :goto_8

    .line 1964
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    :catchall_1de
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1965
    throw v0

    .line 1947
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    :cond_1e3
    :goto_1e3
    move/from16 v7, v18

    goto/16 :goto_8

    .line 1859
    .end local v18    # "depth":I
    .end local v20    # "type":I
    .restart local v7    # "depth":I
    .restart local v8    # "type":I
    :cond_1e7
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move/from16 v18, v7

    move/from16 v20, v8

    .line 1968
    .end local v7    # "depth":I
    .end local v8    # "type":I
    .restart local v18    # "depth":I
    .restart local v20    # "type":I
    :goto_1ef
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private blacklist parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1515
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredFeature:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1518
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1520
    .local v1, "featureName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1521
    const-string v2, "Feature name is missing from <required-feature> tag."

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_1c

    .line 1522
    :cond_18
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 1524
    :goto_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1520
    return-object v2

    .line 1524
    .end local v1    # "featureName":Ljava/lang/String;
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1525
    throw v1
.end method

.method private blacklist parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1530
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredNotFeature:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1533
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1535
    .local v1, "featureName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1536
    const-string v2, "Feature name is missing from <required-not-feature> tag."

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_1c

    .line 1537
    :cond_18
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 1539
    :goto_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1535
    return-object v2

    .line 1539
    .end local v1    # "featureName":Ljava/lang/String;
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1540
    throw v1
.end method

.method private static blacklist parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .param p0, "flags"    # I
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1822
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4d

    .line 1823
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1825
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 1829
    .local v1, "hash":Ljava/lang/String;
    if-eqz v1, :cond_40

    .line 1830
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1831
    .local v2, "hashLength":I
    div-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    .line 1832
    .local v3, "hashBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v2, :cond_3b

    .line 1833
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v8, v4, 0x1

    .line 1835
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1832
    add-int/lit8 v4, v4, 0x2

    goto :goto_1a

    .line 1837
    .end local v4    # "i":I
    :cond_3b
    invoke-interface {p2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1838
    nop

    .end local v2    # "hashLength":I
    .end local v3    # "hashBytes":[B
    goto :goto_44

    .line 1839
    :cond_40
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_48

    .line 1842
    .end local v1    # "hash":Ljava/lang/String;
    :goto_44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1843
    goto :goto_4d

    .line 1842
    :catchall_48
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1843
    throw v1

    .line 1845
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    :cond_4d
    :goto_4d
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseSdkLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2529
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSdkLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2532
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2534
    .local v1, "lname":Ljava/lang/String;
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 2539
    .local v2, "versionMajor":I
    if-eqz v1, :cond_66

    if-gez v2, :cond_16

    goto :goto_66

    .line 2542
    :cond_16
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 2543
    const-string/jumbo v3, "sharedUserId not allowed in SDK library"

    const/16 v4, -0x6b

    invoke-interface {p3, v4, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_8b

    .line 2556
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2543
    return-object v3

    .line 2547
    :cond_29
    :try_start_29
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 2548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple SDKs for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2549
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2548
    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_8b

    .line 2556
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2548
    return-object v3

    .line 2552
    :cond_4e
    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 2553
    invoke-interface {v4, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibVersionMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 2554
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 2552
    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_62
    .catchall {:try_start_4e .. :try_end_62} :catchall_8b

    .line 2556
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2552
    return-object v3

    .line 2540
    :cond_66
    :goto_66
    :try_start_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sdk-library declaration name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_87
    .catchall {:try_start_66 .. :try_end_87} :catchall_8b

    .line 2556
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2540
    return-object v3

    .line 2556
    .end local v1    # "lname":Ljava/lang/String;
    .end local v2    # "versionMajor":I
    :catchall_8b
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2557
    throw v1
.end method

.method private static blacklist parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "sa"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1148
    const/4 v0, 0x0

    invoke-static {v0, v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1150
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1153
    :cond_10
    const-string v2, "android"

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4f

    .line 1154
    invoke-static {p0, v1, v3, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 1156
    .local v2, "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1159
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    const/16 v3, -0x6b

    invoke-interface {p0, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1163
    .end local v2    # "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_4f
    const/4 v2, 0x0

    .line 1165
    .local v2, "leaving":Z
    const/16 v4, 0xd

    invoke-static {v0, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 1166
    .local v4, "max":I
    if-eqz v4, :cond_5d

    sget v5, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v4, v5, :cond_5d

    move v0, v3

    .line 1169
    .end local v2    # "leaving":Z
    .end local v4    # "max":I
    .local v0, "leaving":Z
    :cond_5d
    nop

    .line 1170
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLeavingSharedUser(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 1171
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 1173
    const/4 v3, 0x3

    invoke-static {v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v3

    .line 1172
    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSharedUserLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 1169
    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private blacklist parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "splitIndex"    # I
    .param p4, "assets"    # Landroid/content/res/AssetManager;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "I",
            "Landroid/content/res/AssetManager;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 665
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, p3

    .line 670
    .local v1, "apkPath":Ljava/lang/String;
    invoke-virtual {p4, v1}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v2

    .line 671
    .local v2, "cookie":I
    if-nez v2, :cond_26

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed adding asset path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x65

    invoke-interface {p1, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 675
    :cond_26
    :try_start_26
    const-string v0, "AndroidManifest.xml"

    invoke-virtual {p4, v2, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_9a

    move-object v7, v0

    .line 677
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2d
    new-instance v6, Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    invoke-direct {v6, p4, v0, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_85

    .line 678
    .local v6, "res":Landroid/content/res/Resources;
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v9, p3

    move v8, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p3    # "splitIndex":I
    .end local p5    # "flags":I
    .local v4, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v5, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v8, "flags":I
    .local v9, "splitIndex":I
    :try_start_3a
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 680
    .local p1, "parseResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_7b

    .line 681
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, " (at "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 682
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, "): "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 683
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 681
    invoke-interface {v4, p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2
    :try_end_75
    .catchall {:try_start_3a .. :try_end_75} :catchall_82

    .line 687
    if-eqz v7, :cond_7a

    :try_start_77
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 681
    :cond_7a
    return-object p2

    .line 686
    :cond_7b
    nop

    .line 687
    if-eqz v7, :cond_81

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_81} :catch_97

    .line 686
    :cond_81
    return-object p1

    .line 675
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local p1    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :catchall_82
    move-exception v0

    move-object p1, v0

    goto :goto_8b

    .end local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v8    # "flags":I
    .end local v9    # "splitIndex":I
    .local p1, "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p3    # "splitIndex":I
    .restart local p5    # "flags":I
    :catchall_85
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move v9, p3

    move v8, p5

    move-object p1, v0

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p3    # "splitIndex":I
    .end local p5    # "flags":I
    .restart local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v8    # "flags":I
    .restart local v9    # "splitIndex":I
    :goto_8b
    if-eqz v7, :cond_96

    :try_start_8d
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    goto :goto_96

    :catchall_91
    move-exception v0

    move-object p2, v0

    :try_start_93
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v2    # "cookie":I
    .end local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v8    # "flags":I
    .end local v9    # "splitIndex":I
    .end local p0    # "this":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
    .end local p4    # "assets":Landroid/content/res/AssetManager;
    :cond_96
    :goto_96
    throw p1
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_97} :catch_97

    .line 687
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v1    # "apkPath":Ljava/lang/String;
    .restart local v2    # "cookie":I
    .restart local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v8    # "flags":I
    .restart local v9    # "splitIndex":I
    .restart local p0    # "this":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
    .restart local p4    # "assets":Landroid/content/res/AssetManager;
    :catch_97
    move-exception v0

    move-object p1, v0

    goto :goto_a0

    .end local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v8    # "flags":I
    .end local v9    # "splitIndex":I
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p3    # "splitIndex":I
    .restart local p5    # "flags":I
    :catch_9a
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move v9, p3

    move v8, p5

    move-object p1, v0

    .line 688
    .end local p2    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p3    # "splitIndex":I
    .end local p5    # "flags":I
    .restart local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v8    # "flags":I
    .restart local v9    # "splitIndex":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_a0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read manifest from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x66

    invoke-interface {v4, p3, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    return-object p2
.end method

.method private blacklist parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "splitIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    nop

    .line 761
    invoke-static {p1, p4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 762
    .local v0, "packageSplitResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 763
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 768
    :cond_10
    const/4 v1, 0x0

    .line 770
    .local v1, "foundApp":Z
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 771
    .local v2, "outerDepth":I
    :cond_15
    :goto_15
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_65

    .line 772
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-lt v3, v5, :cond_15

    const/4 v3, 0x2

    if-eq v4, v3, :cond_29

    .line 773
    goto :goto_15

    .line 775
    :cond_29
    sget-object v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v3, p2, p4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 776
    goto :goto_15

    .line 780
    :cond_32
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 781
    .local v3, "tagName":Ljava/lang/String;
    const-string v5, "application"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 782
    if-eqz v1, :cond_4d

    .line 786
    const-string v5, "PackageParsing"

    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_59

    .line 790
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_4d
    const/4 v1, 0x1

    .line 791
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .restart local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_59

    .line 794
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_53
    const-string v5, "<manifest>"

    invoke-static {v5, p2, p4, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 797
    .restart local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_59
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 798
    invoke-interface {p1, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 800
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_64
    goto :goto_15

    .line 802
    :cond_65
    if-nez v1, :cond_7b

    .line 803
    const-string v3, "<manifest> does not contain an <application>"

    const-wide/32 v5, 0x8fcab42

    invoke-interface {p1, v3, v5, v6}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 805
    .local v3, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 806
    invoke-interface {p1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 810
    .end local v3    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_7b
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private blacklist parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "splitIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v10, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v4, p3

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 825
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    const/4 v12, 0x1

    :try_start_14
    invoke-virtual {v11, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-interface {v3, v10, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSplitHasCode(IZ)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 828
    const/16 v0, 0x2e

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "classLoaderName":Ljava/lang/String;
    if-eqz v0, :cond_45

    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_45

    .line 834
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid class loader name: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_17e

    .line 837
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 834
    return-object v2

    .line 832
    :cond_45
    :goto_45
    :try_start_45
    invoke-interface {v3, v10, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_17e

    .line 837
    .end local v0    # "classLoaderName":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 838
    nop

    .line 844
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v8, v0, v10

    .line 846
    .local v8, "defaultSplitName":Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 848
    .local v0, "depth":I
    :goto_56
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v13, v2

    .local v13, "type":I
    if-eq v2, v12, :cond_179

    const/4 v2, 0x3

    if-ne v13, v2, :cond_66

    .line 850
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_179

    .line 851
    :cond_66
    const/4 v6, 0x2

    if-eq v13, v6, :cond_6a

    .line 852
    goto :goto_56

    .line 854
    :cond_6a
    sget-object v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v7, v3, v5}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 855
    goto :goto_56

    .line 858
    :cond_73
    const/4 v14, 0x0

    .line 861
    .local v14, "mainComponent":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 862
    .local v15, "tagName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 863
    .local v16, "isActivity":Z
    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_184

    :cond_81
    goto :goto_b6

    :sswitch_82
    const-string/jumbo v2, "service"

    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    move v2, v6

    goto :goto_b7

    :sswitch_8d
    const-string v2, "activity-alias"

    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    const/4 v2, 0x4

    goto :goto_b7

    :sswitch_97
    const-string/jumbo v2, "receiver"

    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    move v2, v12

    goto :goto_b7

    :sswitch_a2
    const-string/jumbo v6, "provider"

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    goto :goto_b7

    :sswitch_ac
    const-string v2, "activity"

    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    const/4 v2, 0x0

    goto :goto_b7

    :goto_b6
    const/4 v2, -0x1

    :goto_b7
    packed-switch v2, :pswitch_data_19a

    .line 916
    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v4, v3

    move-object v3, v15

    .end local v15    # "tagName":Ljava/lang/String;
    .local v3, "tagName":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v9, v2

    move-object v2, v7

    .local v7, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto/16 :goto_164

    .line 905
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v7    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .restart local v15    # "tagName":Ljava/lang/String;
    :pswitch_ca
    sget-boolean v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object v2, v3

    move-object v3, v4

    move-object v6, v8

    move-object v7, v9

    move-object/from16 v4, p4

    .end local v8    # "defaultSplitName":Ljava/lang/String;
    .local v6, "defaultSplitName":Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 907
    move-object v3, v2

    .end local v6    # "defaultSplitName":Ljava/lang/String;
    .local v5, "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    .restart local v8    # "defaultSplitName":Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 908
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 909
    .local v2, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v3, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 910
    move-object v14, v2

    .line 913
    .end local v2    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_e7
    move-object v2, v5

    .line 914
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v9, p1

    move-object v3, v15

    goto/16 :goto_164

    .line 894
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v5    # "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    :pswitch_ed
    iget-object v2, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 895
    move-object/from16 v9, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v2 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 897
    .local v2, "providerResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProvider;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 898
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 899
    .local v4, "provider":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 900
    move-object v14, v4

    .line 902
    .end local v4    # "provider":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    :cond_10d
    move-object v4, v2

    .line 903
    .local v4, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v9, p1

    move-object v3, v15

    goto :goto_164

    .line 883
    .end local v2    # "providerResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProvider;>;"
    .end local v4    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_112
    iget-object v2, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v9, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v2 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 886
    .local v2, "serviceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedService;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_132

    .line 887
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 888
    .local v4, "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 889
    move-object v14, v4

    .line 891
    .end local v4    # "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    :cond_132
    move-object v4, v2

    .line 892
    .local v4, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v9, p1

    move-object v3, v15

    goto :goto_164

    .line 865
    .end local v2    # "serviceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedService;>;"
    .end local v4    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_137
    const/16 v16, 0x1

    .line 868
    :pswitch_139
    iget-object v2, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 869
    move-object/from16 v9, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v2 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 871
    .local v2, "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_160

    .line 872
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 873
    .local v4, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    if-eqz v16, :cond_15b

    .line 874
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_15e

    .line 876
    :cond_15b
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 878
    :goto_15e
    move-object v5, v4

    move-object v14, v5

    .line 880
    .end local v4    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_160
    move-object v4, v2

    .line 881
    .local v4, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v9, p1

    move-object v3, v15

    .line 920
    .end local v4    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v15    # "tagName":Ljava/lang/String;
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;
    .restart local v3    # "tagName":Ljava/lang/String;
    :goto_164
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 921
    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 923
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v14    # "mainComponent":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .end local v16    # "isActivity":Z
    :cond_16f
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_56

    .line 925
    :cond_179
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 837
    .end local v0    # "depth":I
    .end local v8    # "defaultSplitName":Ljava/lang/String;
    .end local v13    # "type":I
    :catchall_17e
    move-exception v0

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 838
    throw v0

    nop

    :sswitch_data_184
    .sparse-switch
        -0x62b40cf1 -> :sswitch_ac
        -0x3adbfa0f -> :sswitch_a2
        -0x30341611 -> :sswitch_97
        0x2f1ad612 -> :sswitch_8d
        0x7643c6b5 -> :sswitch_82
    .end sparse-switch

    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_137
        :pswitch_139
        :pswitch_112
        :pswitch_ed
        :pswitch_ca
    .end packed-switch
.end method

.method private blacklist parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 935
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c4

    :cond_7
    goto :goto_54

    :sswitch_8
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_55

    :sswitch_13
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_55

    :sswitch_1e
    const-string/jumbo v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_55

    :sswitch_29
    const-string v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_55

    :sswitch_33
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_55

    :sswitch_3e
    const-string/jumbo v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_55

    :sswitch_49
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_55

    :goto_54
    const/4 v0, -0x1

    :goto_55
    packed-switch v0, :pswitch_data_e2

    .line 966
    move-object v5, p1

    move-object v0, p3

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .local v0, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "input":Landroid/content/pm/parsing/result/ParseInput;
    const-string p1, "<application>"

    invoke-static {p1, v0, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 964
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_62
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 960
    :pswitch_68
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 958
    :pswitch_6d
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 956
    :pswitch_72
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 954
    :pswitch_77
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 947
    :pswitch_7c
    const/4 v2, 0x0

    const-string v5, "<property>"

    move-object v6, p1

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .local v1, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v3, "res":Landroid/content/res/Resources;
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    .local v6, "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 949
    move-object v0, v1

    move-object v2, v3

    move-object v3, v4

    move-object v5, v6

    .end local v1    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v2, "res":Landroid/content/res/Resources;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .local p1, "propertyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_9a

    .line 950
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 952
    :cond_9a
    return-object p1

    .line 940
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .local p1, "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_9b
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    const/4 v1, 0x0

    const-string v4, "<meta-data>"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 942
    .local p1, "metaDataResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_c3

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_c3

    .line 943
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 945
    :cond_c3
    return-object p1

    :sswitch_data_c4
    .sparse-switch
        -0x5fe67eda -> :sswitch_49
        -0x5aaa6a59 -> :sswitch_3e
        -0x50de9846 -> :sswitch_33
        -0x4284098e -> :sswitch_29
        -0x3b32222b -> :sswitch_1e
        0x88b87d -> :sswitch_13
        0x751e7745 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_7c
        :pswitch_77
        :pswitch_72
        :pswitch_6d
        :pswitch_68
        :pswitch_62
    .end packed-switch
.end method

.method private static blacklist parseStaticLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2564
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2568
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2570
    .local v2, "lname":Ljava/lang/String;
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2572
    .local v3, "version":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 2577
    .local v1, "versionMajor":I
    if-eqz v2, :cond_6f

    if-gez v3, :cond_1b

    goto :goto_6f

    .line 2580
    :cond_1b
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 2581
    const-string/jumbo v4, "sharedUserId not allowed in static shared library"

    const/16 v5, -0x6b

    invoke-interface {p3, v5, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_94

    .line 2595
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2581
    return-object v4

    .line 2585
    :cond_2e
    :try_start_2e
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_53

    .line 2586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple static-shared libs for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2587
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2586
    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_94

    .line 2595
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2586
    return-object v4

    .line 2590
    :cond_53
    :try_start_53
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v5

    .line 2592
    invoke-static {v1, v3}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v6

    .line 2591
    invoke-interface {v5, v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v5

    .line 2593
    invoke-interface {v5, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 2590
    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_94

    .line 2595
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2590
    return-object v4

    .line 2578
    :cond_6f
    :goto_6f
    :try_start_6f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad static-library declaration name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_90
    .catchall {:try_start_6f .. :try_end_90} :catchall_94

    .line 2595
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2578
    return-object v4

    .line 2595
    .end local v1    # "versionMajor":I
    .end local v2    # "lname":Ljava/lang/String;
    .end local v3    # "version":I
    :catchall_94
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2596
    throw v1
.end method

.method private static blacklist parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3059
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3061
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    const/4 v2, 0x0

    :try_start_8
    invoke-static {v2, v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v1

    .line 3063
    .local v1, "requiresSmallestWidthDp":I
    const/4 v3, 0x7

    invoke-static {v2, v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v3

    .line 3065
    .local v3, "compatibleWidthLimitDp":I
    const/16 v4, 0x8

    invoke-static {v2, v4, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 3070
    .local v4, "largestWidthLimitDp":I
    nop

    .line 3072
    const/4 v5, 0x1

    invoke-static {v5, v5, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v6

    .line 3071
    invoke-interface {p1, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSmallScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 3074
    const/4 v7, 0x2

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 3073
    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNormalScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 3076
    const/4 v7, 0x3

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 3075
    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 3078
    const/4 v7, 0x5

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 3077
    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtraLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 3080
    const/4 v7, 0x4

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 3079
    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeable(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 3082
    invoke-static {v5, v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    .line 3081
    invoke-interface {v6, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAnyDensity(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 3083
    invoke-interface {v2, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 3084
    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 3085
    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargestWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 3070
    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_5d
    .catchall {:try_start_8 .. :try_end_5d} :catchall_61

    .line 3087
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3070
    return-object v2

    .line 3087
    .end local v1    # "requiresSmallestWidthDp":I
    .end local v3    # "compatibleWidthLimitDp":I
    .end local v4    # "largestWidthLimitDp":I
    :catchall_61
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3088
    throw v1
.end method

.method private static blacklist parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1545
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1546
    .local v0, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1548
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1551
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1554
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1557
    iget v5, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v5

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1559
    :cond_25
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 1562
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1565
    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1567
    :cond_38
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1568
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_43

    .line 1570
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1568
    return-object v2

    .line 1570
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1571
    throw v2
.end method

.method private static blacklist parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1576
    invoke-static {p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 1577
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1579
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 1580
    new-instance v1, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v1}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1581
    .local v1, "cPref":Landroid/content/pm/ConfigurationInfo;
    iget v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1582
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1585
    .end local v1    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_17
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2744
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2748
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2749
    .local v1, "lname":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 2751
    .local v2, "req":Z
    if-eqz v1, :cond_2e

    .line 2752
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2753
    if-eqz v2, :cond_21

    .line 2755
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 2756
    invoke-interface {v3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_2e

    .line 2759
    :cond_21
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 2760
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2765
    :cond_2e
    :goto_2e
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    .line 2767
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2765
    return-object v3

    .line 2767
    .end local v1    # "lname":Ljava/lang/String;
    .end local v2    # "req":Z
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2768
    throw v1
.end method

.method private static blacklist parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2774
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesNativeLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2778
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2780
    .local v1, "lname":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 2783
    .local v2, "req":Z
    if-eqz v1, :cond_29

    .line 2784
    if-eqz v2, :cond_1c

    .line 2786
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 2787
    invoke-interface {v3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_29

    .line 2790
    :cond_1c
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 2791
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2796
    :cond_29
    :goto_29
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_31

    .line 2798
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2796
    return-object v3

    .line 2798
    .end local v1    # "lname":Ljava/lang/String;
    .end local v2    # "req":Z
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2799
    throw v1
.end method

.method private blacklist parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 27
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1381
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1385
    .local v6, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_11
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 1388
    .local v7, "name":Ljava/lang/String;
    const/high16 v8, -0x80000000

    const/4 v9, 0x1

    invoke-direct {v1, v6, v9, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v8

    .line 1392
    .local v8, "minSdkVersion":I
    const/4 v10, 0x2

    const v11, 0x7fffffff

    invoke-direct {v1, v6, v10, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v10

    .line 1396
    .local v10, "maxSdkVersion":I
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1397
    .local v11, "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v12, 0x3

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 1400
    .local v13, "feature":Ljava/lang/String;
    if-eqz v13, :cond_33

    .line 1401
    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1404
    :cond_33
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1405
    .local v14, "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v15, 0x4

    invoke-virtual {v6, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, v16

    .line 1409
    if-eqz v13, :cond_44

    .line 1410
    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1413
    :cond_44
    const/4 v15, 0x5

    invoke-virtual {v6, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 1417
    .local v15, "usesPermissionFlags":I
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v18, v17

    .line 1419
    .local v18, "outerDepth":I
    :goto_4f
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v19, v0

    .local v19, "type":I
    if-eq v0, v9, :cond_f7

    move/from16 v0, v19

    .end local v19    # "type":I
    .local v0, "type":I
    if-ne v0, v12, :cond_6a

    .line 1421
    move/from16 v19, v9

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    move/from16 v12, v18

    .end local v18    # "outerDepth":I
    .local v12, "outerDepth":I
    if-le v9, v12, :cond_66

    goto :goto_6e

    :cond_66
    move/from16 v18, v0

    goto/16 :goto_fd

    .line 1419
    .end local v12    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :cond_6a
    move/from16 v19, v9

    move/from16 v12, v18

    .line 1422
    .end local v18    # "outerDepth":I
    .restart local v12    # "outerDepth":I
    :goto_6e
    const/4 v9, 0x3

    if-eq v0, v9, :cond_ed

    const/4 v9, 0x4

    if-ne v0, v9, :cond_7b

    .line 1423
    move/from16 v18, v12

    move/from16 v9, v19

    const/4 v0, 0x0

    const/4 v12, 0x3

    goto :goto_4f

    .line 1427
    :cond_7b
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_222

    move/from16 v18, v0

    .end local v0    # "type":I
    .local v18, "type":I
    goto :goto_a4

    .end local v18    # "type":I
    .restart local v0    # "type":I
    :sswitch_89
    move/from16 v18, v0

    .end local v0    # "type":I
    .restart local v18    # "type":I
    const-string/jumbo v0, "required-feature"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const/4 v0, 0x0

    goto :goto_a5

    .end local v18    # "type":I
    .restart local v0    # "type":I
    :sswitch_96
    move/from16 v18, v0

    .end local v0    # "type":I
    .restart local v18    # "type":I
    const-string/jumbo v0, "required-not-feature"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    move/from16 v0, v19

    goto :goto_a5

    :cond_a4
    :goto_a4
    const/4 v0, -0x1

    :goto_a5
    packed-switch v0, :pswitch_data_22c

    .line 1443
    const-string v0, "<uses-permission>"

    goto :goto_d3

    .line 1436
    :pswitch_ab
    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1437
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 1438
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v14, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_d7

    .line 1429
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :pswitch_bf
    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1430
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 1431
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_d7

    .line 1443
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :goto_d3
    invoke-static {v0, v3, v5, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1447
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_d7
    :goto_d7
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_e5

    .line 1448
    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9
    :try_end_e1
    .catchall {:try_start_11 .. :try_end_e1} :catchall_21c

    .line 1509
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1448
    return-object v9

    .line 1450
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_e5
    move/from16 v18, v12

    move/from16 v9, v19

    const/4 v0, 0x0

    const/4 v12, 0x3

    goto/16 :goto_4f

    .line 1422
    .end local v18    # "type":I
    .local v0, "type":I
    :cond_ed
    move/from16 v18, v0

    .end local v0    # "type":I
    .restart local v18    # "type":I
    move/from16 v18, v12

    move/from16 v9, v19

    const/4 v0, 0x0

    const/4 v12, 0x3

    goto/16 :goto_4f

    .line 1419
    .end local v12    # "outerDepth":I
    .local v18, "outerDepth":I
    .restart local v19    # "type":I
    :cond_f7
    move/from16 v12, v18

    move/from16 v18, v19

    move/from16 v19, v9

    .line 1453
    .end local v19    # "type":I
    .restart local v12    # "outerDepth":I
    .local v18, "type":I
    :goto_fd
    :try_start_fd
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_101
    .catchall {:try_start_fd .. :try_end_101} :catchall_21c

    .line 1455
    .local v0, "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    if-nez v7, :cond_108

    .line 1456
    nop

    .line 1509
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1456
    return-object v0

    .line 1459
    :cond_108
    :try_start_108
    sget v9, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v9, v8, :cond_215

    sget v9, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-le v9, v10, :cond_114

    move-object/from16 v16, v0

    goto/16 :goto_217

    .line 1464
    :cond_114
    iget-object v9, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    if-eqz v9, :cond_15e

    .line 1467
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "i":I
    :goto_11e
    if-ltz v9, :cond_13e

    .line 1468
    move-object/from16 v16, v0

    .end local v0    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .local v16, "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    iget-object v0, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_130
    .catchall {:try_start_108 .. :try_end_130} :catchall_21c

    if-nez v0, :cond_137

    .line 1469
    nop

    .line 1509
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1469
    return-object v16

    .line 1467
    :cond_137
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v4, p3

    move-object/from16 v0, v16

    goto :goto_11e

    .end local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v0    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_13e
    move-object/from16 v16, v0

    .line 1475
    .end local v0    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v9    # "i":I
    .restart local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :try_start_140
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_146
    if-ltz v0, :cond_160

    .line 1476
    iget-object v4, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_154
    .catchall {:try_start_140 .. :try_end_154} :catchall_21c

    if-eqz v4, :cond_15b

    .line 1477
    nop

    .line 1509
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1477
    return-object v16

    .line 1475
    :cond_15b
    add-int/lit8 v0, v0, -0x1

    goto :goto_146

    .line 1464
    .end local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .local v0, "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_15e
    move-object/from16 v16, v0

    .line 1484
    .end local v0    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_160
    const/4 v0, 0x0

    .line 1485
    .local v0, "found":Z
    :try_start_161
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesPermissions()Ljava/util/List;

    move-result-object v4

    .line 1486
    .local v4, "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    .line 1487
    .local v9, "size":I
    const/16 v17, 0x0

    move/from16 v19, v0

    move/from16 v0, v17

    .local v0, "i":I
    .local v19, "found":Z
    :goto_16f
    if-ge v0, v9, :cond_200

    .line 1488
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 1489
    .local v17, "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    move/from16 v20, v0

    .end local v0    # "i":I
    .local v20, "i":I
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 1490
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v0
    :try_end_187
    .catchall {:try_start_161 .. :try_end_187} :catchall_21c

    const-string v1, " at: "

    move-object/from16 v21, v4

    .end local v4    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .local v21, "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    const-string v4, " in package: "

    if-eq v0, v15, :cond_1c2

    .line 1491
    :try_start_18f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting uses-permissions flags: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1492
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1493
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1491
    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1be
    .catchall {:try_start_18f .. :try_end_1be} :catchall_21c

    .line 1509
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1491
    return-object v0

    .line 1495
    :cond_1c2
    :try_start_1c2
    const-string v0, "PackageParsing"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1496
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1497
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1495
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const/4 v0, 0x1

    .line 1500
    .end local v19    # "found":Z
    .local v0, "found":Z
    goto :goto_206

    .line 1489
    .end local v0    # "found":Z
    .end local v21    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v4    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v19    # "found":Z
    :cond_1f4
    move-object/from16 v21, v4

    .line 1487
    .end local v4    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .end local v17    # "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    .restart local v21    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    .end local v20    # "i":I
    .local v0, "i":I
    goto/16 :goto_16f

    .end local v21    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v4    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    :cond_200
    move/from16 v20, v0

    move-object/from16 v21, v4

    .end local v0    # "i":I
    .end local v4    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v20    # "i":I
    .restart local v21    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    move/from16 v0, v19

    .line 1504
    .end local v19    # "found":Z
    .end local v20    # "i":I
    .local v0, "found":Z
    :goto_206
    if-nez v0, :cond_210

    .line 1505
    new-instance v1, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;

    invoke-direct {v1, v7, v15}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_210
    .catchall {:try_start_1c2 .. :try_end_210} :catchall_21c

    .line 1507
    :cond_210
    nop

    .line 1509
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1507
    return-object v16

    .line 1459
    .end local v9    # "size":I
    .end local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v21    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .local v0, "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_215
    move-object/from16 v16, v0

    .line 1461
    .end local v0    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :goto_217
    nop

    .line 1509
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1461
    return-object v16

    .line 1509
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "minSdkVersion":I
    .end local v10    # "maxSdkVersion":I
    .end local v11    # "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "outerDepth":I
    .end local v13    # "feature":Ljava/lang/String;
    .end local v14    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "usesPermissionFlags":I
    .end local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v18    # "type":I
    :catchall_21c
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1510
    throw v0

    nop

    :sswitch_data_222
    .sparse-switch
        0x341a4cce -> :sswitch_96
        0x64ee7ac8 -> :sswitch_89
    .end sparse-switch

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_ab
    .end packed-switch
.end method

.method private static blacklist parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 30
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1653
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    sget v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    if-lez v0, :cond_194

    .line 1654
    move/from16 v5, p4

    and-int/lit16 v0, v5, 0x200

    const/4 v6, 0x0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    move v0, v6

    :goto_16
    move v8, v0

    .line 1655
    .local v8, "isApkInApex":Z
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1657
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x1

    .line 1658
    .local v0, "minVers":I
    const/4 v10, 0x0

    .line 1659
    .local v10, "minCode":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1660
    .local v11, "minAssigned":Z
    const/4 v12, 0x0

    .line 1661
    .local v12, "targetVers":I
    const/4 v13, 0x0

    .line 1662
    .local v13, "targetCode":Ljava/lang/String;
    const v14, 0x7fffffff

    .line 1664
    .local v14, "maxVers":I
    :try_start_25
    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 1665
    .local v6, "val":Landroid/util/TypedValue;
    const/4 v15, 0x3

    if-eqz v6, :cond_4a

    .line 1666
    const/16 v16, 0x1

    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v7, v15, :cond_45

    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_45

    .line 1667
    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    .line 1668
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    move v11, v7

    goto :goto_4c

    .line 1671
    :cond_45
    iget v7, v6, Landroid/util/TypedValue;->data:I

    move v0, v7

    .line 1672
    const/4 v11, 0x1

    goto :goto_4c

    .line 1665
    :cond_4a
    const/16 v16, 0x1

    .line 1676
    :goto_4c
    move/from16 v7, v16

    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v17

    move-object/from16 v6, v17

    .line 1677
    if-eqz v6, :cond_6d

    .line 1678
    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v7, v15, :cond_69

    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_69

    .line 1679
    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    .line 1680
    if-nez v11, :cond_6f

    .line 1681
    move-object v10, v13

    goto :goto_6f

    .line 1685
    :cond_69
    iget v7, v6, Landroid/util/TypedValue;->data:I

    move v12, v7

    goto :goto_6f

    .line 1688
    :cond_6d
    move v12, v0

    .line 1689
    move-object v13, v10

    .line 1692
    :cond_6f
    :goto_6f
    if-eqz v8, :cond_7c

    .line 1693
    const/4 v7, 0x2

    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    move-object v6, v7

    .line 1694
    if-eqz v6, :cond_7c

    .line 1696
    iget v7, v6, Landroid/util/TypedValue;->data:I

    move v14, v7

    .line 1700
    :cond_7c
    sget-object v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 1701
    invoke-static {v12, v13, v7, v1, v8}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 1703
    .local v7, "targetSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v17

    if-eqz v17, :cond_90

    .line 1704
    invoke-interface {v1, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v15
    :try_end_8c
    .catchall {:try_start_25 .. :try_end_8c} :catchall_18f

    .line 1761
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1704
    return-object v15

    .line 1707
    :cond_90
    :try_start_90
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v18, v17

    .line 1709
    .local v18, "targetSdkVersion":I
    nop

    .line 1710
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move/from16 v5, v18

    .end local v18    # "targetSdkVersion":I
    .local v5, "targetSdkVersion":I
    invoke-interface {v1, v15, v5}, Landroid/content/pm/parsing/result/ParseInput;->enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v15

    .line 1711
    .local v15, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v18

    if-eqz v18, :cond_b5

    .line 1712
    invoke-interface {v1, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16
    :try_end_b1
    .catchall {:try_start_90 .. :try_end_b1} :catchall_18f

    .line 1761
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1712
    return-object v16

    .line 1715
    :cond_b5
    move-object/from16 v18, v6

    .end local v6    # "val":Landroid/util/TypedValue;
    .local v18, "val":Landroid/util/TypedValue;
    :try_start_b7
    sget v6, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    move-object/from16 v19, v7

    .end local v7    # "targetSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .local v19, "targetSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    sget-object v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 1716
    invoke-static {v0, v10, v6, v7, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 1717
    .local v6, "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 1718
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_cb
    .catchall {:try_start_b7 .. :try_end_cb} :catchall_18f

    .line 1761
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1718
    return-object v7

    .line 1721
    :cond_cf
    :try_start_cf
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1723
    .local v7, "minSdkVersion":I
    move/from16 v20, v0

    .end local v0    # "minVers":I
    .local v20, "minVers":I
    invoke-interface {v2, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 1724
    invoke-interface {v0, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1725
    if-eqz v8, :cond_10b

    .line 1726
    sget v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    .line 1727
    invoke-static {v14, v0, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMaxSdkVersion(IILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1728
    .local v0, "maxSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v21

    if-eqz v21, :cond_f8

    .line 1729
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16
    :try_end_f4
    .catchall {:try_start_cf .. :try_end_f4} :catchall_18f

    .line 1761
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1729
    return-object v16

    .line 1731
    :cond_f8
    :try_start_f8
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v22, v21

    .line 1732
    .local v22, "maxSdkVersion":I
    move-object/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "maxSdkVersion":I
    .local v0, "maxSdkVersion":I
    .local v21, "maxSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1736
    .end local v0    # "maxSdkVersion":I
    .end local v21    # "maxSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    :cond_10b
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 1737
    .local v0, "innerDepth":I
    const/16 v21, 0x0

    .line 1738
    .local v21, "minExtensionVersions":Landroid/util/SparseIntArray;
    :goto_111
    move/from16 v22, v5

    .end local v5    # "targetSdkVersion":I
    .local v22, "targetSdkVersion":I
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move/from16 v23, v5

    move-object/from16 v24, v6

    const/4 v6, 0x1

    .end local v6    # "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .local v23, "type":I
    .local v24, "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    if-eq v5, v6, :cond_17f

    move/from16 v5, v23

    const/4 v6, 0x3

    .end local v23    # "type":I
    .local v5, "type":I
    if-ne v5, v6, :cond_12d

    .line 1739
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_12a

    goto :goto_12d

    :cond_12a
    move/from16 v23, v0

    goto :goto_183

    .line 1740
    :cond_12d
    :goto_12d
    const/4 v6, 0x3

    if-eq v5, v6, :cond_176

    const/4 v6, 0x4

    if-ne v5, v6, :cond_136

    .line 1741
    move/from16 v23, v0

    goto :goto_178

    .line 1745
    :cond_136
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v23, v0

    .end local v0    # "innerDepth":I
    .local v23, "innerDepth":I
    const-string v0, "extension-sdk"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 1746
    if-nez v21, :cond_14e

    .line 1747
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v21, v0

    goto :goto_150

    .line 1746
    :cond_14e
    move-object/from16 v0, v21

    .line 1749
    .end local v21    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .local v0, "minExtensionVersions":Landroid/util/SparseIntArray;
    :goto_150
    invoke-static {v1, v3, v4, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 1750
    .local v6, "result":Landroid/content/pm/parsing/result/ParseResult;
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v21, v0

    goto :goto_161

    .line 1752
    .end local v0    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .restart local v21    # "minExtensionVersions":Landroid/util/SparseIntArray;
    :cond_15a
    const-string v0, "<uses-sdk>"

    invoke-static {v0, v2, v4, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v6, v0

    .line 1755
    .restart local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_161
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 1756
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_16b
    .catchall {:try_start_f8 .. :try_end_16b} :catchall_18f

    .line 1761
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1756
    return-object v0

    .line 1758
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_16f
    move/from16 v5, v22

    move/from16 v0, v23

    move-object/from16 v6, v24

    goto :goto_111

    .line 1740
    .end local v23    # "innerDepth":I
    .local v0, "innerDepth":I
    :cond_176
    move/from16 v23, v0

    .line 1738
    .end local v0    # "innerDepth":I
    .end local v5    # "type":I
    .restart local v23    # "innerDepth":I
    :goto_178
    move/from16 v5, v22

    move/from16 v0, v23

    move-object/from16 v6, v24

    goto :goto_111

    .restart local v0    # "innerDepth":I
    .local v23, "type":I
    :cond_17f
    move/from16 v5, v23

    move/from16 v23, v0

    .line 1759
    .end local v0    # "innerDepth":I
    .restart local v5    # "type":I
    .local v23, "innerDepth":I
    :goto_183
    :try_start_183
    invoke-static/range {v21 .. v21}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_18a
    .catchall {:try_start_183 .. :try_end_18a} :catchall_18f

    .line 1761
    nop

    .end local v5    # "type":I
    .end local v7    # "minSdkVersion":I
    .end local v10    # "minCode":Ljava/lang/String;
    .end local v11    # "minAssigned":Z
    .end local v12    # "targetVers":I
    .end local v13    # "targetCode":Ljava/lang/String;
    .end local v14    # "maxVers":I
    .end local v15    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .end local v18    # "val":Landroid/util/TypedValue;
    .end local v19    # "targetSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .end local v20    # "minVers":I
    .end local v21    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .end local v22    # "targetSdkVersion":I
    .end local v23    # "innerDepth":I
    .end local v24    # "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1762
    goto :goto_194

    .line 1761
    :catchall_18f
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1762
    throw v0

    .line 1764
    .end local v8    # "isApkInApex":Z
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    :cond_194
    :goto_194
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2625
    move-object/from16 v1, p0

    const-string v2, ""

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdkLibrary:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2628
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    :try_start_f
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 2630
    .local v0, "lname":Ljava/lang/String;
    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 2632
    .local v7, "versionMajor":I
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    .line 2634
    .local v9, "certSha256Digest":Ljava/lang/String;
    nop

    .line 2635
    const/4 v10, 0x3

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    move/from16 v16, v10

    .line 2639
    .local v16, "optional":Z
    if-eqz v0, :cond_a5

    if-ltz v7, :cond_a5

    if-nez v9, :cond_2e

    goto/16 :goto_a5

    .line 2645
    :cond_2e
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v10

    .line 2646
    .local v10, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_53

    .line 2647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Depending on multiple versions of SDK library "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_4f
    .catchall {:try_start_f .. :try_end_4f} :catchall_d4

    .line 2682
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2647
    return-object v2

    .line 2651
    :cond_53
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 2654
    .end local v0    # "lname":Ljava/lang/String;
    .local v12, "lname":Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v9, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2656
    .end local v9    # "certSha256Digest":Ljava/lang/String;
    .local v0, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 2658
    const-string v9, "debug.pm.uses_sdk_library_default_cert_digest"

    invoke-static {v9, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_6d
    .catchall {:try_start_53 .. :try_end_6d} :catchall_d4

    .line 2662
    .end local v0    # "certSha256Digest":Ljava/lang/String;
    .restart local v9    # "certSha256Digest":Ljava/lang/String;
    :try_start_6d
    invoke-static {v9, v6}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_70} :catch_72
    .catchall {:try_start_6d .. :try_end_70} :catchall_d4

    .line 2665
    move-object v0, v9

    goto :goto_74

    .line 2663
    :catch_72
    move-exception v0

    .line 2664
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v2

    .line 2668
    .end local v9    # "certSha256Digest":Ljava/lang/String;
    .local v0, "certSha256Digest":Ljava/lang/String;
    :cond_74
    :goto_74
    :try_start_74
    invoke-static/range {p0 .. p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 2669
    .local v2, "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_86

    .line 2670
    invoke-interface {v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_82
    .catchall {:try_start_74 .. :try_end_82} :catchall_d4

    .line 2682
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2670
    return-object v6

    .line 2672
    :cond_86
    :try_start_86
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 2674
    .local v9, "additionalCertSha256Digests":[Ljava/lang/String;
    array-length v11, v9

    add-int/2addr v11, v8

    new-array v15, v11, [Ljava/lang/String;

    .line 2675
    .local v15, "certSha256Digests":[Ljava/lang/String;
    aput-object v0, v15, v6

    .line 2676
    array-length v11, v9

    invoke-static {v9, v6, v15, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2679
    int-to-long v13, v7

    .line 2680
    move-object/from16 v11, p1

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 2679
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_a1
    .catchall {:try_start_86 .. :try_end_a1} :catchall_d4

    .line 2682
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2679
    return-object v6

    .line 2640
    .end local v2    # "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    .end local v10    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "lname":Ljava/lang/String;
    .end local v15    # "certSha256Digests":[Ljava/lang/String;
    .local v0, "lname":Ljava/lang/String;
    .local v9, "certSha256Digest":Ljava/lang/String;
    :cond_a5
    :goto_a5
    :try_start_a5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad uses-sdk-library declaration name: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " version: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " certDigest"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_d0
    .catchall {:try_start_a5 .. :try_end_d0} :catchall_d4

    .line 2682
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2640
    return-object v2

    .line 2682
    .end local v0    # "lname":Ljava/lang/String;
    .end local v7    # "versionMajor":I
    .end local v9    # "certSha256Digest":Ljava/lang/String;
    .end local v16    # "optional":Z
    :catchall_d4
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2683
    throw v0
.end method

.method private static blacklist parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2690
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2693
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2695
    .local v2, "lname":Ljava/lang/String;
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2697
    .local v3, "version":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2702
    .local v5, "certSha256Digest":Ljava/lang/String;
    if-eqz v2, :cond_8d

    if-ltz v3, :cond_8d

    if-nez v5, :cond_1d

    goto :goto_8d

    .line 2708
    :cond_1d
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    .line 2709
    .local v6, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 2710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Depending on multiple versions of static library "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_bc

    .line 2737
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2710
    return-object v1

    .line 2714
    :cond_42
    :try_start_42
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 2717
    .end local v2    # "lname":Ljava/lang/String;
    .local v7, "lname":Ljava/lang/String;
    const-string v2, ":"

    const-string v8, ""

    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2720
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    .local v2, "certSha256Digest":Ljava/lang/String;
    sget-object v5, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2721
    .local v5, "additionalCertSha256Digests":[Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v8

    const/16 v9, 0x1b

    if-lt v8, v9, :cond_76

    .line 2722
    nop

    .line 2723
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 2724
    .local v8, "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 2725
    invoke-interface {p0, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_6b
    .catchall {:try_start_42 .. :try_end_6b} :catchall_bc

    .line 2737
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2725
    return-object v1

    .line 2727
    :cond_6f
    :try_start_6f
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v5, v9

    .line 2730
    .end local v8    # "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    :cond_76
    array-length v8, v5

    add-int/2addr v8, v4

    new-array v8, v8, [Ljava/lang/String;

    .line 2731
    .local v8, "certSha256Digests":[Ljava/lang/String;
    aput-object v2, v8, v1

    .line 2732
    array-length v9, v5

    invoke-static {v5, v1, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2735
    int-to-long v9, v3

    invoke-interface {p1, v7, v9, v10, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_bc

    .line 2737
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2735
    return-object v1

    .line 2703
    .end local v6    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "lname":Ljava/lang/String;
    .end local v8    # "certSha256Digests":[Ljava/lang/String;
    .local v2, "lname":Ljava/lang/String;
    .local v5, "certSha256Digest":Ljava/lang/String;
    :cond_8d
    :goto_8d
    :try_start_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad uses-static-library declaration name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " version: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " certDigest"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_b8
    .catchall {:try_start_8d .. :try_end_b8} :catchall_bc

    .line 2737
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2703
    return-object v1

    .line 2737
    .end local v2    # "lname":Ljava/lang/String;
    .end local v3    # "version":I
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    :catchall_bc
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2738
    throw v1
.end method

.method public static blacklist readConfigUseRoundIcon(Landroid/content/res/Resources;)V
    .registers 16
    .param p0, "r"    # Landroid/content/res/Resources;

    .line 3364
    const v0, 0x1110291

    if-eqz p0, :cond_c

    .line 3365
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 3366
    return-void

    .line 3371
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android"

    .line 3373
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 3371
    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_44

    .line 3376
    .local v1, "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 3377
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 3380
    .local v2, "systemResources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3389
    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    .line 3390
    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    .line 3380
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v3 .. v14}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    .line 3393
    .local v3, "overlayableRes":Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 3394
    return-void

    .line 3374
    .end local v1    # "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "systemResources":Landroid/content/res/Resources;
    .end local v3    # "overlayableRes":Landroid/content/res/Resources;
    :catch_44
    move-exception v0

    .line 3375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .registers 12
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .line 3578
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3579
    .local v0, "N":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 3580
    return-object v1

    .line 3583
    :cond_9
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3584
    .local v3, "keySetMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v0, :cond_41

    .line 3585
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3586
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3587
    .local v6, "M":I
    if-ne v6, v2, :cond_1f

    .line 3588
    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3589
    goto :goto_3e

    .line 3592
    :cond_1f
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 3593
    .local v7, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_25
    if-ge v8, v6, :cond_3b

    .line 3594
    const-class v9, Ljava/security/PublicKey;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-class v10, Ljava/security/PublicKey;

    invoke-virtual {p0, v9, v10}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/PublicKey;

    .line 3595
    .local v9, "pk":Ljava/security/PublicKey;
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3593
    .end local v9    # "pk":Ljava/security/PublicKey;
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 3598
    .end local v8    # "j":I
    :cond_3b
    invoke-virtual {v3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3584
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "M":I
    .end local v7    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 3601
    .end local v4    # "i":I
    :cond_41
    return-object v3
.end method

.method private static blacklist resId(ILandroid/content/res/TypedArray;)I
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3438
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method private static blacklist resIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "sa"    # Landroid/content/res/TypedArray;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I
    .param p4, "expectedTypeName"    # Ljava/lang/String;
    .param p5, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[I>;"
        }
    .end annotation

    .line 3471
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_18

    .line 3472
    invoke-interface {v1, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 3475
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 3476
    .local v8, "typeArrayResId":I
    if-nez v8, :cond_24

    .line 3477
    invoke-interface {v1, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 3481
    :cond_24
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 3482
    .local v9, "typedArray":Landroid/content/res/TypedArray;
    :try_start_28
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    .line 3483
    .local v10, "typedArrayName":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    .line 3484
    .local v11, "length":I
    if-lez v6, :cond_4c

    if-le v11, v6, :cond_4c

    .line 3485
    const-string v0, "The length of the typedArray (%s) is larger than %d."

    .line 3487
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v10, v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 3485
    invoke-static {v0, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_100

    .line 3527
    if-eqz v9, :cond_4b

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->close()V

    .line 3485
    :cond_4b
    return-object v0

    .line 3489
    :cond_4c
    :try_start_4c
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 3490
    .local v12, "resourceIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_52
    if-ge v13, v11, :cond_d5

    .line 3491
    invoke-virtual {v9, v13, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 3496
    .local v14, "id":I
    if-nez v14, :cond_6e

    .line 3497
    const-string v0, "There is an item that is not a resource id in the typedArray (%s)."

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_68
    .catchall {:try_start_4c .. :try_end_68} :catchall_100

    .line 3527
    if-eqz v9, :cond_6d

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->close()V

    .line 3497
    :cond_6d
    return-object v0

    .line 3503
    :cond_6e
    :try_start_6e
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_90

    .line 3504
    const-string v0, "There is a duplicated resource (%s) in the typedArray (%s)."

    .line 3506
    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7, v10}, [Ljava/lang/Object;

    move-result-object v7

    .line 3504
    invoke-static {v0, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_8a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6e .. :try_end_8a} :catch_c0
    .catchall {:try_start_6e .. :try_end_8a} :catchall_100

    .line 3527
    if-eqz v9, :cond_8f

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->close()V

    .line 3504
    :cond_8f
    return-object v0

    .line 3508
    :cond_90
    :try_start_90
    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v15

    .line 3509
    .local v15, "typeName":Ljava/lang/String;
    if-eqz v5, :cond_b4

    .line 3510
    invoke-static {v15, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b4

    .line 3511
    const-string v0, "There is a resource (%s) in the typedArray (%s) that is not a %s type."

    .line 3513
    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7, v10, v5}, [Ljava/lang/Object;

    move-result-object v7

    .line 3511
    invoke-static {v0, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_ae
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_90 .. :try_end_ae} :catch_c0
    .catchall {:try_start_90 .. :try_end_ae} :catchall_100

    .line 3527
    if-eqz v9, :cond_b3

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->close()V

    .line 3511
    :cond_b3
    return-object v0

    .line 3520
    .end local v15    # "typeName":Ljava/lang/String;
    :cond_b4
    nop

    .line 3521
    :try_start_b5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3490
    nop

    .end local v14    # "id":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_52

    .line 3516
    .restart local v14    # "id":I
    :catch_c0
    move-exception v0

    .line 3517
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "There is a resource in the typedArray (%s) that is not found in the app resources."

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v7, v15}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_cf
    .catchall {:try_start_b5 .. :try_end_cf} :catchall_100

    .line 3527
    if-eqz v9, :cond_d4

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->close()V

    .line 3517
    :cond_d4
    return-object v7

    .line 3523
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v13    # "i":I
    .end local v14    # "id":I
    :cond_d5
    :try_start_d5
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 3524
    invoke-interface {v1, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_df
    .catchall {:try_start_d5 .. :try_end_df} :catchall_100

    .line 3527
    if-eqz v9, :cond_e4

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->close()V

    .line 3524
    :cond_e4
    return-object v0

    .line 3526
    :cond_e5
    :try_start_e5
    invoke-interface {v12}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_fa
    .catchall {:try_start_e5 .. :try_end_fa} :catchall_100

    .line 3527
    if-eqz v9, :cond_ff

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->close()V

    .line 3526
    :cond_ff
    return-object v0

    .line 3481
    .end local v10    # "typedArrayName":Ljava/lang/String;
    .end local v11    # "length":I
    .end local v12    # "resourceIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_100
    move-exception v0

    move-object v7, v0

    if-eqz v9, :cond_10c

    :try_start_104
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->close()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_108

    goto :goto_10c

    :catchall_108
    move-exception v0

    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10c
    :goto_10c
    throw v7
.end method

.method public static blacklist setCompatibilityModeEnabled(Z)V
    .registers 1
    .param p0, "compatibilityModeEnabled"    # Z

    .line 3357
    sput-boolean p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    .line 3358
    return-void
.end method

.method private static blacklist setMaxAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 10
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2930
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    const v0, 0x3fee147b    # 1.86f

    goto :goto_e

    :cond_d
    move v0, v2

    .line 2932
    .local v0, "maxAspectRatio":F
    :goto_e
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMaxAspectRatio()F

    move-result v1

    .line 2933
    .local v1, "packageMaxAspectRatio":F
    cmpl-float v2, v1, v2

    const-string v3, "android.max_aspect"

    if-eqz v2, :cond_1a

    .line 2935
    move v0, v1

    goto :goto_2a

    .line 2937
    :cond_1a
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 2938
    .local v2, "appMetaData":Landroid/os/Bundle;
    if-eqz v2, :cond_2a

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2939
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 2943
    .end local v2    # "appMetaData":Landroid/os/Bundle;
    :cond_2a
    :goto_2a
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    .line 2944
    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 2945
    .local v4, "activitiesSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_33
    if-ge v5, v4, :cond_58

    .line 2946
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2948
    .local v6, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_46

    .line 2949
    goto :goto_55

    .line 2957
    :cond_46
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    .line 2958
    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v7

    .line 2960
    .local v7, "activityAspectRatio":F
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v8

    invoke-static {v6, v8, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setMaxAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V

    .line 2945
    .end local v6    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v7    # "activityAspectRatio":F
    :goto_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 2963
    .end local v5    # "index":I
    :cond_58
    return-void
.end method

.method private blacklist setMinAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 9
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2971
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMinAspectRatio()F

    move-result v0

    .line 2973
    .local v0, "minAspectRatio":F
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    .line 2974
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2975
    .local v2, "activitiesSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_d
    if-ge v3, v2, :cond_29

    .line 2976
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2977
    .local v4, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_26

    .line 2978
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v5

    invoke-static {v4, v5, v0}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setMinAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V

    .line 2975
    .end local v4    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2982
    .end local v3    # "index":I
    :cond_29
    return-void
.end method

.method private blacklist setSupportsSizeChanges(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 12
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2985
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    .line 2986
    .local v0, "appMetaData":Landroid/os/Bundle;
    const-string v1, "android.supports_size_changes"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    .line 2987
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    .line 2989
    .local v4, "supportsSizeChanges":Z
    :goto_13
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    .line 2990
    .local v5, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 2991
    .local v6, "activitiesSize":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1c
    if-ge v7, v6, :cond_36

    .line 2992
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2993
    .local v8, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    if-nez v4, :cond_30

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v9

    .line 2994
    invoke-virtual {v9, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 2995
    :cond_30
    invoke-static {v8, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setSupportsSizeChanges(Lcom/android/internal/pm/pkg/component/ParsedActivity;Z)V

    .line 2991
    .end local v8    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 2998
    .end local v7    # "index":I
    :cond_36
    return-void
.end method

.method private static blacklist string(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3531
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist stringResIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "sa"    # Landroid/content/res/TypedArray;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I
    .param p4, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[I>;"
        }
    .end annotation

    .line 3458
    const-string/jumbo v4, "string"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "sa":Landroid/content/res/TypedArray;
    .end local p2    # "res":Landroid/content/res/Resources;
    .end local p3    # "resourceId":I
    .end local p4    # "maxSize":I
    .local v0, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v1, "sa":Landroid/content/res/TypedArray;
    .local v2, "res":Landroid/content/res/Resources;
    .local v3, "resourceId":I
    .local v5, "maxSize":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private blacklist validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1044
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getAttributions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/pm/pkg/component/ParsedAttributionUtils;->isCombinationValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1045
    const/16 v0, -0x65

    const-string v1, "Combination <attribution> tags are not valid"

    invoke-interface {p1, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1051
    :cond_13
    invoke-static {p2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->declareDuplicatePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    const/16 v1, -0x6c

    if-eqz v0, :cond_22

    .line 1052
    const-string v0, "Found duplicate permission with a different attribute value."

    invoke-interface {p1, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1058
    :cond_22
    invoke-static {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->convertCompatPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 1060
    invoke-direct {p0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->convertSplitPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 1065
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_53

    .line 1066
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSmallScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1067
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isNormalScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1068
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isLargeScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1069
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isExtraLargeScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1070
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1071
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isAnyDensity()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1072
    :cond_53
    invoke-static {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 1076
    :cond_56
    and-int/lit16 v0, p3, 0x400

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    .line 1077
    .local v0, "isApex":Z
    :goto_5d
    if-eqz v0, :cond_85

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_85

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is an APEX package and shouldn\'t declare permissions."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1078
    invoke-interface {p1, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1085
    :cond_85
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 10
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .line 3548
    .local p1, "keySetMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v0, -0x1

    if-nez p1, :cond_7

    .line 3549
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3550
    return-void

    .line 3553
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3554
    .local v1, "N":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3556
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3557
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3558
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 3559
    .local v4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-nez v4, :cond_31

    .line 3560
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3561
    goto :goto_16

    .line 3564
    :cond_31
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 3565
    .local v5, "M":I
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3566
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_39
    if-ge v6, v5, :cond_47

    .line 3567
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/Serializable;

    invoke-virtual {p0, v7}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3566
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 3569
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_47
    goto :goto_16

    .line 3570
    :cond_48
    return-void
.end method


# virtual methods
.method public blacklist parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "packageFile"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 332
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 334
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parsePackageFromPackageLite(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/PackageLite;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "lite"    # Landroid/content/pm/parsing/PackageLite;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/PackageLite;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 462
    .local v7, "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 465
    .local v12, "manifestArray":Landroid/content/res/TypedArray;
    iget-object v8, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->isCoreApp()Z

    move-result v13

    .line 465
    move-object v9, v1

    .end local v1    # "pkgName":Ljava/lang/String;
    .local v9, "pkgName":Ljava/lang/String;
    invoke-interface/range {v8 .. v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v8

    .line 468
    .end local v9    # "pkgName":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .local v8, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v9

    .line 469
    .local v9, "targetSdk":I
    const/4 v10, 0x0

    .line 470
    .local v10, "versionName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 471
    .local v11, "compileSdkVersion":I
    const/4 v13, 0x0

    .line 472
    .local v13, "compileSdkVersionCodeName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 475
    .local v14, "isolatedSplitLoading":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getVersionCodeMajor()I

    move-result v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionCodeMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getBaseRevisionCode()I

    move-result v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBaseRevisionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 478
    invoke-interface {v8, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 479
    const/4 v15, 0x0

    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompileSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 480
    invoke-interface {v8, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 481
    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIsolatedSplitLoading(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 482
    invoke-interface {v8, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 486
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_64

    move v4, v3

    goto :goto_65

    :cond_64
    move v4, v15

    .line 488
    :goto_65
    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v2

    .line 491
    .local v2, "archivedPackage":Landroid/content/pm/ArchivedPackageParcel;
    if-nez v2, :cond_77

    .line 492
    const/16 v3, -0x66

    const-string v4, "archivePackage is missing"

    invoke-interface {v6, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 497
    :cond_77
    nop

    .line 499
    invoke-interface {v8, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 500
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 501
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 502
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 503
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 504
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    const/16 v5, 0x1d

    if-lt v9, v5, :cond_95

    goto :goto_96

    :cond_95
    move v3, v15

    .line 506
    :goto_96
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    const/16 v4, 0xe

    if-lt v9, v4, :cond_a0

    const/4 v4, 0x1

    goto :goto_a1

    :cond_a0
    move v4, v15

    .line 507
    :goto_a1
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ArchivedPackageParcel;->requestLegacyExternalStorage:Ljava/lang/String;

    if-ge v9, v5, :cond_ab

    const/4 v5, 0x1

    goto :goto_ac

    :cond_ab
    move v5, v15

    .line 509
    :goto_ac
    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v4

    .line 508
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    const/16 v4, 0x1c

    if-ge v9, v4, :cond_ba

    const/4 v4, 0x1

    goto :goto_bb

    :cond_ba
    move v4, v15

    .line 511
    :goto_bb
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ArchivedPackageParcel;->defaultToDeviceProtectedStorage:Ljava/lang/String;

    .line 513
    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ArchivedPackageParcel;->userDataFragile:Ljava/lang/String;

    .line 516
    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v4

    .line 515
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 518
    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 520
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 521
    invoke-interface {v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 524
    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 526
    const/4 v3, 0x0

    .line 527
    .local v3, "taskAffinity":Ljava/lang/String;
    invoke-static {v1, v1, v3, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 529
    .local v5, "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v16

    if-eqz v16, :cond_f3

    .line 530
    invoke-interface {v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 532
    :cond_f3
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    invoke-interface {v8, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 534
    move-object v4, v3

    .end local v3    # "taskAffinity":Ljava/lang/String;
    .local v4, "taskAffinity":Ljava/lang/String;
    const/4 v3, 0x0

    .line 535
    .local v3, "pname":Ljava/lang/CharSequence;
    move-object/from16 v16, v2

    .end local v2    # "archivedPackage":Landroid/content/pm/ArchivedPackageParcel;
    .local v16, "archivedPackage":Landroid/content/pm/ArchivedPackageParcel;
    const/4 v2, 0x0

    move-object/from16 v18, v5

    .end local v5    # "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .local v18, "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    iget-object v5, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object/from16 v17, v4

    const/4 v15, -0x1

    move/from16 v4, p3

    .end local v4    # "taskAffinity":Ljava/lang/String;
    .local v17, "taskAffinity":Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 537
    .local v2, "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 538
    invoke-interface {v6, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 540
    :cond_11b
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v8, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 542
    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 543
    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 544
    const/4 v5, 0x0

    invoke-interface {v8, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 546
    invoke-direct {v0, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 548
    invoke-direct {v0, v6, v8, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 549
    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v15

    if-eqz v15, :cond_13c

    .line 550
    return-object v5

    .line 553
    :cond_13c
    invoke-interface {v8, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 555
    and-int/lit8 v15, v4, 0x20

    if-eqz v15, :cond_14b

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v15

    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_150

    .line 558
    :cond_14b
    sget-object v15, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 561
    :goto_150
    nop

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result v15

    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v15

    .line 561
    invoke-interface {v6, v15}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v15

    return-object v15
.end method
