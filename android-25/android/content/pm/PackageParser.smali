.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$SplitPermissionInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final APK_SIGNING_UNKNOWN:I = 0x0

.field public static final APK_SIGNING_V1:I = 0x1

.field public static final APK_SIGNING_V2:I = 0x2

.field private static final CHILD_PACKAGE_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final MAX_PACKAGES_PER_APK:I = 0x5

.field private static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field private static final MULTI_PACKAGE_APK_ENABLED:Z = false

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final PARSE_CHATTY:I = 0x2

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x100

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_ENFORCE_CODE:I = 0x400

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x20

.field public static final PARSE_FORCE_SDK:I = 0x1000

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_EPHEMERAL:I = 0x800

.field public static final PARSE_IS_PRIVILEGED:I = 0x80

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_TRUSTED_OVERLAY:I = 0x200

.field private static final RIGID_PARSER:Z = false

.field private static final SDK_CODENAMES:[Ljava/lang/String;

.field private static final SDK_VERSION:I

.field public static final SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static final TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field private static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field private static final TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field private static final TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field private static final TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field private static final TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field private static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field private static final TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field private static final TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field private static final TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field private static final TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field private static final TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field private static final TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field private static final TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field private static final TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field private static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field private static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field private static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field private static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static sCompatibilityModeEnabled:Z

.field private static final sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 1
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sa"    # Landroid/content/res/TypedArray;
    .param p5, "nameRequired"    # Z
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "roundIconRes"    # I
    .param p10, "logoRes"    # I
    .param p11, "bannerRes"    # I

    #@0
    .prologue
    invoke-static/range {p0 .. p11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x10

    #@2
    const/4 v3, 0x4

    #@3
    const/4 v7, 0x2

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    .line 165
    new-instance v0, Landroid/util/ArraySet;

    #@8
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@b
    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@d
    .line 167
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@f
    const-string/jumbo v1, "application"

    #@12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15
    .line 168
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@17
    const-string/jumbo v1, "uses-permission"

    #@1a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1d
    .line 169
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@1f
    const-string/jumbo v1, "uses-permission-sdk-m"

    #@22
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@25
    .line 170
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@27
    const-string/jumbo v1, "uses-permission-sdk-23"

    #@2a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2d
    .line 171
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@2f
    const-string/jumbo v1, "uses-configuration"

    #@32
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@35
    .line 172
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@37
    const-string/jumbo v1, "uses-feature"

    #@3a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3d
    .line 173
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@3f
    const-string/jumbo v1, "feature-group"

    #@42
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@45
    .line 174
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@47
    const-string/jumbo v1, "uses-sdk"

    #@4a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4d
    .line 175
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@4f
    const-string/jumbo v1, "supports-screens"

    #@52
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@55
    .line 176
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@57
    const-string/jumbo v1, "instrumentation"

    #@5a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5d
    .line 177
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@5f
    const-string/jumbo v1, "uses-gl-texture"

    #@62
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@65
    .line 178
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@67
    const-string/jumbo v1, "compatible-screens"

    #@6a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6d
    .line 179
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@6f
    const-string/jumbo v1, "supports-input"

    #@72
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@75
    .line 180
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@77
    const-string/jumbo v1, "eat-comment"

    #@7a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7d
    .line 219
    new-array v0, v7, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@7f
    .line 220
    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@81
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@84
    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    #@87
    aput-object v1, v0, v5

    #@89
    .line 222
    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@8b
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    #@8e
    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    #@91
    aput-object v1, v0, v6

    #@93
    .line 218
    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@95
    .line 232
    const/4 v0, 0x3

    #@96
    new-array v0, v0, [Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@98
    .line 237
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@9a
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@9d
    .line 238
    new-array v3, v6, [Ljava/lang/String;

    #@9f
    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    #@a2
    aput-object v4, v3, v5

    #@a4
    .line 239
    const/16 v4, 0x2711

    #@a6
    .line 237
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    #@a9
    aput-object v1, v0, v5

    #@ab
    .line 240
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@ad
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    #@b0
    .line 241
    new-array v3, v6, [Ljava/lang/String;

    #@b2
    const-string/jumbo v4, "android.permission.READ_CALL_LOG"

    #@b5
    aput-object v4, v3, v5

    #@b7
    .line 240
    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    #@ba
    aput-object v1, v0, v6

    #@bc
    .line 243
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@be
    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    #@c1
    .line 244
    new-array v3, v6, [Ljava/lang/String;

    #@c3
    const-string/jumbo v4, "android.permission.WRITE_CALL_LOG"

    #@c6
    aput-object v4, v3, v5

    #@c8
    .line 243
    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    #@cb
    aput-object v1, v0, v7

    #@cd
    .line 231
    sput-object v0, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@cf
    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@d1
    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    #@d3
    .line 259
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    #@d5
    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@d7
    .line 263
    sput-boolean v6, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    #@d9
    .line 663
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    #@db
    const/4 v1, 0x0

    #@dc
    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$SplitNameComparator;)V

    #@df
    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    #@e1
    .line 5728
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@e3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@e6
    sput-object v0, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    #@e8
    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 261
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@6
    .line 430
    new-instance v0, Landroid/util/DisplayMetrics;

    #@8
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@b
    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@d
    .line 431
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@f
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@12
    .line 429
    return-void
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/16 v4, 0x2e

    #@3
    const/4 v5, 0x0

    #@4
    .line 2278
    if-eqz p1, :cond_0

    #@6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v3

    #@a
    if-gtz v3, :cond_1

    #@c
    .line 2279
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Empty class name in package "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    aput-object v3, p2, v5

    #@22
    .line 2280
    return-object v6

    #@23
    .line 2282
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 2283
    .local v2, "cls":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    .line 2284
    .local v1, "c":C
    if-ne v1, v4, :cond_2

    #@2d
    .line 2285
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    return-object v3

    #@43
    .line 2287
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    #@46
    move-result v3

    #@47
    if-gez v3, :cond_3

    #@49
    .line 2288
    new-instance v0, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4e
    .line 2289
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 2290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 2291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    return-object v3

    #@5d
    .line 2293
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    return-object v3
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "procSeq"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 2298
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 2299
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 2300
    .local v0, "c":C
    if-eqz p0, :cond_2

    #@d
    const/16 v4, 0x3a

    #@f
    if-ne v0, v4, :cond_2

    #@11
    .line 2301
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@14
    move-result v4

    #@15
    const/4 v5, 0x2

    #@16
    if-ge v4, v5, :cond_0

    #@18
    .line 2302
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Bad "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string/jumbo v5, " name "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    const-string/jumbo v5, " in package "

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 2303
    const-string/jumbo v5, ": must be at least two characters"

    #@41
    .line 2302
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    aput-object v4, p3, v6

    #@4b
    .line 2304
    return-object v7

    #@4c
    .line 2306
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 2307
    .local v3, "subName":Ljava/lang/String;
    invoke-static {v3, v6, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .line 2308
    .local v1, "nameError":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@56
    .line 2309
    new-instance v4, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v5, "Invalid "

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    const-string/jumbo v5, " name "

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    const-string/jumbo v5, " in package "

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    .line 2310
    const-string/jumbo v5, ": "

    #@7f
    .line 2309
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    aput-object v4, p3, v6

    #@8d
    .line 2311
    return-object v7

    #@8e
    .line 2313
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v4

    #@9f
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@a2
    move-result-object v4

    #@a3
    return-object v4

    #@a4
    .line 2315
    .end local v1    # "nameError":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v8, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    .line 2316
    .restart local v1    # "nameError":Ljava/lang/String;
    if-eqz v1, :cond_3

    #@aa
    const-string/jumbo v4, "system"

    #@ad
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v4

    #@b1
    if-eqz v4, :cond_4

    #@b3
    .line 2321
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@b6
    move-result-object v4

    #@b7
    return-object v4

    #@b8
    .line 2317
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v5, "Invalid "

    #@c0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v4

    #@c4
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v4

    #@c8
    const-string/jumbo v5, " name "

    #@cb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v4

    #@cf
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    const-string/jumbo v5, " in package "

    #@d6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v4

    #@da
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v4

    #@de
    .line 2318
    const-string/jumbo v5, ": "

    #@e1
    .line 2317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v4

    #@e5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v4

    #@e9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v4

    #@ed
    aput-object v4, p3, v6

    #@ef
    .line 2319
    return-object v7
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2327
    and-int/lit8 v2, p3, 0x8

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "system"

    #@7
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 2330
    :cond_0
    if-eqz p4, :cond_5

    #@f
    .line 2331
    array-length v2, p4

    #@10
    add-int/lit8 v0, v2, -0x1

    #@12
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    #@14
    .line 2332
    aget-object v1, p4, v0

    #@16
    .line 2333
    .local v1, "sp":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_1

    #@22
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_4

    #@28
    .line 2334
    :cond_1
    return-object p0

    #@29
    .line 2328
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    #@2b
    .end local p1    # "defProc":Ljava/lang/String;
    :goto_1
    return-object p1

    #@2c
    .restart local p1    # "defProc":Ljava/lang/String;
    :cond_3
    move-object p1, p0

    #@2d
    goto :goto_1

    #@2e
    .line 2331
    .restart local v0    # "i":I
    .restart local v1    # "sp":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@30
    goto :goto_0

    #@31
    .line 2338
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    #@33
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@36
    move-result v2

    #@37
    if-gtz v2, :cond_7

    #@39
    .line 2339
    :cond_6
    return-object p1

    #@3a
    .line 2341
    :cond_7
    const-string/jumbo v2, "process"

    #@3d
    invoke-static {p0, p2, v2, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    return-object v2
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "outError"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2346
    if-nez p2, :cond_0

    #@3
    .line 2347
    return-object p1

    #@4
    .line 2349
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v0

    #@8
    if-gtz v0, :cond_1

    #@a
    .line 2350
    return-object v1

    #@b
    .line 2352
    :cond_1
    const-string/jumbo v0, "taskAffinity"

    #@e
    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method private static checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z
    .locals 3
    .param p0, "flags"    # I
    .param p1, "state"    # Landroid/content/pm/PackageUserState;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 478
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->installed:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 479
    :cond_0
    and-int/lit16 v2, p0, 0x2000

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 478
    :cond_1
    :goto_0
    return v0

    #@f
    :cond_2
    move v0, v1

    #@10
    .line 479
    goto :goto_0
.end method

.method public static closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .locals 1
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;

    #@0
    .prologue
    .line 5747
    if-eqz p0, :cond_0

    #@2
    .line 5749
    :try_start_0
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 5746
    :cond_0
    :goto_0
    return-void

    #@6
    .line 5750
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1124
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;I)V

    #@3
    .line 1125
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@5
    if-eqz v3, :cond_0

    #@7
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    .line 1126
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    #@10
    .line 1127
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/content/pm/PackageParser$Package;

    #@18
    .line 1128
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@1a
    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@1c
    .line 1129
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@1e
    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@20
    .line 1130
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@22
    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@24
    .line 1126
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_1

    #@27
    .line 1125
    .end local v0    # "childCount":I
    .end local v1    # "childPkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@28
    .restart local v0    # "childCount":I
    goto :goto_0

    #@29
    .line 1123
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    .locals 28
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1156
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    .line 1159
    .local v5, "apkPath":Ljava/lang/String;
    const/16 v24, 0x0

    #@6
    .line 1161
    .local v24, "verified":Z
    const/4 v4, 0x0

    #@7
    .line 1162
    .local v4, "allSignersCerts":[[Ljava/security/cert/Certificate;
    const/16 v20, 0x0

    #@9
    .line 1164
    .local v20, "signatures":[Landroid/content/pm/Signature;
    :try_start_0
    const-string/jumbo v25, "verifyV2"

    #@c
    const-wide/32 v26, 0x40000

    #@f
    move-wide/from16 v0, v26

    #@11
    move-object/from16 v2, v25

    #@13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@16
    .line 1165
    invoke-static {v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    #@19
    move-result-object v4

    #@1a
    .line 1166
    .local v4, "allSignersCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v4}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v20

    #@1e
    .line 1168
    .local v20, "signatures":[Landroid/content/pm/Signature;
    const/16 v24, 0x1

    #@20
    .line 1178
    const-wide/32 v26, 0x40000

    #@23
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    #@26
    .line 1181
    .end local v4    # "allSignersCerts":[[Ljava/security/cert/Certificate;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    :goto_0
    if-eqz v24, :cond_1

    #@28
    .line 1182
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@2c
    move-object/from16 v25, v0

    #@2e
    if-nez v25, :cond_0

    #@30
    .line 1183
    move-object/from16 v0, p0

    #@32
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@34
    .line 1184
    move-object/from16 v0, v20

    #@36
    move-object/from16 v1, p0

    #@38
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@3a
    .line 1185
    new-instance v25, Landroid/util/ArraySet;

    #@3c
    array-length v0, v4

    #@3d
    move/from16 v26, v0

    #@3f
    invoke-direct/range {v25 .. v26}, Landroid/util/ArraySet;-><init>(I)V

    #@42
    move-object/from16 v0, v25

    #@44
    move-object/from16 v1, p0

    #@46
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@48
    .line 1186
    const/4 v14, 0x0

    #@49
    .local v14, "i":I
    :goto_1
    array-length v0, v4

    #@4a
    move/from16 v25, v0

    #@4c
    move/from16 v0, v25

    #@4e
    if-ge v14, v0, :cond_1

    #@50
    .line 1187
    aget-object v22, v4, v14

    #@52
    .line 1188
    .local v22, "signerCerts":[Ljava/security/cert/Certificate;
    const/16 v25, 0x0

    #@54
    aget-object v21, v22, v25

    #@56
    .line 1189
    .local v21, "signerCert":Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    #@58
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@5a
    move-object/from16 v25, v0

    #@5c
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@5f
    move-result-object v26

    #@60
    invoke-virtual/range {v25 .. v26}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@63
    .line 1186
    add-int/lit8 v14, v14, 0x1

    #@65
    goto :goto_1

    #@66
    .line 1171
    .end local v14    # "i":I
    .end local v21    # "signerCert":Ljava/security/cert/Certificate;
    .end local v22    # "signerCerts":[Ljava/security/cert/Certificate;
    .local v20, "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v7

    #@67
    .line 1173
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@69
    .line 1174
    new-instance v26, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v27, "Failed to collect certificates from "

    #@71
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v26

    #@75
    move-object/from16 v0, v26

    #@77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v26

    #@7b
    .line 1175
    const-string/jumbo v27, " using APK Signature Scheme v2"

    #@7e
    .line 1174
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v26

    #@82
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v26

    #@86
    .line 1173
    const/16 v27, -0x67

    #@88
    move-object/from16 v0, v25

    #@8a
    move/from16 v1, v27

    #@8c
    move-object/from16 v2, v26

    #@8e
    invoke-direct {v0, v1, v2, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@91
    throw v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@92
    .line 1177
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    #@93
    .line 1178
    const-wide/32 v26, 0x40000

    #@96
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    #@99
    .line 1177
    throw v25

    #@9a
    .line 1169
    :catch_1
    move-exception v6

    #@9b
    .line 1178
    .local v6, "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    const-wide/32 v26, 0x40000

    #@9e
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    #@a1
    goto :goto_0

    #@a2
    .line 1192
    .end local v6    # "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    :cond_0
    move-object/from16 v0, p0

    #@a4
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@a6
    move-object/from16 v25, v0

    #@a8
    move-object/from16 v0, v25

    #@aa
    move-object/from16 v1, v20

    #@ac
    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    #@af
    move-result v25

    #@b0
    if-nez v25, :cond_1

    #@b2
    .line 1193
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@b4
    .line 1195
    new-instance v26, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    move-object/from16 v0, v26

    #@bb
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v26

    #@bf
    const-string/jumbo v27, " has mismatched certificates"

    #@c2
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v26

    #@c6
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v26

    #@ca
    .line 1194
    const/16 v27, -0x68

    #@cc
    .line 1193
    move-object/from16 v0, v25

    #@ce
    move/from16 v1, v27

    #@d0
    move-object/from16 v2, v26

    #@d2
    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@d5
    throw v25

    #@d6
    .line 1203
    :cond_1
    const/16 v16, 0x0

    #@d8
    .line 1205
    .local v16, "jarFile":Landroid/util/jar/StrictJarFile;
    :try_start_2
    const-string/jumbo v25, "strictJarFileCtor"

    #@db
    const-wide/32 v26, 0x40000

    #@de
    move-wide/from16 v0, v26

    #@e0
    move-object/from16 v2, v25

    #@e2
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@e5
    .line 1210
    and-int/lit8 v25, p2, 0x40

    #@e7
    if-nez v25, :cond_2

    #@e9
    const/16 v19, 0x1

    #@eb
    .line 1211
    .local v19, "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_2
    new-instance v17, Landroid/util/jar/StrictJarFile;

    #@ed
    .line 1213
    if-eqz v24, :cond_3

    #@ef
    const/16 v25, 0x0

    #@f1
    .line 1211
    :goto_3
    move-object/from16 v0, v17

    #@f3
    move/from16 v1, v25

    #@f5
    move/from16 v2, v19

    #@f7
    invoke-direct {v0, v5, v1, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@fa
    .line 1215
    .local v17, "jarFile":Landroid/util/jar/StrictJarFile;
    const-wide/32 v26, 0x40000

    #@fd
    :try_start_3
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    #@100
    .line 1218
    .end local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    const-string/jumbo v25, "AndroidManifest.xml"

    #@103
    move-object/from16 v0, v17

    #@105
    move-object/from16 v1, v25

    #@107
    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@10a
    move-result-object v18

    #@10b
    .line 1219
    .local v18, "manifestEntry":Ljava/util/zip/ZipEntry;
    if-nez v18, :cond_4

    #@10d
    .line 1220
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@10f
    .line 1221
    new-instance v26, Ljava/lang/StringBuilder;

    #@111
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v27, "Package "

    #@117
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v26

    #@11b
    move-object/from16 v0, v26

    #@11d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v26

    #@121
    const-string/jumbo v27, " has no manifest"

    #@124
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v26

    #@128
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v26

    #@12c
    .line 1220
    const/16 v27, -0x65

    #@12e
    move-object/from16 v0, v25

    #@130
    move/from16 v1, v27

    #@132
    move-object/from16 v2, v26

    #@134
    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@137
    throw v25
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@138
    .line 1279
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v8

    #@139
    .local v8, "e":Ljava/security/GeneralSecurityException;
    move-object/from16 v16, v17

    #@13b
    .line 1280
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_4
    :try_start_4
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@13d
    .line 1281
    new-instance v26, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    const-string/jumbo v27, "Failed to collect certificates from "

    #@145
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v26

    #@149
    move-object/from16 v0, v26

    #@14b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v26

    #@14f
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v26

    #@153
    .line 1280
    const/16 v27, -0x69

    #@155
    move-object/from16 v0, v25

    #@157
    move/from16 v1, v27

    #@159
    move-object/from16 v2, v26

    #@15b
    invoke-direct {v0, v1, v2, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@15e
    throw v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@15f
    .line 1285
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catchall_1
    move-exception v25

    #@160
    .line 1286
    :goto_5
    invoke-static/range {v16 .. v16}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    #@163
    .line 1285
    throw v25

    #@164
    .line 1210
    .restart local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    :cond_2
    const/16 v19, 0x0

    #@166
    .restart local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    goto :goto_2

    #@167
    .line 1213
    :cond_3
    const/16 v25, 0x1

    #@169
    goto :goto_3

    #@16a
    .line 1225
    .end local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    if-eqz v24, :cond_5

    #@16c
    .line 1286
    invoke-static/range {v17 .. v17}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    #@16f
    .line 1226
    return-void

    #@170
    .line 1230
    :cond_5
    :try_start_5
    const-string/jumbo v25, "verifyV1"

    #@173
    const-wide/32 v26, 0x40000

    #@176
    move-wide/from16 v0, v26

    #@178
    move-object/from16 v2, v25

    #@17a
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@17d
    .line 1231
    new-instance v23, Ljava/util/ArrayList;

    #@17f
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    #@182
    .line 1232
    .local v23, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    move-object/from16 v0, v23

    #@184
    move-object/from16 v1, v18

    #@186
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@189
    .line 1235
    and-int/lit8 v25, p2, 0x40

    #@18b
    if-nez v25, :cond_7

    #@18d
    .line 1236
    invoke-virtual/range {v17 .. v17}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    #@190
    move-result-object v15

    #@191
    .line 1237
    .local v15, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_6
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@194
    move-result v25

    #@195
    if-eqz v25, :cond_7

    #@197
    .line 1238
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19a
    move-result-object v9

    #@19b
    check-cast v9, Ljava/util/zip/ZipEntry;

    #@19d
    .line 1240
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    #@1a0
    move-result v25

    #@1a1
    if-nez v25, :cond_6

    #@1a3
    .line 1242
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@1a6
    move-result-object v12

    #@1a7
    .line 1243
    .local v12, "entryName":Ljava/lang/String;
    const-string/jumbo v25, "META-INF/"

    #@1aa
    move-object/from16 v0, v25

    #@1ac
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1af
    move-result v25

    #@1b0
    if-nez v25, :cond_6

    #@1b2
    .line 1244
    const-string/jumbo v25, "AndroidManifest.xml"

    #@1b5
    move-object/from16 v0, v25

    #@1b7
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ba
    move-result v25

    #@1bb
    if-nez v25, :cond_6

    #@1bd
    .line 1246
    move-object/from16 v0, v23

    #@1bf
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@1c2
    goto :goto_6

    #@1c3
    .line 1282
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "entryName":Ljava/lang/String;
    .end local v15    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catch_3
    move-exception v7

    #@1c4
    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v16, v17

    #@1c6
    .line 1283
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_7
    :try_start_6
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@1c8
    .line 1284
    new-instance v26, Ljava/lang/StringBuilder;

    #@1ca
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@1cd
    const-string/jumbo v27, "Failed to collect certificates from "

    #@1d0
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v26

    #@1d4
    move-object/from16 v0, v26

    #@1d6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v26

    #@1da
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dd
    move-result-object v26

    #@1de
    .line 1283
    const/16 v27, -0x67

    #@1e0
    move-object/from16 v0, v25

    #@1e2
    move/from16 v1, v27

    #@1e4
    move-object/from16 v2, v26

    #@1e6
    invoke-direct {v0, v1, v2, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@1e9
    throw v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@1ea
    .line 1253
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    .restart local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_7
    :try_start_7
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ed
    move-result-object v10

    #@1ee
    .local v10, "entry$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@1f1
    move-result v25

    #@1f2
    if-eqz v25, :cond_b

    #@1f4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f7
    move-result-object v9

    #@1f8
    check-cast v9, Ljava/util/zip/ZipEntry;

    #@1fa
    .line 1254
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v17

    #@1fc
    invoke-static {v0, v9}, Landroid/content/pm/PackageParser;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    #@1ff
    move-result-object v11

    #@200
    .line 1255
    .local v11, "entryCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@203
    move-result v25

    #@204
    if-eqz v25, :cond_9

    #@206
    .line 1256
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@208
    .line 1257
    new-instance v26, Ljava/lang/StringBuilder;

    #@20a
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@20d
    const-string/jumbo v27, "Package "

    #@210
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v26

    #@214
    move-object/from16 v0, v26

    #@216
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v26

    #@21a
    const-string/jumbo v27, " has no certificates at entry "

    #@21d
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v26

    #@221
    .line 1258
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@224
    move-result-object v27

    #@225
    .line 1257
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v26

    #@229
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22c
    move-result-object v26

    #@22d
    .line 1256
    const/16 v27, -0x67

    #@22f
    move-object/from16 v0, v25

    #@231
    move/from16 v1, v27

    #@233
    move-object/from16 v2, v26

    #@235
    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@238
    throw v25

    #@239
    .line 1285
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v11    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catchall_2
    move-exception v25

    #@23a
    move-object/from16 v16, v17

    #@23c
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .local v16, "jarFile":Landroid/util/jar/StrictJarFile;
    goto/16 :goto_5

    #@23e
    .line 1260
    .end local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "entry$iterator":Ljava/util/Iterator;
    .restart local v11    # "entryCerts":[[Ljava/security/cert/Certificate;
    .restart local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_9
    invoke-static {v11}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    #@241
    move-result-object v13

    #@242
    .line 1262
    .local v13, "entrySignatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    #@244
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@246
    move-object/from16 v25, v0

    #@248
    if-nez v25, :cond_a

    #@24a
    .line 1263
    move-object/from16 v0, p0

    #@24c
    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@24e
    .line 1264
    move-object/from16 v0, p0

    #@250
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@252
    .line 1265
    new-instance v25, Landroid/util/ArraySet;

    #@254
    invoke-direct/range {v25 .. v25}, Landroid/util/ArraySet;-><init>()V

    #@257
    move-object/from16 v0, v25

    #@259
    move-object/from16 v1, p0

    #@25b
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@25d
    .line 1266
    const/4 v14, 0x0

    #@25e
    .restart local v14    # "i":I
    :goto_8
    array-length v0, v11

    #@25f
    move/from16 v25, v0

    #@261
    move/from16 v0, v25

    #@263
    if-ge v14, v0, :cond_8

    #@265
    .line 1267
    move-object/from16 v0, p0

    #@267
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@269
    move-object/from16 v25, v0

    #@26b
    aget-object v26, v11, v14

    #@26d
    const/16 v27, 0x0

    #@26f
    aget-object v26, v26, v27

    #@271
    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@274
    move-result-object v26

    #@275
    invoke-virtual/range {v25 .. v26}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@278
    .line 1266
    add-int/lit8 v14, v14, 0x1

    #@27a
    goto :goto_8

    #@27b
    .line 1270
    .end local v14    # "i":I
    :cond_a
    move-object/from16 v0, p0

    #@27d
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@27f
    move-object/from16 v25, v0

    #@281
    move-object/from16 v0, v25

    #@283
    invoke-static {v0, v13}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    #@286
    move-result v25

    #@287
    if-nez v25, :cond_8

    #@289
    .line 1271
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@28b
    .line 1272
    new-instance v26, Ljava/lang/StringBuilder;

    #@28d
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@290
    const-string/jumbo v27, "Package "

    #@293
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v26

    #@297
    move-object/from16 v0, v26

    #@299
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29c
    move-result-object v26

    #@29d
    .line 1273
    const-string/jumbo v27, " has mismatched certificates at entry "

    #@2a0
    .line 1272
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v26

    #@2a4
    .line 1274
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@2a7
    move-result-object v27

    #@2a8
    .line 1272
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v26

    #@2ac
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2af
    move-result-object v26

    #@2b0
    const/16 v27, -0x68

    #@2b2
    .line 1271
    move-object/from16 v0, v25

    #@2b4
    move/from16 v1, v27

    #@2b6
    move-object/from16 v2, v26

    #@2b8
    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@2bb
    throw v25

    #@2bc
    .line 1278
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v13    # "entrySignatures":[Landroid/content/pm/Signature;
    :cond_b
    const-wide/32 v26, 0x40000

    #@2bf
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@2c2
    .line 1286
    invoke-static/range {v17 .. v17}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    #@2c5
    .line 1155
    return-void

    #@2c6
    .line 1279
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    .end local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .local v16, "jarFile":Landroid/util/jar/StrictJarFile;
    :catch_4
    move-exception v8

    #@2c7
    .restart local v8    # "e":Ljava/security/GeneralSecurityException;
    goto/16 :goto_4

    #@2c9
    .line 1282
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catch_5
    move-exception v7

    #@2ca
    .restart local v7    # "e":Ljava/lang/Exception;
    goto/16 :goto_7
.end method

.method private static collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;I)V
    .locals 6
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/32 v4, 0x40000

    #@3
    const/4 v1, 0x0

    #@4
    .line 1136
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@6
    .line 1137
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@8
    .line 1138
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@a
    .line 1140
    const-string/jumbo v1, "collectCertificates"

    #@d
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@10
    .line 1142
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@12
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@14
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@17
    invoke-static {p0, v1, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    #@1a
    .line 1144
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@1c
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    .line 1145
    const/4 v0, 0x0

    #@23
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@25
    array-length v1, v1

    #@26
    if-ge v0, v1, :cond_0

    #@28
    .line 1146
    new-instance v1, Ljava/io/File;

    #@2a
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@2c
    aget-object v2, v2, v0

    #@2e
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@31
    invoke-static {p0, v1, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 1145
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 1150
    .end local v0    # "i":I
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3a
    .line 1135
    return-void

    #@3b
    .line 1149
    :catchall_0
    move-exception v1

    #@3c
    .line 1150
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3f
    .line 1149
    throw v1
.end method

.method private static convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "certs"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1292
    array-length v2, p0

    #@1
    new-array v1, v2, [Landroid/content/pm/Signature;

    #@3
    .line 1293
    .local v1, "res":[Landroid/content/pm/Signature;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1294
    new-instance v2, Landroid/content/pm/Signature;

    #@9
    aget-object v3, p0, v0

    #@b
    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    #@e
    aput-object v2, v1, v0

    #@10
    .line 1293
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1296
    :cond_0
    return-object v1
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 6
    .param p0, "flags"    # I
    .param p1, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 5325
    if-eqz p4, :cond_0

    #@4
    .line 5328
    return v4

    #@5
    .line 5330
    :cond_0
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@7
    if-eqz v2, :cond_2

    #@9
    .line 5331
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@b
    if-ne v2, v4, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 5332
    .local v0, "enabled":Z
    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@10
    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@12
    if-eq v2, v0, :cond_2

    #@14
    .line 5333
    return v4

    #@15
    .line 5331
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    #@16
    .restart local v0    # "enabled":Z
    goto :goto_0

    #@17
    .line 5336
    .end local v0    # "enabled":Z
    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@19
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1b
    const/high16 v3, 0x40000000    # 2.0f

    #@1d
    and-int/2addr v2, v3

    #@1e
    if-eqz v2, :cond_3

    #@20
    const/4 v1, 0x1

    #@21
    .line 5337
    .local v1, "suspended":Z
    :goto_1
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    #@23
    if-eq v2, v1, :cond_4

    #@25
    .line 5338
    return v4

    #@26
    .line 5336
    .end local v1    # "suspended":Z
    :cond_3
    const/4 v1, 0x0

    #@27
    .restart local v1    # "suspended":Z
    goto :goto_1

    #@28
    .line 5340
    :cond_4
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    #@2a
    if-eqz v2, :cond_5

    #@2c
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    #@2e
    if-eqz v2, :cond_6

    #@30
    .line 5341
    :cond_5
    return v4

    #@31
    .line 5343
    :cond_6
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    #@33
    if-eqz v2, :cond_7

    #@35
    .line 5344
    return v4

    #@36
    .line 5346
    :cond_7
    and-int/lit16 v2, p0, 0x80

    #@38
    if-eqz v2, :cond_9

    #@3a
    .line 5347
    if-nez p3, :cond_8

    #@3c
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@3e
    if-eqz v2, :cond_9

    #@40
    .line 5348
    :cond_8
    return v4

    #@41
    .line 5350
    :cond_9
    and-int/lit16 v2, p0, 0x400

    #@43
    if-eqz v2, :cond_a

    #@45
    .line 5351
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@47
    if-eqz v2, :cond_a

    #@49
    .line 5352
    return v4

    #@4a
    .line 5354
    :cond_a
    return v5
.end method

.method public static final generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5516
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 5517
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 5518
    return-object v2

    #@b
    .line 5522
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    #@d
    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    #@10
    .line 5523
    .end local p0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12
    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@15
    move-result-object v1

    #@16
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@18
    .line 5524
    return-object v0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5500
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 5501
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 5502
    return-object v2

    #@b
    .line 5504
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    #@d
    iget-object v2, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@f
    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_2

    #@15
    .line 5505
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@17
    return-object v1

    #@18
    .line 5508
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    #@1a
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1c
    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    #@1f
    .line 5509
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@21
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@23
    .line 5510
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    #@25
    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@28
    move-result-object v1

    #@29
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2b
    .line 5511
    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5434
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 5435
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 5436
    return-object v2

    #@b
    .line 5440
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@d
    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    #@10
    .line 5441
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    #@13
    .line 5442
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 5443
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@19
    const/high16 v2, 0x200000

    #@1b
    or-int/2addr v1, v2

    #@1c
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1e
    .line 5447
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    #@21
    .line 5448
    return-object v0

    #@22
    .line 5445
    :cond_2
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@24
    const v2, -0x200001

    #@27
    and-int/2addr v1, v2

    #@28
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2a
    goto :goto_0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    #@0
    .prologue
    .line 5359
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5396
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 5397
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_2

    #@a
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 5400
    invoke-static {p1, p0, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_3

    #@16
    .line 5401
    const v1, 0x8000

    #@19
    and-int/2addr v1, p1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 5402
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@1e
    const/4 v2, 0x4

    #@1f
    if-eq v1, v2, :cond_3

    #@21
    .line 5410
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    invoke-static {v1, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    #@26
    .line 5411
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@28
    return-object v1

    #@29
    .line 5398
    :cond_2
    return-object v2

    #@2a
    .line 5415
    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@2c
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2e
    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    #@31
    .line 5416
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    #@34
    .line 5417
    and-int/lit16 v1, p1, 0x80

    #@36
    if-eqz v1, :cond_4

    #@38
    .line 5418
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@3a
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@3c
    .line 5420
    :cond_4
    and-int/lit16 v1, p1, 0x400

    #@3e
    if-eqz v1, :cond_5

    #@40
    .line 5421
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@42
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@44
    .line 5423
    :cond_5
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    #@46
    if-eqz v1, :cond_6

    #@48
    .line 5424
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4a
    const/high16 v2, 0x200000

    #@4c
    or-int/2addr v1, v2

    #@4d
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4f
    .line 5428
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    #@52
    .line 5429
    return-object v0

    #@53
    .line 5426
    :cond_6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@55
    const v2, -0x200001

    #@58
    and-int/2addr v1, v2

    #@59
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5b
    goto :goto_0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2
    .param p0, "i"    # Landroid/content/pm/PackageParser$Instrumentation;
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5648
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 5649
    :cond_0
    and-int/lit16 v1, p1, 0x80

    #@6
    if-nez v1, :cond_1

    #@8
    .line 5650
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@a
    return-object v1

    #@b
    .line 5652
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    #@d
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@f
    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    #@12
    .line 5653
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    #@14
    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    #@16
    .line 5654
    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 11
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    #@0
    .prologue
    .line 470
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v10

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move v3, p2

    #@7
    move-wide v4, p3

    #@8
    move-wide/from16 v6, p5

    #@a
    move-object/from16 v8, p7

    #@c
    move-object/from16 v9, p8

    #@e
    .line 469
    invoke-static/range {v1 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 21
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    #@0
    .prologue
    .line 489
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v0, p2

    #@2
    move-object/from16 v1, p8

    #@4
    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v16

    #@8
    if-eqz v16, :cond_6

    #@a
    move-object/from16 v0, p0

    #@c
    move/from16 v1, p2

    #@e
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    #@11
    move-result v16

    #@12
    if-eqz v16, :cond_6

    #@14
    .line 492
    new-instance v10, Landroid/content/pm/PackageInfo;

    #@16
    invoke-direct {v10}, Landroid/content/pm/PackageInfo;-><init>()V

    #@19
    .line 493
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@1d
    move-object/from16 v16, v0

    #@1f
    move-object/from16 v0, v16

    #@21
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@23
    .line 494
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@27
    move-object/from16 v16, v0

    #@29
    move-object/from16 v0, v16

    #@2b
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    #@2d
    .line 495
    move-object/from16 v0, p0

    #@2f
    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@31
    move/from16 v16, v0

    #@33
    move/from16 v0, v16

    #@35
    iput v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    #@37
    .line 496
    move-object/from16 v0, p0

    #@39
    iget v0, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@3b
    move/from16 v16, v0

    #@3d
    move/from16 v0, v16

    #@3f
    iput v0, v10, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    #@41
    .line 497
    move-object/from16 v0, p0

    #@43
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    #@45
    move-object/from16 v16, v0

    #@47
    move-object/from16 v0, v16

    #@49
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    #@4b
    .line 498
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@4f
    move-object/from16 v16, v0

    #@51
    move-object/from16 v0, v16

    #@53
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@55
    .line 499
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    #@59
    move-object/from16 v16, v0

    #@5b
    move-object/from16 v0, v16

    #@5d
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    #@5f
    .line 500
    move-object/from16 v0, p0

    #@61
    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    #@63
    move/from16 v16, v0

    #@65
    move/from16 v0, v16

    #@67
    iput v0, v10, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    #@69
    .line 501
    move-object/from16 v0, p0

    #@6b
    move/from16 v1, p2

    #@6d
    move-object/from16 v2, p8

    #@6f
    move/from16 v3, p9

    #@71
    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@74
    move-result-object v16

    #@75
    move-object/from16 v0, v16

    #@77
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@79
    .line 502
    move-object/from16 v0, p0

    #@7b
    iget v0, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    #@7d
    move/from16 v16, v0

    #@7f
    move/from16 v0, v16

    #@81
    iput v0, v10, Landroid/content/pm/PackageInfo;->installLocation:I

    #@83
    .line 503
    move-object/from16 v0, p0

    #@85
    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    #@87
    move/from16 v16, v0

    #@89
    move/from16 v0, v16

    #@8b
    iput-boolean v0, v10, Landroid/content/pm/PackageInfo;->coreApp:Z

    #@8d
    .line 504
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8f
    move-object/from16 v16, v0

    #@91
    move-object/from16 v0, v16

    #@93
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@95
    move/from16 v16, v0

    #@97
    and-int/lit8 v16, v16, 0x1

    #@99
    if-nez v16, :cond_0

    #@9b
    .line 505
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9d
    move-object/from16 v16, v0

    #@9f
    move-object/from16 v0, v16

    #@a1
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a3
    move/from16 v16, v0

    #@a5
    move/from16 v0, v16

    #@a7
    and-int/lit16 v0, v0, 0x80

    #@a9
    move/from16 v16, v0

    #@ab
    if-eqz v16, :cond_1

    #@ad
    .line 506
    :cond_0
    move-object/from16 v0, p0

    #@af
    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    #@b1
    move/from16 v16, v0

    #@b3
    move/from16 v0, v16

    #@b5
    iput-boolean v0, v10, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    #@b7
    .line 508
    :cond_1
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    #@bb
    move-object/from16 v16, v0

    #@bd
    move-object/from16 v0, v16

    #@bf
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@c1
    .line 509
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    #@c5
    move-object/from16 v16, v0

    #@c7
    move-object/from16 v0, v16

    #@c9
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    #@cb
    .line 510
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    #@cf
    move-object/from16 v16, v0

    #@d1
    move-object/from16 v0, v16

    #@d3
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    #@d5
    .line 511
    move-wide/from16 v0, p3

    #@d7
    iput-wide v0, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    #@d9
    .line 512
    move-wide/from16 v0, p5

    #@db
    iput-wide v0, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    #@dd
    .line 513
    move/from16 v0, p2

    #@df
    and-int/lit16 v0, v0, 0x100

    #@e1
    move/from16 v16, v0

    #@e3
    if-eqz v16, :cond_2

    #@e5
    .line 514
    move-object/from16 v0, p1

    #@e7
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->gids:[I

    #@e9
    .line 516
    :cond_2
    move/from16 v0, p2

    #@eb
    and-int/lit16 v0, v0, 0x4000

    #@ed
    move/from16 v16, v0

    #@ef
    if-eqz v16, :cond_5

    #@f1
    .line 517
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@f5
    move-object/from16 v16, v0

    #@f7
    if-eqz v16, :cond_7

    #@f9
    move-object/from16 v0, p0

    #@fb
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@fd
    move-object/from16 v16, v0

    #@ff
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@102
    move-result v4

    #@103
    .line 518
    .local v4, "N":I
    :goto_0
    if-lez v4, :cond_3

    #@105
    .line 519
    new-array v0, v4, [Landroid/content/pm/ConfigurationInfo;

    #@107
    move-object/from16 v16, v0

    #@109
    move-object/from16 v0, v16

    #@10b
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    #@10d
    .line 520
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@111
    move-object/from16 v16, v0

    #@113
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    #@115
    move-object/from16 v17, v0

    #@117
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11a
    .line 522
    :cond_3
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    #@11e
    move-object/from16 v16, v0

    #@120
    if-eqz v16, :cond_8

    #@122
    move-object/from16 v0, p0

    #@124
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    #@126
    move-object/from16 v16, v0

    #@128
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@12b
    move-result v4

    #@12c
    .line 523
    :goto_1
    if-lez v4, :cond_4

    #@12e
    .line 524
    new-array v0, v4, [Landroid/content/pm/FeatureInfo;

    #@130
    move-object/from16 v16, v0

    #@132
    move-object/from16 v0, v16

    #@134
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    #@136
    .line 525
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    #@13a
    move-object/from16 v16, v0

    #@13c
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    #@13e
    move-object/from16 v17, v0

    #@140
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@143
    .line 527
    :cond_4
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    #@147
    move-object/from16 v16, v0

    #@149
    if-eqz v16, :cond_9

    #@14b
    move-object/from16 v0, p0

    #@14d
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    #@14f
    move-object/from16 v16, v0

    #@151
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@154
    move-result v4

    #@155
    .line 528
    :goto_2
    if-lez v4, :cond_5

    #@157
    .line 529
    new-array v0, v4, [Landroid/content/pm/FeatureGroupInfo;

    #@159
    move-object/from16 v16, v0

    #@15b
    move-object/from16 v0, v16

    #@15d
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    #@15f
    .line 530
    move-object/from16 v0, p0

    #@161
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    #@163
    move-object/from16 v16, v0

    #@165
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    #@167
    move-object/from16 v17, v0

    #@169
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@16c
    .line 533
    .end local v4    # "N":I
    :cond_5
    and-int/lit8 v16, p2, 0x1

    #@16e
    if-eqz v16, :cond_b

    #@170
    .line 534
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@174
    move-object/from16 v16, v0

    #@176
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@179
    move-result v4

    #@17a
    .line 535
    .restart local v4    # "N":I
    if-lez v4, :cond_b

    #@17c
    .line 536
    const/4 v7, 0x0

    #@17d
    .line 537
    .local v7, "num":I
    new-array v12, v4, [Landroid/content/pm/ActivityInfo;

    #@17f
    .line 538
    .local v12, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    #@180
    .local v6, "i":I
    move v8, v7

    #@181
    .end local v7    # "num":I
    .local v8, "num":I
    :goto_3
    if-ge v6, v4, :cond_a

    #@183
    .line 539
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@187
    move-object/from16 v16, v0

    #@189
    move-object/from16 v0, v16

    #@18b
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18e
    move-result-object v5

    #@18f
    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    #@191
    .line 540
    .local v5, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v0, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@193
    move-object/from16 v16, v0

    #@195
    move-object/from16 v0, p8

    #@197
    move-object/from16 v1, v16

    #@199
    move/from16 v2, p2

    #@19b
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    #@19e
    move-result v16

    #@19f
    if-eqz v16, :cond_1b

    #@1a1
    .line 541
    add-int/lit8 v7, v8, 0x1

    #@1a3
    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    #@1a5
    move-object/from16 v1, p8

    #@1a7
    move/from16 v2, p9

    #@1a9
    invoke-static {v5, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    #@1ac
    move-result-object v16

    #@1ad
    aput-object v16, v12, v8

    #@1af
    .line 538
    :goto_4
    add-int/lit8 v6, v6, 0x1

    #@1b1
    move v8, v7

    #@1b2
    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_3

    #@1b3
    .line 490
    .end local v4    # "N":I
    .end local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_6
    const/16 v16, 0x0

    #@1b5
    return-object v16

    #@1b6
    .line 517
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7
    const/4 v4, 0x0

    #@1b7
    goto/16 :goto_0

    #@1b9
    .line 522
    .restart local v4    # "N":I
    :cond_8
    const/4 v4, 0x0

    #@1ba
    goto/16 :goto_1

    #@1bc
    .line 527
    :cond_9
    const/4 v4, 0x0

    #@1bd
    goto :goto_2

    #@1be
    .line 544
    .restart local v6    # "i":I
    .restart local v8    # "num":I
    .restart local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_a
    invoke-static {v12, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@1c1
    move-result-object v16

    #@1c2
    check-cast v16, [Landroid/content/pm/ActivityInfo;

    #@1c4
    move-object/from16 v0, v16

    #@1c6
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    #@1c8
    .line 547
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_b
    and-int/lit8 v16, p2, 0x2

    #@1ca
    if-eqz v16, :cond_d

    #@1cc
    .line 548
    move-object/from16 v0, p0

    #@1ce
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@1d0
    move-object/from16 v16, v0

    #@1d2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@1d5
    move-result v4

    #@1d6
    .line 549
    .restart local v4    # "N":I
    if-lez v4, :cond_d

    #@1d8
    .line 550
    const/4 v7, 0x0

    #@1d9
    .line 551
    .restart local v7    # "num":I
    new-array v12, v4, [Landroid/content/pm/ActivityInfo;

    #@1db
    .line 552
    .restart local v12    # "res":[Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    #@1dc
    .restart local v6    # "i":I
    move v8, v7

    #@1dd
    .end local v7    # "num":I
    .restart local v8    # "num":I
    :goto_5
    if-ge v6, v4, :cond_c

    #@1df
    .line 553
    move-object/from16 v0, p0

    #@1e1
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@1e3
    move-object/from16 v16, v0

    #@1e5
    move-object/from16 v0, v16

    #@1e7
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ea
    move-result-object v5

    #@1eb
    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    #@1ed
    .line 554
    .restart local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v0, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1ef
    move-object/from16 v16, v0

    #@1f1
    move-object/from16 v0, p8

    #@1f3
    move-object/from16 v1, v16

    #@1f5
    move/from16 v2, p2

    #@1f7
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    #@1fa
    move-result v16

    #@1fb
    if-eqz v16, :cond_1a

    #@1fd
    .line 555
    add-int/lit8 v7, v8, 0x1

    #@1ff
    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    #@201
    move-object/from16 v1, p8

    #@203
    move/from16 v2, p9

    #@205
    invoke-static {v5, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    #@208
    move-result-object v16

    #@209
    aput-object v16, v12, v8

    #@20b
    .line 552
    :goto_6
    add-int/lit8 v6, v6, 0x1

    #@20d
    move v8, v7

    #@20e
    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_5

    #@20f
    .line 558
    .end local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_c
    invoke-static {v12, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@212
    move-result-object v16

    #@213
    check-cast v16, [Landroid/content/pm/ActivityInfo;

    #@215
    move-object/from16 v0, v16

    #@217
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    #@219
    .line 561
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_d
    and-int/lit8 v16, p2, 0x4

    #@21b
    if-eqz v16, :cond_f

    #@21d
    .line 562
    move-object/from16 v0, p0

    #@21f
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@221
    move-object/from16 v16, v0

    #@223
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@226
    move-result v4

    #@227
    .line 563
    .restart local v4    # "N":I
    if-lez v4, :cond_f

    #@229
    .line 564
    const/4 v7, 0x0

    #@22a
    .line 565
    .restart local v7    # "num":I
    new-array v14, v4, [Landroid/content/pm/ServiceInfo;

    #@22c
    .line 566
    .local v14, "res":[Landroid/content/pm/ServiceInfo;
    const/4 v6, 0x0

    #@22d
    .restart local v6    # "i":I
    move v8, v7

    #@22e
    .end local v7    # "num":I
    .restart local v8    # "num":I
    :goto_7
    if-ge v6, v4, :cond_e

    #@230
    .line 567
    move-object/from16 v0, p0

    #@232
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@234
    move-object/from16 v16, v0

    #@236
    move-object/from16 v0, v16

    #@238
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23b
    move-result-object v15

    #@23c
    check-cast v15, Landroid/content/pm/PackageParser$Service;

    #@23e
    .line 568
    .local v15, "s":Landroid/content/pm/PackageParser$Service;
    iget-object v0, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@240
    move-object/from16 v16, v0

    #@242
    move-object/from16 v0, p8

    #@244
    move-object/from16 v1, v16

    #@246
    move/from16 v2, p2

    #@248
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    #@24b
    move-result v16

    #@24c
    if-eqz v16, :cond_19

    #@24e
    .line 569
    add-int/lit8 v7, v8, 0x1

    #@250
    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    #@252
    move-object/from16 v1, p8

    #@254
    move/from16 v2, p9

    #@256
    invoke-static {v15, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    #@259
    move-result-object v16

    #@25a
    aput-object v16, v14, v8

    #@25c
    .line 566
    :goto_8
    add-int/lit8 v6, v6, 0x1

    #@25e
    move v8, v7

    #@25f
    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_7

    #@260
    .line 572
    .end local v15    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_e
    invoke-static {v14, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@263
    move-result-object v16

    #@264
    check-cast v16, [Landroid/content/pm/ServiceInfo;

    #@266
    move-object/from16 v0, v16

    #@268
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    #@26a
    .line 575
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v14    # "res":[Landroid/content/pm/ServiceInfo;
    :cond_f
    and-int/lit8 v16, p2, 0x8

    #@26c
    if-eqz v16, :cond_11

    #@26e
    .line 576
    move-object/from16 v0, p0

    #@270
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@272
    move-object/from16 v16, v0

    #@274
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@277
    move-result v4

    #@278
    .line 577
    .restart local v4    # "N":I
    if-lez v4, :cond_11

    #@27a
    .line 578
    const/4 v7, 0x0

    #@27b
    .line 579
    .restart local v7    # "num":I
    new-array v13, v4, [Landroid/content/pm/ProviderInfo;

    #@27d
    .line 580
    .local v13, "res":[Landroid/content/pm/ProviderInfo;
    const/4 v6, 0x0

    #@27e
    .restart local v6    # "i":I
    move v8, v7

    #@27f
    .end local v7    # "num":I
    .restart local v8    # "num":I
    :goto_9
    if-ge v6, v4, :cond_10

    #@281
    .line 581
    move-object/from16 v0, p0

    #@283
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@285
    move-object/from16 v16, v0

    #@287
    move-object/from16 v0, v16

    #@289
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28c
    move-result-object v11

    #@28d
    check-cast v11, Landroid/content/pm/PackageParser$Provider;

    #@28f
    .line 582
    .local v11, "pr":Landroid/content/pm/PackageParser$Provider;
    iget-object v0, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@291
    move-object/from16 v16, v0

    #@293
    move-object/from16 v0, p8

    #@295
    move-object/from16 v1, v16

    #@297
    move/from16 v2, p2

    #@299
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    #@29c
    move-result v16

    #@29d
    if-eqz v16, :cond_18

    #@29f
    .line 583
    add-int/lit8 v7, v8, 0x1

    #@2a1
    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    #@2a3
    move-object/from16 v1, p8

    #@2a5
    move/from16 v2, p9

    #@2a7
    invoke-static {v11, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    #@2aa
    move-result-object v16

    #@2ab
    aput-object v16, v13, v8

    #@2ad
    .line 580
    :goto_a
    add-int/lit8 v6, v6, 0x1

    #@2af
    move v8, v7

    #@2b0
    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_9

    #@2b1
    .line 586
    .end local v11    # "pr":Landroid/content/pm/PackageParser$Provider;
    :cond_10
    invoke-static {v13, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@2b4
    move-result-object v16

    #@2b5
    check-cast v16, [Landroid/content/pm/ProviderInfo;

    #@2b7
    move-object/from16 v0, v16

    #@2b9
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    #@2bb
    .line 589
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v13    # "res":[Landroid/content/pm/ProviderInfo;
    :cond_11
    and-int/lit8 v16, p2, 0x10

    #@2bd
    if-eqz v16, :cond_12

    #@2bf
    .line 590
    move-object/from16 v0, p0

    #@2c1
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@2c3
    move-object/from16 v16, v0

    #@2c5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@2c8
    move-result v4

    #@2c9
    .line 591
    .restart local v4    # "N":I
    if-lez v4, :cond_12

    #@2cb
    .line 592
    new-array v0, v4, [Landroid/content/pm/InstrumentationInfo;

    #@2cd
    move-object/from16 v16, v0

    #@2cf
    move-object/from16 v0, v16

    #@2d1
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    #@2d3
    .line 593
    const/4 v6, 0x0

    #@2d4
    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v4, :cond_12

    #@2d6
    .line 594
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    #@2d8
    move-object/from16 v17, v0

    #@2da
    .line 595
    move-object/from16 v0, p0

    #@2dc
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@2de
    move-object/from16 v16, v0

    #@2e0
    move-object/from16 v0, v16

    #@2e2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e5
    move-result-object v16

    #@2e6
    check-cast v16, Landroid/content/pm/PackageParser$Instrumentation;

    #@2e8
    .line 594
    move-object/from16 v0, v16

    #@2ea
    move/from16 v1, p2

    #@2ec
    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    #@2ef
    move-result-object v16

    #@2f0
    aput-object v16, v17, v6

    #@2f2
    .line 593
    add-int/lit8 v6, v6, 0x1

    #@2f4
    goto :goto_b

    #@2f5
    .line 599
    .end local v4    # "N":I
    .end local v6    # "i":I
    :cond_12
    move/from16 v0, p2

    #@2f7
    and-int/lit16 v0, v0, 0x1000

    #@2f9
    move/from16 v16, v0

    #@2fb
    if-eqz v16, :cond_15

    #@2fd
    .line 600
    move-object/from16 v0, p0

    #@2ff
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@301
    move-object/from16 v16, v0

    #@303
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@306
    move-result v4

    #@307
    .line 601
    .restart local v4    # "N":I
    if-lez v4, :cond_13

    #@309
    .line 602
    new-array v0, v4, [Landroid/content/pm/PermissionInfo;

    #@30b
    move-object/from16 v16, v0

    #@30d
    move-object/from16 v0, v16

    #@30f
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    #@311
    .line 603
    const/4 v6, 0x0

    #@312
    .restart local v6    # "i":I
    :goto_c
    if-ge v6, v4, :cond_13

    #@314
    .line 604
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    #@316
    move-object/from16 v17, v0

    #@318
    move-object/from16 v0, p0

    #@31a
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@31c
    move-object/from16 v16, v0

    #@31e
    move-object/from16 v0, v16

    #@320
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@323
    move-result-object v16

    #@324
    check-cast v16, Landroid/content/pm/PackageParser$Permission;

    #@326
    move-object/from16 v0, v16

    #@328
    move/from16 v1, p2

    #@32a
    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    #@32d
    move-result-object v16

    #@32e
    aput-object v16, v17, v6

    #@330
    .line 603
    add-int/lit8 v6, v6, 0x1

    #@332
    goto :goto_c

    #@333
    .line 607
    .end local v6    # "i":I
    :cond_13
    move-object/from16 v0, p0

    #@335
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@337
    move-object/from16 v16, v0

    #@339
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@33c
    move-result v4

    #@33d
    .line 608
    if-lez v4, :cond_15

    #@33f
    .line 609
    new-array v0, v4, [Ljava/lang/String;

    #@341
    move-object/from16 v16, v0

    #@343
    move-object/from16 v0, v16

    #@345
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@347
    .line 610
    new-array v0, v4, [I

    #@349
    move-object/from16 v16, v0

    #@34b
    move-object/from16 v0, v16

    #@34d
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    #@34f
    .line 611
    const/4 v6, 0x0

    #@350
    .restart local v6    # "i":I
    :goto_d
    if-ge v6, v4, :cond_15

    #@352
    .line 612
    move-object/from16 v0, p0

    #@354
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@356
    move-object/from16 v16, v0

    #@358
    move-object/from16 v0, v16

    #@35a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35d
    move-result-object v9

    #@35e
    check-cast v9, Ljava/lang/String;

    #@360
    .line 613
    .local v9, "perm":Ljava/lang/String;
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@362
    move-object/from16 v16, v0

    #@364
    aput-object v9, v16, v6

    #@366
    .line 615
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    #@368
    move-object/from16 v16, v0

    #@36a
    aget v17, v16, v6

    #@36c
    or-int/lit8 v17, v17, 0x1

    #@36e
    aput v17, v16, v6

    #@370
    .line 616
    if-eqz p7, :cond_14

    #@372
    move-object/from16 v0, p7

    #@374
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@377
    move-result v16

    #@378
    if-eqz v16, :cond_14

    #@37a
    .line 617
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    #@37c
    move-object/from16 v16, v0

    #@37e
    aget v17, v16, v6

    #@380
    or-int/lit8 v17, v17, 0x2

    #@382
    aput v17, v16, v6

    #@384
    .line 611
    :cond_14
    add-int/lit8 v6, v6, 0x1

    #@386
    goto :goto_d

    #@387
    .line 622
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v9    # "perm":Ljava/lang/String;
    :cond_15
    and-int/lit8 v16, p2, 0x40

    #@389
    if-eqz v16, :cond_16

    #@38b
    .line 623
    move-object/from16 v0, p0

    #@38d
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@38f
    move-object/from16 v16, v0

    #@391
    if-eqz v16, :cond_17

    #@393
    move-object/from16 v0, p0

    #@395
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@397
    move-object/from16 v16, v0

    #@399
    move-object/from16 v0, v16

    #@39b
    array-length v4, v0

    #@39c
    .line 624
    .restart local v4    # "N":I
    :goto_e
    if-lez v4, :cond_16

    #@39e
    .line 625
    new-array v0, v4, [Landroid/content/pm/Signature;

    #@3a0
    move-object/from16 v16, v0

    #@3a2
    move-object/from16 v0, v16

    #@3a4
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@3a6
    .line 626
    move-object/from16 v0, p0

    #@3a8
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@3aa
    move-object/from16 v16, v0

    #@3ac
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@3ae
    move-object/from16 v17, v0

    #@3b0
    const/16 v18, 0x0

    #@3b2
    const/16 v19, 0x0

    #@3b4
    move-object/from16 v0, v16

    #@3b6
    move/from16 v1, v18

    #@3b8
    move-object/from16 v2, v17

    #@3ba
    move/from16 v3, v19

    #@3bc
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3bf
    .line 629
    .end local v4    # "N":I
    :cond_16
    return-object v10

    #@3c0
    .line 623
    :cond_17
    const/4 v4, 0x0

    #@3c1
    goto :goto_e

    #@3c2
    .restart local v4    # "N":I
    .restart local v6    # "i":I
    .restart local v8    # "num":I
    .restart local v11    # "pr":Landroid/content/pm/PackageParser$Provider;
    .restart local v13    # "res":[Landroid/content/pm/ProviderInfo;
    :cond_18
    move v7, v8

    #@3c3
    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_a

    #@3c5
    .end local v7    # "num":I
    .end local v11    # "pr":Landroid/content/pm/PackageParser$Provider;
    .end local v13    # "res":[Landroid/content/pm/ProviderInfo;
    .restart local v8    # "num":I
    .restart local v14    # "res":[Landroid/content/pm/ServiceInfo;
    .restart local v15    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_19
    move v7, v8

    #@3c6
    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_8

    #@3c8
    .end local v7    # "num":I
    .end local v14    # "res":[Landroid/content/pm/ServiceInfo;
    .end local v15    # "s":Landroid/content/pm/PackageParser$Service;
    .restart local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    .restart local v8    # "num":I
    .restart local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_1a
    move v7, v8

    #@3c9
    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_6

    #@3cb
    .end local v7    # "num":I
    .restart local v8    # "num":I
    :cond_1b
    move v7, v8

    #@3cc
    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_4
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p0, "pg"    # Landroid/content/pm/PackageParser$PermissionGroup;
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5464
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 5465
    :cond_0
    and-int/lit16 v1, p1, 0x80

    #@6
    if-nez v1, :cond_1

    #@8
    .line 5466
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@a
    return-object v1

    #@b
    .line 5468
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    #@d
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@f
    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    #@12
    .line 5469
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    #@14
    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    #@16
    .line 5470
    return-object v0
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .param p0, "p"    # Landroid/content/pm/PackageParser$Permission;
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5453
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 5454
    :cond_0
    and-int/lit16 v1, p1, 0x80

    #@6
    if-nez v1, :cond_1

    #@8
    .line 5455
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@a
    return-object v1

    #@b
    .line 5457
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    #@d
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@f
    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    #@12
    .line 5458
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    #@14
    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    #@16
    .line 5459
    return-object v0
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5603
    if-nez p0, :cond_0

    #@3
    return-object v3

    #@4
    .line 5604
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 5605
    return-object v3

    #@b
    .line 5607
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    #@d
    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    #@f
    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_3

    #@15
    .line 5608
    and-int/lit16 v1, p1, 0x800

    #@17
    if-nez v1, :cond_2

    #@19
    .line 5609
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@1b
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@1d
    if-nez v1, :cond_3

    #@1f
    .line 5610
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@21
    return-object v1

    #@22
    .line 5613
    :cond_3
    new-instance v0, Landroid/content/pm/ProviderInfo;

    #@24
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@26
    invoke-direct {v0, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    #@29
    .line 5614
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    #@2b
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    #@2d
    .line 5615
    and-int/lit16 v1, p1, 0x800

    #@2f
    if-nez v1, :cond_4

    #@31
    .line 5616
    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@33
    .line 5618
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    #@35
    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@38
    move-result-object v1

    #@39
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3b
    .line 5619
    return-object v0
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 3
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5554
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 5555
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 5556
    return-object v2

    #@b
    .line 5558
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    #@d
    iget-object v2, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    #@f
    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_2

    #@15
    .line 5559
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@17
    return-object v1

    #@18
    .line 5562
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    #@1a
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@1c
    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    #@1f
    .line 5563
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    #@21
    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@23
    .line 5564
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    #@25
    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@28
    move-result-object v1

    #@29
    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2b
    .line 5565
    return-object v0
.end method

.method public static getApkSigningVersion(Landroid/content/pm/PackageParser$Package;)I
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 1071
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->hasSignature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1072
    const/4 v1, 0x2

    #@9
    return v1

    #@a
    .line 1074
    :cond_0
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 1075
    :catch_0
    move-exception v0

    #@d
    .line 1077
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@e
    return v1
.end method

.method private static hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 3173
    if-eqz p0, :cond_0

    #@3
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@5
    if-nez v8, :cond_1

    #@7
    :cond_0
    return v9

    #@8
    .line 3174
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@a
    .line 3175
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v3

    #@e
    .line 3176
    .local v3, "countActivities":I
    const/4 v7, 0x0

    #@f
    .local v7, "n":I
    :goto_0
    if-ge v7, v3, :cond_7

    #@11
    .line 3177
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    #@17
    .line 3178
    .local v1, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@19
    .line 3179
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-nez v5, :cond_3

    #@1b
    .line 3176
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 3180
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v4

    #@22
    .line 3181
    .local v4, "countFilters":I
    const/4 v6, 0x0

    #@23
    .local v6, "m":I
    :goto_1
    if-ge v6, v4, :cond_2

    #@25
    .line 3182
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2b
    .line 3183
    .local v2, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string/jumbo v8, "android.intent.action.VIEW"

    #@2e
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    #@31
    move-result v8

    #@32
    if-nez v8, :cond_5

    #@34
    .line 3181
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@36
    goto :goto_1

    #@37
    .line 3184
    :cond_5
    const-string/jumbo v8, "android.intent.action.VIEW"

    #@3a
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    #@3d
    move-result v8

    #@3e
    if-eqz v8, :cond_4

    #@40
    .line 3185
    const-string/jumbo v8, "http"

    #@43
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    #@46
    move-result v8

    #@47
    if-nez v8, :cond_6

    #@49
    .line 3186
    const-string/jumbo v8, "https"

    #@4c
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    #@4f
    move-result v8

    #@50
    .line 3185
    if-eqz v8, :cond_4

    #@52
    .line 3187
    :cond_6
    const/4 v8, 0x1

    #@53
    return v8

    #@54
    .line 3191
    .end local v1    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v4    # "countFilters":I
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "m":I
    :cond_7
    return v9
.end method

.method public static final isApkFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 452
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private static isApkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 456
    const-string/jumbo v0, ".apk"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static isAvailable(Landroid/content/pm/PackageUserState;)Z
    .locals 1
    .param p0, "state"    # Landroid/content/pm/PackageUserState;

    #@0
    .prologue
    .line 483
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    .locals 4
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 895
    and-int/lit8 v1, p2, 0x4

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-static {p1}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 903
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 904
    .local v0, "cookie":I
    if-nez v0, :cond_2

    #@10
    .line 905
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@12
    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Failed adding asset path: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 905
    const/16 v3, -0x65

    #@28
    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 896
    .end local v0    # "cookie":I
    :cond_1
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@2e
    .line 897
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "Invalid package file: "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 896
    const/16 v3, -0x64

    #@44
    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 908
    .restart local v0    # "cookie":I
    :cond_2
    return v0
.end method

.method private static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 5
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 634
    const/4 v1, 0x0

    #@1
    .line 638
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@4
    move-result-object v1

    #@5
    .line 639
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/content/pm/PackageParser;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    #@8
    .line 640
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v2

    #@c
    .line 645
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f
    .line 640
    return-object v2

    #@10
    .line 641
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@11
    .line 642
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    #@13
    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Failed reading "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, " in "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 642
    const/16 v4, -0x66

    #@38
    invoke-direct {v2, v4, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@3b
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 644
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@3d
    .line 645
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@40
    .line 644
    throw v2
.end method

.method private static modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 3164
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@2
    const-string/jumbo v1, "org.apache.http.legacy"

    #@5
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@b
    .line 3165
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@d
    .line 3166
    const-string/jumbo v1, "org.apache.http.legacy"

    #@10
    .line 3165
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@16
    .line 3157
    return-void
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 28
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "receiver"    # Z
    .param p7, "hardwareAccelerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3388
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    #@2
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v24

    #@a
    .line 3390
    .local v24, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@e
    if-nez v4, :cond_0

    #@10
    .line 3391
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@12
    .line 3398
    move-object/from16 v0, p0

    #@14
    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@16
    .line 3392
    const/4 v7, 0x3

    #@17
    .line 3393
    const/4 v8, 0x1

    #@18
    .line 3394
    const/4 v9, 0x2

    #@19
    .line 3395
    const/16 v10, 0x2c

    #@1b
    .line 3396
    const/16 v11, 0x17

    #@1d
    .line 3397
    const/16 v12, 0x1e

    #@1f
    .line 3399
    const/4 v14, 0x7

    #@20
    .line 3400
    const/16 v15, 0x11

    #@22
    .line 3401
    const/16 v16, 0x5

    #@24
    move-object/from16 v5, p1

    #@26
    move-object/from16 v6, p5

    #@28
    .line 3391
    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    #@2b
    move-object/from16 v0, p0

    #@2d
    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@2f
    .line 3404
    :cond_0
    move-object/from16 v0, p0

    #@31
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@33
    if-eqz p6, :cond_1

    #@35
    const-string/jumbo v4, "<receiver>"

    #@38
    :goto_0
    iput-object v4, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@3a
    .line 3405
    move-object/from16 v0, p0

    #@3c
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@3e
    move-object/from16 v0, v24

    #@40
    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@42
    .line 3406
    move-object/from16 v0, p0

    #@44
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@46
    move/from16 v0, p4

    #@48
    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@4a
    .line 3408
    new-instance v17, Landroid/content/pm/PackageParser$Activity;

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@50
    new-instance v5, Landroid/content/pm/ActivityInfo;

    #@52
    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    #@55
    move-object/from16 v0, v17

    #@57
    invoke-direct {v0, v4, v5}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    #@5a
    .line 3409
    .local v17, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    #@5b
    aget-object v4, p5, v4

    #@5d
    if-eqz v4, :cond_2

    #@5f
    .line 3410
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    #@62
    .line 3411
    const/4 v4, 0x0

    #@63
    return-object v4

    #@64
    .line 3404
    .end local v17    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1
    const-string/jumbo v4, "<activity>"

    #@67
    goto :goto_0

    #@68
    .line 3414
    .restart local v17    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_2
    const/4 v4, 0x6

    #@69
    move-object/from16 v0, v24

    #@6b
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@6e
    move-result v25

    #@6f
    .line 3415
    .local v25, "setExported":Z
    if-eqz v25, :cond_3

    #@71
    .line 3416
    move-object/from16 v0, v17

    #@73
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@75
    const/4 v5, 0x6

    #@76
    const/4 v6, 0x0

    #@77
    move-object/from16 v0, v24

    #@79
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@7c
    move-result v5

    #@7d
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    #@7f
    .line 3419
    :cond_3
    move-object/from16 v0, v17

    #@81
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@83
    const/4 v5, 0x0

    #@84
    const/4 v6, 0x0

    #@85
    move-object/from16 v0, v24

    #@87
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@8a
    move-result v5

    #@8b
    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I

    #@8d
    .line 3421
    move-object/from16 v0, v17

    #@8f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@91
    .line 3422
    move-object/from16 v0, v17

    #@93
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@95
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@97
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@99
    .line 3421
    const/16 v6, 0x1a

    #@9b
    move-object/from16 v0, v24

    #@9d
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@a0
    move-result v5

    #@a1
    iput v5, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@a3
    .line 3425
    const/16 v4, 0x1b

    #@a5
    .line 3426
    const/16 v5, 0x400

    #@a7
    .line 3424
    move-object/from16 v0, v24

    #@a9
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@ac
    move-result-object v21

    #@ad
    .line 3427
    .local v21, "parentName":Ljava/lang/String;
    if-eqz v21, :cond_4

    #@af
    .line 3428
    move-object/from16 v0, v17

    #@b1
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@b3
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@b5
    move-object/from16 v0, v21

    #@b7
    move-object/from16 v1, p5

    #@b9
    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@bc
    move-result-object v20

    #@bd
    .line 3429
    .local v20, "parentClassName":Ljava/lang/String;
    const/4 v4, 0x0

    #@be
    aget-object v4, p5, v4

    #@c0
    if-nez v4, :cond_1b

    #@c2
    .line 3430
    move-object/from16 v0, v17

    #@c4
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@c6
    move-object/from16 v0, v20

    #@c8
    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@ca
    .line 3439
    .end local v20    # "parentClassName":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v4, 0x4

    #@cb
    const/4 v5, 0x0

    #@cc
    move-object/from16 v0, v24

    #@ce
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@d1
    move-result-object v26

    #@d2
    .line 3440
    .local v26, "str":Ljava/lang/String;
    if-nez v26, :cond_1c

    #@d4
    .line 3441
    move-object/from16 v0, v17

    #@d6
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@d8
    move-object/from16 v0, p1

    #@da
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@dc
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@de
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@e0
    .line 3447
    :goto_2
    const/16 v4, 0x8

    #@e2
    .line 3448
    const/16 v5, 0x400

    #@e4
    .line 3446
    move-object/from16 v0, v24

    #@e6
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@e9
    move-result-object v26

    #@ea
    .line 3449
    move-object/from16 v0, v17

    #@ec
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@ee
    move-object/from16 v0, p1

    #@f0
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f2
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@f4
    .line 3450
    move-object/from16 v0, p1

    #@f6
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f8
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@fa
    .line 3449
    move-object/from16 v0, v26

    #@fc
    move-object/from16 v1, p5

    #@fe
    invoke-static {v5, v6, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@101
    move-result-object v5

    #@102
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@104
    .line 3452
    move-object/from16 v0, v17

    #@106
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@108
    const/4 v5, 0x0

    #@109
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@10b
    .line 3454
    const/16 v4, 0x9

    #@10d
    const/4 v5, 0x0

    #@10e
    .line 3453
    move-object/from16 v0, v24

    #@110
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@113
    move-result v4

    #@114
    if-eqz v4, :cond_5

    #@116
    .line 3455
    move-object/from16 v0, v17

    #@118
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@11a
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@11c
    or-int/lit8 v5, v5, 0x1

    #@11e
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@120
    .line 3458
    :cond_5
    const/16 v4, 0xa

    #@122
    const/4 v5, 0x0

    #@123
    move-object/from16 v0, v24

    #@125
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@128
    move-result v4

    #@129
    if-eqz v4, :cond_6

    #@12b
    .line 3459
    move-object/from16 v0, v17

    #@12d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@12f
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@131
    or-int/lit8 v5, v5, 0x2

    #@133
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@135
    .line 3462
    :cond_6
    const/16 v4, 0xb

    #@137
    const/4 v5, 0x0

    #@138
    move-object/from16 v0, v24

    #@13a
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@13d
    move-result v4

    #@13e
    if-eqz v4, :cond_7

    #@140
    .line 3463
    move-object/from16 v0, v17

    #@142
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@144
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@146
    or-int/lit8 v5, v5, 0x4

    #@148
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@14a
    .line 3466
    :cond_7
    const/16 v4, 0x15

    #@14c
    const/4 v5, 0x0

    #@14d
    move-object/from16 v0, v24

    #@14f
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@152
    move-result v4

    #@153
    if-eqz v4, :cond_8

    #@155
    .line 3467
    move-object/from16 v0, v17

    #@157
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@159
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@15b
    or-int/lit16 v5, v5, 0x80

    #@15d
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@15f
    .line 3470
    :cond_8
    const/16 v4, 0x12

    #@161
    const/4 v5, 0x0

    #@162
    move-object/from16 v0, v24

    #@164
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@167
    move-result v4

    #@168
    if-eqz v4, :cond_9

    #@16a
    .line 3471
    move-object/from16 v0, v17

    #@16c
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@16e
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@170
    or-int/lit8 v5, v5, 0x8

    #@172
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@174
    .line 3474
    :cond_9
    const/16 v4, 0xc

    #@176
    const/4 v5, 0x0

    #@177
    move-object/from16 v0, v24

    #@179
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@17c
    move-result v4

    #@17d
    if-eqz v4, :cond_a

    #@17f
    .line 3475
    move-object/from16 v0, v17

    #@181
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@183
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@185
    or-int/lit8 v5, v5, 0x10

    #@187
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@189
    .line 3478
    :cond_a
    const/16 v4, 0xd

    #@18b
    const/4 v5, 0x0

    #@18c
    move-object/from16 v0, v24

    #@18e
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@191
    move-result v4

    #@192
    if-eqz v4, :cond_b

    #@194
    .line 3479
    move-object/from16 v0, v17

    #@196
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@198
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@19a
    or-int/lit8 v5, v5, 0x20

    #@19c
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@19e
    .line 3483
    :cond_b
    move-object/from16 v0, p1

    #@1a0
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1a2
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1a4
    and-int/lit8 v4, v4, 0x20

    #@1a6
    if-eqz v4, :cond_1e

    #@1a8
    const/4 v4, 0x1

    #@1a9
    .line 3482
    :goto_3
    const/16 v5, 0x13

    #@1ab
    move-object/from16 v0, v24

    #@1ad
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b0
    move-result v4

    #@1b1
    if-eqz v4, :cond_c

    #@1b3
    .line 3484
    move-object/from16 v0, v17

    #@1b5
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1b7
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1b9
    or-int/lit8 v5, v5, 0x40

    #@1bb
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1bd
    .line 3487
    :cond_c
    const/16 v4, 0x16

    #@1bf
    const/4 v5, 0x0

    #@1c0
    move-object/from16 v0, v24

    #@1c2
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1c5
    move-result v4

    #@1c6
    if-eqz v4, :cond_d

    #@1c8
    .line 3488
    move-object/from16 v0, v17

    #@1ca
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1cc
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1ce
    or-int/lit16 v5, v5, 0x100

    #@1d0
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1d2
    .line 3491
    :cond_d
    const/16 v4, 0x1d

    #@1d4
    const/4 v5, 0x0

    #@1d5
    move-object/from16 v0, v24

    #@1d7
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1da
    move-result v4

    #@1db
    if-nez v4, :cond_e

    #@1dd
    .line 3492
    const/16 v4, 0x27

    #@1df
    const/4 v5, 0x0

    #@1e0
    move-object/from16 v0, v24

    #@1e2
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1e5
    move-result v4

    #@1e6
    .line 3491
    if-eqz v4, :cond_f

    #@1e8
    .line 3493
    :cond_e
    move-object/from16 v0, v17

    #@1ea
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1ec
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1ee
    or-int/lit16 v5, v5, 0x400

    #@1f0
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1f2
    .line 3496
    :cond_f
    const/16 v4, 0x18

    #@1f4
    const/4 v5, 0x0

    #@1f5
    move-object/from16 v0, v24

    #@1f7
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1fa
    move-result v4

    #@1fb
    if-eqz v4, :cond_10

    #@1fd
    .line 3497
    move-object/from16 v0, v17

    #@1ff
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@201
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@203
    or-int/lit16 v5, v5, 0x800

    #@205
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@207
    .line 3500
    :cond_10
    const/16 v4, 0x2d

    #@209
    const/4 v5, 0x0

    #@20a
    move-object/from16 v0, v24

    #@20c
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@20f
    move-result v4

    #@210
    if-eqz v4, :cond_11

    #@212
    .line 3501
    move-object/from16 v0, v17

    #@214
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@216
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@218
    const/high16 v6, 0x20000000

    #@21a
    or-int/2addr v5, v6

    #@21b
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@21d
    .line 3504
    :cond_11
    if-nez p6, :cond_24

    #@21f
    .line 3505
    const/16 v4, 0x19

    #@221
    move-object/from16 v0, v24

    #@223
    move/from16 v1, p7

    #@225
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@228
    move-result v4

    #@229
    if-eqz v4, :cond_12

    #@22b
    .line 3507
    move-object/from16 v0, v17

    #@22d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@22f
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@231
    or-int/lit16 v5, v5, 0x200

    #@233
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@235
    .line 3510
    :cond_12
    move-object/from16 v0, v17

    #@237
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@239
    .line 3511
    const/16 v5, 0xe

    #@23b
    const/4 v6, 0x0

    #@23c
    .line 3510
    move-object/from16 v0, v24

    #@23e
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@241
    move-result v5

    #@242
    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@244
    .line 3512
    move-object/from16 v0, v17

    #@246
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@248
    .line 3513
    const/16 v5, 0x21

    #@24a
    .line 3514
    const/4 v6, 0x0

    #@24b
    .line 3512
    move-object/from16 v0, v24

    #@24d
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@250
    move-result v5

    #@251
    iput v5, v4, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@253
    .line 3515
    move-object/from16 v0, v17

    #@255
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@257
    .line 3517
    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    #@25a
    move-result v5

    #@25b
    .line 3516
    const/16 v6, 0x22

    #@25d
    .line 3515
    move-object/from16 v0, v24

    #@25f
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@262
    move-result v5

    #@263
    iput v5, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@265
    .line 3518
    move-object/from16 v0, v17

    #@267
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@269
    const/16 v5, 0x10

    #@26b
    const/4 v6, 0x0

    #@26c
    move-object/from16 v0, v24

    #@26e
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@271
    move-result v5

    #@272
    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@274
    .line 3519
    move-object/from16 v0, v17

    #@276
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@278
    .line 3520
    const/16 v5, 0x14

    #@27a
    const/4 v6, 0x0

    #@27b
    .line 3519
    move-object/from16 v0, v24

    #@27d
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@280
    move-result v5

    #@281
    iput v5, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@283
    .line 3522
    move-object/from16 v0, v17

    #@285
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@287
    .line 3523
    const/16 v5, 0x20

    #@289
    .line 3524
    const/4 v6, 0x0

    #@28a
    .line 3522
    move-object/from16 v0, v24

    #@28c
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@28f
    move-result v5

    #@290
    iput v5, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@292
    .line 3526
    const/16 v4, 0x1f

    #@294
    const/4 v5, 0x0

    #@295
    move-object/from16 v0, v24

    #@297
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@29a
    move-result v4

    #@29b
    if-eqz v4, :cond_13

    #@29d
    .line 3527
    move-object/from16 v0, v17

    #@29f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2a1
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2a3
    const/high16 v6, -0x80000000

    #@2a5
    or-int/2addr v5, v6

    #@2a6
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2a8
    .line 3530
    :cond_13
    const/16 v4, 0x23

    #@2aa
    const/4 v5, 0x0

    #@2ab
    move-object/from16 v0, v24

    #@2ad
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2b0
    move-result v4

    #@2b1
    if-eqz v4, :cond_14

    #@2b3
    .line 3531
    move-object/from16 v0, v17

    #@2b5
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2b7
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2b9
    or-int/lit16 v5, v5, 0x2000

    #@2bb
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2bd
    .line 3534
    :cond_14
    const/16 v4, 0x24

    #@2bf
    const/4 v5, 0x0

    #@2c0
    move-object/from16 v0, v24

    #@2c2
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2c5
    move-result v4

    #@2c6
    if-eqz v4, :cond_15

    #@2c8
    .line 3535
    move-object/from16 v0, v17

    #@2ca
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2cc
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2ce
    or-int/lit16 v5, v5, 0x1000

    #@2d0
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2d2
    .line 3538
    :cond_15
    const/16 v4, 0x25

    #@2d4
    const/4 v5, 0x0

    #@2d5
    move-object/from16 v0, v24

    #@2d7
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2da
    move-result v4

    #@2db
    if-eqz v4, :cond_16

    #@2dd
    .line 3539
    move-object/from16 v0, v17

    #@2df
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2e1
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2e3
    or-int/lit16 v5, v5, 0x4000

    #@2e5
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2e7
    .line 3542
    :cond_16
    move-object/from16 v0, v17

    #@2e9
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2eb
    .line 3543
    const/16 v5, 0xf

    #@2ed
    .line 3544
    const/4 v6, -0x1

    #@2ee
    .line 3542
    move-object/from16 v0, v24

    #@2f0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2f3
    move-result v5

    #@2f4
    iput v5, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@2f6
    .line 3546
    move-object/from16 v0, v17

    #@2f8
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2fa
    const/4 v5, 0x0

    #@2fb
    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@2fd
    .line 3547
    move-object/from16 v0, p1

    #@2ff
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@301
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@303
    and-int/lit16 v4, v4, 0x800

    #@305
    if-eqz v4, :cond_1f

    #@307
    const/16 v18, 0x1

    #@309
    .line 3554
    .local v18, "appDefault":Z
    :goto_4
    const/16 v4, 0x28

    #@30b
    move-object/from16 v0, v24

    #@30d
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@310
    move-result v23

    #@311
    .line 3556
    .local v23, "resizeableSetExplicitly":Z
    const/16 v4, 0x28

    #@313
    .line 3555
    move-object/from16 v0, v24

    #@315
    move/from16 v1, v18

    #@317
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@31a
    move-result v22

    #@31b
    .line 3558
    .local v22, "resizeable":Z
    if-eqz v22, :cond_21

    #@31d
    .line 3559
    const/16 v4, 0x29

    #@31f
    .line 3560
    const/4 v5, 0x0

    #@320
    .line 3559
    move-object/from16 v0, v24

    #@322
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@325
    move-result v4

    #@326
    if-eqz v4, :cond_20

    #@328
    .line 3561
    move-object/from16 v0, v17

    #@32a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@32c
    const/4 v5, 0x3

    #@32d
    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@32f
    .line 3572
    :cond_17
    :goto_5
    const/16 v4, 0x2e

    #@331
    const/4 v5, 0x0

    #@332
    move-object/from16 v0, v24

    #@334
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@337
    move-result v4

    #@338
    if-eqz v4, :cond_18

    #@33a
    .line 3573
    move-object/from16 v0, v17

    #@33c
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@33e
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@340
    const/high16 v6, 0x40000

    #@342
    or-int/2addr v5, v6

    #@343
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@345
    .line 3576
    :cond_18
    move-object/from16 v0, v17

    #@347
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@349
    .line 3577
    const/16 v5, 0x26

    #@34b
    const/4 v6, 0x0

    #@34c
    move-object/from16 v0, v24

    #@34e
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@351
    move-result v5

    #@352
    .line 3576
    iput v5, v4, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@354
    .line 3579
    move-object/from16 v0, v17

    #@356
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@358
    .line 3580
    const/16 v5, 0x2a

    #@35a
    .line 3581
    const/4 v6, 0x0

    #@35b
    .line 3579
    move-object/from16 v0, v24

    #@35d
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@360
    move-result v5

    #@361
    move-object/from16 v0, v17

    #@363
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@365
    iput-boolean v5, v6, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    #@367
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    #@369
    .line 3583
    move-object/from16 v0, v17

    #@36b
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@36d
    .line 3584
    const/16 v5, 0x2b

    #@36f
    move-object/from16 v0, v24

    #@371
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@374
    move-result-object v5

    #@375
    .line 3583
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    #@377
    .line 3605
    .end local v18    # "appDefault":Z
    .end local v22    # "resizeable":Z
    .end local v23    # "resizeableSetExplicitly":Z
    .end local v25    # "setExported":Z
    :goto_6
    move-object/from16 v0, v17

    #@379
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@37b
    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    #@37d
    if-eqz v4, :cond_19

    #@37f
    .line 3606
    move-object/from16 v0, p1

    #@381
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@383
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@385
    or-int/lit16 v5, v5, 0x100

    #@387
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@389
    .line 3610
    :cond_19
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    #@38c
    .line 3612
    if-eqz p6, :cond_1a

    #@38e
    move-object/from16 v0, p1

    #@390
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@392
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@394
    and-int/lit8 v4, v4, 0x2

    #@396
    if-eqz v4, :cond_1a

    #@398
    .line 3616
    move-object/from16 v0, v17

    #@39a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@39c
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@39e
    move-object/from16 v0, p1

    #@3a0
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@3a2
    if-ne v4, v5, :cond_1a

    #@3a4
    .line 3617
    const-string/jumbo v4, "Heavy-weight applications can not have receivers in main process"

    #@3a7
    const/4 v5, 0x0

    #@3a8
    aput-object v4, p5, v5

    #@3aa
    .line 3621
    :cond_1a
    const/4 v4, 0x0

    #@3ab
    aget-object v4, p5, v4

    #@3ad
    if-eqz v4, :cond_26

    #@3af
    .line 3622
    const/4 v4, 0x0

    #@3b0
    return-object v4

    #@3b1
    .line 3432
    .end local v26    # "str":Ljava/lang/String;
    .restart local v20    # "parentClassName":Ljava/lang/String;
    .restart local v25    # "setExported":Z
    :cond_1b
    const-string/jumbo v4, "PackageParser"

    #@3b4
    new-instance v5, Ljava/lang/StringBuilder;

    #@3b6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b9
    const-string/jumbo v6, "Activity "

    #@3bc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bf
    move-result-object v5

    #@3c0
    move-object/from16 v0, v17

    #@3c2
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@3c4
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3c6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c9
    move-result-object v5

    #@3ca
    const-string/jumbo v6, " specified invalid parentActivityName "

    #@3cd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d0
    move-result-object v5

    #@3d1
    move-object/from16 v0, v21

    #@3d3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d6
    move-result-object v5

    #@3d7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3da
    move-result-object v5

    #@3db
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3de
    .line 3434
    const/4 v4, 0x0

    #@3df
    const/4 v5, 0x0

    #@3e0
    aput-object v4, p5, v5

    #@3e2
    goto/16 :goto_1

    #@3e4
    .line 3443
    .end local v20    # "parentClassName":Ljava/lang/String;
    .restart local v26    # "str":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v17

    #@3e6
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@3e8
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    #@3eb
    move-result v4

    #@3ec
    if-lez v4, :cond_1d

    #@3ee
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@3f1
    move-result-object v4

    #@3f2
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3f5
    move-result-object v4

    #@3f6
    :goto_7
    iput-object v4, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@3f8
    goto/16 :goto_2

    #@3fa
    :cond_1d
    const/4 v4, 0x0

    #@3fb
    goto :goto_7

    #@3fc
    .line 3483
    :cond_1e
    const/4 v4, 0x0

    #@3fd
    goto/16 :goto_3

    #@3ff
    .line 3547
    :cond_1f
    const/16 v18, 0x0

    #@401
    .restart local v18    # "appDefault":Z
    goto/16 :goto_4

    #@403
    .line 3563
    .restart local v22    # "resizeable":Z
    .restart local v23    # "resizeableSetExplicitly":Z
    :cond_20
    move-object/from16 v0, v17

    #@405
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@407
    const/4 v5, 0x2

    #@408
    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@40a
    goto/16 :goto_5

    #@40c
    .line 3565
    :cond_21
    move-object/from16 v0, p1

    #@40e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@410
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@412
    const/16 v5, 0x18

    #@414
    if-ge v4, v5, :cond_22

    #@416
    if-eqz v23, :cond_23

    #@418
    .line 3567
    :cond_22
    move-object/from16 v0, v17

    #@41a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@41c
    const/4 v5, 0x0

    #@41d
    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@41f
    goto/16 :goto_5

    #@421
    .line 3568
    :cond_23
    move-object/from16 v0, v17

    #@423
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@425
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    #@428
    move-result v4

    #@429
    if-nez v4, :cond_17

    #@42b
    move-object/from16 v0, v17

    #@42d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@42f
    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@431
    and-int/lit16 v4, v4, 0x800

    #@433
    if-nez v4, :cond_17

    #@435
    .line 3569
    move-object/from16 v0, v17

    #@437
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@439
    const/4 v5, 0x4

    #@43a
    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@43c
    goto/16 :goto_5

    #@43e
    .line 3586
    .end local v18    # "appDefault":Z
    .end local v22    # "resizeable":Z
    .end local v23    # "resizeableSetExplicitly":Z
    :cond_24
    move-object/from16 v0, v17

    #@440
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@442
    const/4 v5, 0x0

    #@443
    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@445
    .line 3587
    move-object/from16 v0, v17

    #@447
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@449
    const/4 v5, 0x0

    #@44a
    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@44c
    .line 3589
    const/16 v4, 0x1c

    #@44e
    const/4 v5, 0x0

    #@44f
    move-object/from16 v0, v24

    #@451
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@454
    move-result v4

    #@455
    if-eqz v4, :cond_25

    #@457
    .line 3590
    move-object/from16 v0, v17

    #@459
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@45b
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@45d
    const/high16 v6, 0x40000000    # 2.0f

    #@45f
    or-int/2addr v5, v6

    #@460
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@462
    .line 3591
    move-object/from16 v0, v17

    #@464
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@466
    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    #@468
    if-eqz v4, :cond_25

    #@46a
    move/from16 v0, p4

    #@46c
    and-int/lit16 v4, v0, 0x80

    #@46e
    if-nez v4, :cond_25

    #@470
    .line 3592
    const-string/jumbo v4, "PackageParser"

    #@473
    new-instance v5, Ljava/lang/StringBuilder;

    #@475
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@478
    const-string/jumbo v6, "Activity exported request ignored due to singleUser: "

    #@47b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47e
    move-result-object v5

    #@47f
    .line 3593
    move-object/from16 v0, v17

    #@481
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    #@483
    .line 3592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@486
    move-result-object v5

    #@487
    .line 3593
    const-string/jumbo v6, " at "

    #@48a
    .line 3592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48d
    move-result-object v5

    #@48e
    .line 3593
    move-object/from16 v0, p0

    #@490
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@492
    .line 3592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@495
    move-result-object v5

    #@496
    .line 3593
    const-string/jumbo v6, " "

    #@499
    .line 3592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49c
    move-result-object v5

    #@49d
    .line 3594
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@4a0
    move-result-object v6

    #@4a1
    .line 3592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a4
    move-result-object v5

    #@4a5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a8
    move-result-object v5

    #@4a9
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4ac
    .line 3595
    move-object/from16 v0, v17

    #@4ae
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@4b0
    const/4 v5, 0x0

    #@4b1
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    #@4b3
    .line 3596
    const/16 v25, 0x1

    #@4b5
    .line 3600
    .end local v25    # "setExported":Z
    :cond_25
    move-object/from16 v0, v17

    #@4b7
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@4b9
    .line 3601
    const/16 v5, 0x2a

    #@4bb
    .line 3602
    const/4 v6, 0x0

    #@4bc
    .line 3600
    move-object/from16 v0, v24

    #@4be
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4c1
    move-result v5

    #@4c2
    move-object/from16 v0, v17

    #@4c4
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@4c6
    iput-boolean v5, v6, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    #@4c8
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    #@4ca
    goto/16 :goto_6

    #@4cc
    .line 3625
    :cond_26
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@4cf
    move-result v19

    #@4d0
    .line 3627
    .local v19, "outerDepth":I
    :cond_27
    :goto_8
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@4d3
    move-result v27

    #@4d4
    .local v27, "type":I
    const/4 v4, 0x1

    #@4d5
    move/from16 v0, v27

    #@4d7
    if-eq v0, v4, :cond_33

    #@4d9
    .line 3628
    const/4 v4, 0x3

    #@4da
    move/from16 v0, v27

    #@4dc
    if-ne v0, v4, :cond_28

    #@4de
    .line 3629
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@4e1
    move-result v4

    #@4e2
    move/from16 v0, v19

    #@4e4
    if-le v4, v0, :cond_33

    #@4e6
    .line 3630
    :cond_28
    const/4 v4, 0x3

    #@4e7
    move/from16 v0, v27

    #@4e9
    if-eq v0, v4, :cond_27

    #@4eb
    const/4 v4, 0x4

    #@4ec
    move/from16 v0, v27

    #@4ee
    if-eq v0, v4, :cond_27

    #@4f0
    .line 3634
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4f3
    move-result-object v4

    #@4f4
    const-string/jumbo v5, "intent-filter"

    #@4f7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4fa
    move-result v4

    #@4fb
    if-eqz v4, :cond_2b

    #@4fd
    .line 3635
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@4ff
    move-object/from16 v0, v17

    #@501
    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    #@504
    .line 3636
    .local v9, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x1

    #@505
    const/4 v8, 0x1

    #@506
    move-object/from16 v4, p0

    #@508
    move-object/from16 v5, p2

    #@50a
    move-object/from16 v6, p3

    #@50c
    move-object/from16 v10, p5

    #@50e
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@511
    move-result v4

    #@512
    if-nez v4, :cond_29

    #@514
    .line 3637
    const/4 v4, 0x0

    #@515
    return-object v4

    #@516
    .line 3639
    :cond_29
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    #@519
    move-result v4

    #@51a
    if-nez v4, :cond_2a

    #@51c
    .line 3640
    const-string/jumbo v4, "PackageParser"

    #@51f
    new-instance v5, Ljava/lang/StringBuilder;

    #@521
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@524
    const-string/jumbo v6, "No actions in intent filter at "

    #@527
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52a
    move-result-object v5

    #@52b
    .line 3641
    move-object/from16 v0, p0

    #@52d
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@52f
    .line 3640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@532
    move-result-object v5

    #@533
    .line 3641
    const-string/jumbo v6, " "

    #@536
    .line 3640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@539
    move-result-object v5

    #@53a
    .line 3642
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@53d
    move-result-object v6

    #@53e
    .line 3640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@541
    move-result-object v5

    #@542
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@545
    move-result-object v5

    #@546
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@549
    goto :goto_8

    #@54a
    .line 3644
    :cond_2a
    move-object/from16 v0, v17

    #@54c
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@54e
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@551
    goto/16 :goto_8

    #@553
    .line 3646
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2b
    if-nez p6, :cond_2f

    #@555
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@558
    move-result-object v4

    #@559
    const-string/jumbo v5, "preferred"

    #@55c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55f
    move-result v4

    #@560
    if-eqz v4, :cond_2f

    #@562
    .line 3647
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@564
    move-object/from16 v0, v17

    #@566
    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    #@569
    .line 3648
    .restart local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x0

    #@56a
    const/4 v8, 0x0

    #@56b
    move-object/from16 v4, p0

    #@56d
    move-object/from16 v5, p2

    #@56f
    move-object/from16 v6, p3

    #@571
    move-object/from16 v10, p5

    #@573
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@576
    move-result v4

    #@577
    if-nez v4, :cond_2c

    #@579
    .line 3649
    const/4 v4, 0x0

    #@57a
    return-object v4

    #@57b
    .line 3651
    :cond_2c
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    #@57e
    move-result v4

    #@57f
    if-nez v4, :cond_2d

    #@581
    .line 3652
    const-string/jumbo v4, "PackageParser"

    #@584
    new-instance v5, Ljava/lang/StringBuilder;

    #@586
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@589
    const-string/jumbo v6, "No actions in preferred at "

    #@58c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58f
    move-result-object v5

    #@590
    .line 3653
    move-object/from16 v0, p0

    #@592
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@594
    .line 3652
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@597
    move-result-object v5

    #@598
    .line 3653
    const-string/jumbo v6, " "

    #@59b
    .line 3652
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59e
    move-result-object v5

    #@59f
    .line 3654
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@5a2
    move-result-object v6

    #@5a3
    .line 3652
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a6
    move-result-object v5

    #@5a7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5aa
    move-result-object v5

    #@5ab
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5ae
    goto/16 :goto_8

    #@5b0
    .line 3656
    :cond_2d
    move-object/from16 v0, p1

    #@5b2
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@5b4
    if-nez v4, :cond_2e

    #@5b6
    .line 3657
    new-instance v4, Ljava/util/ArrayList;

    #@5b8
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5bb
    move-object/from16 v0, p1

    #@5bd
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@5bf
    .line 3659
    :cond_2e
    move-object/from16 v0, p1

    #@5c1
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@5c3
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c6
    goto/16 :goto_8

    #@5c8
    .line 3661
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@5cb
    move-result-object v4

    #@5cc
    const-string/jumbo v5, "meta-data"

    #@5cf
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d2
    move-result v4

    #@5d3
    if-eqz v4, :cond_30

    #@5d5
    .line 3662
    move-object/from16 v0, v17

    #@5d7
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@5d9
    move-object/from16 v0, p0

    #@5db
    move-object/from16 v1, p2

    #@5dd
    move-object/from16 v2, p3

    #@5df
    move-object/from16 v3, p5

    #@5e1
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@5e4
    move-result-object v4

    #@5e5
    move-object/from16 v0, v17

    #@5e7
    iput-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@5e9
    if-nez v4, :cond_27

    #@5eb
    .line 3664
    const/4 v4, 0x0

    #@5ec
    return-object v4

    #@5ed
    .line 3666
    :cond_30
    if-nez p6, :cond_31

    #@5ef
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@5f2
    move-result-object v4

    #@5f3
    const-string/jumbo v5, "layout"

    #@5f6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f9
    move-result v4

    #@5fa
    if-eqz v4, :cond_31

    #@5fc
    .line 3667
    move-object/from16 v0, p0

    #@5fe
    move-object/from16 v1, p2

    #@600
    move-object/from16 v2, p3

    #@602
    move-object/from16 v3, v17

    #@604
    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    #@607
    goto/16 :goto_8

    #@609
    .line 3670
    :cond_31
    const-string/jumbo v4, "PackageParser"

    #@60c
    new-instance v5, Ljava/lang/StringBuilder;

    #@60e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@611
    const-string/jumbo v6, "Problem in package "

    #@614
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@617
    move-result-object v5

    #@618
    move-object/from16 v0, p0

    #@61a
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@61c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61f
    move-result-object v5

    #@620
    const-string/jumbo v6, ":"

    #@623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@626
    move-result-object v5

    #@627
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62a
    move-result-object v5

    #@62b
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62e
    .line 3671
    if-eqz p6, :cond_32

    #@630
    .line 3672
    const-string/jumbo v4, "PackageParser"

    #@633
    new-instance v5, Ljava/lang/StringBuilder;

    #@635
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@638
    const-string/jumbo v6, "Unknown element under <receiver>: "

    #@63b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63e
    move-result-object v5

    #@63f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@642
    move-result-object v6

    #@643
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@646
    move-result-object v5

    #@647
    .line 3673
    const-string/jumbo v6, " at "

    #@64a
    .line 3672
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64d
    move-result-object v5

    #@64e
    .line 3673
    move-object/from16 v0, p0

    #@650
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@652
    .line 3672
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@655
    move-result-object v5

    #@656
    .line 3673
    const-string/jumbo v6, " "

    #@659
    .line 3672
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65c
    move-result-object v5

    #@65d
    .line 3674
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@660
    move-result-object v6

    #@661
    .line 3672
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@664
    move-result-object v5

    #@665
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@668
    move-result-object v5

    #@669
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66c
    .line 3680
    :goto_9
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@66f
    goto/16 :goto_8

    #@671
    .line 3676
    :cond_32
    const-string/jumbo v4, "PackageParser"

    #@674
    new-instance v5, Ljava/lang/StringBuilder;

    #@676
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@679
    const-string/jumbo v6, "Unknown element under <activity>: "

    #@67c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67f
    move-result-object v5

    #@680
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@683
    move-result-object v6

    #@684
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@687
    move-result-object v5

    #@688
    .line 3677
    const-string/jumbo v6, " at "

    #@68b
    .line 3676
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68e
    move-result-object v5

    #@68f
    .line 3677
    move-object/from16 v0, p0

    #@691
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@693
    .line 3676
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@696
    move-result-object v5

    #@697
    .line 3677
    const-string/jumbo v6, " "

    #@69a
    .line 3676
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69d
    move-result-object v5

    #@69e
    .line 3678
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@6a1
    move-result-object v6

    #@6a2
    .line 3676
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a5
    move-result-object v5

    #@6a6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a9
    move-result-object v5

    #@6aa
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6ad
    goto :goto_9

    #@6ae
    .line 3693
    :cond_33
    if-nez v25, :cond_34

    #@6b0
    .line 3694
    move-object/from16 v0, v17

    #@6b2
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@6b4
    move-object/from16 v0, v17

    #@6b6
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@6b8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6bb
    move-result v4

    #@6bc
    if-lez v4, :cond_35

    #@6be
    const/4 v4, 0x1

    #@6bf
    :goto_a
    iput-boolean v4, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    #@6c1
    .line 3697
    :cond_34
    return-object v17

    #@6c2
    .line 3694
    :cond_35
    const/4 v4, 0x0

    #@6c3
    goto :goto_a
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .locals 31
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3747
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    #@2
    .line 3746
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v24

    #@a
    .line 3750
    .local v24, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x7

    #@b
    .line 3751
    const/16 v5, 0x400

    #@d
    .line 3749
    move-object/from16 v0, v24

    #@f
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@12
    move-result-object v29

    #@13
    .line 3752
    .local v29, "targetActivity":Ljava/lang/String;
    if-nez v29, :cond_0

    #@15
    .line 3753
    const-string/jumbo v4, "<activity-alias> does not specify android:targetActivity"

    #@18
    const/4 v5, 0x0

    #@19
    aput-object v4, p5, v5

    #@1b
    .line 3754
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 3755
    const/4 v4, 0x0

    #@1f
    return-object v4

    #@20
    .line 3758
    :cond_0
    move-object/from16 v0, p1

    #@22
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@24
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@26
    move-object/from16 v0, v29

    #@28
    move-object/from16 v1, p5

    #@2a
    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v29

    #@2e
    .line 3760
    if-nez v29, :cond_1

    #@30
    .line 3761
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    #@33
    .line 3762
    const/4 v4, 0x0

    #@34
    return-object v4

    #@35
    .line 3765
    :cond_1
    move-object/from16 v0, p0

    #@37
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@39
    if-nez v4, :cond_2

    #@3b
    .line 3766
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@3d
    .line 3773
    move-object/from16 v0, p0

    #@3f
    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@41
    .line 3767
    const/4 v7, 0x2

    #@42
    .line 3768
    const/4 v8, 0x0

    #@43
    .line 3769
    const/4 v9, 0x1

    #@44
    .line 3770
    const/16 v10, 0xb

    #@46
    .line 3771
    const/16 v11, 0x8

    #@48
    .line 3772
    const/16 v12, 0xa

    #@4a
    .line 3774
    const/4 v14, 0x0

    #@4b
    .line 3775
    const/4 v15, 0x6

    #@4c
    .line 3776
    const/16 v16, 0x4

    #@4e
    move-object/from16 v5, p1

    #@50
    move-object/from16 v6, p5

    #@52
    .line 3766
    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    #@55
    move-object/from16 v0, p0

    #@57
    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@59
    .line 3777
    move-object/from16 v0, p0

    #@5b
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@5d
    const-string/jumbo v5, "<activity-alias>"

    #@60
    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@62
    .line 3780
    :cond_2
    move-object/from16 v0, p0

    #@64
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@66
    move-object/from16 v0, v24

    #@68
    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@6a
    .line 3781
    move-object/from16 v0, p0

    #@6c
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@6e
    move/from16 v0, p4

    #@70
    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@72
    .line 3783
    const/16 v28, 0x0

    #@74
    .line 3785
    .local v28, "target":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    #@76
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7b
    move-result v17

    #@7c
    .line 3786
    .local v17, "NA":I
    const/16 v19, 0x0

    #@7e
    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    #@80
    move/from16 v1, v17

    #@82
    if-ge v0, v1, :cond_3

    #@84
    .line 3787
    move-object/from16 v0, p1

    #@86
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@88
    move/from16 v0, v19

    #@8a
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8d
    move-result-object v27

    #@8e
    check-cast v27, Landroid/content/pm/PackageParser$Activity;

    #@90
    .line 3788
    .local v27, "t":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v27

    #@92
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@94
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@96
    move-object/from16 v0, v29

    #@98
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v4

    #@9c
    if-eqz v4, :cond_4

    #@9e
    .line 3789
    move-object/from16 v28, v27

    #@a0
    .line 3794
    .end local v27    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v28    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    if-nez v28, :cond_5

    #@a2
    .line 3795
    new-instance v4, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v5, "<activity-alias> target activity "

    #@aa
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v4

    #@ae
    move-object/from16 v0, v29

    #@b0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v4

    #@b4
    .line 3796
    const-string/jumbo v5, " not found in manifest"

    #@b7
    .line 3795
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v4

    #@bb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v4

    #@bf
    const/4 v5, 0x0

    #@c0
    aput-object v4, p5, v5

    #@c2
    .line 3797
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    #@c5
    .line 3798
    const/4 v4, 0x0

    #@c6
    return-object v4

    #@c7
    .line 3786
    .restart local v27    # "t":Landroid/content/pm/PackageParser$Activity;
    .restart local v28    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    add-int/lit8 v19, v19, 0x1

    #@c9
    goto :goto_0

    #@ca
    .line 3801
    .end local v27    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v28    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_5
    new-instance v20, Landroid/content/pm/ActivityInfo;

    #@cc
    invoke-direct/range {v20 .. v20}, Landroid/content/pm/ActivityInfo;-><init>()V

    #@cf
    .line 3802
    .local v20, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v29

    #@d1
    move-object/from16 v1, v20

    #@d3
    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@d5
    .line 3803
    move-object/from16 v0, v28

    #@d7
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@d9
    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@db
    move-object/from16 v0, v20

    #@dd
    iput v4, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@df
    .line 3804
    move-object/from16 v0, v28

    #@e1
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@e3
    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@e5
    move-object/from16 v0, v20

    #@e7
    iput v4, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@e9
    .line 3805
    move-object/from16 v0, v28

    #@eb
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@ed
    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    #@ef
    move-object/from16 v0, v20

    #@f1
    iput v4, v0, Landroid/content/pm/ActivityInfo;->icon:I

    #@f3
    .line 3806
    move-object/from16 v0, v28

    #@f5
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@f7
    iget v4, v4, Landroid/content/pm/ActivityInfo;->logo:I

    #@f9
    move-object/from16 v0, v20

    #@fb
    iput v4, v0, Landroid/content/pm/ActivityInfo;->logo:I

    #@fd
    .line 3807
    move-object/from16 v0, v28

    #@ff
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@101
    iget v4, v4, Landroid/content/pm/ActivityInfo;->banner:I

    #@103
    move-object/from16 v0, v20

    #@105
    iput v4, v0, Landroid/content/pm/ActivityInfo;->banner:I

    #@107
    .line 3808
    move-object/from16 v0, v28

    #@109
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@10b
    iget v4, v4, Landroid/content/pm/ActivityInfo;->labelRes:I

    #@10d
    move-object/from16 v0, v20

    #@10f
    iput v4, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    #@111
    .line 3809
    move-object/from16 v0, v28

    #@113
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@115
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@117
    move-object/from16 v0, v20

    #@119
    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@11b
    .line 3810
    move-object/from16 v0, v28

    #@11d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@11f
    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@121
    move-object/from16 v0, v20

    #@123
    iput v4, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@125
    .line 3811
    move-object/from16 v0, v28

    #@127
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@129
    iget v4, v4, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@12b
    move-object/from16 v0, v20

    #@12d
    iput v4, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@12f
    .line 3812
    move-object/from16 v0, v28

    #@131
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@133
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@135
    move-object/from16 v0, v20

    #@137
    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@139
    .line 3813
    move-object/from16 v0, v20

    #@13b
    iget v4, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@13d
    if-nez v4, :cond_6

    #@13f
    .line 3814
    move-object/from16 v0, v28

    #@141
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@143
    iget v4, v4, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@145
    move-object/from16 v0, v20

    #@147
    iput v4, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@149
    .line 3816
    :cond_6
    move-object/from16 v0, v28

    #@14b
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@14d
    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@14f
    move-object/from16 v0, v20

    #@151
    iput v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@153
    .line 3817
    move-object/from16 v0, v28

    #@155
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@157
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@159
    move-object/from16 v0, v20

    #@15b
    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@15d
    .line 3818
    move-object/from16 v0, v28

    #@15f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@161
    iget v4, v4, Landroid/content/pm/ActivityInfo;->theme:I

    #@163
    move-object/from16 v0, v20

    #@165
    iput v4, v0, Landroid/content/pm/ActivityInfo;->theme:I

    #@167
    .line 3819
    move-object/from16 v0, v28

    #@169
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@16b
    iget v4, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@16d
    move-object/from16 v0, v20

    #@16f
    iput v4, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@171
    .line 3820
    move-object/from16 v0, v28

    #@173
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@175
    iget v4, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@177
    move-object/from16 v0, v20

    #@179
    iput v4, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@17b
    .line 3821
    move-object/from16 v0, v28

    #@17d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@17f
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@181
    move-object/from16 v0, v20

    #@183
    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@185
    .line 3822
    move-object/from16 v0, v28

    #@187
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@189
    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@18b
    move-object/from16 v0, v20

    #@18d
    iput v4, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@18f
    .line 3823
    move-object/from16 v0, v28

    #@191
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@193
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@195
    move-object/from16 v0, v20

    #@197
    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@199
    .line 3824
    move-object/from16 v0, v28

    #@19b
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@19d
    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@19f
    move-object/from16 v0, v20

    #@1a1
    iput v4, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@1a3
    .line 3825
    move-object/from16 v0, v28

    #@1a5
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1a7
    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    #@1a9
    move-object/from16 v0, v20

    #@1ab
    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    #@1ad
    move-object/from16 v0, v20

    #@1af
    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    #@1b1
    .line 3827
    new-instance v18, Landroid/content/pm/PackageParser$Activity;

    #@1b3
    move-object/from16 v0, p0

    #@1b5
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@1b7
    move-object/from16 v0, v18

    #@1b9
    move-object/from16 v1, v20

    #@1bb
    invoke-direct {v0, v4, v1}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    #@1be
    .line 3828
    .local v18, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    #@1bf
    aget-object v4, p5, v4

    #@1c1
    if-eqz v4, :cond_7

    #@1c3
    .line 3829
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    #@1c6
    .line 3830
    const/4 v4, 0x0

    #@1c7
    return-object v4

    #@1c8
    .line 3834
    :cond_7
    const/4 v4, 0x5

    #@1c9
    .line 3833
    move-object/from16 v0, v24

    #@1cb
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1ce
    move-result v25

    #@1cf
    .line 3835
    .local v25, "setExported":Z
    if-eqz v25, :cond_8

    #@1d1
    .line 3836
    move-object/from16 v0, v18

    #@1d3
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1d5
    .line 3837
    const/4 v5, 0x5

    #@1d6
    const/4 v6, 0x0

    #@1d7
    .line 3836
    move-object/from16 v0, v24

    #@1d9
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1dc
    move-result v5

    #@1dd
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    #@1df
    .line 3842
    :cond_8
    const/4 v4, 0x3

    #@1e0
    const/4 v5, 0x0

    #@1e1
    .line 3841
    move-object/from16 v0, v24

    #@1e3
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1e6
    move-result-object v26

    #@1e7
    .line 3843
    .local v26, "str":Ljava/lang/String;
    if-eqz v26, :cond_9

    #@1e9
    .line 3844
    move-object/from16 v0, v18

    #@1eb
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1ed
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    #@1f0
    move-result v4

    #@1f1
    if-lez v4, :cond_b

    #@1f3
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@1f6
    move-result-object v4

    #@1f7
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1fa
    move-result-object v4

    #@1fb
    :goto_1
    iput-object v4, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@1fd
    .line 3848
    :cond_9
    const/16 v4, 0x9

    #@1ff
    .line 3849
    const/16 v5, 0x400

    #@201
    .line 3847
    move-object/from16 v0, v24

    #@203
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@206
    move-result-object v23

    #@207
    .line 3850
    .local v23, "parentName":Ljava/lang/String;
    if-eqz v23, :cond_a

    #@209
    .line 3851
    move-object/from16 v0, v18

    #@20b
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@20d
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@20f
    move-object/from16 v0, v23

    #@211
    move-object/from16 v1, p5

    #@213
    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@216
    move-result-object v22

    #@217
    .line 3852
    .local v22, "parentClassName":Ljava/lang/String;
    const/4 v4, 0x0

    #@218
    aget-object v4, p5, v4

    #@21a
    if-nez v4, :cond_c

    #@21c
    .line 3853
    move-object/from16 v0, v18

    #@21e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@220
    move-object/from16 v0, v22

    #@222
    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@224
    .line 3861
    .end local v22    # "parentClassName":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    #@227
    .line 3863
    const/4 v4, 0x0

    #@228
    aget-object v4, p5, v4

    #@22a
    if-eqz v4, :cond_d

    #@22c
    .line 3864
    const/4 v4, 0x0

    #@22d
    return-object v4

    #@22e
    .line 3844
    .end local v23    # "parentName":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    #@22f
    goto :goto_1

    #@230
    .line 3855
    .restart local v22    # "parentClassName":Ljava/lang/String;
    .restart local v23    # "parentName":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "PackageParser"

    #@233
    new-instance v5, Ljava/lang/StringBuilder;

    #@235
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@238
    const-string/jumbo v6, "Activity alias "

    #@23b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v5

    #@23f
    move-object/from16 v0, v18

    #@241
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@243
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@245
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v5

    #@249
    .line 3856
    const-string/jumbo v6, " specified invalid parentActivityName "

    #@24c
    .line 3855
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v5

    #@250
    move-object/from16 v0, v23

    #@252
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v5

    #@256
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@259
    move-result-object v5

    #@25a
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25d
    .line 3857
    const/4 v4, 0x0

    #@25e
    const/4 v5, 0x0

    #@25f
    aput-object v4, p5, v5

    #@261
    goto :goto_2

    #@262
    .line 3867
    .end local v22    # "parentClassName":Ljava/lang/String;
    :cond_d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@265
    move-result v21

    #@266
    .line 3869
    .local v21, "outerDepth":I
    :cond_e
    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@269
    move-result v30

    #@26a
    .local v30, "type":I
    const/4 v4, 0x1

    #@26b
    move/from16 v0, v30

    #@26d
    if-eq v0, v4, :cond_14

    #@26f
    .line 3870
    const/4 v4, 0x3

    #@270
    move/from16 v0, v30

    #@272
    if-ne v0, v4, :cond_f

    #@274
    .line 3871
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@277
    move-result v4

    #@278
    move/from16 v0, v21

    #@27a
    if-le v4, v0, :cond_14

    #@27c
    .line 3872
    :cond_f
    const/4 v4, 0x3

    #@27d
    move/from16 v0, v30

    #@27f
    if-eq v0, v4, :cond_e

    #@281
    const/4 v4, 0x4

    #@282
    move/from16 v0, v30

    #@284
    if-eq v0, v4, :cond_e

    #@286
    .line 3876
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@289
    move-result-object v4

    #@28a
    const-string/jumbo v5, "intent-filter"

    #@28d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@290
    move-result v4

    #@291
    if-eqz v4, :cond_12

    #@293
    .line 3877
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@295
    move-object/from16 v0, v18

    #@297
    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    #@29a
    .line 3878
    .local v9, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x1

    #@29b
    const/4 v8, 0x1

    #@29c
    move-object/from16 v4, p0

    #@29e
    move-object/from16 v5, p2

    #@2a0
    move-object/from16 v6, p3

    #@2a2
    move-object/from16 v10, p5

    #@2a4
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@2a7
    move-result v4

    #@2a8
    if-nez v4, :cond_10

    #@2aa
    .line 3879
    const/4 v4, 0x0

    #@2ab
    return-object v4

    #@2ac
    .line 3881
    :cond_10
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    #@2af
    move-result v4

    #@2b0
    if-nez v4, :cond_11

    #@2b2
    .line 3882
    const-string/jumbo v4, "PackageParser"

    #@2b5
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2ba
    const-string/jumbo v6, "No actions in intent filter at "

    #@2bd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v5

    #@2c1
    .line 3883
    move-object/from16 v0, p0

    #@2c3
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@2c5
    .line 3882
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v5

    #@2c9
    .line 3883
    const-string/jumbo v6, " "

    #@2cc
    .line 3882
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v5

    #@2d0
    .line 3884
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@2d3
    move-result-object v6

    #@2d4
    .line 3882
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d7
    move-result-object v5

    #@2d8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2db
    move-result-object v5

    #@2dc
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2df
    goto :goto_3

    #@2e0
    .line 3886
    :cond_11
    move-object/from16 v0, v18

    #@2e2
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@2e4
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e7
    goto/16 :goto_3

    #@2e9
    .line 3888
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_12
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@2ec
    move-result-object v4

    #@2ed
    const-string/jumbo v5, "meta-data"

    #@2f0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f3
    move-result v4

    #@2f4
    if-eqz v4, :cond_13

    #@2f6
    .line 3889
    move-object/from16 v0, v18

    #@2f8
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@2fa
    move-object/from16 v0, p0

    #@2fc
    move-object/from16 v1, p2

    #@2fe
    move-object/from16 v2, p3

    #@300
    move-object/from16 v3, p5

    #@302
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@305
    move-result-object v4

    #@306
    move-object/from16 v0, v18

    #@308
    iput-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@30a
    if-nez v4, :cond_e

    #@30c
    .line 3891
    const/4 v4, 0x0

    #@30d
    return-object v4

    #@30e
    .line 3895
    :cond_13
    const-string/jumbo v4, "PackageParser"

    #@311
    new-instance v5, Ljava/lang/StringBuilder;

    #@313
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@316
    const-string/jumbo v6, "Unknown element under <activity-alias>: "

    #@319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31c
    move-result-object v5

    #@31d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@320
    move-result-object v6

    #@321
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@324
    move-result-object v5

    #@325
    .line 3896
    const-string/jumbo v6, " at "

    #@328
    .line 3895
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32b
    move-result-object v5

    #@32c
    .line 3896
    move-object/from16 v0, p0

    #@32e
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@330
    .line 3895
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@333
    move-result-object v5

    #@334
    .line 3896
    const-string/jumbo v6, " "

    #@337
    .line 3895
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33a
    move-result-object v5

    #@33b
    .line 3897
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@33e
    move-result-object v6

    #@33f
    .line 3895
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@342
    move-result-object v5

    #@343
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@346
    move-result-object v5

    #@347
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34a
    .line 3898
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@34d
    goto/16 :goto_3

    #@34f
    .line 3907
    :cond_14
    if-nez v25, :cond_15

    #@351
    .line 3908
    move-object/from16 v0, v18

    #@353
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@355
    move-object/from16 v0, v18

    #@357
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@359
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@35c
    move-result v4

    #@35d
    if-lez v4, :cond_16

    #@35f
    const/4 v4, 0x1

    #@360
    :goto_4
    iput-boolean v4, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    #@362
    .line 3911
    :cond_15
    return-object v18

    #@363
    .line 3908
    :cond_16
    const/4 v4, 0x0

    #@364
    goto :goto_4
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "tag"    # Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Component",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p4, "outInfo":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x1

    #@2
    .line 4372
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@5
    move-result v0

    #@6
    .line 4374
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    #@9
    move-result v1

    #@a
    .local v1, "type":I
    if-eq v1, v5, :cond_3

    #@c
    .line 4375
    if-ne v1, v6, :cond_1

    #@e
    .line 4376
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@11
    move-result v2

    #@12
    if-le v2, v0, :cond_3

    #@14
    .line 4377
    :cond_1
    if-eq v1, v6, :cond_0

    #@16
    const/4 v2, 0x4

    #@17
    if-eq v1, v2, :cond_0

    #@19
    .line 4381
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, "meta-data"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 4383
    iget-object v2, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    #@28
    .line 4382
    invoke-direct {p0, p1, p2, v2, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    #@2e
    if-nez v2, :cond_0

    #@30
    .line 4384
    const/4 v2, 0x0

    #@31
    return v2

    #@32
    .line 4388
    :cond_2
    const-string/jumbo v2, "PackageParser"

    #@35
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v4, "Unknown element under "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    const-string/jumbo v4, ": "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    .line 4389
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    .line 4388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    .line 4389
    const-string/jumbo v4, " at "

    #@57
    .line 4388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    .line 4389
    iget-object v4, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@5d
    .line 4388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    .line 4389
    const-string/jumbo v4, " "

    #@64
    .line 4388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    .line 4390
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    .line 4388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 4391
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7a
    goto :goto_0

    #@7b
    .line 4399
    :cond_3
    return v5
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 28
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1309
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v20

    #@4
    .line 1311
    .local v20, "apkPath":Ljava/lang/String;
    const/16 v21, 0x0

    #@6
    .line 1312
    .local v21, "assets":Landroid/content/res/AssetManager;
    const/16 v26, 0x0

    #@8
    .line 1314
    .local v26, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v2, Landroid/content/res/AssetManager;

    #@a
    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@d
    .line 1316
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .local v2, "assets":Landroid/content/res/AssetManager;
    :try_start_1
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@f
    .line 1315
    const/4 v3, 0x0

    #@10
    const/4 v4, 0x0

    #@11
    const/4 v5, 0x0

    #@12
    const/4 v6, 0x0

    #@13
    const/4 v7, 0x0

    #@14
    const/4 v8, 0x0

    #@15
    const/4 v9, 0x0

    #@16
    const/4 v10, 0x0

    #@17
    const/4 v11, 0x0

    #@18
    const/4 v12, 0x0

    #@19
    const/4 v13, 0x0

    #@1a
    const/4 v14, 0x0

    #@1b
    const/4 v15, 0x0

    #@1c
    const/16 v16, 0x0

    #@1e
    const/16 v17, 0x0

    #@20
    const/16 v18, 0x0

    #@22
    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    #@25
    .line 1318
    move-object/from16 v0, v20

    #@27
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@2a
    move-result v23

    #@2b
    .line 1319
    .local v23, "cookie":I
    if-nez v23, :cond_0

    #@2d
    .line 1320
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@2f
    .line 1321
    new-instance v6, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v7, "Failed to parse "

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    move-object/from16 v0, v20

    #@3d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    .line 1320
    const/16 v7, -0x64

    #@47
    invoke-direct {v3, v7, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@4a
    throw v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@4b
    .line 1351
    .end local v23    # "cookie":I
    :catch_0
    move-exception v24

    #@4c
    .local v24, "e":Ljava/lang/Exception;
    move-object/from16 v5, v26

    #@4e
    .line 1352
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    :try_start_2
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@50
    .line 1353
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v7, "Failed to parse "

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    move-object/from16 v0, v20

    #@5e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    .line 1352
    const/16 v7, -0x66

    #@68
    move-object/from16 v0, v24

    #@6a
    invoke-direct {v3, v7, v6, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@6d
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6e
    .line 1354
    .end local v24    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@6f
    .line 1355
    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@72
    .line 1356
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@75
    .line 1354
    throw v3

    #@76
    .line 1324
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v23    # "cookie":I
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :try_start_3
    new-instance v25, Landroid/util/DisplayMetrics;

    #@78
    invoke-direct/range {v25 .. v25}, Landroid/util/DisplayMetrics;-><init>()V

    #@7b
    .line 1325
    .local v25, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v25 .. v25}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@7e
    .line 1327
    new-instance v4, Landroid/content/res/Resources;

    #@80
    const/4 v3, 0x0

    #@81
    move-object/from16 v0, v25

    #@83
    invoke-direct {v4, v2, v0, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    #@86
    .line 1328
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v3, "AndroidManifest.xml"

    #@89
    move/from16 v0, v23

    #@8b
    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@8e
    move-result-object v5

    #@8f
    .line 1332
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move/from16 v0, p1

    #@91
    and-int/lit16 v3, v0, 0x100

    #@93
    if-eqz v3, :cond_1

    #@95
    .line 1334
    :try_start_4
    new-instance v27, Landroid/content/pm/PackageParser$Package;

    #@97
    const/4 v3, 0x0

    #@98
    move-object/from16 v0, v27

    #@9a
    invoke-direct {v0, v3}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    #@9d
    .line 1335
    .local v27, "tempPkg":Landroid/content/pm/PackageParser$Package;
    const-string/jumbo v3, "collectCertificates"

    #@a0
    const-wide/32 v6, 0x40000

    #@a3
    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a6
    .line 1337
    const/4 v3, 0x0

    #@a7
    :try_start_5
    move-object/from16 v0, v27

    #@a9
    move-object/from16 v1, p0

    #@ab
    invoke-static {v0, v1, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ae
    .line 1339
    const-wide/32 v6, 0x40000

    #@b1
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@b4
    .line 1341
    move-object/from16 v0, v27

    #@b6
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@b8
    .line 1342
    .local v8, "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, v27

    #@ba
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@bc
    .line 1348
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    .end local v27    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :goto_2
    move-object/from16 v22, v5

    #@be
    .local v22, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v3, v20

    #@c0
    move-object v6, v5

    #@c1
    move/from16 v7, p1

    #@c3
    .line 1349
    invoke-static/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c6
    move-result-object v3

    #@c7
    .line 1355
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ca
    .line 1356
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@cd
    .line 1349
    return-object v3

    #@ce
    .line 1338
    .end local v22    # "attrs":Landroid/util/AttributeSet;
    .restart local v27    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v3

    #@cf
    .line 1339
    const-wide/32 v6, 0x40000

    #@d2
    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@d5
    .line 1338
    throw v3
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@d6
    .line 1351
    .end local v27    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :catch_1
    move-exception v24

    #@d7
    .restart local v24    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    #@d9
    .line 1344
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v8, 0x0

    #@da
    .line 1345
    .local v8, "signatures":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    #@db
    .local v9, "certificates":[[Ljava/security/cert/Certificate;
    goto :goto_2

    #@dc
    .line 1354
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    .end local v9    # "certificates":[[Ljava/security/cert/Certificate;
    .end local v23    # "cookie":I
    .end local v25    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_2
    move-exception v3

    #@dd
    move-object/from16 v5, v26

    #@df
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    #@e1
    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto :goto_1

    #@e2
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    :catchall_3
    move-exception v3

    #@e3
    move-object/from16 v5, v26

    #@e5
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1

    #@e6
    .line 1351
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    :catch_2
    move-exception v24

    #@e7
    .restart local v24    # "e":Ljava/lang/Exception;
    move-object/from16 v5, v26

    #@e9
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    #@eb
    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto/16 :goto_0
.end method

.method private static parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 22
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "flags"    # I
    .param p5, "signatures"    # [Landroid/content/pm/Signature;
    .param p6, "certificates"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1437
    invoke-static/range {p2 .. p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    #@3
    move-result-object v18

    #@4
    .line 1439
    .local v18, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, -0x1

    #@5
    .line 1440
    .local v8, "installLocation":I
    const/4 v6, 0x0

    #@6
    .line 1441
    .local v6, "versionCode":I
    const/4 v7, 0x0

    #@7
    .line 1442
    .local v7, "revisionCode":I
    const/4 v12, 0x0

    #@8
    .line 1443
    .local v12, "coreApp":Z
    const/4 v13, 0x0

    #@9
    .line 1444
    .local v13, "multiArch":Z
    const/4 v14, 0x0

    #@a
    .line 1445
    .local v14, "use32bitAbi":Z
    const/4 v15, 0x1

    #@b
    .line 1447
    .local v15, "extractNativeLibs":Z
    const/16 v17, 0x0

    #@d
    .end local v12    # "coreApp":Z
    .local v17, "i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    #@10
    move-result v2

    #@11
    move/from16 v0, v17

    #@13
    if-ge v0, v2, :cond_4

    #@15
    .line 1448
    move-object/from16 v0, p3

    #@17
    move/from16 v1, v17

    #@19
    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    #@1c
    move-result-object v16

    #@1d
    .line 1449
    .local v16, "attr":Ljava/lang/String;
    const-string/jumbo v2, "installLocation"

    #@20
    move-object/from16 v0, v16

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 1451
    const/4 v2, -0x1

    #@29
    .line 1450
    move-object/from16 v0, p3

    #@2b
    move/from16 v1, v17

    #@2d
    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    #@30
    move-result v8

    #@31
    .line 1447
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1452
    :cond_1
    const-string/jumbo v2, "versionCode"

    #@37
    move-object/from16 v0, v16

    #@39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_2

    #@3f
    .line 1453
    const/4 v2, 0x0

    #@40
    move-object/from16 v0, p3

    #@42
    move/from16 v1, v17

    #@44
    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    #@47
    move-result v6

    #@48
    goto :goto_1

    #@49
    .line 1454
    :cond_2
    const-string/jumbo v2, "revisionCode"

    #@4c
    move-object/from16 v0, v16

    #@4e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_3

    #@54
    .line 1455
    const/4 v2, 0x0

    #@55
    move-object/from16 v0, p3

    #@57
    move/from16 v1, v17

    #@59
    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    #@5c
    move-result v7

    #@5d
    goto :goto_1

    #@5e
    .line 1456
    :cond_3
    const-string/jumbo v2, "coreApp"

    #@61
    move-object/from16 v0, v16

    #@63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v2

    #@67
    if-eqz v2, :cond_0

    #@69
    .line 1457
    const/4 v2, 0x0

    #@6a
    move-object/from16 v0, p3

    #@6c
    move/from16 v1, v17

    #@6e
    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@71
    move-result v12

    #@72
    .local v12, "coreApp":Z
    goto :goto_1

    #@73
    .line 1463
    .end local v12    # "coreApp":Z
    .end local v16    # "attr":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@76
    move-result v2

    #@77
    add-int/lit8 v19, v2, 0x1

    #@79
    .line 1465
    .local v19, "searchDepth":I
    new-instance v9, Ljava/util/ArrayList;

    #@7b
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@7e
    .line 1466
    .end local v13    # "multiArch":Z
    .end local v14    # "use32bitAbi":Z
    .end local v15    # "extractNativeLibs":Z
    .local v9, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@81
    move-result v20

    #@82
    .local v20, "type":I
    const/4 v2, 0x1

    #@83
    move/from16 v0, v20

    #@85
    if-eq v0, v2, :cond_b

    #@87
    .line 1467
    const/4 v2, 0x3

    #@88
    move/from16 v0, v20

    #@8a
    if-ne v0, v2, :cond_6

    #@8c
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@8f
    move-result v2

    #@90
    move/from16 v0, v19

    #@92
    if-lt v2, v0, :cond_b

    #@94
    .line 1468
    :cond_6
    const/4 v2, 0x3

    #@95
    move/from16 v0, v20

    #@97
    if-eq v0, v2, :cond_5

    #@99
    const/4 v2, 0x4

    #@9a
    move/from16 v0, v20

    #@9c
    if-eq v0, v2, :cond_5

    #@9e
    .line 1472
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@a1
    move-result v2

    #@a2
    move/from16 v0, v19

    #@a4
    if-ne v2, v0, :cond_7

    #@a6
    const-string/jumbo v2, "package-verifier"

    #@a9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@ac
    move-result-object v3

    #@ad
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v2

    #@b1
    if-eqz v2, :cond_7

    #@b3
    .line 1473
    invoke-static/range {p1 .. p4}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;

    #@b6
    move-result-object v21

    #@b7
    .line 1474
    .local v21, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v21, :cond_7

    #@b9
    .line 1475
    move-object/from16 v0, v21

    #@bb
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@be
    .line 1479
    .end local v21    # "verifier":Landroid/content/pm/VerifierInfo;
    :cond_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@c1
    move-result v2

    #@c2
    move/from16 v0, v19

    #@c4
    if-ne v2, v0, :cond_5

    #@c6
    const-string/jumbo v2, "application"

    #@c9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@cc
    move-result-object v3

    #@cd
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d0
    move-result v2

    #@d1
    if-eqz v2, :cond_5

    #@d3
    .line 1480
    const/16 v17, 0x0

    #@d5
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    #@d8
    move-result v2

    #@d9
    move/from16 v0, v17

    #@db
    if-ge v0, v2, :cond_5

    #@dd
    .line 1481
    move-object/from16 v0, p3

    #@df
    move/from16 v1, v17

    #@e1
    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    #@e4
    move-result-object v16

    #@e5
    .line 1482
    .restart local v16    # "attr":Ljava/lang/String;
    const-string/jumbo v2, "multiArch"

    #@e8
    move-object/from16 v0, v16

    #@ea
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ed
    move-result v2

    #@ee
    if-eqz v2, :cond_8

    #@f0
    .line 1483
    const/4 v2, 0x0

    #@f1
    move-object/from16 v0, p3

    #@f3
    move/from16 v1, v17

    #@f5
    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@f8
    move-result v13

    #@f9
    .line 1485
    :cond_8
    const-string/jumbo v2, "use32bitAbi"

    #@fc
    move-object/from16 v0, v16

    #@fe
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@101
    move-result v2

    #@102
    if-eqz v2, :cond_9

    #@104
    .line 1486
    const/4 v2, 0x0

    #@105
    move-object/from16 v0, p3

    #@107
    move/from16 v1, v17

    #@109
    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@10c
    move-result v14

    #@10d
    .line 1488
    :cond_9
    const-string/jumbo v2, "extractNativeLibs"

    #@110
    move-object/from16 v0, v16

    #@112
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@115
    move-result v2

    #@116
    if-eqz v2, :cond_a

    #@118
    .line 1489
    const/4 v2, 0x1

    #@119
    move-object/from16 v0, p3

    #@11b
    move/from16 v1, v17

    #@11d
    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@120
    move-result v15

    #@121
    .line 1480
    :cond_a
    add-int/lit8 v17, v17, 0x1

    #@123
    goto :goto_2

    #@124
    .line 1495
    .end local v16    # "attr":Ljava/lang/String;
    :cond_b
    new-instance v2, Landroid/content/pm/PackageParser$ApkLite;

    #@126
    move-object/from16 v0, v18

    #@128
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@12a
    check-cast v4, Ljava/lang/String;

    #@12c
    move-object/from16 v0, v18

    #@12e
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@130
    check-cast v5, Ljava/lang/String;

    #@132
    move-object/from16 v3, p0

    #@134
    move-object/from16 v10, p5

    #@136
    move-object/from16 v11, p6

    #@138
    invoke-direct/range {v2 .. v15}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;ZZZZ)V

    #@13b
    return-object v2
.end method

.method private parseBaseApk(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 12
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "flags"    # I
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1609
    :try_start_0
    invoke-static {p2, p2}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    #@3
    move-result-object v8

    #@4
    .line 1610
    .local v8, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@6
    check-cast v9, Ljava/lang/String;

    #@8
    .line 1611
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@a
    check-cast v11, Ljava/lang/String;

    #@c
    .line 1613
    .local v11, "splitName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Expected base APK, but found split "

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    const/4 v2, 0x0

    #@27
    aput-object v0, p4, v2

    #@29
    .line 1615
    const/16 v0, -0x6a

    #@2b
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 1616
    const/4 v0, 0x0

    #@2e
    return-object v0

    #@2f
    .line 1618
    .end local v8    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "splitName":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@30
    .line 1619
    .local v7, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/16 v0, -0x6a

    #@32
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@34
    .line 1620
    const/4 v0, 0x0

    #@35
    return-object v0

    #@36
    .line 1623
    .end local v7    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v8    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "splitName":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    #@38
    invoke-direct {v1, v9}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    #@3b
    .line 1626
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    #@3d
    .line 1625
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@40
    move-result-object v10

    #@41
    .line 1629
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x1

    #@42
    const/4 v2, 0x0

    #@43
    .line 1628
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@46
    move-result v0

    #@47
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@49
    iput v0, v2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@4b
    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@4d
    .line 1631
    const/4 v0, 0x5

    #@4e
    const/4 v2, 0x0

    #@4f
    .line 1630
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@52
    move-result v0

    #@53
    iput v0, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@55
    .line 1633
    const/4 v0, 0x2

    #@56
    const/4 v2, 0x0

    #@57
    .line 1632
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@5d
    .line 1634
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@5f
    if-eqz v0, :cond_1

    #@61
    .line 1635
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@63
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@69
    .line 1638
    :cond_1
    const-string/jumbo v0, "coreApp"

    #@6c
    const/4 v2, 0x0

    #@6d
    const/4 v3, 0x0

    #@6e
    invoke-interface {p2, v2, v0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@71
    move-result v0

    #@72
    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    #@74
    .line 1640
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    #@77
    .line 1642
    const/4 v2, 0x0

    #@78
    move-object v0, p0

    #@79
    move-object v3, p1

    #@7a
    move-object v4, p2

    #@7b
    move v5, p3

    #@7c
    move-object/from16 v6, p4

    #@7e
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@81
    move-result-object v0

    #@82
    return-object v0
.end method

.method private parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .locals 34
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "assets"    # Landroid/content/res/AssetManager;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 913
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v23

    #@4
    .line 915
    .local v23, "apkPath":Ljava/lang/String;
    const/16 v33, 0x0

    #@6
    .line 916
    .local v33, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v5, "/mnt/expand/"

    #@9
    move-object/from16 v0, v23

    #@b
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 917
    const/16 v5, 0x2f

    #@13
    const-string/jumbo v6, "/mnt/expand/"

    #@16
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@19
    move-result v6

    #@1a
    move-object/from16 v0, v23

    #@1c
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    #@1f
    move-result v27

    #@20
    .line 918
    .local v27, "end":I
    const-string/jumbo v5, "/mnt/expand/"

    #@23
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@26
    move-result v5

    #@27
    move-object/from16 v0, v23

    #@29
    move/from16 v1, v27

    #@2b
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v33

    #@2f
    .line 921
    .end local v27    # "end":I
    .end local v33    # "volumeUuid":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    #@30
    move-object/from16 v0, p0

    #@32
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@34
    .line 922
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    move-object/from16 v0, p0

    #@3a
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@3c
    .line 926
    move-object/from16 v0, p2

    #@3e
    move-object/from16 v1, v23

    #@40
    move/from16 v2, p3

    #@42
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    #@45
    move-result v24

    #@46
    .line 928
    .local v24, "cookie":I
    const/16 v31, 0x0

    #@48
    .line 929
    .local v31, "res":Landroid/content/res/Resources;
    const/16 v29, 0x0

    #@4a
    .line 931
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v32, Landroid/content/res/Resources;

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@50
    const/4 v6, 0x0

    #@51
    move-object/from16 v0, v32

    #@53
    move-object/from16 v1, p2

    #@55
    invoke-direct {v0, v1, v5, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    .line 933
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v32, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v22, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@5a
    .line 932
    const/4 v6, 0x0

    #@5b
    const/4 v7, 0x0

    #@5c
    const/4 v8, 0x0

    #@5d
    const/4 v9, 0x0

    #@5e
    const/4 v10, 0x0

    #@5f
    const/4 v11, 0x0

    #@60
    const/4 v12, 0x0

    #@61
    const/4 v13, 0x0

    #@62
    const/4 v14, 0x0

    #@63
    const/4 v15, 0x0

    #@64
    const/16 v16, 0x0

    #@66
    const/16 v17, 0x0

    #@68
    const/16 v18, 0x0

    #@6a
    const/16 v19, 0x0

    #@6c
    const/16 v20, 0x0

    #@6e
    const/16 v21, 0x0

    #@70
    move-object/from16 v5, p2

    #@72
    invoke-virtual/range {v5 .. v22}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    #@75
    .line 934
    const-string/jumbo v5, "AndroidManifest.xml"

    #@78
    move-object/from16 v0, p2

    #@7a
    move/from16 v1, v24

    #@7c
    invoke-virtual {v0, v1, v5}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@7f
    move-result-object v29

    #@80
    .line 936
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x1

    #@81
    new-array v0, v5, [Ljava/lang/String;

    #@83
    move-object/from16 v28, v0

    #@85
    .line 937
    .local v28, "outError":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@87
    move-object/from16 v1, v32

    #@89
    move-object/from16 v2, v29

    #@8b
    move/from16 v3, p3

    #@8d
    move-object/from16 v4, v28

    #@8f
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseBaseApk(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@92
    move-result-object v30

    #@93
    .line 938
    .local v30, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v30, :cond_1

    #@95
    .line 939
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    #@97
    move-object/from16 v0, p0

    #@99
    iget v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@9b
    .line 940
    new-instance v7, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    move-object/from16 v0, v23

    #@a2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    const-string/jumbo v8, " (at "

    #@a9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v7

    #@ad
    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@b0
    move-result-object v8

    #@b1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v7

    #@b5
    const-string/jumbo v8, "): "

    #@b8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    const/4 v8, 0x0

    #@bd
    aget-object v8, v28, v8

    #@bf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v7

    #@c3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v7

    #@c7
    .line 939
    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@ca
    throw v5
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@cb
    .line 950
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v25

    #@cc
    .local v25, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v31, v32

    #@ce
    .line 951
    .end local v32    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_2
    throw v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cf
    .line 955
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v5

    #@d0
    .line 956
    :goto_1
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d3
    .line 955
    throw v5

    #@d4
    .line 943
    .restart local v28    # "outError":[Ljava/lang/String;
    .restart local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :cond_1
    :try_start_3
    move-object/from16 v0, v30

    #@d6
    move-object/from16 v1, v33

    #@d8
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    #@db
    .line 944
    move-object/from16 v0, v30

    #@dd
    move-object/from16 v1, v33

    #@df
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    #@e2
    .line 945
    move-object/from16 v0, v30

    #@e4
    move-object/from16 v1, v23

    #@e6
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    #@e9
    .line 946
    const/4 v5, 0x0

    #@ea
    move-object/from16 v0, v30

    #@ec
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageParser$Package;->setSignatures([Landroid/content/pm/Signature;)V
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ef
    .line 956
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f2
    .line 948
    return-object v30

    #@f3
    .line 952
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v32    # "res":Landroid/content/res/Resources;
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v31    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v26

    #@f4
    .line 953
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v26, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    #@f6
    .line 954
    new-instance v6, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v7, "Failed to read manifest from "

    #@fe
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v6

    #@102
    move-object/from16 v0, v23

    #@104
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v6

    #@108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v6

    #@10c
    .line 953
    const/16 v7, -0x66

    #@10e
    move-object/from16 v0, v26

    #@110
    invoke-direct {v5, v7, v6, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@113
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@114
    .line 955
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v5

    #@115
    move-object/from16 v31, v32

    #@117
    .end local v32    # "res":Landroid/content/res/Resources;
    .local v31, "res":Landroid/content/res/Resources;
    goto :goto_1

    #@118
    .line 950
    .restart local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .local v31, "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v25

    #@119
    .restart local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    goto :goto_0

    #@11a
    .line 952
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "res":Landroid/content/res/Resources;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v26

    #@11b
    .restart local v26    # "e":Ljava/lang/Exception;
    move-object/from16 v31, v32

    #@11d
    .end local v32    # "res":Landroid/content/res/Resources;
    .local v31, "res":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 9
    .param p1, "parentPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1530
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    add-int/lit8 v0, v0, 0x2

    #@c
    .line 1531
    const/4 v2, 0x5

    #@d
    .line 1530
    if-le v0, v2, :cond_0

    #@f
    .line 1532
    const-string/jumbo v0, "Maximum number of packages per APK is: 5"

    #@12
    const/4 v2, 0x0

    #@13
    aput-object v0, p5, v2

    #@15
    .line 1533
    const/16 v0, -0x6c

    #@17
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@19
    .line 1534
    const/4 v0, 0x0

    #@1a
    return v0

    #@1b
    .line 1538
    :cond_0
    const-string/jumbo v0, "package"

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-interface {p3, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    .line 1539
    .local v7, "childPackageName":Ljava/lang/String;
    const/4 v0, 0x1

    #@24
    const/4 v2, 0x0

    #@25
    invoke-static {v7, v0, v2}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 1540
    const/16 v0, -0x6a

    #@2d
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@2f
    .line 1541
    const/4 v0, 0x0

    #@30
    return v0

    #@31
    .line 1545
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@33
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "Child package name cannot be equal to parent package name: "

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 1547
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@47
    .line 1546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    .line 1548
    .local v8, "message":Ljava/lang/String;
    const-string/jumbo v0, "PackageParser"

    #@52
    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 1549
    const/4 v0, 0x0

    #@56
    aput-object v8, p5, v0

    #@58
    .line 1550
    const/16 v0, -0x6c

    #@5a
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@5c
    .line 1551
    const/4 v0, 0x0

    #@5d
    return v0

    #@5e
    .line 1555
    .end local v8    # "message":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v7}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_3

    #@64
    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v2, "Duplicate child package:"

    #@6c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v8

    #@78
    .line 1557
    .restart local v8    # "message":Ljava/lang/String;
    const-string/jumbo v0, "PackageParser"

    #@7b
    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 1558
    const/4 v0, 0x0

    #@7f
    aput-object v8, p5, v0

    #@81
    .line 1559
    const/16 v0, -0x6c

    #@83
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@85
    .line 1560
    const/4 v0, 0x0

    #@86
    return v0

    #@87
    .line 1564
    .end local v8    # "message":Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    #@89
    invoke-direct {v1, v7}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    #@8c
    .line 1567
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@8e
    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@90
    .line 1568
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@92
    iput v0, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@94
    .line 1569
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@96
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@98
    .line 1570
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9a
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9c
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@9e
    iput v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@a0
    .line 1571
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a2
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a4
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@a6
    iput v2, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@a8
    .line 1573
    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    #@aa
    move-object v0, p0

    #@ab
    move-object v3, p2

    #@ac
    move-object v4, p3

    #@ad
    move v5, p4

    #@ae
    move-object v6, p5

    #@af
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@b2
    move-result-object v1

    #@b3
    .line 1574
    if-nez v1, :cond_4

    #@b5
    .line 1576
    const/4 v0, 0x0

    #@b6
    return v0

    #@b7
    .line 1580
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@b9
    if-nez v0, :cond_5

    #@bb
    .line 1581
    new-instance v0, Ljava/util/ArrayList;

    #@bd
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c0
    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@c2
    .line 1583
    :cond_5
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@c4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c7
    .line 1584
    iput-object p1, v1, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    #@c9
    .line 1586
    const/4 v0, 0x1

    #@ca
    return v0
.end method

.method private parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 53
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/PackageParser$Package;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1667
    .local p2, "acceptedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    move-object/from16 v0, p0

    #@3
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@5
    .line 1668
    const/4 v5, 0x0

    #@6
    move-object/from16 v0, p0

    #@8
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@a
    .line 1669
    const/4 v5, 0x0

    #@b
    move-object/from16 v0, p0

    #@d
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@f
    .line 1670
    const/4 v5, 0x0

    #@10
    move-object/from16 v0, p0

    #@12
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@14
    .line 1673
    const/16 v20, 0x0

    #@16
    .line 1676
    .local v20, "foundApp":Z
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    #@18
    .line 1675
    move-object/from16 v0, p3

    #@1a
    move-object/from16 v1, p4

    #@1c
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1f
    move-result-object v41

    #@20
    .line 1679
    .local v41, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    #@21
    const/4 v6, 0x0

    #@22
    .line 1678
    move-object/from16 v0, v41

    #@24
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@27
    move-result-object v43

    #@28
    .line 1680
    .local v43, "str":Ljava/lang/String;
    if-eqz v43, :cond_1

    #@2a
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    #@2d
    move-result v5

    #@2e
    if-lez v5, :cond_1

    #@30
    .line 1681
    const/4 v5, 0x1

    #@31
    const/4 v6, 0x0

    #@32
    move-object/from16 v0, v43

    #@34
    invoke-static {v0, v5, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@37
    move-result-object v35

    #@38
    .line 1682
    .local v35, "nameError":Ljava/lang/String;
    if-eqz v35, :cond_0

    #@3a
    const-string/jumbo v5, "android"

    #@3d
    move-object/from16 v0, p1

    #@3f
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_8

    #@47
    .line 1688
    :cond_0
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    move-object/from16 v0, p1

    #@4d
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    #@4f
    .line 1690
    const/4 v5, 0x3

    #@50
    const/4 v6, 0x0

    #@51
    .line 1689
    move-object/from16 v0, v41

    #@53
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@56
    move-result v5

    #@57
    move-object/from16 v0, p1

    #@59
    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    #@5b
    .line 1694
    .end local v35    # "nameError":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x4

    #@5c
    .line 1695
    const/4 v6, -0x1

    #@5d
    .line 1693
    move-object/from16 v0, v41

    #@5f
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@62
    move-result v5

    #@63
    move-object/from16 v0, p1

    #@65
    iput v5, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    #@67
    .line 1696
    move-object/from16 v0, p1

    #@69
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6b
    move-object/from16 v0, p1

    #@6d
    iget v6, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    #@6f
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@71
    .line 1700
    and-int/lit8 v5, p5, 0x10

    #@73
    if-eqz v5, :cond_2

    #@75
    .line 1701
    move-object/from16 v0, p1

    #@77
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@79
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@7b
    or-int/lit8 v6, v6, 0x4

    #@7d
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@7f
    .line 1705
    :cond_2
    and-int/lit8 v5, p5, 0x20

    #@81
    if-eqz v5, :cond_3

    #@83
    .line 1706
    move-object/from16 v0, p1

    #@85
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@87
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@89
    const/high16 v7, 0x40000

    #@8b
    or-int/2addr v6, v7

    #@8c
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8e
    .line 1709
    :cond_3
    move/from16 v0, p5

    #@90
    and-int/lit16 v5, v0, 0x800

    #@92
    if-eqz v5, :cond_4

    #@94
    .line 1710
    move-object/from16 v0, p1

    #@96
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@98
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@9a
    or-int/lit16 v6, v6, 0x200

    #@9c
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@9e
    .line 1714
    :cond_4
    const/16 v46, 0x1

    #@a0
    .line 1715
    .local v46, "supportsSmallScreens":I
    const/16 v45, 0x1

    #@a2
    .line 1716
    .local v45, "supportsNormalScreens":I
    const/16 v44, 0x1

    #@a4
    .line 1717
    .local v44, "supportsLargeScreens":I
    const/16 v47, 0x1

    #@a6
    .line 1718
    .local v47, "supportsXLargeScreens":I
    const/16 v40, 0x1

    #@a8
    .line 1719
    .local v40, "resizeable":I
    const/4 v14, 0x1

    #@a9
    .line 1721
    .local v14, "anyDensity":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@ac
    move-result v38

    #@ad
    .line 1722
    .local v38, "outerDepth":I
    :cond_5
    :goto_0
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    #@b0
    move-result v51

    #@b1
    .local v51, "type":I
    const/4 v5, 0x1

    #@b2
    move/from16 v0, v51

    #@b4
    if-eq v0, v5, :cond_46

    #@b6
    .line 1723
    const/4 v5, 0x3

    #@b7
    move/from16 v0, v51

    #@b9
    if-ne v0, v5, :cond_6

    #@bb
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@be
    move-result v5

    #@bf
    move/from16 v0, v38

    #@c1
    if-le v5, v0, :cond_46

    #@c3
    .line 1724
    :cond_6
    const/4 v5, 0x3

    #@c4
    move/from16 v0, v51

    #@c6
    if-eq v0, v5, :cond_5

    #@c8
    const/4 v5, 0x4

    #@c9
    move/from16 v0, v51

    #@cb
    if-eq v0, v5, :cond_5

    #@cd
    .line 1728
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@d0
    move-result-object v48

    #@d1
    .line 1730
    .local v48, "tagName":Ljava/lang/String;
    if-eqz p2, :cond_7

    #@d3
    move-object/from16 v0, p2

    #@d5
    move-object/from16 v1, v48

    #@d7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@da
    move-result v5

    #@db
    if-eqz v5, :cond_9

    #@dd
    .line 1738
    :cond_7
    const-string/jumbo v5, "application"

    #@e0
    move-object/from16 v0, v48

    #@e2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e5
    move-result v5

    #@e6
    if-eqz v5, :cond_b

    #@e8
    .line 1739
    if-eqz v20, :cond_a

    #@ea
    .line 1745
    const-string/jumbo v5, "PackageParser"

    #@ed
    const-string/jumbo v6, "<manifest> has more than one <application>"

    #@f0
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f3
    .line 1746
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@f6
    goto :goto_0

    #@f7
    .line 1683
    .end local v14    # "anyDensity":I
    .end local v38    # "outerDepth":I
    .end local v40    # "resizeable":I
    .end local v44    # "supportsLargeScreens":I
    .end local v45    # "supportsNormalScreens":I
    .end local v46    # "supportsSmallScreens":I
    .end local v47    # "supportsXLargeScreens":I
    .end local v48    # "tagName":Ljava/lang/String;
    .end local v51    # "type":I
    .restart local v35    # "nameError":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v6, "<manifest> specifies bad sharedUserId name \""

    #@ff
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v5

    #@103
    move-object/from16 v0, v43

    #@105
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v5

    #@109
    .line 1684
    const-string/jumbo v6, "\": "

    #@10c
    .line 1683
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v5

    #@110
    move-object/from16 v0, v35

    #@112
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v5

    #@116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v5

    #@11a
    const/4 v6, 0x0

    #@11b
    aput-object v5, p6, v6

    #@11d
    .line 1685
    const/16 v5, -0x6b

    #@11f
    move-object/from16 v0, p0

    #@121
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@123
    .line 1686
    const/4 v5, 0x0

    #@124
    return-object v5

    #@125
    .line 1731
    .end local v35    # "nameError":Ljava/lang/String;
    .restart local v14    # "anyDensity":I
    .restart local v38    # "outerDepth":I
    .restart local v40    # "resizeable":I
    .restart local v44    # "supportsLargeScreens":I
    .restart local v45    # "supportsNormalScreens":I
    .restart local v46    # "supportsSmallScreens":I
    .restart local v47    # "supportsXLargeScreens":I
    .restart local v48    # "tagName":Ljava/lang/String;
    .restart local v51    # "type":I
    :cond_9
    const-string/jumbo v5, "PackageParser"

    #@128
    new-instance v6, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v7, "Skipping unsupported element under <manifest>: "

    #@130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v6

    #@134
    move-object/from16 v0, v48

    #@136
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v6

    #@13a
    .line 1732
    const-string/jumbo v7, " at "

    #@13d
    .line 1731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v6

    #@141
    .line 1732
    move-object/from16 v0, p0

    #@143
    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@145
    .line 1731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v6

    #@149
    .line 1732
    const-string/jumbo v7, " "

    #@14c
    .line 1731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v6

    #@150
    .line 1733
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@153
    move-result-object v7

    #@154
    .line 1731
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v6

    #@158
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v6

    #@15c
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15f
    .line 1734
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@162
    goto/16 :goto_0

    #@164
    .line 1751
    :cond_a
    const/16 v20, 0x1

    #@166
    move-object/from16 v5, p0

    #@168
    move-object/from16 v6, p1

    #@16a
    move-object/from16 v7, p3

    #@16c
    move-object/from16 v8, p4

    #@16e
    move/from16 v9, p5

    #@170
    move-object/from16 v10, p6

    #@172
    .line 1752
    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    #@175
    move-result v5

    #@176
    if-nez v5, :cond_5

    #@178
    .line 1753
    const/4 v5, 0x0

    #@179
    return-object v5

    #@17a
    .line 1755
    :cond_b
    const-string/jumbo v5, "overlay"

    #@17d
    move-object/from16 v0, v48

    #@17f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@182
    move-result v5

    #@183
    if-eqz v5, :cond_f

    #@185
    .line 1757
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    #@187
    .line 1756
    move-object/from16 v0, p3

    #@189
    move-object/from16 v1, p4

    #@18b
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@18e
    move-result-object v41

    #@18f
    .line 1759
    const/4 v5, 0x1

    #@190
    .line 1758
    move-object/from16 v0, v41

    #@192
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@195
    move-result-object v5

    #@196
    move-object/from16 v0, p1

    #@198
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    #@19a
    .line 1761
    const/4 v5, 0x0

    #@19b
    .line 1762
    const/4 v6, -0x1

    #@19c
    .line 1760
    move-object/from16 v0, v41

    #@19e
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1a1
    move-result v5

    #@1a2
    move-object/from16 v0, p1

    #@1a4
    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    #@1a6
    .line 1763
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@1a9
    .line 1765
    move-object/from16 v0, p1

    #@1ab
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    #@1ad
    if-nez v5, :cond_c

    #@1af
    .line 1766
    const-string/jumbo v5, "<overlay> does not specify a target package"

    #@1b2
    const/4 v6, 0x0

    #@1b3
    aput-object v5, p6, v6

    #@1b5
    .line 1767
    const/16 v5, -0x6c

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@1bb
    .line 1768
    const/4 v5, 0x0

    #@1bc
    return-object v5

    #@1bd
    .line 1770
    :cond_c
    move-object/from16 v0, p1

    #@1bf
    iget v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    #@1c1
    if-ltz v5, :cond_d

    #@1c3
    move-object/from16 v0, p1

    #@1c5
    iget v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    #@1c7
    const/16 v6, 0x270f

    #@1c9
    if-le v5, v6, :cond_e

    #@1cb
    .line 1771
    :cond_d
    const-string/jumbo v5, "<overlay> priority must be between 0 and 9999"

    #@1ce
    const/4 v6, 0x0

    #@1cf
    aput-object v5, p6, v6

    #@1d1
    .line 1773
    const/16 v5, -0x6c

    #@1d3
    .line 1772
    move-object/from16 v0, p0

    #@1d5
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@1d7
    .line 1774
    const/4 v5, 0x0

    #@1d8
    return-object v5

    #@1d9
    .line 1776
    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1dc
    goto/16 :goto_0

    #@1de
    .line 1778
    :cond_f
    const-string/jumbo v5, "key-sets"

    #@1e1
    move-object/from16 v0, v48

    #@1e3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e6
    move-result v5

    #@1e7
    if-eqz v5, :cond_10

    #@1e9
    .line 1779
    move-object/from16 v0, p0

    #@1eb
    move-object/from16 v1, p1

    #@1ed
    move-object/from16 v2, p3

    #@1ef
    move-object/from16 v3, p4

    #@1f1
    move-object/from16 v4, p6

    #@1f3
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    #@1f6
    move-result v5

    #@1f7
    if-nez v5, :cond_5

    #@1f9
    .line 1780
    const/4 v5, 0x0

    #@1fa
    return-object v5

    #@1fb
    .line 1782
    :cond_10
    const-string/jumbo v5, "permission-group"

    #@1fe
    move-object/from16 v0, v48

    #@200
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@203
    move-result v5

    #@204
    if-eqz v5, :cond_11

    #@206
    move-object/from16 v5, p0

    #@208
    move-object/from16 v6, p1

    #@20a
    move/from16 v7, p5

    #@20c
    move-object/from16 v8, p3

    #@20e
    move-object/from16 v9, p4

    #@210
    move-object/from16 v10, p6

    #@212
    .line 1783
    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    #@215
    move-result-object v5

    #@216
    if-nez v5, :cond_5

    #@218
    .line 1784
    const/4 v5, 0x0

    #@219
    return-object v5

    #@21a
    .line 1786
    :cond_11
    const-string/jumbo v5, "permission"

    #@21d
    move-object/from16 v0, v48

    #@21f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@222
    move-result v5

    #@223
    if-eqz v5, :cond_12

    #@225
    .line 1787
    move-object/from16 v0, p0

    #@227
    move-object/from16 v1, p1

    #@229
    move-object/from16 v2, p3

    #@22b
    move-object/from16 v3, p4

    #@22d
    move-object/from16 v4, p6

    #@22f
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    #@232
    move-result-object v5

    #@233
    if-nez v5, :cond_5

    #@235
    .line 1788
    const/4 v5, 0x0

    #@236
    return-object v5

    #@237
    .line 1790
    :cond_12
    const-string/jumbo v5, "permission-tree"

    #@23a
    move-object/from16 v0, v48

    #@23c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23f
    move-result v5

    #@240
    if-eqz v5, :cond_13

    #@242
    .line 1791
    move-object/from16 v0, p0

    #@244
    move-object/from16 v1, p1

    #@246
    move-object/from16 v2, p3

    #@248
    move-object/from16 v3, p4

    #@24a
    move-object/from16 v4, p6

    #@24c
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    #@24f
    move-result-object v5

    #@250
    if-nez v5, :cond_5

    #@252
    .line 1792
    const/4 v5, 0x0

    #@253
    return-object v5

    #@254
    .line 1794
    :cond_13
    const-string/jumbo v5, "uses-permission"

    #@257
    move-object/from16 v0, v48

    #@259
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25c
    move-result v5

    #@25d
    if-eqz v5, :cond_14

    #@25f
    .line 1795
    move-object/from16 v0, p0

    #@261
    move-object/from16 v1, p1

    #@263
    move-object/from16 v2, p3

    #@265
    move-object/from16 v3, p4

    #@267
    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    #@26a
    move-result v5

    #@26b
    if-nez v5, :cond_5

    #@26d
    .line 1796
    const/4 v5, 0x0

    #@26e
    return-object v5

    #@26f
    .line 1798
    :cond_14
    const-string/jumbo v5, "uses-permission-sdk-m"

    #@272
    move-object/from16 v0, v48

    #@274
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@277
    move-result v5

    #@278
    if-nez v5, :cond_15

    #@27a
    .line 1799
    const-string/jumbo v5, "uses-permission-sdk-23"

    #@27d
    move-object/from16 v0, v48

    #@27f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@282
    move-result v5

    #@283
    .line 1798
    if-eqz v5, :cond_16

    #@285
    .line 1800
    :cond_15
    move-object/from16 v0, p0

    #@287
    move-object/from16 v1, p1

    #@289
    move-object/from16 v2, p3

    #@28b
    move-object/from16 v3, p4

    #@28d
    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    #@290
    move-result v5

    #@291
    if-nez v5, :cond_5

    #@293
    .line 1801
    const/4 v5, 0x0

    #@294
    return-object v5

    #@295
    .line 1803
    :cond_16
    const-string/jumbo v5, "uses-configuration"

    #@298
    move-object/from16 v0, v48

    #@29a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29d
    move-result v5

    #@29e
    if-eqz v5, :cond_19

    #@2a0
    .line 1804
    new-instance v15, Landroid/content/pm/ConfigurationInfo;

    #@2a2
    invoke-direct {v15}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    #@2a5
    .line 1806
    .local v15, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    #@2a7
    .line 1805
    move-object/from16 v0, p3

    #@2a9
    move-object/from16 v1, p4

    #@2ab
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2ae
    move-result-object v41

    #@2af
    .line 1808
    const/4 v5, 0x0

    #@2b0
    .line 1809
    const/4 v6, 0x0

    #@2b1
    .line 1807
    move-object/from16 v0, v41

    #@2b3
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2b6
    move-result v5

    #@2b7
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    #@2b9
    .line 1811
    const/4 v5, 0x1

    #@2ba
    .line 1812
    const/4 v6, 0x0

    #@2bb
    .line 1810
    move-object/from16 v0, v41

    #@2bd
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2c0
    move-result v5

    #@2c1
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    #@2c3
    .line 1814
    const/4 v5, 0x2

    #@2c4
    .line 1815
    const/4 v6, 0x0

    #@2c5
    .line 1813
    move-object/from16 v0, v41

    #@2c7
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2ca
    move-result v5

    #@2cb
    if-eqz v5, :cond_17

    #@2cd
    .line 1816
    iget v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@2cf
    or-int/lit8 v5, v5, 0x1

    #@2d1
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@2d3
    .line 1819
    :cond_17
    const/4 v5, 0x3

    #@2d4
    .line 1820
    const/4 v6, 0x0

    #@2d5
    .line 1818
    move-object/from16 v0, v41

    #@2d7
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2da
    move-result v5

    #@2db
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    #@2dd
    .line 1822
    const/4 v5, 0x4

    #@2de
    .line 1823
    const/4 v6, 0x0

    #@2df
    .line 1821
    move-object/from16 v0, v41

    #@2e1
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2e4
    move-result v5

    #@2e5
    if-eqz v5, :cond_18

    #@2e7
    .line 1824
    iget v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@2e9
    or-int/lit8 v5, v5, 0x2

    #@2eb
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@2ed
    .line 1826
    :cond_18
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@2f0
    .line 1827
    move-object/from16 v0, p1

    #@2f2
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@2f4
    invoke-static {v5, v15}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@2f7
    move-result-object v5

    #@2f8
    move-object/from16 v0, p1

    #@2fa
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@2fc
    .line 1829
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2ff
    goto/16 :goto_0

    #@301
    .line 1831
    .end local v15    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_19
    const-string/jumbo v5, "uses-feature"

    #@304
    move-object/from16 v0, v48

    #@306
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@309
    move-result v5

    #@30a
    if-eqz v5, :cond_1b

    #@30c
    .line 1832
    move-object/from16 v0, p0

    #@30e
    move-object/from16 v1, p3

    #@310
    move-object/from16 v2, p4

    #@312
    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    #@315
    move-result-object v19

    #@316
    .line 1833
    .local v19, "fi":Landroid/content/pm/FeatureInfo;
    move-object/from16 v0, p1

    #@318
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    #@31a
    move-object/from16 v0, v19

    #@31c
    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@31f
    move-result-object v5

    #@320
    move-object/from16 v0, p1

    #@322
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    #@324
    .line 1835
    move-object/from16 v0, v19

    #@326
    iget-object v5, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@328
    if-nez v5, :cond_1a

    #@32a
    .line 1836
    new-instance v15, Landroid/content/pm/ConfigurationInfo;

    #@32c
    invoke-direct {v15}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    #@32f
    .line 1837
    .restart local v15    # "cPref":Landroid/content/pm/ConfigurationInfo;
    move-object/from16 v0, v19

    #@331
    iget v5, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@333
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    #@335
    .line 1838
    move-object/from16 v0, p1

    #@337
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@339
    invoke-static {v5, v15}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@33c
    move-result-object v5

    #@33d
    move-object/from16 v0, p1

    #@33f
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@341
    .line 1841
    .end local v15    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_1a
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@344
    goto/16 :goto_0

    #@346
    .line 1843
    .end local v19    # "fi":Landroid/content/pm/FeatureInfo;
    :cond_1b
    const-string/jumbo v5, "feature-group"

    #@349
    move-object/from16 v0, v48

    #@34b
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34e
    move-result v5

    #@34f
    if-eqz v5, :cond_21

    #@351
    .line 1844
    new-instance v21, Landroid/content/pm/FeatureGroupInfo;

    #@353
    invoke-direct/range {v21 .. v21}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    #@356
    .line 1845
    .local v21, "group":Landroid/content/pm/FeatureGroupInfo;
    const/16 v18, 0x0

    #@358
    .line 1846
    .local v18, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@35b
    move-result v28

    #@35c
    .line 1847
    .end local v18    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v28, "innerDepth":I
    :cond_1c
    :goto_1
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    #@35f
    move-result v51

    #@360
    const/4 v5, 0x1

    #@361
    move/from16 v0, v51

    #@363
    if-eq v0, v5, :cond_1f

    #@365
    .line 1848
    const/4 v5, 0x3

    #@366
    move/from16 v0, v51

    #@368
    if-ne v0, v5, :cond_1d

    #@36a
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@36d
    move-result v5

    #@36e
    move/from16 v0, v28

    #@370
    if-le v5, v0, :cond_1f

    #@372
    .line 1849
    :cond_1d
    const/4 v5, 0x3

    #@373
    move/from16 v0, v51

    #@375
    if-eq v0, v5, :cond_1c

    #@377
    const/4 v5, 0x4

    #@378
    move/from16 v0, v51

    #@37a
    if-eq v0, v5, :cond_1c

    #@37c
    .line 1853
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@37f
    move-result-object v29

    #@380
    .line 1854
    .local v29, "innerTagName":Ljava/lang/String;
    const-string/jumbo v5, "uses-feature"

    #@383
    move-object/from16 v0, v29

    #@385
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@388
    move-result v5

    #@389
    if-eqz v5, :cond_1e

    #@38b
    .line 1855
    move-object/from16 v0, p0

    #@38d
    move-object/from16 v1, p3

    #@38f
    move-object/from16 v2, p4

    #@391
    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    #@394
    move-result-object v17

    #@395
    .line 1858
    .local v17, "featureInfo":Landroid/content/pm/FeatureInfo;
    move-object/from16 v0, v17

    #@397
    iget v5, v0, Landroid/content/pm/FeatureInfo;->flags:I

    #@399
    or-int/lit8 v5, v5, 0x1

    #@39b
    move-object/from16 v0, v17

    #@39d
    iput v5, v0, Landroid/content/pm/FeatureInfo;->flags:I

    #@39f
    .line 1859
    move-object/from16 v0, v18

    #@3a1
    move-object/from16 v1, v17

    #@3a3
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@3a6
    move-result-object v18

    #@3a7
    .line 1865
    .end local v17    # "featureInfo":Landroid/content/pm/FeatureInfo;
    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3aa
    goto :goto_1

    #@3ab
    .line 1861
    :cond_1e
    const-string/jumbo v5, "PackageParser"

    #@3ae
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3b3
    const-string/jumbo v7, "Unknown element under <feature-group>: "

    #@3b6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b9
    move-result-object v6

    #@3ba
    move-object/from16 v0, v29

    #@3bc
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bf
    move-result-object v6

    #@3c0
    .line 1862
    const-string/jumbo v7, " at "

    #@3c3
    .line 1861
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c6
    move-result-object v6

    #@3c7
    .line 1862
    move-object/from16 v0, p0

    #@3c9
    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@3cb
    .line 1861
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ce
    move-result-object v6

    #@3cf
    .line 1862
    const-string/jumbo v7, " "

    #@3d2
    .line 1861
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d5
    move-result-object v6

    #@3d6
    .line 1863
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@3d9
    move-result-object v7

    #@3da
    .line 1861
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3dd
    move-result-object v6

    #@3de
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e1
    move-result-object v6

    #@3e2
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e5
    goto :goto_2

    #@3e6
    .line 1868
    .end local v29    # "innerTagName":Ljava/lang/String;
    :cond_1f
    if-eqz v18, :cond_20

    #@3e8
    .line 1869
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@3eb
    move-result v5

    #@3ec
    new-array v5, v5, [Landroid/content/pm/FeatureInfo;

    #@3ee
    move-object/from16 v0, v21

    #@3f0
    iput-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    #@3f2
    .line 1870
    move-object/from16 v0, v21

    #@3f4
    iget-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    #@3f6
    move-object/from16 v0, v18

    #@3f8
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3fb
    move-result-object v5

    #@3fc
    check-cast v5, [Landroid/content/pm/FeatureInfo;

    #@3fe
    move-object/from16 v0, v21

    #@400
    iput-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    #@402
    .line 1872
    :cond_20
    move-object/from16 v0, p1

    #@404
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    #@406
    move-object/from16 v0, v21

    #@408
    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@40b
    move-result-object v5

    #@40c
    move-object/from16 v0, p1

    #@40e
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    #@410
    goto/16 :goto_0

    #@412
    .line 1874
    .end local v21    # "group":Landroid/content/pm/FeatureGroupInfo;
    .end local v28    # "innerDepth":I
    :cond_21
    const-string/jumbo v5, "uses-sdk"

    #@415
    move-object/from16 v0, v48

    #@417
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41a
    move-result v5

    #@41b
    if-eqz v5, :cond_32

    #@41d
    .line 1875
    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    #@41f
    if-lez v5, :cond_30

    #@421
    .line 1877
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    #@423
    .line 1876
    move-object/from16 v0, p3

    #@425
    move-object/from16 v1, p4

    #@427
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@42a
    move-result-object v41

    #@42b
    .line 1879
    const/16 v33, 0x1

    #@42d
    .line 1880
    .local v33, "minVers":I
    const/16 v32, 0x0

    #@42f
    .line 1881
    .local v32, "minCode":Ljava/lang/String;
    const/16 v50, 0x0

    #@431
    .line 1882
    .local v50, "targetVers":I
    const/16 v49, 0x0

    #@433
    .line 1885
    .local v49, "targetCode":Ljava/lang/String;
    const/4 v5, 0x0

    #@434
    .line 1884
    move-object/from16 v0, v41

    #@436
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@439
    move-result-object v52

    #@43a
    .line 1886
    .local v52, "val":Landroid/util/TypedValue;
    if-eqz v52, :cond_22

    #@43c
    .line 1887
    move-object/from16 v0, v52

    #@43e
    iget v5, v0, Landroid/util/TypedValue;->type:I

    #@440
    const/4 v6, 0x3

    #@441
    if-ne v5, v6, :cond_25

    #@443
    move-object/from16 v0, v52

    #@445
    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@447
    if-eqz v5, :cond_25

    #@449
    .line 1888
    move-object/from16 v0, v52

    #@44b
    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@44d
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@450
    move-result-object v32

    #@451
    .local v32, "minCode":Ljava/lang/String;
    move-object/from16 v49, v32

    #@453
    .line 1896
    .end local v32    # "minCode":Ljava/lang/String;
    .end local v49    # "targetCode":Ljava/lang/String;
    :cond_22
    :goto_3
    const/4 v5, 0x1

    #@454
    .line 1895
    move-object/from16 v0, v41

    #@456
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@459
    move-result-object v52

    #@45a
    .line 1897
    if-eqz v52, :cond_23

    #@45c
    .line 1898
    move-object/from16 v0, v52

    #@45e
    iget v5, v0, Landroid/util/TypedValue;->type:I

    #@460
    const/4 v6, 0x3

    #@461
    if-ne v5, v6, :cond_26

    #@463
    move-object/from16 v0, v52

    #@465
    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@467
    if-eqz v5, :cond_26

    #@469
    .line 1899
    move-object/from16 v0, v52

    #@46b
    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@46d
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@470
    move-result-object v49

    #@471
    .line 1900
    .local v49, "targetCode":Ljava/lang/String;
    if-nez v32, :cond_23

    #@473
    .line 1901
    move-object/from16 v32, v49

    #@475
    .line 1909
    .end local v49    # "targetCode":Ljava/lang/String;
    :cond_23
    :goto_4
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@478
    .line 1911
    if-eqz v32, :cond_2b

    #@47a
    .line 1912
    const/4 v13, 0x0

    #@47b
    .line 1913
    .local v13, "allowedCodename":Z
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@47d
    const/4 v5, 0x0

    #@47e
    array-length v7, v6

    #@47f
    :goto_5
    if-ge v5, v7, :cond_24

    #@481
    aget-object v16, v6, v5

    #@483
    .line 1914
    .local v16, "codename":Ljava/lang/String;
    move-object/from16 v0, v32

    #@485
    move-object/from16 v1, v16

    #@487
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48a
    move-result v8

    #@48b
    if-eqz v8, :cond_27

    #@48d
    .line 1915
    const/4 v13, 0x1

    #@48e
    .line 1919
    .end local v16    # "codename":Ljava/lang/String;
    :cond_24
    if-nez v13, :cond_29

    #@490
    .line 1920
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@492
    array-length v5, v5

    #@493
    if-lez v5, :cond_28

    #@495
    .line 1921
    new-instance v5, Ljava/lang/StringBuilder;

    #@497
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@49a
    const-string/jumbo v6, "Requires development platform "

    #@49d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a0
    move-result-object v5

    #@4a1
    move-object/from16 v0, v32

    #@4a3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a6
    move-result-object v5

    #@4a7
    .line 1922
    const-string/jumbo v6, " (current platform is any of "

    #@4aa
    .line 1921
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ad
    move-result-object v5

    #@4ae
    .line 1923
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@4b0
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@4b3
    move-result-object v6

    #@4b4
    .line 1921
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b7
    move-result-object v5

    #@4b8
    .line 1923
    const-string/jumbo v6, ")"

    #@4bb
    .line 1921
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4be
    move-result-object v5

    #@4bf
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c2
    move-result-object v5

    #@4c3
    const/4 v6, 0x0

    #@4c4
    aput-object v5, p6, v6

    #@4c6
    .line 1928
    :goto_6
    const/16 v5, -0xc

    #@4c8
    move-object/from16 v0, p0

    #@4ca
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@4cc
    .line 1929
    const/4 v5, 0x0

    #@4cd
    return-object v5

    #@4ce
    .line 1891
    .end local v13    # "allowedCodename":Z
    .local v32, "minCode":Ljava/lang/String;
    .local v49, "targetCode":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v52

    #@4d0
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@4d2
    move/from16 v33, v0

    #@4d4
    move/from16 v50, v33

    #@4d6
    goto/16 :goto_3

    #@4d8
    .line 1905
    .end local v32    # "minCode":Ljava/lang/String;
    .end local v49    # "targetCode":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v52

    #@4da
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@4dc
    move/from16 v50, v0

    #@4de
    goto :goto_4

    #@4df
    .line 1913
    .restart local v13    # "allowedCodename":Z
    .restart local v16    # "codename":Ljava/lang/String;
    :cond_27
    add-int/lit8 v5, v5, 0x1

    #@4e1
    goto :goto_5

    #@4e2
    .line 1925
    .end local v16    # "codename":Ljava/lang/String;
    :cond_28
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4e7
    const-string/jumbo v6, "Requires development platform "

    #@4ea
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ed
    move-result-object v5

    #@4ee
    move-object/from16 v0, v32

    #@4f0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f3
    move-result-object v5

    #@4f4
    .line 1926
    const-string/jumbo v6, " but this is a release platform."

    #@4f7
    .line 1925
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fa
    move-result-object v5

    #@4fb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4fe
    move-result-object v5

    #@4ff
    const/4 v6, 0x0

    #@500
    aput-object v5, p6, v6

    #@502
    goto :goto_6

    #@503
    .line 1931
    :cond_29
    move-object/from16 v0, p1

    #@505
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@507
    .line 1932
    const/16 v6, 0x2710

    #@509
    .line 1931
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@50b
    .line 1942
    .end local v13    # "allowedCodename":Z
    :goto_7
    if-eqz v49, :cond_31

    #@50d
    .line 1943
    const/4 v13, 0x0

    #@50e
    .line 1944
    .restart local v13    # "allowedCodename":Z
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@510
    const/4 v5, 0x0

    #@511
    array-length v7, v6

    #@512
    :goto_8
    if-ge v5, v7, :cond_2a

    #@514
    aget-object v16, v6, v5

    #@516
    .line 1945
    .restart local v16    # "codename":Ljava/lang/String;
    move-object/from16 v0, v49

    #@518
    move-object/from16 v1, v16

    #@51a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51d
    move-result v8

    #@51e
    if-eqz v8, :cond_2d

    #@520
    .line 1946
    const/4 v13, 0x1

    #@521
    .line 1950
    .end local v16    # "codename":Ljava/lang/String;
    :cond_2a
    if-nez v13, :cond_2f

    #@523
    .line 1951
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@525
    array-length v5, v5

    #@526
    if-lez v5, :cond_2e

    #@528
    .line 1952
    new-instance v5, Ljava/lang/StringBuilder;

    #@52a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@52d
    const-string/jumbo v6, "Requires development platform "

    #@530
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@533
    move-result-object v5

    #@534
    move-object/from16 v0, v49

    #@536
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@539
    move-result-object v5

    #@53a
    .line 1953
    const-string/jumbo v6, " (current platform is any of "

    #@53d
    .line 1952
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@540
    move-result-object v5

    #@541
    .line 1954
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@543
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@546
    move-result-object v6

    #@547
    .line 1952
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54a
    move-result-object v5

    #@54b
    .line 1954
    const-string/jumbo v6, ")"

    #@54e
    .line 1952
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@551
    move-result-object v5

    #@552
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@555
    move-result-object v5

    #@556
    const/4 v6, 0x0

    #@557
    aput-object v5, p6, v6

    #@559
    .line 1959
    :goto_9
    const/16 v5, -0xc

    #@55b
    move-object/from16 v0, p0

    #@55d
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@55f
    .line 1960
    const/4 v5, 0x0

    #@560
    return-object v5

    #@561
    .line 1933
    .end local v13    # "allowedCodename":Z
    :cond_2b
    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    #@563
    move/from16 v0, v33

    #@565
    if-le v0, v5, :cond_2c

    #@567
    .line 1934
    new-instance v5, Ljava/lang/StringBuilder;

    #@569
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@56c
    const-string/jumbo v6, "Requires newer sdk version #"

    #@56f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@572
    move-result-object v5

    #@573
    move/from16 v0, v33

    #@575
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@578
    move-result-object v5

    #@579
    .line 1935
    const-string/jumbo v6, " (current version is #"

    #@57c
    .line 1934
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57f
    move-result-object v5

    #@580
    .line 1935
    sget v6, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    #@582
    .line 1934
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@585
    move-result-object v5

    #@586
    .line 1935
    const-string/jumbo v6, ")"

    #@589
    .line 1934
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58c
    move-result-object v5

    #@58d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@590
    move-result-object v5

    #@591
    const/4 v6, 0x0

    #@592
    aput-object v5, p6, v6

    #@594
    .line 1936
    const/16 v5, -0xc

    #@596
    move-object/from16 v0, p0

    #@598
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@59a
    .line 1937
    const/4 v5, 0x0

    #@59b
    return-object v5

    #@59c
    .line 1939
    :cond_2c
    move-object/from16 v0, p1

    #@59e
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5a0
    move/from16 v0, v33

    #@5a2
    iput v0, v5, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@5a4
    goto/16 :goto_7

    #@5a6
    .line 1944
    .restart local v13    # "allowedCodename":Z
    .restart local v16    # "codename":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    #@5a8
    goto/16 :goto_8

    #@5aa
    .line 1956
    .end local v16    # "codename":Ljava/lang/String;
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    #@5ac
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5af
    const-string/jumbo v6, "Requires development platform "

    #@5b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b5
    move-result-object v5

    #@5b6
    move-object/from16 v0, v49

    #@5b8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5bb
    move-result-object v5

    #@5bc
    .line 1957
    const-string/jumbo v6, " but this is a release platform."

    #@5bf
    .line 1956
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c2
    move-result-object v5

    #@5c3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c6
    move-result-object v5

    #@5c7
    const/4 v6, 0x0

    #@5c8
    aput-object v5, p6, v6

    #@5ca
    goto :goto_9

    #@5cb
    .line 1963
    :cond_2f
    move-object/from16 v0, p1

    #@5cd
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5cf
    .line 1964
    const/16 v6, 0x2710

    #@5d1
    .line 1963
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@5d3
    .line 1970
    .end local v13    # "allowedCodename":Z
    .end local v33    # "minVers":I
    .end local v50    # "targetVers":I
    .end local v52    # "val":Landroid/util/TypedValue;
    :cond_30
    :goto_a
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5d6
    goto/16 :goto_0

    #@5d8
    .line 1966
    .restart local v33    # "minVers":I
    .restart local v50    # "targetVers":I
    .restart local v52    # "val":Landroid/util/TypedValue;
    :cond_31
    move-object/from16 v0, p1

    #@5da
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5dc
    move/from16 v0, v50

    #@5de
    iput v0, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@5e0
    goto :goto_a

    #@5e1
    .line 1972
    .end local v33    # "minVers":I
    .end local v50    # "targetVers":I
    .end local v52    # "val":Landroid/util/TypedValue;
    :cond_32
    const-string/jumbo v5, "supports-screens"

    #@5e4
    move-object/from16 v0, v48

    #@5e6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e9
    move-result v5

    #@5ea
    if-eqz v5, :cond_33

    #@5ec
    .line 1974
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    #@5ee
    .line 1973
    move-object/from16 v0, p3

    #@5f0
    move-object/from16 v1, p4

    #@5f2
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5f5
    move-result-object v41

    #@5f6
    .line 1976
    move-object/from16 v0, p1

    #@5f8
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5fa
    .line 1977
    const/4 v6, 0x6

    #@5fb
    .line 1978
    const/4 v7, 0x0

    #@5fc
    .line 1976
    move-object/from16 v0, v41

    #@5fe
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@601
    move-result v6

    #@602
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@604
    .line 1979
    move-object/from16 v0, p1

    #@606
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@608
    .line 1980
    const/4 v6, 0x7

    #@609
    .line 1981
    const/4 v7, 0x0

    #@60a
    .line 1979
    move-object/from16 v0, v41

    #@60c
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@60f
    move-result v6

    #@610
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@612
    .line 1982
    move-object/from16 v0, p1

    #@614
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@616
    .line 1983
    const/16 v6, 0x8

    #@618
    .line 1984
    const/4 v7, 0x0

    #@619
    .line 1982
    move-object/from16 v0, v41

    #@61b
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@61e
    move-result v6

    #@61f
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@621
    .line 1989
    const/4 v5, 0x1

    #@622
    .line 1988
    move-object/from16 v0, v41

    #@624
    move/from16 v1, v46

    #@626
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@629
    move-result v46

    #@62a
    .line 1992
    const/4 v5, 0x2

    #@62b
    .line 1991
    move-object/from16 v0, v41

    #@62d
    move/from16 v1, v45

    #@62f
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@632
    move-result v45

    #@633
    .line 1995
    const/4 v5, 0x3

    #@634
    .line 1994
    move-object/from16 v0, v41

    #@636
    move/from16 v1, v44

    #@638
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@63b
    move-result v44

    #@63c
    .line 1998
    const/4 v5, 0x5

    #@63d
    .line 1997
    move-object/from16 v0, v41

    #@63f
    move/from16 v1, v47

    #@641
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@644
    move-result v47

    #@645
    .line 2001
    const/4 v5, 0x4

    #@646
    .line 2000
    move-object/from16 v0, v41

    #@648
    move/from16 v1, v40

    #@64a
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@64d
    move-result v40

    #@64e
    .line 2004
    const/4 v5, 0x0

    #@64f
    .line 2003
    move-object/from16 v0, v41

    #@651
    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@654
    move-result v14

    #@655
    .line 2007
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@658
    .line 2009
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@65b
    goto/16 :goto_0

    #@65d
    .line 2011
    :cond_33
    const-string/jumbo v5, "protected-broadcast"

    #@660
    move-object/from16 v0, v48

    #@662
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@665
    move-result v5

    #@666
    if-eqz v5, :cond_36

    #@668
    .line 2013
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    #@66a
    .line 2012
    move-object/from16 v0, p3

    #@66c
    move-object/from16 v1, p4

    #@66e
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@671
    move-result-object v41

    #@672
    .line 2018
    const/4 v5, 0x0

    #@673
    .line 2017
    move-object/from16 v0, v41

    #@675
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@678
    move-result-object v34

    #@679
    .line 2020
    .local v34, "name":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@67c
    .line 2022
    if-eqz v34, :cond_35

    #@67e
    and-int/lit8 v5, p5, 0x1

    #@680
    if-eqz v5, :cond_35

    #@682
    .line 2023
    move-object/from16 v0, p1

    #@684
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    #@686
    if-nez v5, :cond_34

    #@688
    .line 2024
    new-instance v5, Ljava/util/ArrayList;

    #@68a
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@68d
    move-object/from16 v0, p1

    #@68f
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    #@691
    .line 2026
    :cond_34
    move-object/from16 v0, p1

    #@693
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    #@695
    move-object/from16 v0, v34

    #@697
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@69a
    move-result v5

    #@69b
    if-nez v5, :cond_35

    #@69d
    .line 2027
    move-object/from16 v0, p1

    #@69f
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    #@6a1
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@6a4
    move-result-object v6

    #@6a5
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6a8
    .line 2031
    :cond_35
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@6ab
    goto/16 :goto_0

    #@6ad
    .line 2033
    .end local v34    # "name":Ljava/lang/String;
    :cond_36
    const-string/jumbo v5, "instrumentation"

    #@6b0
    move-object/from16 v0, v48

    #@6b2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b5
    move-result v5

    #@6b6
    if-eqz v5, :cond_37

    #@6b8
    .line 2034
    move-object/from16 v0, p0

    #@6ba
    move-object/from16 v1, p1

    #@6bc
    move-object/from16 v2, p3

    #@6be
    move-object/from16 v3, p4

    #@6c0
    move-object/from16 v4, p6

    #@6c2
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    #@6c5
    move-result-object v5

    #@6c6
    if-nez v5, :cond_5

    #@6c8
    .line 2035
    const/4 v5, 0x0

    #@6c9
    return-object v5

    #@6ca
    .line 2037
    :cond_37
    const-string/jumbo v5, "original-package"

    #@6cd
    move-object/from16 v0, v48

    #@6cf
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d2
    move-result v5

    #@6d3
    if-eqz v5, :cond_3a

    #@6d5
    .line 2039
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    #@6d7
    .line 2038
    move-object/from16 v0, p3

    #@6d9
    move-object/from16 v1, p4

    #@6db
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6de
    move-result-object v41

    #@6df
    .line 2042
    const/4 v5, 0x0

    #@6e0
    const/4 v6, 0x0

    #@6e1
    .line 2041
    move-object/from16 v0, v41

    #@6e3
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@6e6
    move-result-object v37

    #@6e7
    .line 2043
    .local v37, "orig":Ljava/lang/String;
    move-object/from16 v0, p1

    #@6e9
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@6eb
    move-object/from16 v0, v37

    #@6ed
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f0
    move-result v5

    #@6f1
    if-nez v5, :cond_39

    #@6f3
    .line 2044
    move-object/from16 v0, p1

    #@6f5
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    #@6f7
    if-nez v5, :cond_38

    #@6f9
    .line 2045
    new-instance v5, Ljava/util/ArrayList;

    #@6fb
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@6fe
    move-object/from16 v0, p1

    #@700
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    #@702
    .line 2046
    move-object/from16 v0, p1

    #@704
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@706
    move-object/from16 v0, p1

    #@708
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    #@70a
    .line 2048
    :cond_38
    move-object/from16 v0, p1

    #@70c
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    #@70e
    move-object/from16 v0, v37

    #@710
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@713
    .line 2051
    :cond_39
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@716
    .line 2053
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@719
    goto/16 :goto_0

    #@71b
    .line 2055
    .end local v37    # "orig":Ljava/lang/String;
    :cond_3a
    const-string/jumbo v5, "adopt-permissions"

    #@71e
    move-object/from16 v0, v48

    #@720
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@723
    move-result v5

    #@724
    if-eqz v5, :cond_3d

    #@726
    .line 2057
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    #@728
    .line 2056
    move-object/from16 v0, p3

    #@72a
    move-object/from16 v1, p4

    #@72c
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@72f
    move-result-object v41

    #@730
    .line 2060
    const/4 v5, 0x0

    #@731
    const/4 v6, 0x0

    #@732
    .line 2059
    move-object/from16 v0, v41

    #@734
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@737
    move-result-object v34

    #@738
    .line 2062
    .restart local v34    # "name":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@73b
    .line 2064
    if-eqz v34, :cond_3c

    #@73d
    .line 2065
    move-object/from16 v0, p1

    #@73f
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    #@741
    if-nez v5, :cond_3b

    #@743
    .line 2066
    new-instance v5, Ljava/util/ArrayList;

    #@745
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@748
    move-object/from16 v0, p1

    #@74a
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    #@74c
    .line 2068
    :cond_3b
    move-object/from16 v0, p1

    #@74e
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    #@750
    move-object/from16 v0, v34

    #@752
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@755
    .line 2071
    :cond_3c
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@758
    goto/16 :goto_0

    #@75a
    .line 2073
    .end local v34    # "name":Ljava/lang/String;
    :cond_3d
    const-string/jumbo v5, "uses-gl-texture"

    #@75d
    move-object/from16 v0, v48

    #@75f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@762
    move-result v5

    #@763
    if-eqz v5, :cond_3e

    #@765
    .line 2075
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@768
    goto/16 :goto_0

    #@76a
    .line 2078
    :cond_3e
    const-string/jumbo v5, "compatible-screens"

    #@76d
    move-object/from16 v0, v48

    #@76f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@772
    move-result v5

    #@773
    if-eqz v5, :cond_3f

    #@775
    .line 2080
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@778
    goto/16 :goto_0

    #@77a
    .line 2082
    :cond_3f
    const-string/jumbo v5, "supports-input"

    #@77d
    move-object/from16 v0, v48

    #@77f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@782
    move-result v5

    #@783
    if-eqz v5, :cond_40

    #@785
    .line 2083
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@788
    goto/16 :goto_0

    #@78a
    .line 2086
    :cond_40
    const-string/jumbo v5, "eat-comment"

    #@78d
    move-object/from16 v0, v48

    #@78f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@792
    move-result v5

    #@793
    if-eqz v5, :cond_41

    #@795
    .line 2088
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@798
    goto/16 :goto_0

    #@79a
    .line 2091
    :cond_41
    const-string/jumbo v5, "package"

    #@79d
    move-object/from16 v0, v48

    #@79f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a2
    move-result v5

    #@7a3
    if-eqz v5, :cond_42

    #@7a5
    .line 2093
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7a8
    goto/16 :goto_0

    #@7aa
    .line 2101
    :cond_42
    const-string/jumbo v5, "restrict-update"

    #@7ad
    move-object/from16 v0, v48

    #@7af
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b2
    move-result v5

    #@7b3
    if-eqz v5, :cond_45

    #@7b5
    .line 2102
    and-int/lit8 v5, p5, 0x40

    #@7b7
    if-eqz v5, :cond_44

    #@7b9
    .line 2104
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    #@7bb
    .line 2103
    move-object/from16 v0, p3

    #@7bd
    move-object/from16 v1, p4

    #@7bf
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7c2
    move-result-object v41

    #@7c3
    .line 2106
    const/4 v5, 0x0

    #@7c4
    const/4 v6, 0x0

    #@7c5
    .line 2105
    move-object/from16 v0, v41

    #@7c7
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@7ca
    move-result-object v22

    #@7cb
    .line 2107
    .local v22, "hash":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@7ce
    .line 2109
    const/4 v5, 0x0

    #@7cf
    move-object/from16 v0, p1

    #@7d1
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    #@7d3
    .line 2110
    if-eqz v22, :cond_44

    #@7d5
    .line 2111
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    #@7d8
    move-result v24

    #@7d9
    .line 2112
    .local v24, "hashLength":I
    div-int/lit8 v5, v24, 0x2

    #@7db
    new-array v0, v5, [B

    #@7dd
    move-object/from16 v23, v0

    #@7df
    .line 2113
    .local v23, "hashBytes":[B
    const/16 v25, 0x0

    #@7e1
    .local v25, "i":I
    :goto_b
    move/from16 v0, v25

    #@7e3
    move/from16 v1, v24

    #@7e5
    if-ge v0, v1, :cond_43

    #@7e7
    .line 2114
    div-int/lit8 v5, v25, 0x2

    #@7e9
    move-object/from16 v0, v22

    #@7eb
    move/from16 v1, v25

    #@7ed
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@7f0
    move-result v6

    #@7f1
    const/16 v7, 0x10

    #@7f3
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    #@7f6
    move-result v6

    #@7f7
    shl-int/lit8 v6, v6, 0x4

    #@7f9
    .line 2115
    add-int/lit8 v7, v25, 0x1

    #@7fb
    move-object/from16 v0, v22

    #@7fd
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    #@800
    move-result v7

    #@801
    const/16 v8, 0x10

    #@803
    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    #@806
    move-result v7

    #@807
    .line 2114
    add-int/2addr v6, v7

    #@808
    int-to-byte v6, v6

    #@809
    aput-byte v6, v23, v5

    #@80b
    .line 2113
    add-int/lit8 v25, v25, 0x2

    #@80d
    goto :goto_b

    #@80e
    .line 2117
    :cond_43
    move-object/from16 v0, v23

    #@810
    move-object/from16 v1, p1

    #@812
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    #@814
    .line 2121
    .end local v22    # "hash":Ljava/lang/String;
    .end local v23    # "hashBytes":[B
    .end local v24    # "hashLength":I
    .end local v25    # "i":I
    :cond_44
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@817
    goto/16 :goto_0

    #@819
    .line 2130
    :cond_45
    const-string/jumbo v5, "PackageParser"

    #@81c
    new-instance v6, Ljava/lang/StringBuilder;

    #@81e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@821
    const-string/jumbo v7, "Unknown element under <manifest>: "

    #@824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@827
    move-result-object v6

    #@828
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@82b
    move-result-object v7

    #@82c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82f
    move-result-object v6

    #@830
    .line 2131
    const-string/jumbo v7, " at "

    #@833
    .line 2130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@836
    move-result-object v6

    #@837
    .line 2131
    move-object/from16 v0, p0

    #@839
    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@83b
    .line 2130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83e
    move-result-object v6

    #@83f
    .line 2131
    const-string/jumbo v7, " "

    #@842
    .line 2130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@845
    move-result-object v6

    #@846
    .line 2132
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@849
    move-result-object v7

    #@84a
    .line 2130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84d
    move-result-object v6

    #@84e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@851
    move-result-object v6

    #@852
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@855
    .line 2133
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@858
    goto/16 :goto_0

    #@85a
    .line 2138
    .end local v48    # "tagName":Ljava/lang/String;
    :cond_46
    if-nez v20, :cond_47

    #@85c
    move-object/from16 v0, p1

    #@85e
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@860
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@863
    move-result v5

    #@864
    if-nez v5, :cond_47

    #@866
    .line 2139
    const-string/jumbo v5, "<manifest> does not contain an <application> or <instrumentation>"

    #@869
    const/4 v6, 0x0

    #@86a
    aput-object v5, p6, v6

    #@86c
    .line 2140
    const/16 v5, -0x6d

    #@86e
    move-object/from16 v0, p0

    #@870
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@872
    .line 2143
    :cond_47
    sget-object v5, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@874
    array-length v11, v5

    #@875
    .line 2144
    .local v11, "NP":I
    const/16 v26, 0x0

    #@877
    .line 2145
    .local v26, "implicitPerms":Ljava/lang/StringBuilder;
    const/16 v30, 0x0

    #@879
    .end local v26    # "implicitPerms":Ljava/lang/StringBuilder;
    .local v30, "ip":I
    :goto_c
    move/from16 v0, v30

    #@87b
    if-ge v0, v11, :cond_48

    #@87d
    .line 2147
    sget-object v5, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@87f
    .line 2146
    aget-object v36, v5, v30

    #@881
    .line 2148
    .local v36, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    move-object/from16 v0, p1

    #@883
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@885
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@887
    move-object/from16 v0, v36

    #@889
    iget v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    #@88b
    if-lt v5, v6, :cond_4b

    #@88d
    .line 2163
    .end local v36    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_48
    if-eqz v26, :cond_49

    #@88f
    .line 2164
    const-string/jumbo v5, "PackageParser"

    #@892
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@895
    move-result-object v6

    #@896
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@899
    .line 2167
    :cond_49
    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@89b
    array-length v12, v5

    #@89c
    .line 2168
    .local v12, "NS":I
    const/16 v31, 0x0

    #@89e
    .local v31, "is":I
    :goto_d
    move/from16 v0, v31

    #@8a0
    if-ge v0, v12, :cond_4f

    #@8a2
    .line 2170
    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@8a4
    .line 2169
    aget-object v42, v5, v31

    #@8a6
    .line 2171
    .local v42, "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    move-object/from16 v0, p1

    #@8a8
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8aa
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8ac
    move-object/from16 v0, v42

    #@8ae
    iget v6, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    #@8b0
    if-ge v5, v6, :cond_4e

    #@8b2
    .line 2172
    move-object/from16 v0, p1

    #@8b4
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@8b6
    move-object/from16 v0, v42

    #@8b8
    iget-object v6, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    #@8ba
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8bd
    move-result v5

    #@8be
    if-eqz v5, :cond_4e

    #@8c0
    .line 2175
    const/16 v27, 0x0

    #@8c2
    .local v27, "in":I
    :goto_e
    move-object/from16 v0, v42

    #@8c4
    iget-object v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    #@8c6
    array-length v5, v5

    #@8c7
    move/from16 v0, v27

    #@8c9
    if-ge v0, v5, :cond_4e

    #@8cb
    .line 2176
    move-object/from16 v0, v42

    #@8cd
    iget-object v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    #@8cf
    aget-object v39, v5, v27

    #@8d1
    .line 2177
    .local v39, "perm":Ljava/lang/String;
    move-object/from16 v0, p1

    #@8d3
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@8d5
    move-object/from16 v0, v39

    #@8d7
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8da
    move-result v5

    #@8db
    if-nez v5, :cond_4a

    #@8dd
    .line 2178
    move-object/from16 v0, p1

    #@8df
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@8e1
    move-object/from16 v0, v39

    #@8e3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8e6
    .line 2175
    :cond_4a
    add-int/lit8 v27, v27, 0x1

    #@8e8
    goto :goto_e

    #@8e9
    .line 2151
    .end local v12    # "NS":I
    .end local v27    # "in":I
    .end local v31    # "is":I
    .end local v39    # "perm":Ljava/lang/String;
    .end local v42    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    .restart local v36    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_4b
    move-object/from16 v0, p1

    #@8eb
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@8ed
    move-object/from16 v0, v36

    #@8ef
    iget-object v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    #@8f1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8f4
    move-result v5

    #@8f5
    if-nez v5, :cond_4c

    #@8f7
    .line 2152
    if-nez v26, :cond_4d

    #@8f9
    .line 2153
    new-instance v26, Ljava/lang/StringBuilder;

    #@8fb
    const/16 v5, 0x80

    #@8fd
    move-object/from16 v0, v26

    #@8ff
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@902
    .line 2154
    .local v26, "implicitPerms":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    #@904
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@906
    move-object/from16 v0, v26

    #@908
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90b
    .line 2155
    const-string/jumbo v5, ": compat added "

    #@90e
    move-object/from16 v0, v26

    #@910
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@913
    .line 2159
    .end local v26    # "implicitPerms":Ljava/lang/StringBuilder;
    :goto_f
    move-object/from16 v0, v36

    #@915
    iget-object v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    #@917
    move-object/from16 v0, v26

    #@919
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91c
    .line 2160
    move-object/from16 v0, p1

    #@91e
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@920
    move-object/from16 v0, v36

    #@922
    iget-object v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    #@924
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@927
    .line 2145
    :cond_4c
    add-int/lit8 v30, v30, 0x1

    #@929
    goto/16 :goto_c

    #@92b
    .line 2157
    :cond_4d
    const/16 v5, 0x20

    #@92d
    move-object/from16 v0, v26

    #@92f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@932
    goto :goto_f

    #@933
    .line 2168
    .end local v36    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    .restart local v12    # "NS":I
    .restart local v31    # "is":I
    .restart local v42    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_4e
    add-int/lit8 v31, v31, 0x1

    #@935
    goto/16 :goto_d

    #@937
    .line 2183
    .end local v42    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_4f
    if-ltz v46, :cond_50

    #@939
    if-lez v46, :cond_51

    #@93b
    .line 2184
    move-object/from16 v0, p1

    #@93d
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@93f
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@941
    .line 2185
    const/4 v6, 0x4

    #@942
    .line 2184
    if-lt v5, v6, :cond_51

    #@944
    .line 2186
    :cond_50
    move-object/from16 v0, p1

    #@946
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@948
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@94a
    or-int/lit16 v6, v6, 0x200

    #@94c
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@94e
    .line 2188
    :cond_51
    if-eqz v45, :cond_52

    #@950
    .line 2189
    move-object/from16 v0, p1

    #@952
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@954
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@956
    or-int/lit16 v6, v6, 0x400

    #@958
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@95a
    .line 2191
    :cond_52
    if-ltz v44, :cond_53

    #@95c
    if-lez v44, :cond_54

    #@95e
    .line 2192
    move-object/from16 v0, p1

    #@960
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@962
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@964
    .line 2193
    const/4 v6, 0x4

    #@965
    .line 2192
    if-lt v5, v6, :cond_54

    #@967
    .line 2194
    :cond_53
    move-object/from16 v0, p1

    #@969
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@96b
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@96d
    or-int/lit16 v6, v6, 0x800

    #@96f
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@971
    .line 2196
    :cond_54
    if-ltz v47, :cond_55

    #@973
    if-lez v47, :cond_56

    #@975
    .line 2197
    move-object/from16 v0, p1

    #@977
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@979
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@97b
    .line 2198
    const/16 v6, 0x9

    #@97d
    .line 2197
    if-lt v5, v6, :cond_56

    #@97f
    .line 2199
    :cond_55
    move-object/from16 v0, p1

    #@981
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@983
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@985
    const/high16 v7, 0x80000

    #@987
    or-int/2addr v6, v7

    #@988
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@98a
    .line 2201
    :cond_56
    if-ltz v40, :cond_57

    #@98c
    if-lez v40, :cond_58

    #@98e
    .line 2202
    move-object/from16 v0, p1

    #@990
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@992
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@994
    .line 2203
    const/4 v6, 0x4

    #@995
    .line 2202
    if-lt v5, v6, :cond_58

    #@997
    .line 2204
    :cond_57
    move-object/from16 v0, p1

    #@999
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@99b
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@99d
    or-int/lit16 v6, v6, 0x1000

    #@99f
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9a1
    .line 2206
    :cond_58
    if-ltz v14, :cond_59

    #@9a3
    if-lez v14, :cond_5a

    #@9a5
    .line 2207
    move-object/from16 v0, p1

    #@9a7
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9a9
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@9ab
    .line 2208
    const/4 v6, 0x4

    #@9ac
    .line 2207
    if-lt v5, v6, :cond_5a

    #@9ae
    .line 2209
    :cond_59
    move-object/from16 v0, p1

    #@9b0
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9b2
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9b4
    or-int/lit16 v6, v6, 0x2000

    #@9b6
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9b8
    .line 2212
    :cond_5a
    return-object p1
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 36
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2734
    move-object/from16 v0, p1

    #@2
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    .line 2735
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    #@6
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@a
    move-object/from16 v27, v0

    #@c
    .line 2738
    .local v27, "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    #@e
    .line 2737
    move-object/from16 v0, p2

    #@10
    move-object/from16 v1, p3

    #@12
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@15
    move-result-object v8

    #@16
    .line 2741
    .local v8, "sa":Landroid/content/res/TypedArray;
    const-string/jumbo v7, "<application>"

    #@19
    const/4 v9, 0x0

    #@1a
    .line 2742
    const/4 v10, 0x3

    #@1b
    .line 2743
    const/4 v11, 0x1

    #@1c
    .line 2744
    const/4 v12, 0x2

    #@1d
    .line 2745
    const/16 v13, 0x2a

    #@1f
    .line 2746
    const/16 v14, 0x16

    #@21
    .line 2747
    const/16 v15, 0x1e

    #@23
    move-object/from16 v4, p1

    #@25
    move-object/from16 v6, p5

    #@27
    .line 2740
    invoke-static/range {v4 .. v15}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    #@2a
    move-result v4

    #@2b
    if-nez v4, :cond_0

    #@2d
    .line 2748
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@30
    .line 2749
    const/16 v4, -0x6c

    #@32
    move-object/from16 v0, p0

    #@34
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@36
    .line 2750
    const/4 v4, 0x0

    #@37
    return v4

    #@38
    .line 2753
    :cond_0
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    #@3a
    if-eqz v4, :cond_1

    #@3c
    .line 2754
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    #@3e
    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@40
    .line 2758
    :cond_1
    const/4 v4, 0x4

    #@41
    .line 2759
    const/16 v6, 0x400

    #@43
    .line 2757
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@46
    move-result-object v25

    #@47
    .line 2760
    .local v25, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v25, :cond_2

    #@49
    .line 2761
    move-object/from16 v0, v27

    #@4b
    move-object/from16 v1, v25

    #@4d
    move-object/from16 v2, p5

    #@4f
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@55
    .line 2766
    :cond_2
    const/16 v4, 0x11

    #@57
    const/4 v6, 0x1

    #@58
    .line 2765
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5b
    move-result v21

    #@5c
    .line 2767
    .local v21, "allowBackup":Z
    if-eqz v21, :cond_7

    #@5e
    .line 2768
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@60
    const v6, 0x8000

    #@63
    or-int/2addr v4, v6

    #@64
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@66
    .line 2774
    const/16 v4, 0x10

    #@68
    .line 2775
    const/16 v6, 0x400

    #@6a
    .line 2773
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@6d
    move-result-object v22

    #@6e
    .line 2776
    .local v22, "backupAgent":Ljava/lang/String;
    if-eqz v22, :cond_6

    #@70
    .line 2777
    move-object/from16 v0, v27

    #@72
    move-object/from16 v1, v22

    #@74
    move-object/from16 v2, p5

    #@76
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@7c
    .line 2784
    const/16 v4, 0x12

    #@7e
    .line 2785
    const/4 v6, 0x1

    #@7f
    .line 2783
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@82
    move-result v4

    #@83
    if-eqz v4, :cond_3

    #@85
    .line 2786
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@87
    const/high16 v6, 0x10000

    #@89
    or-int/2addr v4, v6

    #@8a
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8c
    .line 2789
    :cond_3
    const/16 v4, 0x15

    #@8e
    .line 2790
    const/4 v6, 0x0

    #@8f
    .line 2788
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@92
    move-result v4

    #@93
    if-eqz v4, :cond_4

    #@95
    .line 2791
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@97
    const/high16 v6, 0x20000

    #@99
    or-int/2addr v4, v6

    #@9a
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9c
    .line 2794
    :cond_4
    const/16 v4, 0x20

    #@9e
    .line 2795
    const/4 v6, 0x0

    #@9f
    .line 2793
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a2
    move-result v4

    #@a3
    if-eqz v4, :cond_5

    #@a5
    .line 2796
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a7
    const/high16 v6, 0x4000000

    #@a9
    or-int/2addr v4, v6

    #@aa
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@ac
    .line 2799
    :cond_5
    const/16 v4, 0x28

    #@ae
    .line 2800
    const/4 v6, 0x0

    #@af
    .line 2798
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@b2
    move-result v4

    #@b3
    if-eqz v4, :cond_6

    #@b5
    .line 2801
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@b7
    or-int/lit16 v4, v4, 0x1000

    #@b9
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@bb
    .line 2806
    :cond_6
    const/16 v4, 0x23

    #@bd
    .line 2805
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@c0
    move-result-object v35

    #@c1
    .line 2807
    .local v35, "v":Landroid/util/TypedValue;
    if-eqz v35, :cond_7

    #@c3
    move-object/from16 v0, v35

    #@c5
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    #@c7
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@c9
    if-nez v4, :cond_7

    #@cb
    .line 2813
    move-object/from16 v0, v35

    #@cd
    iget v4, v0, Landroid/util/TypedValue;->data:I

    #@cf
    if-nez v4, :cond_1c

    #@d1
    const/4 v4, -0x1

    #@d2
    :goto_0
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@d4
    .line 2821
    .end local v22    # "backupAgent":Ljava/lang/String;
    .end local v35    # "v":Landroid/util/TypedValue;
    :cond_7
    const/4 v4, 0x0

    #@d5
    const/4 v6, 0x0

    #@d6
    .line 2820
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@d9
    move-result v4

    #@da
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->theme:I

    #@dc
    .line 2823
    const/16 v4, 0xd

    #@de
    const/4 v6, 0x0

    #@df
    .line 2822
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@e2
    move-result v4

    #@e3
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@e5
    .line 2825
    and-int/lit8 v4, p4, 0x1

    #@e7
    if-eqz v4, :cond_8

    #@e9
    .line 2827
    const/16 v4, 0x8

    #@eb
    .line 2828
    const/4 v6, 0x0

    #@ec
    .line 2826
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ef
    move-result v4

    #@f0
    if-eqz v4, :cond_8

    #@f2
    .line 2829
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@f4
    or-int/lit8 v4, v4, 0x8

    #@f6
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@f8
    .line 2834
    :cond_8
    const/16 v4, 0x1b

    #@fa
    .line 2835
    const/4 v6, 0x0

    #@fb
    .line 2833
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@fe
    move-result v4

    #@ff
    if-eqz v4, :cond_9

    #@101
    .line 2836
    const/4 v4, 0x1

    #@102
    move-object/from16 v0, p1

    #@104
    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    #@106
    .line 2839
    :cond_9
    const/16 v4, 0x1c

    #@108
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@10b
    move-result-object v30

    #@10c
    .line 2841
    .local v30, "restrictedAccountType":Ljava/lang/String;
    if-eqz v30, :cond_a

    #@10e
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    #@111
    move-result v4

    #@112
    if-lez v4, :cond_a

    #@114
    .line 2842
    move-object/from16 v0, v30

    #@116
    move-object/from16 v1, p1

    #@118
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    #@11a
    .line 2845
    :cond_a
    const/16 v4, 0x1d

    #@11c
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@11f
    move-result-object v29

    #@120
    .line 2847
    .local v29, "requiredAccountType":Ljava/lang/String;
    if-eqz v29, :cond_b

    #@122
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    #@125
    move-result v4

    #@126
    if-lez v4, :cond_b

    #@128
    .line 2848
    move-object/from16 v0, v29

    #@12a
    move-object/from16 v1, p1

    #@12c
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    #@12e
    .line 2852
    :cond_b
    const/16 v4, 0xa

    #@130
    .line 2853
    const/4 v6, 0x0

    #@131
    .line 2851
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@134
    move-result v4

    #@135
    if-eqz v4, :cond_c

    #@137
    .line 2854
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@139
    or-int/lit8 v4, v4, 0x2

    #@13b
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@13d
    .line 2858
    :cond_c
    const/16 v4, 0x14

    #@13f
    .line 2859
    const/4 v6, 0x0

    #@140
    .line 2857
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@143
    move-result v4

    #@144
    if-eqz v4, :cond_d

    #@146
    .line 2860
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@148
    or-int/lit16 v4, v4, 0x4000

    #@14a
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@14c
    .line 2865
    :cond_d
    move-object/from16 v0, p1

    #@14e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@150
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@152
    const/16 v6, 0xe

    #@154
    if-lt v4, v6, :cond_1d

    #@156
    const/4 v4, 0x1

    #@157
    .line 2864
    :goto_1
    const/16 v6, 0x17

    #@159
    .line 2863
    invoke-virtual {v8, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@15c
    move-result v4

    #@15d
    move-object/from16 v0, p1

    #@15f
    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@161
    .line 2866
    move-object/from16 v0, p1

    #@163
    iget-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@165
    if-eqz v4, :cond_e

    #@167
    .line 2867
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@169
    const/high16 v6, 0x20000000

    #@16b
    or-int/2addr v4, v6

    #@16c
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@16e
    .line 2871
    :cond_e
    const/4 v4, 0x7

    #@16f
    .line 2872
    const/4 v6, 0x1

    #@170
    .line 2870
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@173
    move-result v4

    #@174
    if-eqz v4, :cond_f

    #@176
    .line 2873
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@178
    or-int/lit8 v4, v4, 0x4

    #@17a
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@17c
    .line 2877
    :cond_f
    const/16 v4, 0xe

    #@17e
    .line 2878
    const/4 v6, 0x0

    #@17f
    .line 2876
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@182
    move-result v4

    #@183
    if-eqz v4, :cond_10

    #@185
    .line 2879
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@187
    or-int/lit8 v4, v4, 0x20

    #@189
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@18b
    .line 2883
    :cond_10
    const/4 v4, 0x5

    #@18c
    .line 2884
    const/4 v6, 0x1

    #@18d
    .line 2882
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@190
    move-result v4

    #@191
    if-eqz v4, :cond_11

    #@193
    .line 2885
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@195
    or-int/lit8 v4, v4, 0x40

    #@197
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@199
    .line 2889
    :cond_11
    move-object/from16 v0, p1

    #@19b
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    #@19d
    if-nez v4, :cond_12

    #@19f
    .line 2891
    const/16 v4, 0xf

    #@1a1
    .line 2892
    const/4 v6, 0x0

    #@1a2
    .line 2890
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1a5
    move-result v4

    #@1a6
    if-eqz v4, :cond_12

    #@1a8
    .line 2893
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1aa
    or-int/lit16 v4, v4, 0x100

    #@1ac
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1ae
    .line 2898
    :cond_12
    const/16 v4, 0x18

    #@1b0
    .line 2899
    const/4 v6, 0x0

    #@1b1
    .line 2897
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b4
    move-result v4

    #@1b5
    if-eqz v4, :cond_13

    #@1b7
    .line 2900
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1b9
    const/high16 v6, 0x100000

    #@1bb
    or-int/2addr v4, v6

    #@1bc
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1be
    .line 2904
    :cond_13
    const/16 v4, 0x24

    #@1c0
    .line 2905
    const/4 v6, 0x1

    #@1c1
    .line 2903
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1c4
    move-result v4

    #@1c5
    if-eqz v4, :cond_14

    #@1c7
    .line 2906
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1c9
    const/high16 v6, 0x8000000

    #@1cb
    or-int/2addr v4, v6

    #@1cc
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1ce
    .line 2910
    :cond_14
    const/16 v4, 0x1a

    #@1d0
    .line 2911
    const/4 v6, 0x0

    #@1d1
    .line 2909
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d4
    move-result v4

    #@1d5
    if-eqz v4, :cond_15

    #@1d7
    .line 2912
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1d9
    const/high16 v6, 0x400000

    #@1db
    or-int/2addr v4, v6

    #@1dc
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1de
    .line 2916
    :cond_15
    const/16 v4, 0x21

    #@1e0
    .line 2917
    const/4 v6, 0x0

    #@1e1
    .line 2915
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1e4
    move-result v4

    #@1e5
    if-eqz v4, :cond_16

    #@1e7
    .line 2918
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1e9
    const/high16 v6, -0x80000000

    #@1eb
    or-int/2addr v4, v6

    #@1ec
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1ee
    .line 2922
    :cond_16
    const/16 v4, 0x22

    #@1f0
    .line 2923
    const/4 v6, 0x1

    #@1f1
    .line 2921
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1f4
    move-result v4

    #@1f5
    if-eqz v4, :cond_17

    #@1f7
    .line 2924
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1f9
    const/high16 v6, 0x10000000

    #@1fb
    or-int/2addr v4, v6

    #@1fc
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1fe
    .line 2928
    :cond_17
    const/16 v4, 0x26

    #@200
    .line 2929
    const/4 v6, 0x0

    #@201
    .line 2927
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@204
    move-result v4

    #@205
    if-eqz v4, :cond_18

    #@207
    .line 2930
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@209
    or-int/lit8 v4, v4, 0x20

    #@20b
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@20d
    .line 2933
    :cond_18
    const/16 v4, 0x27

    #@20f
    .line 2934
    const/4 v6, 0x0

    #@210
    .line 2932
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@213
    move-result v4

    #@214
    if-eqz v4, :cond_19

    #@216
    .line 2935
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@218
    or-int/lit8 v4, v4, 0x40

    #@21a
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@21c
    .line 2939
    :cond_19
    move-object/from16 v0, p1

    #@21e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@220
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@222
    const/16 v6, 0x18

    #@224
    if-lt v4, v6, :cond_1e

    #@226
    const/4 v4, 0x1

    #@227
    .line 2938
    :goto_2
    const/16 v6, 0x25

    #@229
    invoke-virtual {v8, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@22c
    move-result v4

    #@22d
    if-eqz v4, :cond_1a

    #@22f
    .line 2940
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@231
    or-int/lit16 v4, v4, 0x800

    #@233
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@235
    .line 2944
    :cond_1a
    const/16 v4, 0x29

    #@237
    .line 2945
    const/4 v6, 0x0

    #@238
    .line 2943
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@23b
    move-result v4

    #@23c
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    #@23e
    .line 2949
    const/4 v4, 0x6

    #@23f
    const/4 v6, 0x0

    #@240
    .line 2948
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@243
    move-result-object v32

    #@244
    .line 2950
    .local v32, "str":Ljava/lang/String;
    if-eqz v32, :cond_1f

    #@246
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    #@249
    move-result v4

    #@24a
    if-lez v4, :cond_1f

    #@24c
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@24f
    move-result-object v4

    #@250
    :goto_3
    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@252
    .line 2952
    move-object/from16 v0, p1

    #@254
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@256
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@258
    const/16 v6, 0x8

    #@25a
    if-lt v4, v6, :cond_20

    #@25c
    .line 2954
    const/16 v4, 0xc

    #@25e
    .line 2955
    const/16 v6, 0x400

    #@260
    .line 2953
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@263
    move-result-object v32

    #@264
    .line 2963
    :goto_4
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@266
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@268
    move-object/from16 v0, v32

    #@26a
    move-object/from16 v1, p5

    #@26c
    invoke-static {v4, v6, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@26f
    move-result-object v4

    #@270
    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@272
    .line 2966
    const/4 v4, 0x0

    #@273
    aget-object v4, p5, v4

    #@275
    if-nez v4, :cond_1b

    #@277
    .line 2968
    move-object/from16 v0, p1

    #@279
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@27b
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@27d
    const/16 v6, 0x8

    #@27f
    if-lt v4, v6, :cond_21

    #@281
    .line 2970
    const/16 v4, 0xb

    #@283
    .line 2971
    const/16 v6, 0x400

    #@285
    .line 2969
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@288
    move-result-object v11

    #@289
    .line 2979
    .local v11, "pname":Ljava/lang/CharSequence;
    :goto_5
    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@28b
    .line 2980
    move-object/from16 v0, p0

    #@28d
    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@28f
    .line 2979
    const/4 v10, 0x0

    #@290
    move/from16 v12, p4

    #@292
    move-object/from16 v14, p5

    #@294
    invoke-static/range {v9 .. v14}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@297
    move-result-object v4

    #@298
    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@29a
    .line 2983
    const/16 v4, 0x9

    #@29c
    const/4 v6, 0x1

    #@29d
    .line 2982
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2a0
    move-result v4

    #@2a1
    iput-boolean v4, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@2a3
    .line 2986
    const/16 v4, 0x1f

    #@2a5
    const/4 v6, 0x0

    #@2a6
    .line 2985
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2a9
    move-result v4

    #@2aa
    if-eqz v4, :cond_1b

    #@2ac
    .line 2987
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2ae
    const/high16 v6, 0x2000000

    #@2b0
    or-int/2addr v4, v6

    #@2b1
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2b3
    .line 3006
    .end local v11    # "pname":Ljava/lang/CharSequence;
    :cond_1b
    const/16 v4, 0x19

    #@2b5
    const/4 v6, 0x0

    #@2b6
    .line 3005
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2b9
    move-result v4

    #@2ba
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@2bc
    .line 3008
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@2bf
    .line 3010
    const/4 v4, 0x0

    #@2c0
    aget-object v4, p5, v4

    #@2c2
    if-eqz v4, :cond_22

    #@2c4
    .line 3011
    const/16 v4, -0x6c

    #@2c6
    move-object/from16 v0, p0

    #@2c8
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@2ca
    .line 3012
    const/4 v4, 0x0

    #@2cb
    return v4

    #@2cc
    .line 2813
    .end local v29    # "requiredAccountType":Ljava/lang/String;
    .end local v30    # "restrictedAccountType":Ljava/lang/String;
    .end local v32    # "str":Ljava/lang/String;
    .restart local v22    # "backupAgent":Ljava/lang/String;
    .restart local v35    # "v":Landroid/util/TypedValue;
    :cond_1c
    const/4 v4, 0x0

    #@2cd
    goto/16 :goto_0

    #@2cf
    .line 2865
    .end local v22    # "backupAgent":Ljava/lang/String;
    .end local v35    # "v":Landroid/util/TypedValue;
    .restart local v29    # "requiredAccountType":Ljava/lang/String;
    .restart local v30    # "restrictedAccountType":Ljava/lang/String;
    :cond_1d
    const/4 v4, 0x0

    #@2d0
    goto/16 :goto_1

    #@2d2
    .line 2939
    :cond_1e
    const/4 v4, 0x0

    #@2d3
    goto/16 :goto_2

    #@2d5
    .line 2950
    .restart local v32    # "str":Ljava/lang/String;
    :cond_1f
    const/4 v4, 0x0

    #@2d6
    goto/16 :goto_3

    #@2d8
    .line 2961
    :cond_20
    const/16 v4, 0xc

    #@2da
    .line 2960
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@2dd
    move-result-object v32

    #@2de
    goto :goto_4

    #@2df
    .line 2977
    :cond_21
    const/16 v4, 0xb

    #@2e1
    .line 2976
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@2e4
    move-result-object v11

    #@2e5
    .restart local v11    # "pname":Ljava/lang/CharSequence;
    goto :goto_5

    #@2e6
    .line 3015
    .end local v11    # "pname":Ljava/lang/CharSequence;
    :cond_22
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@2e9
    move-result v23

    #@2ea
    .line 3017
    .local v23, "innerDepth":I
    :cond_23
    :goto_6
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@2ed
    move-result v34

    #@2ee
    .local v34, "type":I
    const/4 v4, 0x1

    #@2ef
    move/from16 v0, v34

    #@2f1
    if-eq v0, v4, :cond_36

    #@2f3
    .line 3018
    const/4 v4, 0x3

    #@2f4
    move/from16 v0, v34

    #@2f6
    if-ne v0, v4, :cond_24

    #@2f8
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@2fb
    move-result v4

    #@2fc
    move/from16 v0, v23

    #@2fe
    if-le v4, v0, :cond_36

    #@300
    .line 3019
    :cond_24
    const/4 v4, 0x3

    #@301
    move/from16 v0, v34

    #@303
    if-eq v0, v4, :cond_23

    #@305
    const/4 v4, 0x4

    #@306
    move/from16 v0, v34

    #@308
    if-eq v0, v4, :cond_23

    #@30a
    .line 3023
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@30d
    move-result-object v33

    #@30e
    .line 3024
    .local v33, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "activity"

    #@311
    move-object/from16 v0, v33

    #@313
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@316
    move-result v4

    #@317
    if-eqz v4, :cond_26

    #@319
    .line 3026
    move-object/from16 v0, p1

    #@31b
    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@31d
    move/from16 v19, v0

    #@31f
    .line 3025
    const/16 v18, 0x0

    #@321
    move-object/from16 v12, p0

    #@323
    move-object/from16 v13, p1

    #@325
    move-object/from16 v14, p2

    #@327
    move-object/from16 v15, p3

    #@329
    move/from16 v16, p4

    #@32b
    move-object/from16 v17, p5

    #@32d
    invoke-direct/range {v12 .. v19}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    #@330
    move-result-object v20

    #@331
    .line 3027
    .local v20, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v20, :cond_25

    #@333
    .line 3028
    const/16 v4, -0x6c

    #@335
    move-object/from16 v0, p0

    #@337
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@339
    .line 3029
    const/4 v4, 0x0

    #@33a
    return v4

    #@33b
    .line 3032
    :cond_25
    move-object/from16 v0, p1

    #@33d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@33f
    move-object/from16 v0, v20

    #@341
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@344
    goto :goto_6

    #@345
    .line 3034
    .end local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_26
    const-string/jumbo v4, "receiver"

    #@348
    move-object/from16 v0, v33

    #@34a
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34d
    move-result v4

    #@34e
    if-eqz v4, :cond_28

    #@350
    .line 3035
    const/16 v18, 0x1

    #@352
    const/16 v19, 0x0

    #@354
    move-object/from16 v12, p0

    #@356
    move-object/from16 v13, p1

    #@358
    move-object/from16 v14, p2

    #@35a
    move-object/from16 v15, p3

    #@35c
    move/from16 v16, p4

    #@35e
    move-object/from16 v17, p5

    #@360
    invoke-direct/range {v12 .. v19}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    #@363
    move-result-object v20

    #@364
    .line 3036
    .restart local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v20, :cond_27

    #@366
    .line 3037
    const/16 v4, -0x6c

    #@368
    move-object/from16 v0, p0

    #@36a
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@36c
    .line 3038
    const/4 v4, 0x0

    #@36d
    return v4

    #@36e
    .line 3041
    :cond_27
    move-object/from16 v0, p1

    #@370
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@372
    move-object/from16 v0, v20

    #@374
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@377
    goto/16 :goto_6

    #@379
    .line 3043
    .end local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_28
    const-string/jumbo v4, "service"

    #@37c
    move-object/from16 v0, v33

    #@37e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@381
    move-result v4

    #@382
    if-eqz v4, :cond_2a

    #@384
    .line 3044
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    #@387
    move-result-object v31

    #@388
    .line 3045
    .local v31, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v31, :cond_29

    #@38a
    .line 3046
    const/16 v4, -0x6c

    #@38c
    move-object/from16 v0, p0

    #@38e
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@390
    .line 3047
    const/4 v4, 0x0

    #@391
    return v4

    #@392
    .line 3050
    :cond_29
    move-object/from16 v0, p1

    #@394
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@396
    move-object/from16 v0, v31

    #@398
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39b
    goto/16 :goto_6

    #@39d
    .line 3052
    .end local v31    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_2a
    const-string/jumbo v4, "provider"

    #@3a0
    move-object/from16 v0, v33

    #@3a2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a5
    move-result v4

    #@3a6
    if-eqz v4, :cond_2c

    #@3a8
    .line 3053
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    #@3ab
    move-result-object v26

    #@3ac
    .line 3054
    .local v26, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v26, :cond_2b

    #@3ae
    .line 3055
    const/16 v4, -0x6c

    #@3b0
    move-object/from16 v0, p0

    #@3b2
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@3b4
    .line 3056
    const/4 v4, 0x0

    #@3b5
    return v4

    #@3b6
    .line 3059
    :cond_2b
    move-object/from16 v0, p1

    #@3b8
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@3ba
    move-object/from16 v0, v26

    #@3bc
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3bf
    goto/16 :goto_6

    #@3c1
    .line 3061
    .end local v26    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_2c
    const-string/jumbo v4, "activity-alias"

    #@3c4
    move-object/from16 v0, v33

    #@3c6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c9
    move-result v4

    #@3ca
    if-eqz v4, :cond_2e

    #@3cc
    .line 3062
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    #@3cf
    move-result-object v20

    #@3d0
    .line 3063
    .restart local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v20, :cond_2d

    #@3d2
    .line 3064
    const/16 v4, -0x6c

    #@3d4
    move-object/from16 v0, p0

    #@3d6
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@3d8
    .line 3065
    const/4 v4, 0x0

    #@3d9
    return v4

    #@3da
    .line 3068
    :cond_2d
    move-object/from16 v0, p1

    #@3dc
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@3de
    move-object/from16 v0, v20

    #@3e0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e3
    goto/16 :goto_6

    #@3e5
    .line 3070
    .end local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_2e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@3e8
    move-result-object v4

    #@3e9
    const-string/jumbo v6, "meta-data"

    #@3ec
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3ef
    move-result v4

    #@3f0
    if-eqz v4, :cond_2f

    #@3f2
    .line 3074
    move-object/from16 v0, p1

    #@3f4
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@3f6
    move-object/from16 v0, p0

    #@3f8
    move-object/from16 v1, p2

    #@3fa
    move-object/from16 v2, p3

    #@3fc
    move-object/from16 v3, p5

    #@3fe
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@401
    move-result-object v4

    #@402
    move-object/from16 v0, p1

    #@404
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@406
    if-nez v4, :cond_23

    #@408
    .line 3076
    const/16 v4, -0x6c

    #@40a
    move-object/from16 v0, p0

    #@40c
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@40e
    .line 3077
    const/4 v4, 0x0

    #@40f
    return v4

    #@410
    .line 3080
    :cond_2f
    const-string/jumbo v4, "library"

    #@413
    move-object/from16 v0, v33

    #@415
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@418
    move-result v4

    #@419
    if-eqz v4, :cond_31

    #@41b
    .line 3082
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    #@41d
    .line 3081
    move-object/from16 v0, p2

    #@41f
    move-object/from16 v1, p3

    #@421
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@424
    move-result-object v8

    #@425
    .line 3087
    const/4 v4, 0x0

    #@426
    .line 3086
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@429
    move-result-object v24

    #@42a
    .line 3089
    .local v24, "lname":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@42d
    .line 3091
    if-eqz v24, :cond_30

    #@42f
    .line 3092
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@432
    move-result-object v24

    #@433
    .line 3093
    move-object/from16 v0, p1

    #@435
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@437
    move-object/from16 v0, v24

    #@439
    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    #@43c
    move-result v4

    #@43d
    if-nez v4, :cond_30

    #@43f
    .line 3094
    move-object/from16 v0, p1

    #@441
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@443
    move-object/from16 v0, v24

    #@445
    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@448
    move-result-object v4

    #@449
    move-object/from16 v0, p1

    #@44b
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@44d
    .line 3098
    :cond_30
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@450
    goto/16 :goto_6

    #@452
    .line 3100
    .end local v24    # "lname":Ljava/lang/String;
    :cond_31
    const-string/jumbo v4, "uses-library"

    #@455
    move-object/from16 v0, v33

    #@457
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45a
    move-result v4

    #@45b
    if-eqz v4, :cond_34

    #@45d
    .line 3102
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    #@45f
    .line 3101
    move-object/from16 v0, p2

    #@461
    move-object/from16 v1, p3

    #@463
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@466
    move-result-object v8

    #@467
    .line 3107
    const/4 v4, 0x0

    #@468
    .line 3106
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@46b
    move-result-object v24

    #@46c
    .line 3109
    .restart local v24    # "lname":Ljava/lang/String;
    const/4 v4, 0x1

    #@46d
    .line 3110
    const/4 v6, 0x1

    #@46e
    .line 3108
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@471
    move-result v28

    #@472
    .line 3112
    .local v28, "req":Z
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@475
    .line 3114
    if-eqz v24, :cond_32

    #@477
    .line 3115
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@47a
    move-result-object v24

    #@47b
    .line 3116
    if-eqz v28, :cond_33

    #@47d
    .line 3117
    move-object/from16 v0, p1

    #@47f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@481
    move-object/from16 v0, v24

    #@483
    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@486
    move-result-object v4

    #@487
    move-object/from16 v0, p1

    #@489
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@48b
    .line 3124
    :cond_32
    :goto_7
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@48e
    goto/16 :goto_6

    #@490
    .line 3120
    :cond_33
    move-object/from16 v0, p1

    #@492
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@494
    .line 3119
    move-object/from16 v0, v24

    #@496
    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@499
    move-result-object v4

    #@49a
    move-object/from16 v0, p1

    #@49c
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@49e
    goto :goto_7

    #@49f
    .line 3126
    .end local v24    # "lname":Ljava/lang/String;
    .end local v28    # "req":Z
    :cond_34
    const-string/jumbo v4, "uses-package"

    #@4a2
    move-object/from16 v0, v33

    #@4a4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a7
    move-result v4

    #@4a8
    if-eqz v4, :cond_35

    #@4aa
    .line 3129
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4ad
    goto/16 :goto_6

    #@4af
    .line 3133
    :cond_35
    const-string/jumbo v4, "PackageParser"

    #@4b2
    new-instance v6, Ljava/lang/StringBuilder;

    #@4b4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4b7
    const-string/jumbo v7, "Unknown element under <application>: "

    #@4ba
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bd
    move-result-object v6

    #@4be
    move-object/from16 v0, v33

    #@4c0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c3
    move-result-object v6

    #@4c4
    .line 3134
    const-string/jumbo v7, " at "

    #@4c7
    .line 3133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ca
    move-result-object v6

    #@4cb
    .line 3134
    move-object/from16 v0, p0

    #@4cd
    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@4cf
    .line 3133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d2
    move-result-object v6

    #@4d3
    .line 3134
    const-string/jumbo v7, " "

    #@4d6
    .line 3133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d9
    move-result-object v6

    #@4da
    .line 3135
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@4dd
    move-result-object v7

    #@4de
    .line 3133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e1
    move-result-object v6

    #@4e2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e5
    move-result-object v6

    #@4e6
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e9
    .line 3136
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4ec
    goto/16 :goto_6

    #@4ee
    .line 3146
    .end local v33    # "tagName":Ljava/lang/String;
    :cond_36
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V

    #@4f1
    .line 3148
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    #@4f4
    move-result v4

    #@4f5
    if-eqz v4, :cond_37

    #@4f7
    .line 3149
    move-object/from16 v0, p1

    #@4f9
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4fb
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@4fd
    or-int/lit8 v6, v6, 0x10

    #@4ff
    iput v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@501
    .line 3154
    :goto_8
    const/4 v4, 0x1

    #@502
    return v4

    #@503
    .line 3151
    :cond_37
    move-object/from16 v0, p1

    #@505
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@507
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@509
    and-int/lit8 v6, v6, -0x11

    #@50b
    iput v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@50d
    goto :goto_8
.end method

.method private parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 10
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 815
    invoke-static {p1, v7}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@4
    move-result-object v3

    #@5
    .line 817
    .local v3, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v8, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    #@7
    if-eqz v8, :cond_0

    #@9
    iget-boolean v8, v3, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    #@b
    if-eqz v8, :cond_1

    #@d
    .line 822
    :cond_0
    new-instance v0, Landroid/content/res/AssetManager;

    #@f
    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    #@12
    .line 826
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    #@14
    invoke-static {v0, v8, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    #@17
    .line 828
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@19
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@1c
    move-result v8

    #@1d
    if-nez v8, :cond_2

    #@1f
    .line 829
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@21
    array-length v9, v8

    #@22
    :goto_0
    if-ge v7, v9, :cond_2

    #@24
    aget-object v5, v8, v7

    #@26
    .line 830
    .local v5, "path":Ljava/lang/String;
    invoke-static {v0, v5, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 829
    add-int/lit8 v7, v7, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 818
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "path":Ljava/lang/String;
    :cond_1
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    #@2e
    .line 819
    new-instance v8, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v9, "Not a coreApp: "

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v8

    #@42
    .line 818
    const/16 v9, -0x6c

    #@44
    invoke-direct {v7, v9, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@47
    throw v7

    #@48
    .line 834
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@4a
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    #@4c
    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@4f
    .line 835
    .local v1, "baseApk":Ljava/io/File;
    invoke-direct {p0, v1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    #@52
    move-result-object v6

    #@53
    .line 836
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v6, :cond_3

    #@55
    .line 837
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    #@57
    .line 838
    new-instance v8, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v9, "Failed to parse base APK: "

    #@5f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v8

    #@63
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v8

    #@67
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v8

    #@6b
    .line 837
    const/16 v9, -0x64

    #@6d
    invoke-direct {v7, v9, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@70
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    .line 857
    .end local v1    # "baseApk":Ljava/io/File;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v7

    #@72
    .line 858
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@75
    .line 857
    throw v7

    #@76
    .line 841
    .restart local v1    # "baseApk":Ljava/io/File;
    .restart local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    :try_start_2
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@78
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@7b
    move-result v7

    #@7c
    if-nez v7, :cond_4

    #@7e
    .line 842
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@80
    array-length v4, v7

    #@81
    .line 843
    .local v4, "num":I
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@83
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@85
    .line 844
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@87
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@89
    .line 845
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    #@8b
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    #@8d
    .line 846
    new-array v7, v4, [I

    #@8f
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    #@91
    .line 847
    new-array v7, v4, [I

    #@93
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    #@95
    .line 849
    const/4 v2, 0x0

    #@96
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    #@98
    .line 850
    invoke-direct {p0, v6, v2, v0, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    #@9b
    .line 849
    add-int/lit8 v2, v2, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 854
    .end local v2    # "i":I
    .end local v4    # "num":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@a1
    move-result-object v7

    #@a2
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    #@a5
    .line 855
    iget-boolean v7, v3, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    #@a7
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@aa
    .line 858
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ad
    .line 856
    return-object v6
.end method

.method private static parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 17
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 711
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v9

    #@4
    .line 712
    .local v9, "files":[Ljava/io/File;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 713
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@c
    .line 714
    const-string/jumbo v15, "No packages found in split"

    #@f
    .line 713
    const/16 v16, -0x64

    #@11
    move/from16 v0, v16

    #@13
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 717
    :cond_0
    const/4 v12, 0x0

    #@18
    .line 718
    .local v12, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    #@19
    .line 720
    .local v14, "versionCode":I
    new-instance v7, Landroid/util/ArrayMap;

    #@1b
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    #@1e
    .line 721
    .local v7, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    const/4 v1, 0x0

    #@1f
    array-length v15, v9

    #@20
    .end local v12    # "packageName":Ljava/lang/String;
    :goto_0
    if-ge v1, v15, :cond_5

    #@22
    aget-object v8, v9, v1

    #@24
    .line 722
    .local v8, "file":Ljava/io/File;
    invoke-static {v8}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    #@27
    move-result v16

    #@28
    if-eqz v16, :cond_4

    #@2a
    .line 723
    move/from16 v0, p1

    #@2c
    invoke-static {v8, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    #@2f
    move-result-object v11

    #@30
    .line 727
    .local v11, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v12, :cond_2

    #@32
    .line 728
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@34
    .line 729
    .local v12, "packageName":Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@36
    .line 744
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@38
    move-object/from16 v16, v0

    #@3a
    move-object/from16 v0, v16

    #@3c
    invoke-virtual {v7, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v16

    #@40
    if-eqz v16, :cond_4

    #@42
    .line 745
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@44
    .line 746
    new-instance v15, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v16, "Split name "

    #@4c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v15

    #@50
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@52
    move-object/from16 v16, v0

    #@54
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v15

    #@58
    .line 747
    const-string/jumbo v16, " defined more than once; most recent was "

    #@5b
    .line 746
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v15

    #@5f
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v15

    #@63
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v15

    #@67
    .line 745
    const/16 v16, -0x65

    #@69
    move/from16 v0, v16

    #@6b
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@6e
    throw v1

    #@6f
    .line 731
    :cond_2
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@71
    move-object/from16 v16, v0

    #@73
    move-object/from16 v0, v16

    #@75
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v16

    #@79
    if-nez v16, :cond_3

    #@7b
    .line 732
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@7d
    .line 733
    new-instance v15, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v16, "Inconsistent package "

    #@85
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v15

    #@89
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@8b
    move-object/from16 v16, v0

    #@8d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v15

    #@91
    const-string/jumbo v16, " in "

    #@94
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v15

    #@98
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v15

    #@9c
    .line 734
    const-string/jumbo v16, "; expected "

    #@9f
    .line 733
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v15

    #@a3
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v15

    #@a7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v15

    #@ab
    .line 732
    const/16 v16, -0x65

    #@ad
    move/from16 v0, v16

    #@af
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@b2
    throw v1

    #@b3
    .line 736
    :cond_3
    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@b5
    move/from16 v16, v0

    #@b7
    move/from16 v0, v16

    #@b9
    if-eq v14, v0, :cond_1

    #@bb
    .line 737
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@bd
    .line 738
    new-instance v15, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v16, "Inconsistent version "

    #@c5
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v15

    #@c9
    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@cb
    move/from16 v16, v0

    #@cd
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v15

    #@d1
    const-string/jumbo v16, " in "

    #@d4
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v15

    #@d8
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v15

    #@dc
    .line 739
    const-string/jumbo v16, "; expected "

    #@df
    .line 738
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v15

    #@e3
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v15

    #@e7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v15

    #@eb
    .line 737
    const/16 v16, -0x65

    #@ed
    move/from16 v0, v16

    #@ef
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@f2
    throw v1

    #@f3
    .line 721
    .end local v11    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@f5
    goto/16 :goto_0

    #@f7
    .line 752
    .end local v8    # "file":Ljava/io/File;
    :cond_5
    const/4 v1, 0x0

    #@f8
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@fb
    move-result-object v3

    #@fc
    check-cast v3, Landroid/content/pm/PackageParser$ApkLite;

    #@fe
    .line 753
    .local v3, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v3, :cond_6

    #@100
    .line 754
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@102
    .line 755
    new-instance v15, Ljava/lang/StringBuilder;

    #@104
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@107
    const-string/jumbo v16, "Missing base APK in "

    #@10a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v15

    #@10e
    move-object/from16 v0, p0

    #@110
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v15

    #@114
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v15

    #@118
    .line 754
    const/16 v16, -0x65

    #@11a
    move/from16 v0, v16

    #@11c
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@11f
    throw v1

    #@120
    .line 759
    :cond_6
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@123
    move-result v13

    #@124
    .line 761
    .local v13, "size":I
    const/4 v4, 0x0

    #@125
    .line 762
    .local v4, "splitNames":[Ljava/lang/String;
    const/4 v5, 0x0

    #@126
    .line 763
    .local v5, "splitCodePaths":[Ljava/lang/String;
    const/4 v6, 0x0

    #@127
    .line 764
    .local v6, "splitRevisionCodes":[I
    if-lez v13, :cond_7

    #@129
    .line 765
    new-array v4, v13, [Ljava/lang/String;

    #@12b
    .line 766
    .local v4, "splitNames":[Ljava/lang/String;
    new-array v5, v13, [Ljava/lang/String;

    #@12d
    .line 767
    .local v5, "splitCodePaths":[Ljava/lang/String;
    new-array v6, v13, [I

    #@12f
    .line 769
    .local v6, "splitRevisionCodes":[I
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@132
    move-result-object v1

    #@133
    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@136
    move-result-object v4

    #@137
    .end local v4    # "splitNames":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    #@139
    .line 770
    .restart local v4    # "splitNames":[Ljava/lang/String;
    sget-object v1, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    #@13b
    invoke-static {v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@13e
    .line 772
    const/4 v10, 0x0

    #@13f
    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_7

    #@141
    .line 773
    aget-object v1, v4, v10

    #@143
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@146
    move-result-object v1

    #@147
    check-cast v1, Landroid/content/pm/PackageParser$ApkLite;

    #@149
    iget-object v1, v1, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    #@14b
    aput-object v1, v5, v10

    #@14d
    .line 774
    aget-object v1, v4, v10

    #@14f
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@152
    move-result-object v1

    #@153
    check-cast v1, Landroid/content/pm/PackageParser$ApkLite;

    #@155
    iget v1, v1, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    #@157
    aput v1, v6, v10

    #@159
    .line 772
    add-int/lit8 v10, v10, 0x1

    #@15b
    goto :goto_1

    #@15c
    .line 778
    .end local v4    # "splitNames":[Ljava/lang/String;
    .end local v5    # "splitCodePaths":[Ljava/lang/String;
    .end local v6    # "splitRevisionCodes":[I
    .end local v10    # "i":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@15f
    move-result-object v2

    #@160
    .line 779
    .local v2, "codePath":Ljava/lang/String;
    new-instance v1, Landroid/content/pm/PackageParser$PackageLite;

    #@162
    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    #@165
    return-object v1
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 11
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2667
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    #@2
    .line 2666
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v9

    #@6
    .line 2669
    .local v9, "sa":Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 2670
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@c
    .line 2671
    const/4 v3, 0x2

    #@d
    .line 2672
    const/4 v4, 0x0

    #@e
    .line 2673
    const/4 v5, 0x1

    #@f
    .line 2674
    const/16 v6, 0x8

    #@11
    .line 2675
    const/4 v7, 0x6

    #@12
    .line 2676
    const/4 v8, 0x7

    #@13
    move-object v1, p1

    #@14
    move-object v2, p4

    #@15
    .line 2670
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    #@18
    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@1a
    .line 2677
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@1c
    const-string/jumbo v1, "<instrumentation>"

    #@1f
    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    #@21
    .line 2680
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@23
    iput-object v9, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    #@25
    .line 2682
    new-instance v4, Landroid/content/pm/PackageParser$Instrumentation;

    #@27
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@29
    .line 2683
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    #@2b
    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    #@2e
    .line 2682
    invoke-direct {v4, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    #@31
    .line 2684
    .local v4, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    #@32
    aget-object v0, p4, v0

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 2685
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    #@39
    .line 2686
    const/16 v0, -0x6c

    #@3b
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@3d
    .line 2687
    const/4 v0, 0x0

    #@3e
    return-object v0

    #@3f
    .line 2694
    :cond_1
    const/4 v0, 0x3

    #@40
    .line 2693
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@43
    move-result-object v10

    #@44
    .line 2695
    .local v10, "str":Ljava/lang/String;
    iget-object v1, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@46
    if-eqz v10, :cond_2

    #@48
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    :goto_0
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@4e
    .line 2697
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@50
    .line 2698
    const/4 v1, 0x4

    #@51
    .line 2699
    const/4 v2, 0x0

    #@52
    .line 2697
    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@55
    move-result v1

    #@56
    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    #@58
    .line 2701
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@5a
    .line 2702
    const/4 v1, 0x5

    #@5b
    .line 2703
    const/4 v2, 0x0

    #@5c
    .line 2701
    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5f
    move-result v1

    #@60
    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    #@62
    .line 2705
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    #@65
    .line 2707
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@67
    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@69
    if-nez v0, :cond_3

    #@6b
    .line 2708
    const-string/jumbo v0, "<instrumentation> does not specify targetPackage"

    #@6e
    const/4 v1, 0x0

    #@6f
    aput-object v0, p4, v1

    #@71
    .line 2709
    const/16 v0, -0x6c

    #@73
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@75
    .line 2710
    const/4 v0, 0x0

    #@76
    return-object v0

    #@77
    .line 2695
    :cond_2
    const/4 v0, 0x0

    #@78
    goto :goto_0

    #@79
    .line 2713
    :cond_3
    const-string/jumbo v3, "<instrumentation>"

    #@7c
    move-object v0, p0

    #@7d
    move-object v1, p2

    #@7e
    move-object v2, p3

    #@7f
    move-object v5, p4

    #@80
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@83
    move-result v0

    #@84
    if-nez v0, :cond_4

    #@86
    .line 2715
    const/16 v0, -0x6c

    #@88
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@8a
    .line 2716
    const/4 v0, 0x0

    #@8b
    return-object v0

    #@8c
    .line 2719
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@8e
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@91
    .line 2721
    return-object v4
.end method

.method private parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 18
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "allowAutoVerify"    # Z
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$IntentInfo;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 4550
    sget-object v15, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    #@2
    .line 4549
    move-object/from16 v0, p1

    #@4
    move-object/from16 v1, p2

    #@6
    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v9

    #@a
    .line 4553
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v15, 0x2

    #@b
    const/16 v16, 0x0

    #@d
    .line 4552
    move/from16 v0, v16

    #@f
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@12
    move-result v7

    #@13
    .line 4554
    .local v7, "priority":I
    move-object/from16 v0, p5

    #@15
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    #@18
    .line 4557
    const/4 v15, 0x0

    #@19
    .line 4556
    invoke-virtual {v9, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@1c
    move-result-object v13

    #@1d
    .line 4558
    .local v13, "v":Landroid/util/TypedValue;
    if-eqz v13, :cond_0

    #@1f
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    #@21
    move-object/from16 v0, p5

    #@23
    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    #@25
    if-nez v15, :cond_0

    #@27
    .line 4559
    invoke-virtual {v13}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@2a
    move-result-object v15

    #@2b
    move-object/from16 v0, p5

    #@2d
    iput-object v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@2f
    .line 4563
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@32
    move-result-object v15

    #@33
    const v16, 0x11200b3

    #@36
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@39
    move-result v12

    #@3a
    .line 4564
    .local v12, "useRoundIcon":Z
    if-eqz v12, :cond_5

    #@3c
    .line 4565
    const/4 v15, 0x6

    #@3d
    const/16 v16, 0x0

    #@3f
    .line 4564
    move/from16 v0, v16

    #@41
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@44
    move-result v8

    #@45
    .line 4566
    .local v8, "roundIconVal":I
    :goto_0
    if-eqz v8, :cond_6

    #@47
    .line 4567
    move-object/from16 v0, p5

    #@49
    iput v8, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    #@4b
    .line 4574
    :goto_1
    const/4 v15, 0x3

    #@4c
    const/16 v16, 0x0

    #@4e
    .line 4573
    move/from16 v0, v16

    #@50
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@53
    move-result v15

    #@54
    move-object/from16 v0, p5

    #@56
    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    #@58
    .line 4577
    const/4 v15, 0x4

    #@59
    const/16 v16, 0x0

    #@5b
    .line 4576
    move/from16 v0, v16

    #@5d
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@60
    move-result v15

    #@61
    move-object/from16 v0, p5

    #@63
    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    #@65
    .line 4579
    if-eqz p4, :cond_1

    #@67
    .line 4581
    const/4 v15, 0x5

    #@68
    .line 4582
    const/16 v16, 0x0

    #@6a
    .line 4580
    move/from16 v0, v16

    #@6c
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6f
    move-result v15

    #@70
    move-object/from16 v0, p5

    #@72
    invoke-virtual {v0, v15}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    #@75
    .line 4585
    :cond_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    #@78
    .line 4587
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@7b
    move-result v5

    #@7c
    .line 4589
    .local v5, "outerDepth":I
    :cond_2
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    #@7f
    move-result v11

    #@80
    .local v11, "type":I
    const/4 v15, 0x1

    #@81
    if-eq v11, v15, :cond_18

    #@83
    .line 4590
    const/4 v15, 0x3

    #@84
    if-ne v11, v15, :cond_3

    #@86
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@89
    move-result v15

    #@8a
    if-le v15, v5, :cond_18

    #@8c
    .line 4591
    :cond_3
    const/4 v15, 0x3

    #@8d
    if-eq v11, v15, :cond_2

    #@8f
    const/4 v15, 0x4

    #@90
    if-eq v11, v15, :cond_2

    #@92
    .line 4595
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@95
    move-result-object v4

    #@96
    .line 4596
    .local v4, "nodeName":Ljava/lang/String;
    const-string/jumbo v15, "action"

    #@99
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v15

    #@9d
    if-eqz v15, :cond_8

    #@9f
    .line 4598
    const-string/jumbo v15, "http://schemas.android.com/apk/res/android"

    #@a2
    const-string/jumbo v16, "name"

    #@a5
    .line 4597
    move-object/from16 v0, p2

    #@a7
    move-object/from16 v1, v16

    #@a9
    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ac
    move-result-object v14

    #@ad
    .line 4599
    .local v14, "value":Ljava/lang/String;
    if-eqz v14, :cond_4

    #@af
    const-string/jumbo v15, ""

    #@b2
    if-ne v14, v15, :cond_7

    #@b4
    .line 4600
    :cond_4
    const-string/jumbo v15, "No value supplied for <android:name>"

    #@b7
    const/16 v16, 0x0

    #@b9
    aput-object v15, p6, v16

    #@bb
    .line 4601
    const/4 v15, 0x0

    #@bc
    return v15

    #@bd
    .line 4565
    .end local v4    # "nodeName":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v8    # "roundIconVal":I
    .end local v11    # "type":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    #@be
    goto :goto_0

    #@bf
    .line 4570
    .restart local v8    # "roundIconVal":I
    :cond_6
    const/4 v15, 0x1

    #@c0
    const/16 v16, 0x0

    #@c2
    .line 4569
    move/from16 v0, v16

    #@c4
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c7
    move-result v15

    #@c8
    move-object/from16 v0, p5

    #@ca
    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    #@cc
    goto/16 :goto_1

    #@ce
    .line 4603
    .restart local v4    # "nodeName":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v11    # "type":I
    .restart local v14    # "value":Ljava/lang/String;
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@d1
    .line 4605
    move-object/from16 v0, p5

    #@d3
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    #@d6
    goto :goto_2

    #@d7
    .line 4606
    .end local v14    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v15, "category"

    #@da
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dd
    move-result v15

    #@de
    if-eqz v15, :cond_b

    #@e0
    .line 4608
    const-string/jumbo v15, "http://schemas.android.com/apk/res/android"

    #@e3
    const-string/jumbo v16, "name"

    #@e6
    .line 4607
    move-object/from16 v0, p2

    #@e8
    move-object/from16 v1, v16

    #@ea
    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ed
    move-result-object v14

    #@ee
    .line 4609
    .restart local v14    # "value":Ljava/lang/String;
    if-eqz v14, :cond_9

    #@f0
    const-string/jumbo v15, ""

    #@f3
    if-ne v14, v15, :cond_a

    #@f5
    .line 4610
    :cond_9
    const-string/jumbo v15, "No value supplied for <android:name>"

    #@f8
    const/16 v16, 0x0

    #@fa
    aput-object v15, p6, v16

    #@fc
    .line 4611
    const/4 v15, 0x0

    #@fd
    return v15

    #@fe
    .line 4613
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@101
    .line 4615
    move-object/from16 v0, p5

    #@103
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    #@106
    goto/16 :goto_2

    #@108
    .line 4617
    .end local v14    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v15, "data"

    #@10b
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10e
    move-result v15

    #@10f
    if-eqz v15, :cond_17

    #@111
    .line 4619
    sget-object v15, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    #@113
    .line 4618
    move-object/from16 v0, p1

    #@115
    move-object/from16 v1, p2

    #@117
    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@11a
    move-result-object v9

    #@11b
    .line 4622
    const/4 v15, 0x0

    #@11c
    const/16 v16, 0x0

    #@11e
    .line 4621
    move/from16 v0, v16

    #@120
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@123
    move-result-object v10

    #@124
    .line 4623
    .local v10, "str":Ljava/lang/String;
    if-eqz v10, :cond_c

    #@126
    .line 4625
    :try_start_0
    move-object/from16 v0, p5

    #@128
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    #@12b
    .line 4634
    :cond_c
    const/4 v15, 0x1

    #@12c
    const/16 v16, 0x0

    #@12e
    .line 4633
    move/from16 v0, v16

    #@130
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@133
    move-result-object v10

    #@134
    .line 4635
    if-eqz v10, :cond_d

    #@136
    .line 4636
    move-object/from16 v0, p5

    #@138
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    #@13b
    .line 4640
    :cond_d
    const/4 v15, 0x7

    #@13c
    const/16 v16, 0x0

    #@13e
    .line 4639
    move/from16 v0, v16

    #@140
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@143
    move-result-object v10

    #@144
    .line 4641
    if-eqz v10, :cond_e

    #@146
    .line 4642
    const/4 v15, 0x0

    #@147
    move-object/from16 v0, p5

    #@149
    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@14c
    .line 4646
    :cond_e
    const/16 v15, 0x8

    #@14e
    const/16 v16, 0x0

    #@150
    .line 4645
    move/from16 v0, v16

    #@152
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@155
    move-result-object v10

    #@156
    .line 4647
    if-eqz v10, :cond_f

    #@158
    .line 4648
    const/4 v15, 0x1

    #@159
    move-object/from16 v0, p5

    #@15b
    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@15e
    .line 4652
    :cond_f
    const/16 v15, 0x9

    #@160
    const/16 v16, 0x0

    #@162
    .line 4651
    move/from16 v0, v16

    #@164
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@167
    move-result-object v10

    #@168
    .line 4653
    if-eqz v10, :cond_11

    #@16a
    .line 4654
    if-nez p3, :cond_10

    #@16c
    .line 4655
    const-string/jumbo v15, "sspPattern not allowed here; ssp must be literal"

    #@16f
    const/16 v16, 0x0

    #@171
    aput-object v15, p6, v16

    #@173
    .line 4656
    const/4 v15, 0x0

    #@174
    return v15

    #@175
    .line 4626
    :catch_0
    move-exception v2

    #@176
    .line 4627
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    #@179
    move-result-object v15

    #@17a
    const/16 v16, 0x0

    #@17c
    aput-object v15, p6, v16

    #@17e
    .line 4628
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    #@181
    .line 4629
    const/4 v15, 0x0

    #@182
    return v15

    #@183
    .line 4658
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_10
    const/4 v15, 0x2

    #@184
    move-object/from16 v0, p5

    #@186
    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@189
    .line 4662
    :cond_11
    const/4 v15, 0x2

    #@18a
    const/16 v16, 0x0

    #@18c
    .line 4661
    move/from16 v0, v16

    #@18e
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@191
    move-result-object v3

    #@192
    .line 4664
    .local v3, "host":Ljava/lang/String;
    const/4 v15, 0x3

    #@193
    const/16 v16, 0x0

    #@195
    .line 4663
    move/from16 v0, v16

    #@197
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@19a
    move-result-object v6

    #@19b
    .line 4665
    .local v6, "port":Ljava/lang/String;
    if-eqz v3, :cond_12

    #@19d
    .line 4666
    move-object/from16 v0, p5

    #@19f
    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    #@1a2
    .line 4670
    :cond_12
    const/4 v15, 0x4

    #@1a3
    const/16 v16, 0x0

    #@1a5
    .line 4669
    move/from16 v0, v16

    #@1a7
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1aa
    move-result-object v10

    #@1ab
    .line 4671
    if-eqz v10, :cond_13

    #@1ad
    .line 4672
    const/4 v15, 0x0

    #@1ae
    move-object/from16 v0, p5

    #@1b0
    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    #@1b3
    .line 4676
    :cond_13
    const/4 v15, 0x5

    #@1b4
    const/16 v16, 0x0

    #@1b6
    .line 4675
    move/from16 v0, v16

    #@1b8
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1bb
    move-result-object v10

    #@1bc
    .line 4677
    if-eqz v10, :cond_14

    #@1be
    .line 4678
    const/4 v15, 0x1

    #@1bf
    move-object/from16 v0, p5

    #@1c1
    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    #@1c4
    .line 4682
    :cond_14
    const/4 v15, 0x6

    #@1c5
    const/16 v16, 0x0

    #@1c7
    .line 4681
    move/from16 v0, v16

    #@1c9
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1cc
    move-result-object v10

    #@1cd
    .line 4683
    if-eqz v10, :cond_16

    #@1cf
    .line 4684
    if-nez p3, :cond_15

    #@1d1
    .line 4685
    const-string/jumbo v15, "pathPattern not allowed here; path must be literal"

    #@1d4
    const/16 v16, 0x0

    #@1d6
    aput-object v15, p6, v16

    #@1d8
    .line 4686
    const/4 v15, 0x0

    #@1d9
    return v15

    #@1da
    .line 4688
    :cond_15
    const/4 v15, 0x2

    #@1db
    move-object/from16 v0, p5

    #@1dd
    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    #@1e0
    .line 4691
    :cond_16
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    #@1e3
    .line 4692
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1e6
    goto/16 :goto_2

    #@1e8
    .line 4694
    .end local v3    # "host":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    .end local v10    # "str":Ljava/lang/String;
    :cond_17
    const-string/jumbo v15, "PackageParser"

    #@1eb
    new-instance v16, Ljava/lang/StringBuilder;

    #@1ed
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1f0
    const-string/jumbo v17, "Unknown element under <intent-filter>: "

    #@1f3
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v16

    #@1f7
    .line 4695
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1fa
    move-result-object v17

    #@1fb
    .line 4694
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v16

    #@1ff
    .line 4695
    const-string/jumbo v17, " at "

    #@202
    .line 4694
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v16

    #@206
    .line 4695
    move-object/from16 v0, p0

    #@208
    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@20a
    move-object/from16 v17, v0

    #@20c
    .line 4694
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v16

    #@210
    .line 4695
    const-string/jumbo v17, " "

    #@213
    .line 4694
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@216
    move-result-object v16

    #@217
    .line 4696
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@21a
    move-result-object v17

    #@21b
    .line 4694
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v16

    #@21f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@222
    move-result-object v16

    #@223
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@226
    .line 4697
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@229
    goto/16 :goto_2

    #@22b
    .line 4704
    .end local v4    # "nodeName":Ljava/lang/String;
    :cond_18
    const-string/jumbo v15, "android.intent.category.DEFAULT"

    #@22e
    move-object/from16 v0, p5

    #@230
    invoke-virtual {v0, v15}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    #@233
    move-result v15

    #@234
    move-object/from16 v0, p5

    #@236
    iput-boolean v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    #@238
    .line 4721
    const/4 v15, 0x1

    #@239
    return v15
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 27
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2361
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@3
    move-result v14

    #@4
    .line 2362
    .local v14, "outerDepth":I
    const/4 v5, -0x1

    #@5
    .line 2364
    .local v5, "currentKeySetDepth":I
    const/4 v4, 0x0

    #@6
    .line 2365
    .local v4, "currentKeySet":Ljava/lang/String;
    new-instance v17, Landroid/util/ArrayMap;

    #@8
    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    #@b
    .line 2366
    .local v17, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v23, Landroid/util/ArraySet;

    #@d
    invoke-direct/range {v23 .. v23}, Landroid/util/ArraySet;-><init>()V

    #@10
    .line 2367
    .local v23, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/ArrayMap;

    #@12
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    #@15
    .line 2368
    .local v6, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    #@17
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    #@1a
    .line 2369
    .end local v4    # "currentKeySet":Ljava/lang/String;
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@1d
    move-result v22

    #@1e
    .local v22, "type":I
    const/16 v24, 0x1

    #@20
    move/from16 v0, v22

    #@22
    move/from16 v1, v24

    #@24
    if-eq v0, v1, :cond_d

    #@26
    .line 2370
    const/16 v24, 0x3

    #@28
    move/from16 v0, v22

    #@2a
    move/from16 v1, v24

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@31
    move-result v24

    #@32
    move/from16 v0, v24

    #@34
    if-le v0, v14, :cond_d

    #@36
    .line 2371
    :cond_1
    const/16 v24, 0x3

    #@38
    move/from16 v0, v22

    #@3a
    move/from16 v1, v24

    #@3c
    if-ne v0, v1, :cond_2

    #@3e
    .line 2372
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@41
    move-result v24

    #@42
    move/from16 v0, v24

    #@44
    if-ne v0, v5, :cond_0

    #@46
    .line 2373
    const/4 v4, 0x0

    #@47
    .line 2374
    .restart local v4    # "currentKeySet":Ljava/lang/String;
    const/4 v5, -0x1

    #@48
    goto :goto_0

    #@49
    .line 2378
    .end local v4    # "currentKeySet":Ljava/lang/String;
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4c
    move-result-object v21

    #@4d
    .line 2379
    .local v21, "tagName":Ljava/lang/String;
    const-string/jumbo v24, "key-set"

    #@50
    move-object/from16 v0, v21

    #@52
    move-object/from16 v1, v24

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v24

    #@58
    if-eqz v24, :cond_4

    #@5a
    .line 2380
    if-eqz v4, :cond_3

    #@5c
    .line 2381
    new-instance v24, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v25, "Improperly nested \'key-set\' tag at "

    #@64
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v24

    #@68
    .line 2382
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@6b
    move-result-object v25

    #@6c
    .line 2381
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v24

    #@70
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v24

    #@74
    const/16 v25, 0x0

    #@76
    aput-object v24, p4, v25

    #@78
    .line 2383
    const/16 v24, -0x6c

    #@7a
    move/from16 v0, v24

    #@7c
    move-object/from16 v1, p0

    #@7e
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@80
    .line 2384
    const/16 v24, 0x0

    #@82
    return v24

    #@83
    .line 2387
    :cond_3
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    #@85
    .line 2386
    move-object/from16 v0, p2

    #@87
    move-object/from16 v1, p3

    #@89
    move-object/from16 v2, v24

    #@8b
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8e
    move-result-object v20

    #@8f
    .line 2389
    .local v20, "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    #@91
    .line 2388
    move-object/from16 v0, v20

    #@93
    move/from16 v1, v24

    #@95
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@98
    move-result-object v12

    #@99
    .line 2390
    .local v12, "keysetName":Ljava/lang/String;
    new-instance v24, Landroid/util/ArraySet;

    #@9b
    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    #@9e
    move-object/from16 v0, v24

    #@a0
    invoke-virtual {v6, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a3
    .line 2391
    move-object v4, v12

    #@a4
    .line 2392
    .local v4, "currentKeySet":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@a7
    move-result v5

    #@a8
    .line 2393
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@ab
    goto/16 :goto_0

    #@ad
    .line 2394
    .end local v4    # "currentKeySet":Ljava/lang/String;
    .end local v12    # "keysetName":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_4
    const-string/jumbo v24, "public-key"

    #@b0
    move-object/from16 v0, v21

    #@b2
    move-object/from16 v1, v24

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b7
    move-result v24

    #@b8
    if-eqz v24, :cond_b

    #@ba
    .line 2395
    if-nez v4, :cond_5

    #@bc
    .line 2396
    new-instance v24, Ljava/lang/StringBuilder;

    #@be
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v25, "Improperly nested \'key-set\' tag at "

    #@c4
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v24

    #@c8
    .line 2397
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@cb
    move-result-object v25

    #@cc
    .line 2396
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v24

    #@d0
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v24

    #@d4
    const/16 v25, 0x0

    #@d6
    aput-object v24, p4, v25

    #@d8
    .line 2398
    const/16 v24, -0x6c

    #@da
    move/from16 v0, v24

    #@dc
    move-object/from16 v1, p0

    #@de
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@e0
    .line 2399
    const/16 v24, 0x0

    #@e2
    return v24

    #@e3
    .line 2402
    :cond_5
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    #@e5
    .line 2401
    move-object/from16 v0, p2

    #@e7
    move-object/from16 v1, p3

    #@e9
    move-object/from16 v2, v24

    #@eb
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@ee
    move-result-object v20

    #@ef
    .line 2404
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    #@f1
    .line 2403
    move-object/from16 v0, v20

    #@f3
    move/from16 v1, v24

    #@f5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@f8
    move-result-object v15

    #@f9
    .line 2406
    .local v15, "publicKeyName":Ljava/lang/String;
    const/16 v24, 0x1

    #@fb
    .line 2405
    move-object/from16 v0, v20

    #@fd
    move/from16 v1, v24

    #@ff
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@102
    move-result-object v9

    #@103
    .line 2407
    .local v9, "encodedKey":Ljava/lang/String;
    if-nez v9, :cond_6

    #@105
    move-object/from16 v0, v17

    #@107
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10a
    move-result-object v24

    #@10b
    if-nez v24, :cond_6

    #@10d
    .line 2408
    new-instance v24, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v25, "\'public-key\' "

    #@115
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v24

    #@119
    move-object/from16 v0, v24

    #@11b
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v24

    #@11f
    const-string/jumbo v25, " must define a public-key value"

    #@122
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v24

    #@126
    .line 2409
    const-string/jumbo v25, " on first use at "

    #@129
    .line 2408
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v24

    #@12d
    .line 2409
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@130
    move-result-object v25

    #@131
    .line 2408
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v24

    #@135
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v24

    #@139
    const/16 v25, 0x0

    #@13b
    aput-object v24, p4, v25

    #@13d
    .line 2410
    const/16 v24, -0x6c

    #@13f
    move/from16 v0, v24

    #@141
    move-object/from16 v1, p0

    #@143
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@145
    .line 2411
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@148
    .line 2412
    const/16 v24, 0x0

    #@14a
    return v24

    #@14b
    .line 2413
    :cond_6
    if-eqz v9, :cond_9

    #@14d
    .line 2414
    invoke-static {v9}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@150
    move-result-object v3

    #@151
    .line 2415
    .local v3, "currentKey":Ljava/security/PublicKey;
    if-nez v3, :cond_7

    #@153
    .line 2416
    const-string/jumbo v24, "PackageParser"

    #@156
    new-instance v25, Ljava/lang/StringBuilder;

    #@158
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@15b
    const-string/jumbo v26, "No recognized valid key in \'public-key\' tag at "

    #@15e
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v25

    #@162
    .line 2417
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@165
    move-result-object v26

    #@166
    .line 2416
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v25

    #@16a
    .line 2417
    const-string/jumbo v26, " key-set "

    #@16d
    .line 2416
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v25

    #@171
    move-object/from16 v0, v25

    #@173
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v25

    #@177
    .line 2418
    const-string/jumbo v26, " will not be added to the package\'s defined key-sets."

    #@17a
    .line 2416
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v25

    #@17e
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v25

    #@182
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@185
    .line 2419
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@188
    .line 2420
    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@18b
    .line 2421
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@18e
    goto/16 :goto_0

    #@190
    .line 2424
    :cond_7
    move-object/from16 v0, v17

    #@192
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@195
    move-result-object v24

    #@196
    if-eqz v24, :cond_8

    #@198
    .line 2425
    move-object/from16 v0, v17

    #@19a
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19d
    move-result-object v24

    #@19e
    check-cast v24, Ljava/security/PublicKey;

    #@1a0
    move-object/from16 v0, v24

    #@1a2
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1a5
    move-result v24

    #@1a6
    .line 2424
    if-eqz v24, :cond_a

    #@1a8
    .line 2428
    :cond_8
    move-object/from16 v0, v17

    #@1aa
    invoke-virtual {v0, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ad
    .line 2438
    .end local v3    # "currentKey":Ljava/security/PublicKey;
    :cond_9
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b0
    move-result-object v24

    #@1b1
    check-cast v24, Landroid/util/ArraySet;

    #@1b3
    move-object/from16 v0, v24

    #@1b5
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1b8
    .line 2439
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@1bb
    .line 2440
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 2430
    .restart local v3    # "currentKey":Ljava/security/PublicKey;
    :cond_a
    new-instance v24, Ljava/lang/StringBuilder;

    #@1c2
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1c5
    const-string/jumbo v25, "Value of \'public-key\' "

    #@1c8
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v24

    #@1cc
    move-object/from16 v0, v24

    #@1ce
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v24

    #@1d2
    .line 2431
    const-string/jumbo v25, " conflicts with previously defined value at "

    #@1d5
    .line 2430
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v24

    #@1d9
    .line 2432
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@1dc
    move-result-object v25

    #@1dd
    .line 2430
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v24

    #@1e1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e4
    move-result-object v24

    #@1e5
    const/16 v25, 0x0

    #@1e7
    aput-object v24, p4, v25

    #@1e9
    .line 2433
    const/16 v24, -0x6c

    #@1eb
    move/from16 v0, v24

    #@1ed
    move-object/from16 v1, p0

    #@1ef
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@1f1
    .line 2434
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@1f4
    .line 2435
    const/16 v24, 0x0

    #@1f6
    return v24

    #@1f7
    .line 2441
    .end local v3    # "currentKey":Ljava/security/PublicKey;
    .end local v9    # "encodedKey":Ljava/lang/String;
    .end local v15    # "publicKeyName":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_b
    const-string/jumbo v24, "upgrade-key-set"

    #@1fa
    move-object/from16 v0, v21

    #@1fc
    move-object/from16 v1, v24

    #@1fe
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@201
    move-result v24

    #@202
    if-eqz v24, :cond_c

    #@204
    .line 2443
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    #@206
    .line 2442
    move-object/from16 v0, p2

    #@208
    move-object/from16 v1, p3

    #@20a
    move-object/from16 v2, v24

    #@20c
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@20f
    move-result-object v20

    #@210
    .line 2445
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    #@212
    .line 2444
    move-object/from16 v0, v20

    #@214
    move/from16 v1, v24

    #@216
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@219
    move-result-object v13

    #@21a
    .line 2446
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, v23

    #@21c
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@21f
    .line 2447
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@222
    .line 2448
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@225
    goto/16 :goto_0

    #@227
    .line 2456
    .end local v13    # "name":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_c
    const-string/jumbo v24, "PackageParser"

    #@22a
    new-instance v25, Ljava/lang/StringBuilder;

    #@22c
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@22f
    const-string/jumbo v26, "Unknown element under <key-sets>: "

    #@232
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v25

    #@236
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@239
    move-result-object v26

    #@23a
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v25

    #@23e
    .line 2457
    const-string/jumbo v26, " at "

    #@241
    .line 2456
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v25

    #@245
    .line 2457
    move-object/from16 v0, p0

    #@247
    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@249
    move-object/from16 v26, v0

    #@24b
    .line 2456
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v25

    #@24f
    .line 2457
    const-string/jumbo v26, " "

    #@252
    .line 2456
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v25

    #@256
    .line 2458
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@259
    move-result-object v26

    #@25a
    .line 2456
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v25

    #@25e
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@261
    move-result-object v25

    #@262
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@265
    .line 2459
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@268
    goto/16 :goto_0

    #@26a
    .line 2463
    .end local v21    # "tagName":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@26d
    move-result-object v16

    #@26e
    .line 2464
    .local v16, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@271
    move-result-object v24

    #@272
    move-object/from16 v0, v16

    #@274
    move-object/from16 v1, v24

    #@276
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@279
    move-result v24

    #@27a
    if-eqz v24, :cond_e

    #@27c
    .line 2465
    new-instance v24, Ljava/lang/StringBuilder;

    #@27e
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@281
    const-string/jumbo v25, "Package"

    #@284
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v24

    #@288
    move-object/from16 v0, p1

    #@28a
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@28c
    move-object/from16 v25, v0

    #@28e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@291
    move-result-object v24

    #@292
    const-string/jumbo v25, " AndroidManifext.xml "

    #@295
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@298
    move-result-object v24

    #@299
    .line 2466
    const-string/jumbo v25, "\'key-set\' and \'public-key\' names must be distinct."

    #@29c
    .line 2465
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29f
    move-result-object v24

    #@2a0
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a3
    move-result-object v24

    #@2a4
    const/16 v25, 0x0

    #@2a6
    aput-object v24, p4, v25

    #@2a8
    .line 2467
    const/16 v24, -0x6c

    #@2aa
    move/from16 v0, v24

    #@2ac
    move-object/from16 v1, p0

    #@2ae
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@2b0
    .line 2468
    const/16 v24, 0x0

    #@2b2
    return v24

    #@2b3
    .line 2470
    :cond_e
    new-instance v24, Landroid/util/ArrayMap;

    #@2b5
    invoke-direct/range {v24 .. v24}, Landroid/util/ArrayMap;-><init>()V

    #@2b8
    move-object/from16 v0, v24

    #@2ba
    move-object/from16 v1, p1

    #@2bc
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    #@2be
    .line 2471
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@2c1
    move-result-object v24

    #@2c2
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c5
    move-result-object v8

    #@2c6
    .local v8, "e$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@2c9
    move-result v24

    #@2ca
    if-eqz v24, :cond_12

    #@2cc
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2cf
    move-result-object v7

    #@2d0
    check-cast v7, Ljava/util/Map$Entry;

    #@2d2
    .line 2472
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d5
    move-result-object v11

    #@2d6
    check-cast v11, Ljava/lang/String;

    #@2d8
    .line 2473
    .local v11, "keySetName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2db
    move-result-object v24

    #@2dc
    check-cast v24, Landroid/util/ArraySet;

    #@2de
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArraySet;->size()I

    #@2e1
    move-result v24

    #@2e2
    if-nez v24, :cond_10

    #@2e4
    .line 2474
    const-string/jumbo v24, "PackageParser"

    #@2e7
    new-instance v25, Ljava/lang/StringBuilder;

    #@2e9
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@2ec
    const-string/jumbo v26, "Package"

    #@2ef
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f2
    move-result-object v25

    #@2f3
    move-object/from16 v0, p1

    #@2f5
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@2f7
    move-object/from16 v26, v0

    #@2f9
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v25

    #@2fd
    const-string/jumbo v26, " AndroidManifext.xml "

    #@300
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@303
    move-result-object v25

    #@304
    .line 2475
    const-string/jumbo v26, "\'key-set\' "

    #@307
    .line 2474
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v25

    #@30b
    move-object/from16 v0, v25

    #@30d
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@310
    move-result-object v25

    #@311
    .line 2475
    const-string/jumbo v26, " has no valid associated \'public-key\'."

    #@314
    .line 2474
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v25

    #@318
    .line 2476
    const-string/jumbo v26, " Not including in package\'s defined key-sets."

    #@31b
    .line 2474
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31e
    move-result-object v25

    #@31f
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@322
    move-result-object v25

    #@323
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@326
    goto :goto_1

    #@327
    .line 2478
    :cond_10
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@32a
    move-result v24

    #@32b
    if-eqz v24, :cond_11

    #@32d
    .line 2479
    const-string/jumbo v24, "PackageParser"

    #@330
    new-instance v25, Ljava/lang/StringBuilder;

    #@332
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@335
    const-string/jumbo v26, "Package"

    #@338
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33b
    move-result-object v25

    #@33c
    move-object/from16 v0, p1

    #@33e
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@340
    move-object/from16 v26, v0

    #@342
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@345
    move-result-object v25

    #@346
    const-string/jumbo v26, " AndroidManifext.xml "

    #@349
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34c
    move-result-object v25

    #@34d
    .line 2480
    const-string/jumbo v26, "\'key-set\' "

    #@350
    .line 2479
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@353
    move-result-object v25

    #@354
    move-object/from16 v0, v25

    #@356
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@359
    move-result-object v25

    #@35a
    .line 2480
    const-string/jumbo v26, " contained improper \'public-key\'"

    #@35d
    .line 2479
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@360
    move-result-object v25

    #@361
    .line 2481
    const-string/jumbo v26, " tags. Not including in package\'s defined key-sets."

    #@364
    .line 2479
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@367
    move-result-object v25

    #@368
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36b
    move-result-object v25

    #@36c
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36f
    goto/16 :goto_1

    #@371
    .line 2484
    :cond_11
    move-object/from16 v0, p1

    #@373
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    #@375
    move-object/from16 v24, v0

    #@377
    new-instance v25, Landroid/util/ArraySet;

    #@379
    invoke-direct/range {v25 .. v25}, Landroid/util/ArraySet;-><init>()V

    #@37c
    move-object/from16 v0, v24

    #@37e
    move-object/from16 v1, v25

    #@380
    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@383
    .line 2485
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@386
    move-result-object v24

    #@387
    check-cast v24, Landroid/util/ArraySet;

    #@389
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38c
    move-result-object v19

    #@38d
    .local v19, "s$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@390
    move-result v24

    #@391
    if-eqz v24, :cond_f

    #@393
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@396
    move-result-object v18

    #@397
    check-cast v18, Ljava/lang/String;

    #@399
    .line 2486
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, p1

    #@39b
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    #@39d
    move-object/from16 v24, v0

    #@39f
    move-object/from16 v0, v24

    #@3a1
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a4
    move-result-object v24

    #@3a5
    check-cast v24, Landroid/util/ArraySet;

    #@3a7
    invoke-virtual/range {v17 .. v18}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3aa
    move-result-object v25

    #@3ab
    check-cast v25, Ljava/security/PublicKey;

    #@3ad
    invoke-virtual/range {v24 .. v25}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@3b0
    goto :goto_2

    #@3b1
    .line 2489
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v11    # "keySetName":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    .end local v19    # "s$iterator":Ljava/util/Iterator;
    :cond_12
    move-object/from16 v0, p1

    #@3b3
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    #@3b5
    move-object/from16 v24, v0

    #@3b7
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@3ba
    move-result-object v24

    #@3bb
    move-object/from16 v0, v24

    #@3bd
    move-object/from16 v1, v23

    #@3bf
    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    #@3c2
    move-result v24

    #@3c3
    if-eqz v24, :cond_13

    #@3c5
    .line 2490
    move-object/from16 v0, v23

    #@3c7
    move-object/from16 v1, p1

    #@3c9
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    #@3cb
    .line 2497
    const/16 v24, 0x1

    #@3cd
    return v24

    #@3ce
    .line 2492
    :cond_13
    new-instance v24, Ljava/lang/StringBuilder;

    #@3d0
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@3d3
    const-string/jumbo v25, "Package"

    #@3d6
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d9
    move-result-object v24

    #@3da
    move-object/from16 v0, p1

    #@3dc
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@3de
    move-object/from16 v25, v0

    #@3e0
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e3
    move-result-object v24

    #@3e4
    const-string/jumbo v25, " AndroidManifext.xml "

    #@3e7
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ea
    move-result-object v24

    #@3eb
    .line 2493
    const-string/jumbo v25, "does not define all \'upgrade-key-set\'s ."

    #@3ee
    .line 2492
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f1
    move-result-object v24

    #@3f2
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f5
    move-result-object v24

    #@3f6
    const/16 v25, 0x0

    #@3f8
    aput-object v24, p4, v25

    #@3fa
    .line 2494
    const/16 v24, -0x6c

    #@3fc
    move/from16 v0, v24

    #@3fe
    move-object/from16 v1, p0

    #@400
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@402
    .line 2495
    const/16 v24, 0x0

    #@404
    return v24
.end method

.method private parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "a"    # Landroid/content/pm/PackageParser$Activity;

    #@0
    .prologue
    .line 3702
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    #@2
    .line 3701
    move-object/from16 v0, p1

    #@4
    move-object/from16 v1, p2

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v11

    #@a
    .line 3703
    .local v11, "sw":Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    #@b
    .line 3704
    .local v3, "width":I
    const/high16 v4, -0x40800000    # -1.0f

    #@d
    .line 3705
    .local v4, "widthFraction":F
    const/4 v5, -0x1

    #@e
    .line 3706
    .local v5, "height":I
    const/high16 v6, -0x40800000    # -1.0f

    #@10
    .line 3708
    .local v6, "heightFraction":F
    const/4 v2, 0x3

    #@11
    .line 3707
    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getType(I)I

    #@14
    move-result v12

    #@15
    .line 3709
    .local v12, "widthType":I
    const/4 v2, 0x6

    #@16
    if-ne v12, v2, :cond_2

    #@18
    .line 3712
    const/high16 v2, -0x40800000    # -1.0f

    #@1a
    .line 3711
    const/4 v13, 0x3

    #@1b
    .line 3712
    const/4 v14, 0x1

    #@1c
    const/4 v15, 0x1

    #@1d
    .line 3710
    invoke-virtual {v11, v13, v14, v15, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    #@20
    move-result v4

    #@21
    .line 3719
    :cond_0
    :goto_0
    const/4 v2, 0x4

    #@22
    .line 3718
    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getType(I)I

    #@25
    move-result v10

    #@26
    .line 3720
    .local v10, "heightType":I
    const/4 v2, 0x6

    #@27
    if-ne v10, v2, :cond_3

    #@29
    .line 3723
    const/high16 v2, -0x40800000    # -1.0f

    #@2b
    .line 3722
    const/4 v13, 0x4

    #@2c
    .line 3723
    const/4 v14, 0x1

    #@2d
    const/4 v15, 0x1

    #@2e
    .line 3721
    invoke-virtual {v11, v13, v14, v15, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    #@31
    move-result v6

    #@32
    .line 3730
    :cond_1
    :goto_1
    const/4 v2, 0x0

    #@33
    .line 3731
    const/16 v13, 0x11

    #@35
    .line 3729
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    #@38
    move-result v7

    #@39
    .line 3733
    .local v7, "gravity":I
    const/4 v2, 0x1

    #@3a
    .line 3734
    const/4 v13, -0x1

    #@3b
    .line 3732
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3e
    move-result v8

    #@3f
    .line 3736
    .local v8, "minWidth":I
    const/4 v2, 0x2

    #@40
    .line 3737
    const/4 v13, -0x1

    #@41
    .line 3735
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@44
    move-result v9

    #@45
    .line 3738
    .local v9, "minHeight":I
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    #@48
    .line 3739
    move-object/from16 v0, p3

    #@4a
    iget-object v13, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@4c
    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    #@4e
    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    #@51
    iput-object v2, v13, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@53
    .line 3700
    return-void

    #@54
    .line 3713
    .end local v7    # "gravity":I
    .end local v8    # "minWidth":I
    .end local v9    # "minHeight":I
    .end local v10    # "heightType":I
    :cond_2
    const/4 v2, 0x5

    #@55
    if-ne v12, v2, :cond_0

    #@57
    .line 3715
    const/4 v2, 0x3

    #@58
    .line 3716
    const/4 v13, -0x1

    #@59
    .line 3714
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@5c
    move-result v3

    #@5d
    goto :goto_0

    #@5e
    .line 3724
    .restart local v10    # "heightType":I
    :cond_3
    const/4 v2, 0x5

    #@5f
    if-ne v10, v2, :cond_1

    #@61
    .line 3726
    const/4 v2, 0x4

    #@62
    .line 3727
    const/4 v13, -0x1

    #@63
    .line 3725
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@66
    move-result v5

    #@67
    goto :goto_1
.end method

.method private parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 4407
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    #@5
    .line 4406
    invoke-virtual {p1, p2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v2

    #@9
    .line 4409
    .local v2, "sa":Landroid/content/res/TypedArray;
    if-nez p3, :cond_0

    #@b
    .line 4410
    new-instance p3, Landroid/os/Bundle;

    #@d
    .end local p3    # "data":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    #@10
    .line 4413
    .restart local p3    # "data":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 4415
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    #@16
    .line 4416
    const-string/jumbo v5, "<meta-data> requires an android:name attribute"

    #@19
    aput-object v5, p4, v6

    #@1b
    .line 4417
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 4418
    return-object v4

    #@1f
    .line 4421
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 4424
    const/4 v7, 0x2

    #@24
    .line 4423
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@27
    move-result-object v3

    #@28
    .line 4425
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_2

    #@2a
    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 4427
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    #@30
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@33
    .line 4459
    .end local p3    # "data":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@36
    .line 4461
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@39
    .line 4463
    return-object p3

    #@3a
    .line 4429
    .restart local p3    # "data":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@3d
    move-result-object v3

    #@3e
    .line 4432
    if-eqz v3, :cond_9

    #@40
    .line 4433
    iget v7, v3, Landroid/util/TypedValue;->type:I

    #@42
    const/4 v8, 0x3

    #@43
    if-ne v7, v8, :cond_4

    #@45
    .line 4434
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@48
    move-result-object v0

    #@49
    .line 4435
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    #@4b
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    :cond_3
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    goto :goto_0

    #@57
    .line 4436
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@59
    const/16 v7, 0x12

    #@5b
    if-ne v4, v7, :cond_6

    #@5d
    .line 4437
    iget v4, v3, Landroid/util/TypedValue;->data:I

    #@5f
    if-eqz v4, :cond_5

    #@61
    move v4, v5

    #@62
    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@65
    goto :goto_0

    #@66
    :cond_5
    move v4, v6

    #@67
    goto :goto_1

    #@68
    .line 4438
    :cond_6
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@6a
    const/16 v5, 0x10

    #@6c
    if-lt v4, v5, :cond_7

    #@6e
    .line 4439
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@70
    const/16 v5, 0x1f

    #@72
    if-gt v4, v5, :cond_7

    #@74
    .line 4440
    iget v4, v3, Landroid/util/TypedValue;->data:I

    #@76
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@79
    goto :goto_0

    #@7a
    .line 4441
    :cond_7
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@7c
    const/4 v5, 0x4

    #@7d
    if-ne v4, v5, :cond_8

    #@7f
    .line 4442
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    #@82
    move-result v4

    #@83
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@86
    goto :goto_0

    #@87
    .line 4445
    :cond_8
    const-string/jumbo v4, "PackageParser"

    #@8a
    new-instance v5, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v6, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    #@92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v5

    #@96
    .line 4446
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@99
    move-result-object v6

    #@9a
    .line 4445
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    .line 4446
    const-string/jumbo v6, " at "

    #@a1
    .line 4445
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    .line 4446
    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@a7
    .line 4445
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v5

    #@ab
    .line 4446
    const-string/jumbo v6, " "

    #@ae
    .line 4445
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    .line 4447
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@b5
    move-result-object v6

    #@b6
    .line 4445
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v5

    #@be
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    goto/16 :goto_0

    #@c3
    .line 4454
    :cond_9
    const-string/jumbo v4, "<meta-data> requires an android:value or android:resource attribute"

    #@c6
    aput-object v4, p4, v6

    #@c8
    .line 4455
    const/4 p3, 0x0

    #@c9
    .local p3, "data":Landroid/os/Bundle;
    goto/16 :goto_0
.end method

.method private static parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 6
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 704
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    #@4
    move-result-object v2

    #@5
    .line 705
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 706
    .local v1, "packagePath":Ljava/lang/String;
    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    #@b
    move-object v4, v3

    #@c
    move-object v5, v3

    #@d
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    #@10
    return-object v0
.end method

.method private static parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 10
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sa"    # Landroid/content/res/TypedArray;
    .param p5, "nameRequired"    # Z
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "roundIconRes"    # I
    .param p10, "logoRes"    # I
    .param p11, "bannerRes"    # I

    #@0
    .prologue
    .line 3336
    const/4 v8, 0x0

    #@1
    move/from16 v0, p6

    #@3
    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 3337
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_0

    #@9
    .line 3338
    if-eqz p5, :cond_1

    #@b
    .line 3339
    new-instance v8, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v8

    #@14
    const-string/jumbo v9, " does not specify android:name"

    #@17
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v8

    #@1b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v8

    #@1f
    const/4 v9, 0x0

    #@20
    aput-object v8, p2, v9

    #@22
    .line 3340
    const/4 v8, 0x0

    #@23
    return v8

    #@24
    .line 3344
    :cond_0
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@26
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@28
    invoke-static {v8, v4, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v8

    #@2c
    .line 3343
    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@2e
    .line 3345
    iget-object v8, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@30
    if-nez v8, :cond_1

    #@32
    .line 3346
    const/4 v8, 0x0

    #@33
    return v8

    #@34
    .line 3351
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@37
    move-result-object v8

    #@38
    const v9, 0x11200b3

    #@3b
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@3e
    move-result v6

    #@3f
    .line 3352
    .local v6, "useRoundIcon":Z
    if-eqz v6, :cond_6

    #@41
    const/4 v8, 0x0

    #@42
    move/from16 v0, p9

    #@44
    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@47
    move-result v5

    #@48
    .line 3353
    .local v5, "roundIconVal":I
    :goto_0
    if-eqz v5, :cond_7

    #@4a
    .line 3354
    iput v5, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    #@4c
    .line 3355
    const/4 v8, 0x0

    #@4d
    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@4f
    .line 3364
    :cond_2
    :goto_1
    const/4 v8, 0x0

    #@50
    move/from16 v0, p10

    #@52
    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@55
    move-result v3

    #@56
    .line 3365
    .local v3, "logoVal":I
    if-eqz v3, :cond_3

    #@58
    .line 3366
    iput v3, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    #@5a
    .line 3369
    :cond_3
    const/4 v8, 0x0

    #@5b
    move/from16 v0, p11

    #@5d
    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@60
    move-result v1

    #@61
    .line 3370
    .local v1, "bannerVal":I
    if-eqz v1, :cond_4

    #@63
    .line 3371
    iput v1, p1, Landroid/content/pm/PackageItemInfo;->banner:I

    #@65
    .line 3374
    :cond_4
    move/from16 v0, p7

    #@67
    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@6a
    move-result-object v7

    #@6b
    .line 3375
    .local v7, "v":Landroid/util/TypedValue;
    if-eqz v7, :cond_5

    #@6d
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    #@6f
    iput v8, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@71
    if-nez v8, :cond_5

    #@73
    .line 3376
    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@76
    move-result-object v8

    #@77
    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@79
    .line 3379
    :cond_5
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@7b
    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@7d
    .line 3381
    const/4 v8, 0x1

    #@7e
    return v8

    #@7f
    .line 3352
    .end local v1    # "bannerVal":I
    .end local v3    # "logoVal":I
    .end local v5    # "roundIconVal":I
    .end local v7    # "v":Landroid/util/TypedValue;
    :cond_6
    const/4 v5, 0x0

    #@80
    goto :goto_0

    #@81
    .line 3357
    .restart local v5    # "roundIconVal":I
    :cond_7
    const/4 v8, 0x0

    #@82
    move/from16 v0, p8

    #@84
    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@87
    move-result v2

    #@88
    .line 3358
    .local v2, "iconVal":I
    if-eqz v2, :cond_2

    #@8a
    .line 3359
    iput v2, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    #@8c
    .line 3360
    const/4 v8, 0x0

    #@8d
    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@8f
    goto :goto_1
.end method

.method public static parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 1
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 695
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 696
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 698
    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, -0x6a

    #@2
    const/16 v9, -0x6c

    #@4
    const/4 v8, 0x1

    #@5
    const/4 v7, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    .line 1395
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a
    move-result v3

    #@b
    .local v3, "type":I
    const/4 v4, 0x2

    #@c
    if-eq v3, v4, :cond_1

    #@e
    .line 1396
    if-ne v3, v8, :cond_0

    #@10
    .line 1399
    :cond_1
    const/4 v4, 0x2

    #@11
    if-eq v3, v4, :cond_2

    #@13
    .line 1400
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@15
    .line 1401
    const-string/jumbo v5, "No start tag found"

    #@18
    .line 1400
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@1b
    throw v4

    #@1c
    .line 1403
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    const-string/jumbo v5, "manifest"

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v4

    #@27
    if-nez v4, :cond_3

    #@29
    .line 1404
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@2b
    .line 1405
    const-string/jumbo v5, "No <manifest> tag"

    #@2e
    .line 1404
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@31
    throw v4

    #@32
    .line 1408
    :cond_3
    const-string/jumbo v4, "package"

    #@35
    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 1409
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "android"

    #@3c
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-nez v4, :cond_4

    #@42
    .line 1410
    invoke-static {v1, v8, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 1411
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@48
    .line 1412
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@4a
    .line 1413
    new-instance v5, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v6, "Invalid manifest package: "

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    .line 1412
    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@61
    throw v4

    #@62
    .line 1417
    .end local v0    # "error":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "split"

    #@65
    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    .line 1418
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_5

    #@6b
    .line 1419
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6e
    move-result v4

    #@6f
    if-nez v4, :cond_7

    #@71
    .line 1420
    const/4 v2, 0x0

    #@72
    .line 1430
    .end local v2    # "splitName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    .line 1431
    if-eqz v2, :cond_6

    #@78
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    .line 1430
    :cond_6
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@7f
    move-result-object v4

    #@80
    return-object v4

    #@81
    .line 1422
    .restart local v2    # "splitName":Ljava/lang/String;
    :cond_7
    invoke-static {v2, v7, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    .line 1423
    .restart local v0    # "error":Ljava/lang/String;
    if-eqz v0, :cond_5

    #@87
    .line 1424
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@89
    .line 1425
    new-instance v5, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v6, "Invalid manifest split: "

    #@91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    .line 1424
    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@a0
    throw v4
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2547
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v14, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    #@7
    .line 2550
    .local v14, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    #@9
    .line 2549
    move-object/from16 v0, p2

    #@b
    move-object/from16 v1, p3

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v6

    #@11
    .line 2552
    .local v6, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@13
    .line 2553
    const-string/jumbo v5, "<permission>"

    #@16
    const/4 v7, 0x1

    #@17
    .line 2554
    const/4 v8, 0x2

    #@18
    .line 2555
    const/4 v9, 0x0

    #@19
    .line 2556
    const/4 v10, 0x1

    #@1a
    .line 2557
    const/16 v11, 0x9

    #@1c
    .line 2558
    const/4 v12, 0x6

    #@1d
    .line 2559
    const/16 v13, 0x8

    #@1f
    move-object/from16 v2, p1

    #@21
    move-object/from16 v4, p4

    #@23
    .line 2552
    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_0

    #@29
    .line 2560
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@2c
    .line 2561
    const/16 v2, -0x6c

    #@2e
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@30
    .line 2562
    const/4 v2, 0x0

    #@31
    return-object v2

    #@32
    .line 2567
    :cond_0
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@34
    .line 2568
    const/4 v3, 0x4

    #@35
    .line 2567
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@3b
    .line 2569
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@3d
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@3f
    if-eqz v2, :cond_1

    #@41
    .line 2570
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@43
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@45
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@47
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@4d
    .line 2573
    :cond_1
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@4f
    .line 2574
    const/4 v3, 0x5

    #@50
    .line 2575
    const/4 v4, 0x0

    #@51
    .line 2573
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@54
    move-result v3

    #@55
    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@57
    .line 2577
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@59
    .line 2578
    const/4 v3, 0x3

    #@5a
    .line 2579
    const/4 v4, 0x0

    #@5b
    .line 2577
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5e
    move-result v3

    #@5f
    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@61
    .line 2581
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@63
    .line 2582
    const/4 v3, 0x7

    #@64
    const/4 v4, 0x0

    #@65
    .line 2581
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@68
    move-result v3

    #@69
    iput v3, v2, Landroid/content/pm/PermissionInfo;->flags:I

    #@6b
    .line 2584
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@6e
    .line 2586
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@70
    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@72
    const/4 v3, -0x1

    #@73
    if-ne v2, v3, :cond_2

    #@75
    .line 2587
    const-string/jumbo v2, "<permission> does not specify protectionLevel"

    #@78
    const/4 v3, 0x0

    #@79
    aput-object v2, p4, v3

    #@7b
    .line 2588
    const/16 v2, -0x6c

    #@7d
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@7f
    .line 2589
    const/4 v2, 0x0

    #@80
    return-object v2

    #@81
    .line 2592
    :cond_2
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@83
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@85
    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@87
    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    #@8a
    move-result v3

    #@8b
    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@8d
    .line 2594
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@8f
    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@91
    and-int/lit16 v2, v2, 0xff0

    #@93
    if-eqz v2, :cond_3

    #@95
    .line 2595
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@97
    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@99
    and-int/lit8 v2, v2, 0xf

    #@9b
    .line 2596
    const/4 v3, 0x2

    #@9c
    .line 2595
    if-eq v2, v3, :cond_3

    #@9e
    .line 2597
    const-string/jumbo v2, "<permission>  protectionLevel specifies a flag but is not based on signature type"

    #@a1
    const/4 v3, 0x0

    #@a2
    aput-object v2, p4, v3

    #@a4
    .line 2599
    const/16 v2, -0x6c

    #@a6
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@a8
    .line 2600
    const/4 v2, 0x0

    #@a9
    return-object v2

    #@aa
    .line 2604
    :cond_3
    const-string/jumbo v10, "<permission>"

    #@ad
    move-object v7, p0

    #@ae
    move-object/from16 v8, p2

    #@b0
    move-object/from16 v9, p3

    #@b2
    move-object v11, v14

    #@b3
    move-object/from16 v12, p4

    #@b5
    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@b8
    move-result v2

    #@b9
    if-nez v2, :cond_4

    #@bb
    .line 2605
    const/16 v2, -0x6c

    #@bd
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@bf
    .line 2606
    const/4 v2, 0x0

    #@c0
    return-object v2

    #@c1
    .line 2609
    :cond_4
    move-object/from16 v0, p1

    #@c3
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@c5
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c8
    .line 2611
    return-object v14
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2503
    new-instance v14, Landroid/content/pm/PackageParser$PermissionGroup;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v14, v0}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    #@7
    .line 2506
    .local v14, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    #@9
    .line 2505
    move-object/from16 v0, p3

    #@b
    move-object/from16 v1, p4

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v6

    #@11
    .line 2507
    .local v6, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@13
    .line 2508
    const-string/jumbo v5, "<permission-group>"

    #@16
    const/4 v7, 0x1

    #@17
    .line 2509
    const/4 v8, 0x2

    #@18
    .line 2510
    const/4 v9, 0x0

    #@19
    .line 2511
    const/4 v10, 0x1

    #@1a
    .line 2512
    const/16 v11, 0x8

    #@1c
    .line 2513
    const/4 v12, 0x5

    #@1d
    .line 2514
    const/4 v13, 0x7

    #@1e
    move-object/from16 v2, p1

    #@20
    move-object/from16 v4, p5

    #@22
    .line 2507
    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_0

    #@28
    .line 2515
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@2b
    .line 2516
    const/16 v2, -0x6c

    #@2d
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@2f
    .line 2517
    const/4 v2, 0x0

    #@30
    return-object v2

    #@31
    .line 2520
    :cond_0
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@33
    .line 2521
    const/4 v3, 0x4

    #@34
    .line 2522
    const/4 v4, 0x0

    #@35
    .line 2520
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@38
    move-result v3

    #@39
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    #@3b
    .line 2523
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@3d
    .line 2524
    const/4 v3, 0x6

    #@3e
    const/4 v4, 0x0

    #@3f
    .line 2523
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@42
    move-result v3

    #@43
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->flags:I

    #@45
    .line 2525
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@47
    .line 2526
    const/4 v3, 0x3

    #@48
    const/4 v4, 0x0

    #@49
    .line 2525
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4c
    move-result v3

    #@4d
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@4f
    .line 2527
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@51
    iget v2, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@53
    if-lez v2, :cond_1

    #@55
    and-int/lit8 v2, p2, 0x1

    #@57
    if-nez v2, :cond_1

    #@59
    .line 2528
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@5b
    const/4 v3, 0x0

    #@5c
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@5e
    .line 2531
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@61
    .line 2533
    const-string/jumbo v10, "<permission-group>"

    #@64
    move-object v7, p0

    #@65
    move-object/from16 v8, p3

    #@67
    move-object/from16 v9, p4

    #@69
    move-object v11, v14

    #@6a
    move-object/from16 v12, p5

    #@6c
    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@6f
    move-result v2

    #@70
    if-nez v2, :cond_2

    #@72
    .line 2535
    const/16 v2, -0x6c

    #@74
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@76
    .line 2536
    const/4 v2, 0x0

    #@77
    return-object v2

    #@78
    .line 2539
    :cond_2
    move-object/from16 v0, p1

    #@7a
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7f
    .line 2541
    return-object v14
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 16
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2617
    new-instance v15, Landroid/content/pm/PackageParser$Permission;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v15, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    #@7
    .line 2620
    .local v15, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    #@9
    .line 2619
    move-object/from16 v0, p2

    #@b
    move-object/from16 v1, p3

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v6

    #@11
    .line 2622
    .local v6, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@13
    .line 2623
    const-string/jumbo v5, "<permission-tree>"

    #@16
    const/4 v7, 0x1

    #@17
    .line 2624
    const/4 v8, 0x2

    #@18
    .line 2625
    const/4 v9, 0x0

    #@19
    .line 2626
    const/4 v10, 0x1

    #@1a
    .line 2627
    const/4 v11, 0x5

    #@1b
    .line 2628
    const/4 v12, 0x3

    #@1c
    .line 2629
    const/4 v13, 0x4

    #@1d
    move-object/from16 v2, p1

    #@1f
    move-object/from16 v4, p4

    #@21
    .line 2622
    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_0

    #@27
    .line 2630
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@2a
    .line 2631
    const/16 v2, -0x6c

    #@2c
    move-object/from16 v0, p0

    #@2e
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@30
    .line 2632
    const/4 v2, 0x0

    #@31
    return-object v2

    #@32
    .line 2635
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@35
    .line 2637
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@37
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@39
    const/16 v3, 0x2e

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@3e
    move-result v14

    #@3f
    .line 2638
    .local v14, "index":I
    if-lez v14, :cond_1

    #@41
    .line 2639
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@43
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@45
    const/16 v3, 0x2e

    #@47
    add-int/lit8 v4, v14, 0x1

    #@49
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    #@4c
    move-result v14

    #@4d
    .line 2641
    :cond_1
    if-gez v14, :cond_2

    #@4f
    .line 2642
    new-instance v2, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v3, "<permission-tree> name has less than three segments: "

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    .line 2643
    iget-object v3, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@5d
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@5f
    .line 2642
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    const/4 v3, 0x0

    #@68
    aput-object v2, p4, v3

    #@6a
    .line 2644
    const/16 v2, -0x6c

    #@6c
    move-object/from16 v0, p0

    #@6e
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@70
    .line 2645
    const/4 v2, 0x0

    #@71
    return-object v2

    #@72
    .line 2648
    :cond_2
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@74
    const/4 v3, 0x0

    #@75
    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@77
    .line 2649
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@79
    const/4 v3, 0x0

    #@7a
    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@7c
    .line 2650
    const/4 v2, 0x1

    #@7d
    iput-boolean v2, v15, Landroid/content/pm/PackageParser$Permission;->tree:Z

    #@7f
    .line 2652
    const-string/jumbo v10, "<permission-tree>"

    #@82
    move-object/from16 v7, p0

    #@84
    move-object/from16 v8, p2

    #@86
    move-object/from16 v9, p3

    #@88
    move-object v11, v15

    #@89
    move-object/from16 v12, p4

    #@8b
    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@8e
    move-result v2

    #@8f
    if-nez v2, :cond_3

    #@91
    .line 2654
    const/16 v2, -0x6c

    #@93
    move-object/from16 v0, p0

    #@95
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@97
    .line 2655
    const/4 v2, 0x0

    #@98
    return-object v2

    #@99
    .line 2658
    :cond_3
    move-object/from16 v0, p1

    #@9b
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@9d
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a0
    .line 2660
    return-object v15
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .locals 24
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3918
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    #@2
    .line 3917
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v22

    #@a
    .line 3920
    .local v22, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@c
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@e
    if-nez v5, :cond_0

    #@10
    .line 3921
    new-instance v5, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@12
    .line 3928
    move-object/from16 v0, p0

    #@14
    iget-object v14, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@16
    .line 3922
    const/4 v8, 0x2

    #@17
    .line 3923
    const/4 v9, 0x0

    #@18
    .line 3924
    const/4 v10, 0x1

    #@19
    .line 3925
    const/16 v11, 0x13

    #@1b
    .line 3926
    const/16 v12, 0xf

    #@1d
    .line 3927
    const/16 v13, 0x11

    #@1f
    .line 3929
    const/16 v15, 0x8

    #@21
    .line 3930
    const/16 v16, 0xe

    #@23
    .line 3931
    const/16 v17, 0x6

    #@25
    move-object/from16 v6, p1

    #@27
    move-object/from16 v7, p5

    #@29
    .line 3921
    invoke-direct/range {v5 .. v17}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    #@2c
    move-object/from16 v0, p0

    #@2e
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@30
    .line 3932
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@34
    const-string/jumbo v6, "<provider>"

    #@37
    iput-object v6, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@39
    .line 3935
    :cond_0
    move-object/from16 v0, p0

    #@3b
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@3d
    move-object/from16 v0, v22

    #@3f
    iput-object v0, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@41
    .line 3936
    move-object/from16 v0, p0

    #@43
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@45
    move/from16 v0, p4

    #@47
    iput v0, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@49
    .line 3938
    new-instance v19, Landroid/content/pm/PackageParser$Provider;

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@4f
    new-instance v6, Landroid/content/pm/ProviderInfo;

    #@51
    invoke-direct {v6}, Landroid/content/pm/ProviderInfo;-><init>()V

    #@54
    move-object/from16 v0, v19

    #@56
    invoke-direct {v0, v5, v6}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    #@59
    .line 3939
    .local v19, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v5, 0x0

    #@5a
    aget-object v5, p5, v5

    #@5c
    if-eqz v5, :cond_1

    #@5e
    .line 3940
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    #@61
    .line 3941
    const/4 v5, 0x0

    #@62
    return-object v5

    #@63
    .line 3944
    :cond_1
    const/16 v21, 0x0

    #@65
    .line 3946
    .local v21, "providerExportedDefault":Z
    move-object/from16 v0, p1

    #@67
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@69
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@6b
    const/16 v6, 0x11

    #@6d
    if-ge v5, v6, :cond_2

    #@6f
    .line 3950
    const/16 v21, 0x1

    #@71
    .line 3953
    :cond_2
    move-object/from16 v0, v19

    #@73
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@75
    .line 3954
    const/4 v6, 0x7

    #@76
    .line 3953
    move-object/from16 v0, v22

    #@78
    move/from16 v1, v21

    #@7a
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@7d
    move-result v6

    #@7e
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    #@80
    .line 3958
    const/16 v5, 0xa

    #@82
    const/4 v6, 0x0

    #@83
    .line 3957
    move-object/from16 v0, v22

    #@85
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@88
    move-result-object v18

    #@89
    .line 3960
    .local v18, "cpname":Ljava/lang/String;
    move-object/from16 v0, v19

    #@8b
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@8d
    .line 3961
    const/16 v6, 0xb

    #@8f
    .line 3962
    const/4 v7, 0x0

    #@90
    .line 3960
    move-object/from16 v0, v22

    #@92
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@95
    move-result v6

    #@96
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@98
    .line 3965
    const/4 v5, 0x3

    #@99
    const/4 v6, 0x0

    #@9a
    .line 3964
    move-object/from16 v0, v22

    #@9c
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@9f
    move-result-object v20

    #@a0
    .line 3967
    .local v20, "permission":Ljava/lang/String;
    const/4 v5, 0x4

    #@a1
    const/4 v6, 0x0

    #@a2
    .line 3966
    move-object/from16 v0, v22

    #@a4
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@a7
    move-result-object v23

    #@a8
    .line 3968
    .local v23, "str":Ljava/lang/String;
    if-nez v23, :cond_3

    #@aa
    .line 3969
    move-object/from16 v23, v20

    #@ac
    .line 3971
    :cond_3
    if-nez v23, :cond_7

    #@ae
    .line 3972
    move-object/from16 v0, v19

    #@b0
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@b2
    move-object/from16 v0, p1

    #@b4
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b6
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@b8
    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@ba
    .line 3978
    :goto_0
    const/4 v5, 0x5

    #@bb
    const/4 v6, 0x0

    #@bc
    .line 3977
    move-object/from16 v0, v22

    #@be
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@c1
    move-result-object v23

    #@c2
    .line 3979
    if-nez v23, :cond_4

    #@c4
    .line 3980
    move-object/from16 v23, v20

    #@c6
    .line 3982
    :cond_4
    if-nez v23, :cond_9

    #@c8
    .line 3983
    move-object/from16 v0, v19

    #@ca
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@cc
    move-object/from16 v0, p1

    #@ce
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d0
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@d2
    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@d4
    .line 3989
    :goto_1
    move-object/from16 v0, v19

    #@d6
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@d8
    .line 3990
    const/16 v6, 0xd

    #@da
    .line 3991
    const/4 v7, 0x0

    #@db
    .line 3989
    move-object/from16 v0, v22

    #@dd
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@e0
    move-result v6

    #@e1
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@e3
    .line 3993
    move-object/from16 v0, v19

    #@e5
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@e7
    .line 3994
    const/16 v6, 0x9

    #@e9
    .line 3995
    const/4 v7, 0x0

    #@ea
    .line 3993
    move-object/from16 v0, v22

    #@ec
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ef
    move-result v6

    #@f0
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@f2
    .line 3997
    move-object/from16 v0, v19

    #@f4
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@f6
    .line 3998
    const/16 v6, 0xc

    #@f8
    .line 3999
    const/4 v7, 0x0

    #@f9
    .line 3997
    move-object/from16 v0, v22

    #@fb
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@fe
    move-result v6

    #@ff
    iput v6, v5, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@101
    .line 4001
    move-object/from16 v0, v19

    #@103
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@105
    const/4 v6, 0x0

    #@106
    iput v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    #@108
    .line 4004
    const/16 v5, 0x10

    #@10a
    .line 4005
    const/4 v6, 0x0

    #@10b
    .line 4003
    move-object/from16 v0, v22

    #@10d
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@110
    move-result v5

    #@111
    if-eqz v5, :cond_5

    #@113
    .line 4006
    move-object/from16 v0, v19

    #@115
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@117
    iget v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    #@119
    const/high16 v7, 0x40000000    # 2.0f

    #@11b
    or-int/2addr v6, v7

    #@11c
    iput v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    #@11e
    .line 4007
    move-object/from16 v0, v19

    #@120
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@122
    iget-boolean v5, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    #@124
    if-eqz v5, :cond_5

    #@126
    move/from16 v0, p4

    #@128
    and-int/lit16 v5, v0, 0x80

    #@12a
    if-nez v5, :cond_5

    #@12c
    .line 4008
    const-string/jumbo v5, "PackageParser"

    #@12f
    new-instance v6, Ljava/lang/StringBuilder;

    #@131
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@134
    const-string/jumbo v7, "Provider exported request ignored due to singleUser: "

    #@137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v6

    #@13b
    .line 4009
    move-object/from16 v0, v19

    #@13d
    iget-object v7, v0, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    #@13f
    .line 4008
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v6

    #@143
    .line 4009
    const-string/jumbo v7, " at "

    #@146
    .line 4008
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v6

    #@14a
    .line 4009
    move-object/from16 v0, p0

    #@14c
    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@14e
    .line 4008
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v6

    #@152
    .line 4009
    const-string/jumbo v7, " "

    #@155
    .line 4008
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v6

    #@159
    .line 4010
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@15c
    move-result-object v7

    #@15d
    .line 4008
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v6

    #@161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v6

    #@165
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@168
    .line 4011
    move-object/from16 v0, v19

    #@16a
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@16c
    const/4 v6, 0x0

    #@16d
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    #@16f
    .line 4015
    :cond_5
    move-object/from16 v0, v19

    #@171
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@173
    .line 4016
    const/16 v6, 0x12

    #@175
    .line 4017
    const/4 v7, 0x0

    #@176
    .line 4015
    move-object/from16 v0, v22

    #@178
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@17b
    move-result v6

    #@17c
    move-object/from16 v0, v19

    #@17e
    iget-object v7, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@180
    iput-boolean v6, v7, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    #@182
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->encryptionAware:Z

    #@184
    .line 4018
    move-object/from16 v0, v19

    #@186
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@188
    iget-boolean v5, v5, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    #@18a
    if-eqz v5, :cond_6

    #@18c
    .line 4019
    move-object/from16 v0, p1

    #@18e
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@190
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@192
    or-int/lit16 v6, v6, 0x100

    #@194
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@196
    .line 4023
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    #@199
    .line 4025
    move-object/from16 v0, p1

    #@19b
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@19d
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@19f
    and-int/lit8 v5, v5, 0x2

    #@1a1
    if-eqz v5, :cond_b

    #@1a3
    .line 4029
    move-object/from16 v0, v19

    #@1a5
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@1a7
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    #@1a9
    move-object/from16 v0, p1

    #@1ab
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@1ad
    if-ne v5, v6, :cond_b

    #@1af
    .line 4030
    const-string/jumbo v5, "Heavy-weight applications can not have providers in main process"

    #@1b2
    const/4 v6, 0x0

    #@1b3
    aput-object v5, p5, v6

    #@1b5
    .line 4031
    const/4 v5, 0x0

    #@1b6
    return-object v5

    #@1b7
    .line 3974
    :cond_7
    move-object/from16 v0, v19

    #@1b9
    iget-object v6, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@1bb
    .line 3975
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@1be
    move-result v5

    #@1bf
    if-lez v5, :cond_8

    #@1c1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@1c4
    move-result-object v5

    #@1c5
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1c8
    move-result-object v5

    #@1c9
    .line 3974
    :goto_2
    iput-object v5, v6, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@1cb
    goto/16 :goto_0

    #@1cd
    .line 3975
    :cond_8
    const/4 v5, 0x0

    #@1ce
    goto :goto_2

    #@1cf
    .line 3985
    :cond_9
    move-object/from16 v0, v19

    #@1d1
    iget-object v6, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@1d3
    .line 3986
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@1d6
    move-result v5

    #@1d7
    if-lez v5, :cond_a

    #@1d9
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v5

    #@1dd
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1e0
    move-result-object v5

    #@1e1
    .line 3985
    :goto_3
    iput-object v5, v6, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@1e3
    goto/16 :goto_1

    #@1e5
    .line 3986
    :cond_a
    const/4 v5, 0x0

    #@1e6
    goto :goto_3

    #@1e7
    .line 4035
    :cond_b
    if-nez v18, :cond_c

    #@1e9
    .line 4036
    const-string/jumbo v5, "<provider> does not include authorities attribute"

    #@1ec
    const/4 v6, 0x0

    #@1ed
    aput-object v5, p5, v6

    #@1ef
    .line 4037
    const/4 v5, 0x0

    #@1f0
    return-object v5

    #@1f1
    .line 4039
    :cond_c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@1f4
    move-result v5

    #@1f5
    if-gtz v5, :cond_d

    #@1f7
    .line 4040
    const-string/jumbo v5, "<provider> has empty authorities attribute"

    #@1fa
    const/4 v6, 0x0

    #@1fb
    aput-object v5, p5, v6

    #@1fd
    .line 4041
    const/4 v5, 0x0

    #@1fe
    return-object v5

    #@1ff
    .line 4043
    :cond_d
    move-object/from16 v0, v19

    #@201
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@203
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@206
    move-result-object v6

    #@207
    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@209
    .line 4045
    move-object/from16 v0, p0

    #@20b
    move-object/from16 v1, p2

    #@20d
    move-object/from16 v2, p3

    #@20f
    move-object/from16 v3, v19

    #@211
    move-object/from16 v4, p5

    #@213
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    #@216
    move-result v5

    #@217
    if-nez v5, :cond_e

    #@219
    .line 4046
    const/4 v5, 0x0

    #@21a
    return-object v5

    #@21b
    .line 4049
    :cond_e
    return-object v19
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 25
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "outInfo"    # Landroid/content/pm/PackageParser$Provider;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 4055
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@3
    move-result v15

    #@4
    .line 4057
    .local v15, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    #@7
    move-result v23

    #@8
    .local v23, "type":I
    const/4 v4, 0x1

    #@9
    move/from16 v0, v23

    #@b
    if-eq v0, v4, :cond_16

    #@d
    .line 4058
    const/4 v4, 0x3

    #@e
    move/from16 v0, v23

    #@10
    if-ne v0, v4, :cond_1

    #@12
    .line 4059
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@15
    move-result v4

    #@16
    if-le v4, v15, :cond_16

    #@18
    .line 4060
    :cond_1
    const/4 v4, 0x3

    #@19
    move/from16 v0, v23

    #@1b
    if-eq v0, v4, :cond_0

    #@1d
    const/4 v4, 0x4

    #@1e
    move/from16 v0, v23

    #@20
    if-eq v0, v4, :cond_0

    #@22
    .line 4064
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, "intent-filter"

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_3

    #@2f
    .line 4065
    new-instance v9, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@31
    move-object/from16 v0, p3

    #@33
    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    #@36
    .line 4066
    .local v9, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    const/4 v7, 0x1

    #@37
    const/4 v8, 0x0

    #@38
    move-object/from16 v4, p0

    #@3a
    move-object/from16 v5, p1

    #@3c
    move-object/from16 v6, p2

    #@3e
    move-object/from16 v10, p4

    #@40
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@43
    move-result v4

    #@44
    if-nez v4, :cond_2

    #@46
    .line 4067
    const/4 v4, 0x0

    #@47
    return v4

    #@48
    .line 4069
    :cond_2
    move-object/from16 v0, p3

    #@4a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    goto :goto_0

    #@50
    .line 4071
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    const-string/jumbo v5, "meta-data"

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_4

    #@5d
    .line 4073
    move-object/from16 v0, p3

    #@5f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    #@61
    .line 4072
    move-object/from16 v0, p0

    #@63
    move-object/from16 v1, p1

    #@65
    move-object/from16 v2, p2

    #@67
    move-object/from16 v3, p4

    #@69
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@6c
    move-result-object v4

    #@6d
    move-object/from16 v0, p3

    #@6f
    iput-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    #@71
    if-nez v4, :cond_0

    #@73
    .line 4074
    const/4 v4, 0x0

    #@74
    return v4

    #@75
    .line 4077
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    const-string/jumbo v5, "grant-uri-permission"

    #@7c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v4

    #@80
    if-eqz v4, :cond_a

    #@82
    .line 4079
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    #@84
    .line 4078
    move-object/from16 v0, p1

    #@86
    move-object/from16 v1, p2

    #@88
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8b
    move-result-object v21

    #@8c
    .line 4081
    .local v21, "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    #@8e
    .line 4084
    .local v17, "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    #@8f
    const/4 v5, 0x0

    #@90
    .line 4083
    move-object/from16 v0, v21

    #@92
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@95
    move-result-object v22

    #@96
    .line 4085
    .local v22, "str":Ljava/lang/String;
    if-eqz v22, :cond_5

    #@98
    .line 4086
    new-instance v17, Landroid/os/PatternMatcher;

    #@9a
    .end local v17    # "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    #@9b
    move-object/from16 v0, v17

    #@9d
    move-object/from16 v1, v22

    #@9f
    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    #@a2
    .line 4090
    :cond_5
    const/4 v4, 0x1

    #@a3
    const/4 v5, 0x0

    #@a4
    .line 4089
    move-object/from16 v0, v21

    #@a6
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@a9
    move-result-object v22

    #@aa
    .line 4091
    if-eqz v22, :cond_6

    #@ac
    .line 4092
    new-instance v17, Landroid/os/PatternMatcher;

    #@ae
    const/4 v4, 0x1

    #@af
    move-object/from16 v0, v17

    #@b1
    move-object/from16 v1, v22

    #@b3
    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    #@b6
    .line 4096
    :cond_6
    const/4 v4, 0x2

    #@b7
    const/4 v5, 0x0

    #@b8
    .line 4095
    move-object/from16 v0, v21

    #@ba
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@bd
    move-result-object v22

    #@be
    .line 4097
    if-eqz v22, :cond_7

    #@c0
    .line 4098
    new-instance v17, Landroid/os/PatternMatcher;

    #@c2
    const/4 v4, 0x2

    #@c3
    move-object/from16 v0, v17

    #@c5
    move-object/from16 v1, v22

    #@c7
    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    #@ca
    .line 4101
    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    #@cd
    .line 4103
    if-eqz v17, :cond_9

    #@cf
    .line 4104
    move-object/from16 v0, p3

    #@d1
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@d3
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@d5
    if-nez v4, :cond_8

    #@d7
    .line 4105
    move-object/from16 v0, p3

    #@d9
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@db
    const/4 v5, 0x1

    #@dc
    new-array v5, v5, [Landroid/os/PatternMatcher;

    #@de
    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@e0
    .line 4106
    move-object/from16 v0, p3

    #@e2
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@e4
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@e6
    const/4 v5, 0x0

    #@e7
    aput-object v17, v4, v5

    #@e9
    .line 4114
    :goto_1
    move-object/from16 v0, p3

    #@eb
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@ed
    const/4 v5, 0x1

    #@ee
    iput-boolean v5, v4, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@f0
    .line 4127
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@f3
    goto/16 :goto_0

    #@f5
    .line 4108
    :cond_8
    move-object/from16 v0, p3

    #@f7
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@f9
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@fb
    array-length v11, v4

    #@fc
    .line 4109
    .local v11, "N":I
    add-int/lit8 v4, v11, 0x1

    #@fe
    new-array v14, v4, [Landroid/os/PatternMatcher;

    #@100
    .line 4110
    .local v14, "newp":[Landroid/os/PatternMatcher;
    move-object/from16 v0, p3

    #@102
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@104
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@106
    const/4 v5, 0x0

    #@107
    const/4 v6, 0x0

    #@108
    invoke-static {v4, v5, v14, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10b
    .line 4111
    aput-object v17, v14, v11

    #@10d
    .line 4112
    move-object/from16 v0, p3

    #@10f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@111
    iput-object v14, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@113
    goto :goto_1

    #@114
    .line 4117
    .end local v11    # "N":I
    .end local v14    # "newp":[Landroid/os/PatternMatcher;
    :cond_9
    const-string/jumbo v4, "PackageParser"

    #@117
    new-instance v5, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v6, "Unknown element under <path-permission>: "

    #@11f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v5

    #@123
    .line 4118
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@126
    move-result-object v6

    #@127
    .line 4117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v5

    #@12b
    .line 4118
    const-string/jumbo v6, " at "

    #@12e
    .line 4117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v5

    #@132
    .line 4118
    move-object/from16 v0, p0

    #@134
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@136
    .line 4117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v5

    #@13a
    .line 4118
    const-string/jumbo v6, " "

    #@13d
    .line 4117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v5

    #@141
    .line 4119
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@144
    move-result-object v6

    #@145
    .line 4117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v5

    #@149
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v5

    #@14d
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@150
    .line 4120
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@153
    goto/16 :goto_0

    #@155
    .line 4129
    .end local v21    # "sa":Landroid/content/res/TypedArray;
    .end local v22    # "str":Ljava/lang/String;
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@158
    move-result-object v4

    #@159
    const-string/jumbo v5, "path-permission"

    #@15c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15f
    move-result v4

    #@160
    if-eqz v4, :cond_15

    #@162
    .line 4131
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    #@164
    .line 4130
    move-object/from16 v0, p1

    #@166
    move-object/from16 v1, p2

    #@168
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@16b
    move-result-object v21

    #@16c
    .line 4133
    .restart local v21    # "sa":Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    #@16e
    .line 4136
    .local v16, "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    #@16f
    const/4 v5, 0x0

    #@170
    .line 4135
    move-object/from16 v0, v21

    #@172
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@175
    move-result-object v19

    #@176
    .line 4138
    .local v19, "permission":Ljava/lang/String;
    const/4 v4, 0x1

    #@177
    const/4 v5, 0x0

    #@178
    .line 4137
    move-object/from16 v0, v21

    #@17a
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@17d
    move-result-object v20

    #@17e
    .line 4139
    .local v20, "readPermission":Ljava/lang/String;
    if-nez v20, :cond_b

    #@180
    .line 4140
    move-object/from16 v20, v19

    #@182
    .line 4143
    :cond_b
    const/4 v4, 0x2

    #@183
    const/4 v5, 0x0

    #@184
    .line 4142
    move-object/from16 v0, v21

    #@186
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@189
    move-result-object v24

    #@18a
    .line 4144
    .local v24, "writePermission":Ljava/lang/String;
    if-nez v24, :cond_c

    #@18c
    .line 4145
    move-object/from16 v24, v19

    #@18e
    .line 4148
    :cond_c
    const/4 v12, 0x0

    #@18f
    .line 4149
    .local v12, "havePerm":Z
    if-eqz v20, :cond_d

    #@191
    .line 4150
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@194
    move-result-object v20

    #@195
    .line 4151
    const/4 v12, 0x1

    #@196
    .line 4153
    :cond_d
    if-eqz v24, :cond_e

    #@198
    .line 4154
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@19b
    move-result-object v24

    #@19c
    .line 4155
    const/4 v12, 0x1

    #@19d
    .line 4158
    :cond_e
    if-nez v12, :cond_f

    #@19f
    .line 4160
    const-string/jumbo v4, "PackageParser"

    #@1a2
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a7
    const-string/jumbo v6, "No readPermission or writePermssion for <path-permission>: "

    #@1aa
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v5

    #@1ae
    .line 4161
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1b1
    move-result-object v6

    #@1b2
    .line 4160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v5

    #@1b6
    .line 4161
    const-string/jumbo v6, " at "

    #@1b9
    .line 4160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v5

    #@1bd
    .line 4161
    move-object/from16 v0, p0

    #@1bf
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@1c1
    .line 4160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v5

    #@1c5
    .line 4161
    const-string/jumbo v6, " "

    #@1c8
    .line 4160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v5

    #@1cc
    .line 4162
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@1cf
    move-result-object v6

    #@1d0
    .line 4160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v5

    #@1d4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v5

    #@1d8
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1db
    .line 4163
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1de
    goto/16 :goto_0

    #@1e0
    .line 4172
    :cond_f
    const/4 v4, 0x3

    #@1e1
    const/4 v5, 0x0

    #@1e2
    .line 4171
    move-object/from16 v0, v21

    #@1e4
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1e7
    move-result-object v18

    #@1e8
    .line 4173
    .local v18, "path":Ljava/lang/String;
    if-eqz v18, :cond_10

    #@1ea
    .line 4174
    new-instance v16, Landroid/content/pm/PathPermission;

    #@1ec
    .line 4175
    .end local v16    # "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    #@1ed
    .line 4174
    move-object/from16 v0, v16

    #@1ef
    move-object/from16 v1, v18

    #@1f1
    move-object/from16 v2, v20

    #@1f3
    move-object/from16 v3, v24

    #@1f5
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@1f8
    .line 4179
    :cond_10
    const/4 v4, 0x4

    #@1f9
    const/4 v5, 0x0

    #@1fa
    .line 4178
    move-object/from16 v0, v21

    #@1fc
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1ff
    move-result-object v18

    #@200
    .line 4180
    if-eqz v18, :cond_11

    #@202
    .line 4181
    new-instance v16, Landroid/content/pm/PathPermission;

    #@204
    .line 4182
    const/4 v4, 0x1

    #@205
    .line 4181
    move-object/from16 v0, v16

    #@207
    move-object/from16 v1, v18

    #@209
    move-object/from16 v2, v20

    #@20b
    move-object/from16 v3, v24

    #@20d
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@210
    .line 4186
    :cond_11
    const/4 v4, 0x5

    #@211
    const/4 v5, 0x0

    #@212
    .line 4185
    move-object/from16 v0, v21

    #@214
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@217
    move-result-object v18

    #@218
    .line 4187
    if-eqz v18, :cond_12

    #@21a
    .line 4188
    new-instance v16, Landroid/content/pm/PathPermission;

    #@21c
    .line 4189
    const/4 v4, 0x2

    #@21d
    .line 4188
    move-object/from16 v0, v16

    #@21f
    move-object/from16 v1, v18

    #@221
    move-object/from16 v2, v20

    #@223
    move-object/from16 v3, v24

    #@225
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@228
    .line 4192
    :cond_12
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    #@22b
    .line 4194
    if-eqz v16, :cond_14

    #@22d
    .line 4195
    move-object/from16 v0, p3

    #@22f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@231
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@233
    if-nez v4, :cond_13

    #@235
    .line 4196
    move-object/from16 v0, p3

    #@237
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@239
    const/4 v5, 0x1

    #@23a
    new-array v5, v5, [Landroid/content/pm/PathPermission;

    #@23c
    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@23e
    .line 4197
    move-object/from16 v0, p3

    #@240
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@242
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@244
    const/4 v5, 0x0

    #@245
    aput-object v16, v4, v5

    #@247
    .line 4216
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@24a
    goto/16 :goto_0

    #@24c
    .line 4199
    :cond_13
    move-object/from16 v0, p3

    #@24e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@250
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@252
    array-length v11, v4

    #@253
    .line 4200
    .restart local v11    # "N":I
    add-int/lit8 v4, v11, 0x1

    #@255
    new-array v13, v4, [Landroid/content/pm/PathPermission;

    #@257
    .line 4201
    .local v13, "newp":[Landroid/content/pm/PathPermission;
    move-object/from16 v0, p3

    #@259
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@25b
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@25d
    const/4 v5, 0x0

    #@25e
    const/4 v6, 0x0

    #@25f
    invoke-static {v4, v5, v13, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@262
    .line 4202
    aput-object v16, v13, v11

    #@264
    .line 4203
    move-object/from16 v0, p3

    #@266
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@268
    iput-object v13, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@26a
    goto :goto_2

    #@26b
    .line 4207
    .end local v11    # "N":I
    .end local v13    # "newp":[Landroid/content/pm/PathPermission;
    :cond_14
    const-string/jumbo v4, "PackageParser"

    #@26e
    new-instance v5, Ljava/lang/StringBuilder;

    #@270
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@273
    const-string/jumbo v6, "No path, pathPrefix, or pathPattern for <path-permission>: "

    #@276
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v5

    #@27a
    .line 4208
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@27d
    move-result-object v6

    #@27e
    .line 4207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v5

    #@282
    .line 4208
    const-string/jumbo v6, " at "

    #@285
    .line 4207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@288
    move-result-object v5

    #@289
    .line 4208
    move-object/from16 v0, p0

    #@28b
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@28d
    .line 4207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v5

    #@291
    .line 4208
    const-string/jumbo v6, " "

    #@294
    .line 4207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@297
    move-result-object v5

    #@298
    .line 4209
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@29b
    move-result-object v6

    #@29c
    .line 4207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29f
    move-result-object v5

    #@2a0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a3
    move-result-object v5

    #@2a4
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a7
    .line 4210
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2aa
    goto/16 :goto_0

    #@2ac
    .line 4220
    .end local v12    # "havePerm":Z
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "permission":Ljava/lang/String;
    .end local v20    # "readPermission":Ljava/lang/String;
    .end local v21    # "sa":Landroid/content/res/TypedArray;
    .end local v24    # "writePermission":Ljava/lang/String;
    :cond_15
    const-string/jumbo v4, "PackageParser"

    #@2af
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b4
    const-string/jumbo v6, "Unknown element under <provider>: "

    #@2b7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v5

    #@2bb
    .line 4221
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@2be
    move-result-object v6

    #@2bf
    .line 4220
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v5

    #@2c3
    .line 4221
    const-string/jumbo v6, " at "

    #@2c6
    .line 4220
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c9
    move-result-object v5

    #@2ca
    .line 4221
    move-object/from16 v0, p0

    #@2cc
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@2ce
    .line 4220
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d1
    move-result-object v5

    #@2d2
    .line 4221
    const-string/jumbo v6, " "

    #@2d5
    .line 4220
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d8
    move-result-object v5

    #@2d9
    .line 4222
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@2dc
    move-result-object v6

    #@2dd
    .line 4220
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e0
    move-result-object v5

    #@2e1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e4
    move-result-object v5

    #@2e5
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2e8
    .line 4223
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2eb
    goto/16 :goto_0

    #@2ed
    .line 4231
    :cond_16
    const/4 v4, 0x1

    #@2ee
    return v4
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 9
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 4494
    if-nez p0, :cond_0

    #@3
    .line 4495
    const-string/jumbo v6, "PackageParser"

    #@6
    const-string/jumbo v7, "Could not parse null public key"

    #@9
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 4496
    return-object v8

    #@d
    .line 4501
    :cond_0
    const/4 v6, 0x0

    #@e
    :try_start_0
    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@11
    move-result-object v3

    #@12
    .line 4502
    .local v3, "encoded":[B
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    #@14
    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 4510
    .local v5, "keySpec":Ljava/security/spec/EncodedKeySpec;
    :try_start_1
    const-string/jumbo v6, "RSA"

    #@1a
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@1d
    move-result-object v4

    #@1e
    .line 4511
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_6

    #@21
    move-result-object v6

    #@22
    return-object v6

    #@23
    .line 4503
    .end local v3    # "encoded":[B
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_0
    move-exception v0

    #@24
    .line 4504
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "PackageParser"

    #@27
    const-string/jumbo v7, "Could not parse verifier public key; invalid Base64"

    #@2a
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 4505
    return-object v8

    #@2e
    .line 4512
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "encoded":[B
    .restart local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_1
    move-exception v1

    #@2f
    .line 4513
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    #@32
    const-string/jumbo v7, "Could not parse public key: RSA KeyFactory not included in build"

    #@35
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 4520
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    :try_start_2
    const-string/jumbo v6, "EC"

    #@3b
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@3e
    move-result-object v4

    #@3f
    .line 4521
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_5

    #@42
    move-result-object v6

    #@43
    return-object v6

    #@44
    .line 4522
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_2
    move-exception v1

    #@45
    .line 4523
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    #@48
    const-string/jumbo v7, "Could not parse public key: EC KeyFactory not included in build"

    #@4b
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 4530
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "DSA"

    #@51
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@54
    move-result-object v4

    #@55
    .line 4531
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    #@58
    move-result-object v6

    #@59
    return-object v6

    #@5a
    .line 4532
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_3
    move-exception v1

    #@5b
    .line 4533
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    #@5e
    const-string/jumbo v7, "Could not parse public key: DSA KeyFactory not included in build"

    #@61
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 4539
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v8

    #@65
    .line 4534
    :catch_4
    move-exception v2

    #@66
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_2

    #@67
    .line 4524
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_5
    move-exception v2

    #@68
    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_1

    #@69
    .line 4514
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_6
    move-exception v2

    #@6a
    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .locals 23
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 4238
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    #@2
    .line 4237
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v19

    #@a
    .line 4240
    .local v19, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@e
    if-nez v4, :cond_0

    #@10
    .line 4241
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@12
    .line 4248
    move-object/from16 v0, p0

    #@14
    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@16
    .line 4242
    const/4 v7, 0x2

    #@17
    .line 4243
    const/4 v8, 0x0

    #@18
    .line 4244
    const/4 v9, 0x1

    #@19
    .line 4245
    const/16 v10, 0xf

    #@1b
    .line 4246
    const/16 v11, 0x8

    #@1d
    .line 4247
    const/16 v12, 0xc

    #@1f
    .line 4249
    const/4 v14, 0x6

    #@20
    .line 4250
    const/4 v15, 0x7

    #@21
    .line 4251
    const/16 v16, 0x4

    #@23
    move-object/from16 v5, p1

    #@25
    move-object/from16 v6, p5

    #@27
    .line 4241
    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    #@2a
    move-object/from16 v0, p0

    #@2c
    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@2e
    .line 4252
    move-object/from16 v0, p0

    #@30
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@32
    const-string/jumbo v5, "<service>"

    #@35
    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@37
    .line 4255
    :cond_0
    move-object/from16 v0, p0

    #@39
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@3b
    move-object/from16 v0, v19

    #@3d
    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@3f
    .line 4256
    move-object/from16 v0, p0

    #@41
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@43
    move/from16 v0, p4

    #@45
    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@47
    .line 4258
    new-instance v18, Landroid/content/pm/PackageParser$Service;

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@4d
    new-instance v5, Landroid/content/pm/ServiceInfo;

    #@4f
    invoke-direct {v5}, Landroid/content/pm/ServiceInfo;-><init>()V

    #@52
    move-object/from16 v0, v18

    #@54
    invoke-direct {v0, v4, v5}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    #@57
    .line 4259
    .local v18, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v4, 0x0

    #@58
    aget-object v4, p5, v4

    #@5a
    if-eqz v4, :cond_1

    #@5c
    .line 4260
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    #@5f
    .line 4261
    const/4 v4, 0x0

    #@60
    return-object v4

    #@61
    .line 4265
    :cond_1
    const/4 v4, 0x5

    #@62
    .line 4264
    move-object/from16 v0, v19

    #@64
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@67
    move-result v20

    #@68
    .line 4266
    .local v20, "setExported":Z
    if-eqz v20, :cond_2

    #@6a
    .line 4267
    move-object/from16 v0, v18

    #@6c
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@6e
    .line 4268
    const/4 v5, 0x5

    #@6f
    const/4 v6, 0x0

    #@70
    .line 4267
    move-object/from16 v0, v19

    #@72
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@75
    move-result v5

    #@76
    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    #@78
    .line 4272
    :cond_2
    const/4 v4, 0x3

    #@79
    const/4 v5, 0x0

    #@7a
    .line 4271
    move-object/from16 v0, v19

    #@7c
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@7f
    move-result-object v21

    #@80
    .line 4273
    .local v21, "str":Ljava/lang/String;
    if-nez v21, :cond_8

    #@82
    .line 4274
    move-object/from16 v0, v18

    #@84
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@86
    move-object/from16 v0, p1

    #@88
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8a
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@8c
    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@8e
    .line 4279
    :goto_0
    move-object/from16 v0, v18

    #@90
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@92
    const/4 v5, 0x0

    #@93
    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@95
    .line 4281
    const/16 v4, 0x9

    #@97
    .line 4282
    const/4 v5, 0x0

    #@98
    .line 4280
    move-object/from16 v0, v19

    #@9a
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@9d
    move-result v4

    #@9e
    if-eqz v4, :cond_3

    #@a0
    .line 4283
    move-object/from16 v0, v18

    #@a2
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@a4
    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@a6
    or-int/lit8 v5, v5, 0x1

    #@a8
    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@aa
    .line 4286
    :cond_3
    const/16 v4, 0xa

    #@ac
    .line 4287
    const/4 v5, 0x0

    #@ad
    .line 4285
    move-object/from16 v0, v19

    #@af
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@b2
    move-result v4

    #@b3
    if-eqz v4, :cond_4

    #@b5
    .line 4288
    move-object/from16 v0, v18

    #@b7
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@b9
    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@bb
    or-int/lit8 v5, v5, 0x2

    #@bd
    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@bf
    .line 4291
    :cond_4
    const/16 v4, 0xe

    #@c1
    .line 4292
    const/4 v5, 0x0

    #@c2
    .line 4290
    move-object/from16 v0, v19

    #@c4
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c7
    move-result v4

    #@c8
    if-eqz v4, :cond_5

    #@ca
    .line 4293
    move-object/from16 v0, v18

    #@cc
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@ce
    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@d0
    or-int/lit8 v5, v5, 0x4

    #@d2
    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@d4
    .line 4296
    :cond_5
    const/16 v4, 0xb

    #@d6
    .line 4297
    const/4 v5, 0x0

    #@d7
    .line 4295
    move-object/from16 v0, v19

    #@d9
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@dc
    move-result v4

    #@dd
    if-eqz v4, :cond_6

    #@df
    .line 4298
    move-object/from16 v0, v18

    #@e1
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@e3
    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@e5
    const/high16 v6, 0x40000000    # 2.0f

    #@e7
    or-int/2addr v5, v6

    #@e8
    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@ea
    .line 4299
    move-object/from16 v0, v18

    #@ec
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@ee
    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    #@f0
    if-eqz v4, :cond_6

    #@f2
    move/from16 v0, p4

    #@f4
    and-int/lit16 v4, v0, 0x80

    #@f6
    if-nez v4, :cond_6

    #@f8
    .line 4300
    const-string/jumbo v4, "PackageParser"

    #@fb
    new-instance v5, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v6, "Service exported request ignored due to singleUser: "

    #@103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v5

    #@107
    .line 4301
    move-object/from16 v0, v18

    #@109
    iget-object v6, v0, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    #@10b
    .line 4300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v5

    #@10f
    .line 4301
    const-string/jumbo v6, " at "

    #@112
    .line 4300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v5

    #@116
    .line 4301
    move-object/from16 v0, p0

    #@118
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@11a
    .line 4300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v5

    #@11e
    .line 4301
    const-string/jumbo v6, " "

    #@121
    .line 4300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v5

    #@125
    .line 4302
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@128
    move-result-object v6

    #@129
    .line 4300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v5

    #@12d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v5

    #@131
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@134
    .line 4303
    move-object/from16 v0, v18

    #@136
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@138
    const/4 v5, 0x0

    #@139
    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    #@13b
    .line 4304
    const/16 v20, 0x1

    #@13d
    .line 4308
    .end local v20    # "setExported":Z
    :cond_6
    move-object/from16 v0, v18

    #@13f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@141
    .line 4309
    const/16 v5, 0xd

    #@143
    .line 4310
    const/4 v6, 0x0

    #@144
    .line 4308
    move-object/from16 v0, v19

    #@146
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@149
    move-result v5

    #@14a
    move-object/from16 v0, v18

    #@14c
    iget-object v6, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@14e
    iput-boolean v5, v6, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    #@150
    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->encryptionAware:Z

    #@152
    .line 4311
    move-object/from16 v0, v18

    #@154
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@156
    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    #@158
    if-eqz v4, :cond_7

    #@15a
    .line 4312
    move-object/from16 v0, p1

    #@15c
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@15e
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@160
    or-int/lit16 v5, v5, 0x100

    #@162
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@164
    .line 4316
    :cond_7
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    #@167
    .line 4318
    move-object/from16 v0, p1

    #@169
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16b
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@16d
    and-int/lit8 v4, v4, 0x2

    #@16f
    if-eqz v4, :cond_a

    #@171
    .line 4322
    move-object/from16 v0, v18

    #@173
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@175
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    #@177
    move-object/from16 v0, p1

    #@179
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@17b
    if-ne v4, v5, :cond_a

    #@17d
    .line 4323
    const-string/jumbo v4, "Heavy-weight applications can not have services in main process"

    #@180
    const/4 v5, 0x0

    #@181
    aput-object v4, p5, v5

    #@183
    .line 4324
    const/4 v4, 0x0

    #@184
    return-object v4

    #@185
    .line 4276
    .restart local v20    # "setExported":Z
    :cond_8
    move-object/from16 v0, v18

    #@187
    iget-object v5, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@189
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@18c
    move-result v4

    #@18d
    if-lez v4, :cond_9

    #@18f
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@192
    move-result-object v4

    #@193
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@196
    move-result-object v4

    #@197
    :goto_1
    iput-object v4, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@199
    goto/16 :goto_0

    #@19b
    :cond_9
    const/4 v4, 0x0

    #@19c
    goto :goto_1

    #@19d
    .line 4328
    .end local v20    # "setExported":Z
    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@1a0
    move-result v17

    #@1a1
    .line 4330
    .local v17, "outerDepth":I
    :cond_b
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@1a4
    move-result v22

    #@1a5
    .local v22, "type":I
    const/4 v4, 0x1

    #@1a6
    move/from16 v0, v22

    #@1a8
    if-eq v0, v4, :cond_10

    #@1aa
    .line 4331
    const/4 v4, 0x3

    #@1ab
    move/from16 v0, v22

    #@1ad
    if-ne v0, v4, :cond_c

    #@1af
    .line 4332
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@1b2
    move-result v4

    #@1b3
    move/from16 v0, v17

    #@1b5
    if-le v4, v0, :cond_10

    #@1b7
    .line 4333
    :cond_c
    const/4 v4, 0x3

    #@1b8
    move/from16 v0, v22

    #@1ba
    if-eq v0, v4, :cond_b

    #@1bc
    const/4 v4, 0x4

    #@1bd
    move/from16 v0, v22

    #@1bf
    if-eq v0, v4, :cond_b

    #@1c1
    .line 4337
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1c4
    move-result-object v4

    #@1c5
    const-string/jumbo v5, "intent-filter"

    #@1c8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1cb
    move-result v4

    #@1cc
    if-eqz v4, :cond_e

    #@1ce
    .line 4338
    new-instance v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@1d0
    move-object/from16 v0, v18

    #@1d2
    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    #@1d5
    .line 4339
    .local v9, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v7, 0x1

    #@1d6
    const/4 v8, 0x0

    #@1d7
    move-object/from16 v4, p0

    #@1d9
    move-object/from16 v5, p2

    #@1db
    move-object/from16 v6, p3

    #@1dd
    move-object/from16 v10, p5

    #@1df
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@1e2
    move-result v4

    #@1e3
    if-nez v4, :cond_d

    #@1e5
    .line 4340
    const/4 v4, 0x0

    #@1e6
    return-object v4

    #@1e7
    .line 4343
    :cond_d
    move-object/from16 v0, v18

    #@1e9
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    #@1eb
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ee
    goto :goto_2

    #@1ef
    .line 4344
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1f2
    move-result-object v4

    #@1f3
    const-string/jumbo v5, "meta-data"

    #@1f6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f9
    move-result v4

    #@1fa
    if-eqz v4, :cond_f

    #@1fc
    .line 4345
    move-object/from16 v0, v18

    #@1fe
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    #@200
    move-object/from16 v0, p0

    #@202
    move-object/from16 v1, p2

    #@204
    move-object/from16 v2, p3

    #@206
    move-object/from16 v3, p5

    #@208
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@20b
    move-result-object v4

    #@20c
    move-object/from16 v0, v18

    #@20e
    iput-object v4, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    #@210
    if-nez v4, :cond_b

    #@212
    .line 4347
    const/4 v4, 0x0

    #@213
    return-object v4

    #@214
    .line 4351
    :cond_f
    const-string/jumbo v4, "PackageParser"

    #@217
    new-instance v5, Ljava/lang/StringBuilder;

    #@219
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21c
    const-string/jumbo v6, "Unknown element under <service>: "

    #@21f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v5

    #@223
    .line 4352
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@226
    move-result-object v6

    #@227
    .line 4351
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v5

    #@22b
    .line 4352
    const-string/jumbo v6, " at "

    #@22e
    .line 4351
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v5

    #@232
    .line 4352
    move-object/from16 v0, p0

    #@234
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@236
    .line 4351
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v5

    #@23a
    .line 4352
    const-string/jumbo v6, " "

    #@23d
    .line 4351
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v5

    #@241
    .line 4353
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@244
    move-result-object v6

    #@245
    .line 4351
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v5

    #@249
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24c
    move-result-object v5

    #@24d
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@250
    .line 4354
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@253
    goto/16 :goto_2

    #@255
    .line 4363
    :cond_10
    if-nez v20, :cond_11

    #@257
    .line 4364
    move-object/from16 v0, v18

    #@259
    iget-object v5, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@25b
    move-object/from16 v0, v18

    #@25d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    #@25f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@262
    move-result v4

    #@263
    if-lez v4, :cond_12

    #@265
    const/4 v4, 0x1

    #@266
    :goto_3
    iput-boolean v4, v5, Landroid/content/pm/ServiceInfo;->exported:Z

    #@268
    .line 4367
    :cond_11
    return-object v18

    #@269
    .line 4364
    :cond_12
    const/4 v4, 0x0

    #@26a
    goto :goto_3
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1006
    move-object v0, p3

    #@1
    .line 1009
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    #@4
    .line 1011
    const/4 v5, 0x0

    #@5
    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@7
    .line 1012
    const/4 v5, 0x0

    #@8
    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@a
    .line 1013
    const/4 v5, 0x0

    #@b
    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@d
    .line 1014
    const/4 v5, 0x0

    #@e
    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@10
    .line 1018
    const/4 v1, 0x0

    #@11
    .line 1020
    .local v1, "foundApp":Z
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@14
    move-result v2

    #@15
    .line 1021
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@18
    move-result v4

    #@19
    .local v4, "type":I
    const/4 v5, 0x1

    #@1a
    if-eq v4, v5, :cond_4

    #@1c
    .line 1022
    const/4 v5, 0x3

    #@1d
    if-ne v4, v5, :cond_1

    #@1f
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@22
    move-result v5

    #@23
    if-le v5, v2, :cond_4

    #@25
    .line 1023
    :cond_1
    const/4 v5, 0x3

    #@26
    if-eq v4, v5, :cond_0

    #@28
    const/4 v5, 0x4

    #@29
    if-eq v4, v5, :cond_0

    #@2b
    .line 1027
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 1028
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "application"

    #@32
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_3

    #@38
    .line 1029
    if-eqz v1, :cond_2

    #@3a
    .line 1035
    const-string/jumbo v5, "PackageParser"

    #@3d
    const-string/jumbo v6, "<manifest> has more than one <application>"

    #@40
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 1036
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@46
    goto :goto_0

    #@47
    .line 1041
    :cond_2
    const/4 v1, 0x1

    #@48
    .line 1042
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    #@4b
    move-result v5

    #@4c
    if-nez v5, :cond_0

    #@4e
    .line 1043
    const/4 v5, 0x0

    #@4f
    return-object v5

    #@50
    .line 1053
    :cond_3
    const-string/jumbo v5, "PackageParser"

    #@53
    new-instance v6, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v7, "Unknown element under <manifest>: "

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    .line 1054
    const-string/jumbo v7, " at "

    #@6a
    .line 1053
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    .line 1054
    iget-object v7, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@70
    .line 1053
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    .line 1054
    const-string/jumbo v7, " "

    #@77
    .line 1053
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    .line 1055
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@7e
    move-result-object v7

    #@7f
    .line 1053
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v6

    #@83
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 1056
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@8d
    goto :goto_0

    #@8e
    .line 1061
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    #@90
    .line 1062
    const-string/jumbo v5, "<manifest> does not contain an <application>"

    #@93
    const/4 v6, 0x0

    #@94
    aput-object v5, p6, v6

    #@96
    .line 1063
    const/16 v5, -0x6d

    #@98
    iput v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@9a
    .line 1066
    :cond_5
    return-object p1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 28
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "splitIndex"    # I
    .param p3, "assets"    # Landroid/content/res/AssetManager;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 962
    move-object/from16 v0, p1

    #@2
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@4
    aget-object v21, v3, p2

    #@6
    .line 964
    .local v21, "apkPath":Ljava/lang/String;
    const/4 v3, 0x1

    #@7
    move-object/from16 v0, p0

    #@9
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@b
    .line 965
    move-object/from16 v0, v21

    #@d
    move-object/from16 v1, p0

    #@f
    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@11
    .line 969
    move-object/from16 v0, p3

    #@13
    move-object/from16 v1, v21

    #@15
    move/from16 v2, p4

    #@17
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    #@1a
    move-result v22

    #@1b
    .line 971
    .local v22, "cookie":I
    const/16 v26, 0x0

    #@1d
    .line 972
    .local v26, "res":Landroid/content/res/Resources;
    const/16 v25, 0x0

    #@1f
    .line 974
    .local v25, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v27, Landroid/content/res/Resources;

    #@21
    move-object/from16 v0, p0

    #@23
    iget-object v3, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@25
    const/4 v4, 0x0

    #@26
    move-object/from16 v0, v27

    #@28
    move-object/from16 v1, p3

    #@2a
    invoke-direct {v0, v1, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2d
    .line 976
    .end local v26    # "res":Landroid/content/res/Resources;
    .local v27, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@2f
    .line 975
    const/4 v4, 0x0

    #@30
    const/4 v5, 0x0

    #@31
    const/4 v6, 0x0

    #@32
    const/4 v7, 0x0

    #@33
    const/4 v8, 0x0

    #@34
    const/4 v9, 0x0

    #@35
    const/4 v10, 0x0

    #@36
    const/4 v11, 0x0

    #@37
    const/4 v12, 0x0

    #@38
    const/4 v13, 0x0

    #@39
    const/4 v14, 0x0

    #@3a
    const/4 v15, 0x0

    #@3b
    const/16 v16, 0x0

    #@3d
    const/16 v17, 0x0

    #@3f
    const/16 v18, 0x0

    #@41
    const/16 v19, 0x0

    #@43
    move-object/from16 v3, p3

    #@45
    invoke-virtual/range {v3 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    #@48
    .line 977
    const-string/jumbo v3, "AndroidManifest.xml"

    #@4b
    move-object/from16 v0, p3

    #@4d
    move/from16 v1, v22

    #@4f
    invoke-virtual {v0, v1, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@52
    move-result-object v6

    #@53
    .line 979
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x1

    #@54
    :try_start_2
    new-array v9, v3, [Ljava/lang/String;

    #@56
    .local v9, "outError":[Ljava/lang/String;
    move-object/from16 v3, p0

    #@58
    move-object/from16 v4, p1

    #@5a
    move-object/from16 v5, v27

    #@5c
    move/from16 v7, p4

    #@5e
    move/from16 v8, p2

    #@60
    .line 980
    invoke-direct/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@63
    move-result-object p1

    #@64
    .line 981
    if-nez p1, :cond_0

    #@66
    .line 982
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@68
    move-object/from16 v0, p0

    #@6a
    iget v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@6c
    .line 983
    new-instance v5, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    move-object/from16 v0, v21

    #@73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    const-string/jumbo v7, " (at "

    #@7a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    const-string/jumbo v7, "): "

    #@89
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    const/4 v7, 0x0

    #@8e
    aget-object v7, v9, v7

    #@90
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    .line 982
    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@9b
    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@9c
    .line 986
    .end local v9    # "outError":[Ljava/lang/String;
    :catch_0
    move-exception v23

    #@9d
    .local v23, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v26, v27

    #@9f
    .line 987
    .end local v27    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_3
    throw v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a0
    .line 991
    .end local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v3

    #@a1
    .line 992
    :goto_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a4
    .line 991
    throw v3

    #@a5
    .line 992
    .restart local v9    # "outError":[Ljava/lang/String;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a8
    .line 961
    return-void

    #@a9
    .line 988
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "outError":[Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v26    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v24

    #@aa
    .local v24, "e":Ljava/lang/Exception;
    move-object/from16 v6, v25

    #@ac
    .line 989
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_2
    :try_start_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@ae
    .line 990
    new-instance v4, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v5, "Failed to read manifest from "

    #@b6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v4

    #@ba
    move-object/from16 v0, v21

    #@bc
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v4

    #@c0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v4

    #@c4
    .line 989
    const/16 v5, -0x66

    #@c6
    move-object/from16 v0, v24

    #@c8
    invoke-direct {v3, v5, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@cb
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@cc
    .line 991
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v26    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v3

    #@cd
    move-object/from16 v6, v25

    #@cf
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1

    #@d0
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catchall_2
    move-exception v3

    #@d1
    move-object/from16 v6, v25

    #@d3
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    #@d5
    .end local v27    # "res":Landroid/content/res/Resources;
    .local v26, "res":Landroid/content/res/Resources;
    goto :goto_1

    #@d6
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catchall_3
    move-exception v3

    #@d7
    move-object/from16 v26, v27

    #@d9
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_1

    #@da
    .line 986
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .local v26, "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v23

    #@db
    .restart local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v6, v25

    #@dd
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    #@de
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v23

    #@df
    .restart local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v6, v25

    #@e1
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    #@e3
    .end local v27    # "res":Landroid/content/res/Resources;
    .local v26, "res":Landroid/content/res/Resources;
    goto :goto_0

    #@e4
    .line 988
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_4
    move-exception v24

    #@e5
    .restart local v24    # "e":Ljava/lang/Exception;
    move-object/from16 v6, v25

    #@e7
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    #@e9
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_2

    #@ea
    .end local v24    # "e":Ljava/lang/Exception;
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_5
    move-exception v24

    #@eb
    .restart local v24    # "e":Ljava/lang/Exception;
    move-object/from16 v26, v27

    #@ed
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .locals 21
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3206
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    #@2
    .line 3205
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v18

    #@a
    .line 3209
    .local v18, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x7

    #@b
    const/4 v5, 0x1

    #@c
    .line 3208
    move-object/from16 v0, v18

    #@e
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 3210
    move-object/from16 v0, p1

    #@16
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    #@18
    aget v5, v4, p5

    #@1a
    or-int/lit8 v5, v5, 0x4

    #@1c
    aput v5, v4, p5

    #@1e
    .line 3213
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@21
    move-result v13

    #@22
    .line 3215
    .local v13, "innerDepth":I
    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@25
    move-result v20

    #@26
    .local v20, "type":I
    const/4 v4, 0x1

    #@27
    move/from16 v0, v20

    #@29
    if-eq v0, v4, :cond_12

    #@2b
    .line 3216
    const/4 v4, 0x3

    #@2c
    move/from16 v0, v20

    #@2e
    if-ne v0, v4, :cond_2

    #@30
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@33
    move-result v4

    #@34
    if-le v4, v13, :cond_12

    #@36
    .line 3217
    :cond_2
    const/4 v4, 0x3

    #@37
    move/from16 v0, v20

    #@39
    if-eq v0, v4, :cond_1

    #@3b
    const/4 v4, 0x4

    #@3c
    move/from16 v0, v20

    #@3e
    if-eq v0, v4, :cond_1

    #@40
    .line 3221
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@43
    move-result-object v19

    #@44
    .line 3222
    .local v19, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "activity"

    #@47
    move-object/from16 v0, v19

    #@49
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_4

    #@4f
    .line 3224
    move-object/from16 v0, p1

    #@51
    iget-boolean v11, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@53
    .line 3223
    const/4 v10, 0x0

    #@54
    move-object/from16 v4, p0

    #@56
    move-object/from16 v5, p1

    #@58
    move-object/from16 v6, p2

    #@5a
    move-object/from16 v7, p3

    #@5c
    move/from16 v8, p4

    #@5e
    move-object/from16 v9, p6

    #@60
    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    #@63
    move-result-object v12

    #@64
    .line 3225
    .local v12, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_3

    #@66
    .line 3226
    const/16 v4, -0x6c

    #@68
    move-object/from16 v0, p0

    #@6a
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@6c
    .line 3227
    const/4 v4, 0x0

    #@6d
    return v4

    #@6e
    .line 3230
    :cond_3
    move-object/from16 v0, p1

    #@70
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@75
    goto :goto_0

    #@76
    .line 3232
    .end local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    const-string/jumbo v4, "receiver"

    #@79
    move-object/from16 v0, v19

    #@7b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v4

    #@7f
    if-eqz v4, :cond_6

    #@81
    .line 3233
    const/4 v10, 0x1

    #@82
    const/4 v11, 0x0

    #@83
    move-object/from16 v4, p0

    #@85
    move-object/from16 v5, p1

    #@87
    move-object/from16 v6, p2

    #@89
    move-object/from16 v7, p3

    #@8b
    move/from16 v8, p4

    #@8d
    move-object/from16 v9, p6

    #@8f
    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    #@92
    move-result-object v12

    #@93
    .line 3234
    .restart local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_5

    #@95
    .line 3235
    const/16 v4, -0x6c

    #@97
    move-object/from16 v0, p0

    #@99
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@9b
    .line 3236
    const/4 v4, 0x0

    #@9c
    return v4

    #@9d
    .line 3239
    :cond_5
    move-object/from16 v0, p1

    #@9f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@a1
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a4
    goto/16 :goto_0

    #@a6
    .line 3241
    .end local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_6
    const-string/jumbo v4, "service"

    #@a9
    move-object/from16 v0, v19

    #@ab
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v4

    #@af
    if-eqz v4, :cond_8

    #@b1
    move-object/from16 v4, p0

    #@b3
    move-object/from16 v5, p1

    #@b5
    move-object/from16 v6, p2

    #@b7
    move-object/from16 v7, p3

    #@b9
    move/from16 v8, p4

    #@bb
    move-object/from16 v9, p6

    #@bd
    .line 3242
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    #@c0
    move-result-object v17

    #@c1
    .line 3243
    .local v17, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v17, :cond_7

    #@c3
    .line 3244
    const/16 v4, -0x6c

    #@c5
    move-object/from16 v0, p0

    #@c7
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@c9
    .line 3245
    const/4 v4, 0x0

    #@ca
    return v4

    #@cb
    .line 3248
    :cond_7
    move-object/from16 v0, p1

    #@cd
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@cf
    move-object/from16 v0, v17

    #@d1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d4
    goto/16 :goto_0

    #@d6
    .line 3250
    .end local v17    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_8
    const-string/jumbo v4, "provider"

    #@d9
    move-object/from16 v0, v19

    #@db
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@de
    move-result v4

    #@df
    if-eqz v4, :cond_a

    #@e1
    move-object/from16 v4, p0

    #@e3
    move-object/from16 v5, p1

    #@e5
    move-object/from16 v6, p2

    #@e7
    move-object/from16 v7, p3

    #@e9
    move/from16 v8, p4

    #@eb
    move-object/from16 v9, p6

    #@ed
    .line 3251
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    #@f0
    move-result-object v15

    #@f1
    .line 3252
    .local v15, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v15, :cond_9

    #@f3
    .line 3253
    const/16 v4, -0x6c

    #@f5
    move-object/from16 v0, p0

    #@f7
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@f9
    .line 3254
    const/4 v4, 0x0

    #@fa
    return v4

    #@fb
    .line 3257
    :cond_9
    move-object/from16 v0, p1

    #@fd
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@ff
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@102
    goto/16 :goto_0

    #@104
    .line 3259
    .end local v15    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_a
    const-string/jumbo v4, "activity-alias"

    #@107
    move-object/from16 v0, v19

    #@109
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10c
    move-result v4

    #@10d
    if-eqz v4, :cond_c

    #@10f
    move-object/from16 v4, p0

    #@111
    move-object/from16 v5, p1

    #@113
    move-object/from16 v6, p2

    #@115
    move-object/from16 v7, p3

    #@117
    move/from16 v8, p4

    #@119
    move-object/from16 v9, p6

    #@11b
    .line 3260
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    #@11e
    move-result-object v12

    #@11f
    .line 3261
    .restart local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_b

    #@121
    .line 3262
    const/16 v4, -0x6c

    #@123
    move-object/from16 v0, p0

    #@125
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@127
    .line 3263
    const/4 v4, 0x0

    #@128
    return v4

    #@129
    .line 3266
    :cond_b
    move-object/from16 v0, p1

    #@12b
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@12d
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@130
    goto/16 :goto_0

    #@132
    .line 3268
    .end local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@135
    move-result-object v4

    #@136
    const-string/jumbo v5, "meta-data"

    #@139
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13c
    move-result v4

    #@13d
    if-eqz v4, :cond_d

    #@13f
    .line 3272
    move-object/from16 v0, p1

    #@141
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@143
    move-object/from16 v0, p0

    #@145
    move-object/from16 v1, p2

    #@147
    move-object/from16 v2, p3

    #@149
    move-object/from16 v3, p6

    #@14b
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@14e
    move-result-object v4

    #@14f
    move-object/from16 v0, p1

    #@151
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@153
    if-nez v4, :cond_1

    #@155
    .line 3274
    const/16 v4, -0x6c

    #@157
    move-object/from16 v0, p0

    #@159
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@15b
    .line 3275
    const/4 v4, 0x0

    #@15c
    return v4

    #@15d
    .line 3278
    :cond_d
    const-string/jumbo v4, "uses-library"

    #@160
    move-object/from16 v0, v19

    #@162
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@165
    move-result v4

    #@166
    if-eqz v4, :cond_10

    #@168
    .line 3280
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    #@16a
    .line 3279
    move-object/from16 v0, p2

    #@16c
    move-object/from16 v1, p3

    #@16e
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@171
    move-result-object v18

    #@172
    .line 3285
    const/4 v4, 0x0

    #@173
    .line 3284
    move-object/from16 v0, v18

    #@175
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@178
    move-result-object v14

    #@179
    .line 3287
    .local v14, "lname":Ljava/lang/String;
    const/4 v4, 0x1

    #@17a
    .line 3288
    const/4 v5, 0x1

    #@17b
    .line 3286
    move-object/from16 v0, v18

    #@17d
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@180
    move-result v16

    #@181
    .line 3290
    .local v16, "req":Z
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    #@184
    .line 3292
    if-eqz v14, :cond_e

    #@186
    .line 3293
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@189
    move-result-object v14

    #@18a
    .line 3294
    if-eqz v16, :cond_f

    #@18c
    .line 3296
    move-object/from16 v0, p1

    #@18e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@190
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@193
    move-result-object v4

    #@194
    move-object/from16 v0, p1

    #@196
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@198
    .line 3298
    move-object/from16 v0, p1

    #@19a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@19c
    .line 3297
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@19f
    move-result-object v4

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@1a4
    .line 3308
    :cond_e
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1a7
    goto/16 :goto_0

    #@1a9
    .line 3301
    :cond_f
    move-object/from16 v0, p1

    #@1ab
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@1ad
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    #@1b0
    move-result v4

    #@1b1
    if-nez v4, :cond_e

    #@1b3
    .line 3303
    move-object/from16 v0, p1

    #@1b5
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@1b7
    .line 3302
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@1ba
    move-result-object v4

    #@1bb
    move-object/from16 v0, p1

    #@1bd
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@1bf
    goto :goto_1

    #@1c0
    .line 3310
    .end local v14    # "lname":Ljava/lang/String;
    .end local v16    # "req":Z
    :cond_10
    const-string/jumbo v4, "uses-package"

    #@1c3
    move-object/from16 v0, v19

    #@1c5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c8
    move-result v4

    #@1c9
    if-eqz v4, :cond_11

    #@1cb
    .line 3313
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1ce
    goto/16 :goto_0

    #@1d0
    .line 3317
    :cond_11
    const-string/jumbo v4, "PackageParser"

    #@1d3
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d8
    const-string/jumbo v6, "Unknown element under <application>: "

    #@1db
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v5

    #@1df
    move-object/from16 v0, v19

    #@1e1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v5

    #@1e5
    .line 3318
    const-string/jumbo v6, " at "

    #@1e8
    .line 3317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v5

    #@1ec
    .line 3318
    move-object/from16 v0, p0

    #@1ee
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@1f0
    .line 3317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v5

    #@1f4
    .line 3318
    const-string/jumbo v6, " "

    #@1f7
    .line 3317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v5

    #@1fb
    .line 3319
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@1fe
    move-result-object v6

    #@1ff
    .line 3317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v5

    #@203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@206
    move-result-object v5

    #@207
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20a
    .line 3320
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@20d
    goto/16 :goto_0

    #@20f
    .line 3330
    .end local v19    # "tagName":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x1

    #@210
    return v4
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2216
    new-instance v0, Landroid/content/pm/FeatureInfo;

    #@4
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    #@7
    .line 2218
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    #@9
    .line 2217
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v1

    #@d
    .line 2221
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iput-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@13
    .line 2224
    const/4 v2, 0x3

    #@14
    .line 2223
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@17
    move-result v2

    #@18
    iput v2, v0, Landroid/content/pm/FeatureInfo;->version:I

    #@1a
    .line 2225
    iget-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 2226
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@21
    move-result v2

    #@22
    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@24
    .line 2231
    :cond_0
    const/4 v2, 0x2

    #@25
    .line 2230
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 2232
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    #@2d
    or-int/lit8 v2, v2, 0x1

    #@2f
    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    #@31
    .line 2234
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@34
    .line 2235
    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2241
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    #@4
    .line 2240
    invoke-virtual {p2, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v3

    #@8
    .line 2245
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 2248
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    #@d
    .line 2249
    .local v1, "maxSdkVersion":I
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@10
    move-result-object v4

    #@11
    .line 2251
    .local v4, "val":Landroid/util/TypedValue;
    if-eqz v4, :cond_0

    #@13
    .line 2252
    iget v5, v4, Landroid/util/TypedValue;->type:I

    #@15
    const/16 v6, 0x10

    #@17
    if-lt v5, v6, :cond_0

    #@19
    iget v5, v4, Landroid/util/TypedValue;->type:I

    #@1b
    const/16 v6, 0x1f

    #@1d
    if-gt v5, v6, :cond_0

    #@1f
    .line 2253
    iget v1, v4, Landroid/util/TypedValue;->data:I

    #@21
    .line 2257
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@24
    .line 2259
    if-eqz v1, :cond_1

    #@26
    sget v5, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@28
    if-lt v1, v5, :cond_2

    #@2a
    .line 2260
    :cond_1
    if-eqz v2, :cond_2

    #@2c
    .line 2261
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    .line 2262
    .local v0, "index":I
    const/4 v5, -0x1

    #@33
    if-ne v0, v5, :cond_3

    #@35
    .line 2263
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    .line 2272
    .end local v0    # "index":I
    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@41
    .line 2273
    return v8

    #@42
    .line 2265
    .restart local v0    # "index":I
    :cond_3
    const-string/jumbo v5, "PackageParser"

    #@45
    new-instance v6, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v7, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    .line 2266
    const-string/jumbo v7, " in package: "

    #@58
    .line 2265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    .line 2266
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@5e
    .line 2265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    .line 2266
    const-string/jumbo v7, " at: "

    #@65
    .line 2265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    .line 2267
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    .line 2265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v6

    #@75
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    goto :goto_0
.end method

.method private static parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 4469
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPackageVerifier:[I

    #@4
    .line 4468
    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v3

    #@8
    .line 4471
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 4475
    .local v1, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    #@d
    .line 4474
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 4477
    .local v0, "encodedPublicKey":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@14
    .line 4479
    if-eqz v1, :cond_0

    #@16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 4480
    :cond_0
    const-string/jumbo v4, "PackageParser"

    #@1f
    const-string/jumbo v5, "verifier package name was null; skipping"

    #@22
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 4481
    return-object v7

    #@26
    .line 4484
    :cond_1
    invoke-static {v0}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@29
    move-result-object v2

    #@2a
    .line 4485
    .local v2, "publicKey":Ljava/security/PublicKey;
    if-nez v2, :cond_2

    #@2c
    .line 4486
    const-string/jumbo v4, "PackageParser"

    #@2f
    new-instance v5, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v6, "Unable to parse verifier public key for "

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 4487
    return-object v7

    #@47
    .line 4490
    :cond_2
    new-instance v4, Landroid/content/pm/VerifierInfo;

    #@49
    invoke-direct {v4, v1, v2}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    #@4c
    return-object v4
.end method

.method public static populateCertificates(Landroid/content/pm/PackageParser$Package;[[Ljava/security/cert/Certificate;)V
    .locals 9
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "certificates"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1089
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@3
    .line 1090
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@5
    .line 1091
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@7
    .line 1093
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@9
    .line 1095
    :try_start_0
    invoke-static {p1}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    #@c
    move-result-object v6

    #@d
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1101
    new-instance v6, Landroid/util/ArraySet;

    #@11
    array-length v7, p1

    #@12
    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    #@15
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@17
    .line 1102
    const/4 v3, 0x0

    #@18
    .local v3, "i":I
    :goto_0
    array-length v6, p1

    #@19
    if-ge v3, v6, :cond_0

    #@1b
    .line 1103
    aget-object v5, p1, v3

    #@1d
    .line 1104
    .local v5, "signerCerts":[Ljava/security/cert/Certificate;
    const/4 v6, 0x0

    #@1e
    aget-object v4, v5, v6

    #@20
    .line 1105
    .local v4, "signerCert":Ljava/security/cert/Certificate;
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@22
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@29
    .line 1102
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1096
    .end local v3    # "i":I
    .end local v4    # "signerCert":Ljava/security/cert/Certificate;
    .end local v5    # "signerCerts":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v2

    #@2d
    .line 1098
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    #@2f
    .line 1099
    new-instance v7, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v8, "Failed to collect certificates from "

    #@37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    .line 1098
    const/16 v8, -0x67

    #@47
    invoke-direct {v6, v8, v7, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@4a
    throw v6

    #@4b
    .line 1108
    .end local v2    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v3    # "i":I
    :cond_0
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@4d
    if-eqz v6, :cond_1

    #@4f
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v0

    #@55
    .line 1109
    .local v0, "childCount":I
    :goto_1
    const/4 v3, 0x0

    #@56
    :goto_2
    if-ge v3, v0, :cond_2

    #@58
    .line 1110
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Landroid/content/pm/PackageParser$Package;

    #@60
    .line 1111
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@62
    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@64
    .line 1112
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@66
    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@68
    .line 1113
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@6a
    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@6c
    .line 1109
    add-int/lit8 v3, v3, 0x1

    #@6e
    goto :goto_2

    #@6f
    .line 1108
    .end local v0    # "childCount":I
    .end local v1    # "childPkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v0, 0x0

    #@70
    .restart local v0    # "childCount":I
    goto :goto_1

    #@71
    .line 1088
    :cond_2
    return-void
.end method

.method public static readFullyIgnoringContents(Ljava/io/InputStream;)J
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5731
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    .line 5732
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    #@b
    .line 5733
    const/16 v3, 0x1000

    #@d
    new-array v0, v3, [B

    #@f
    .line 5736
    :cond_0
    const/4 v2, 0x0

    #@10
    .line 5737
    .local v2, "n":I
    const/4 v1, 0x0

    #@11
    .line 5738
    .local v1, "count":I
    :goto_0
    array-length v3, v0

    #@12
    const/4 v4, 0x0

    #@13
    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    #@16
    move-result v2

    #@17
    const/4 v3, -0x1

    #@18
    if-eq v2, v3, :cond_1

    #@1a
    .line 5739
    add-int/2addr v1, v2

    #@1b
    goto :goto_0

    #@1c
    .line 5742
    :cond_1
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@21
    .line 5743
    int-to-long v4, v1

    #@22
    return-wide v4
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0
    .param p0, "compatibilityModeEnabled"    # Z

    #@0
    .prologue
    .line 5725
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    #@2
    .line 5724
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1504
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 1505
    .local v0, "N":I
    new-array v2, v0, [B

    #@6
    .line 1506
    .local v2, "sig":[B
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 1507
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v3

    #@d
    int-to-byte v3, v3

    #@e
    aput-byte v3, v2, v1

    #@10
    .line 1506
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1509
    :cond_0
    new-instance v3, Landroid/content/pm/Signature;

    #@15
    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>([B)V

    #@18
    return-object v3
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 5365
    sget-boolean v2, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 5366
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    #@9
    .line 5368
    :cond_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 5369
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@f
    const/high16 v3, 0x800000

    #@11
    or-int/2addr v2, v3

    #@12
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@14
    .line 5373
    :goto_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 5374
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1a
    const/high16 v3, 0x40000000    # 2.0f

    #@1c
    or-int/2addr v2, v3

    #@1d
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1f
    .line 5378
    :goto_1
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    #@21
    if-eqz v2, :cond_4

    #@23
    .line 5379
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@25
    or-int/lit8 v2, v2, 0x1

    #@27
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@29
    .line 5383
    :goto_2
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@2b
    if-ne v2, v0, :cond_5

    #@2d
    .line 5384
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@2f
    .line 5391
    :cond_1
    :goto_3
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@31
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@33
    .line 5363
    return-void

    #@34
    .line 5371
    :cond_2
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@36
    const v3, -0x800001

    #@39
    and-int/2addr v2, v3

    #@3a
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3c
    goto :goto_0

    #@3d
    .line 5376
    :cond_3
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3f
    const v3, -0x40000001    # -1.9999999f

    #@42
    and-int/2addr v2, v3

    #@43
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@45
    goto :goto_1

    #@46
    .line 5381
    :cond_4
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@48
    and-int/lit8 v2, v2, -0x2

    #@4a
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@4c
    goto :goto_2

    #@4d
    .line 5385
    :cond_5
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@4f
    const/4 v3, 0x4

    #@50
    if-ne v2, v3, :cond_7

    #@52
    .line 5386
    const v2, 0x8000

    #@55
    and-int/2addr v2, p1

    #@56
    if-eqz v2, :cond_6

    #@58
    :goto_4
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@5a
    goto :goto_3

    #@5b
    :cond_6
    move v0, v1

    #@5c
    goto :goto_4

    #@5d
    .line 5387
    :cond_7
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@5f
    const/4 v2, 0x2

    #@60
    if-eq v0, v2, :cond_8

    #@62
    .line 5388
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@64
    const/4 v2, 0x3

    #@65
    if-ne v0, v2, :cond_1

    #@67
    .line 5389
    :cond_8
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@69
    goto :goto_3
.end method

.method private static validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requireSeparator"    # Z
    .param p2, "requireFilename"    # Z

    #@0
    .prologue
    .line 1362
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 1363
    .local v0, "N":I
    const/4 v3, 0x0

    #@5
    .line 1364
    .local v3, "hasSep":Z
    const/4 v2, 0x1

    #@6
    .line 1365
    .local v2, "front":Z
    const/4 v4, 0x0

    #@7
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_7

    #@9
    .line 1366
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v1

    #@d
    .line 1367
    .local v1, "c":C
    const/16 v5, 0x61

    #@f
    if-lt v1, v5, :cond_2

    #@11
    const/16 v5, 0x7a

    #@13
    if-gt v1, v5, :cond_2

    #@15
    .line 1368
    :cond_0
    const/4 v2, 0x0

    #@16
    .line 1365
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1367
    :cond_2
    const/16 v5, 0x41

    #@1b
    if-lt v1, v5, :cond_3

    #@1d
    const/16 v5, 0x5a

    #@1f
    if-le v1, v5, :cond_0

    #@21
    .line 1371
    :cond_3
    if-nez v2, :cond_5

    #@23
    .line 1372
    const/16 v5, 0x30

    #@25
    if-lt v1, v5, :cond_4

    #@27
    const/16 v5, 0x39

    #@29
    if-le v1, v5, :cond_1

    #@2b
    :cond_4
    const/16 v5, 0x5f

    #@2d
    if-eq v1, v5, :cond_1

    #@2f
    .line 1376
    :cond_5
    const/16 v5, 0x2e

    #@31
    if-ne v1, v5, :cond_6

    #@33
    .line 1377
    const/4 v3, 0x1

    #@34
    .line 1378
    const/4 v2, 0x1

    #@35
    .line 1379
    goto :goto_1

    #@36
    .line 1381
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v6, "bad character \'"

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    const-string/jumbo v6, "\'"

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    return-object v5

    #@52
    .line 1383
    .end local v1    # "c":C
    :cond_7
    if-eqz p2, :cond_8

    #@54
    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@57
    move-result v5

    #@58
    if-eqz v5, :cond_9

    #@5a
    .line 1386
    :cond_8
    if-nez v3, :cond_a

    #@5c
    if-eqz p1, :cond_a

    #@5e
    .line 1387
    const-string/jumbo v5, "must have at least one \'.\' separator"

    #@61
    .line 1386
    :goto_2
    return-object v5

    #@62
    .line 1384
    :cond_9
    const-string/jumbo v5, "Invalid filename"

    #@65
    return-object v5

    #@66
    .line 1387
    :cond_a
    const/4 v5, 0x0

    #@67
    goto :goto_2
.end method


# virtual methods
.method public parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 874
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@3
    move-result-object v1

    #@4
    .line 875
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 876
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    #@a
    if-nez v3, :cond_0

    #@c
    .line 877
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@e
    .line 878
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "Not a coreApp: "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 877
    const/16 v5, -0x6c

    #@24
    invoke-direct {v3, v5, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 882
    :cond_0
    new-instance v0, Landroid/content/res/AssetManager;

    #@2a
    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    #@2d
    .line 884
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    #@30
    move-result-object v2

    #@31
    .line 885
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    #@38
    .line 886
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    #@3a
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 889
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@40
    .line 887
    return-object v2

    #@41
    .line 888
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    #@42
    .line 889
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    .line 888
    throw v3
.end method

.method public parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 798
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 799
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 801
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 448
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@2
    .line 447
    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0
    .param p1, "onlyCoreApps"    # Z

    #@0
    .prologue
    .line 444
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    #@2
    .line 443
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0
    .param p1, "procs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 435
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@2
    .line 434
    return-void
.end method
