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
.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 658
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    #@db
    const/4 v1, 0x0

    #@dc
    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$SplitNameComparator;)V

    #@df
    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    #@e1
    .line 5740
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
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 261
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@6
    .line 425
    new-instance v0, Landroid/util/DisplayMetrics;

    #@8
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@b
    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@d
    .line 426
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@f
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@12
    .line 424
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
    .line 2273
    if-eqz p1, :cond_0

    #@6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v3

    #@a
    if-gtz v3, :cond_1

    #@c
    .line 2274
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
    .line 2275
    return-object v6

    #@23
    .line 2277
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 2278
    .local v2, "cls":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    .line 2279
    .local v1, "c":C
    if-ne v1, v4, :cond_2

    #@2d
    .line 2280
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
    .line 2282
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    #@46
    move-result v3

    #@47
    if-gez v3, :cond_3

    #@49
    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4e
    .line 2284
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 2285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 2286
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
    .line 2288
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_3
    const/16 v3, 0x61

    #@5f
    if-lt v1, v3, :cond_4

    #@61
    const/16 v3, 0x7a

    #@63
    if-gt v1, v3, :cond_4

    #@65
    .line 2289
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    return-object v3

    #@6a
    .line 2291
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v4, "Bad class name "

    #@72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    const-string/jumbo v4, " in package "

    #@7d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    aput-object v3, p2, v5

    #@8b
    .line 2292
    return-object v6
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
    .line 2297
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 2298
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 2299
    .local v0, "c":C
    if-eqz p0, :cond_2

    #@d
    const/16 v4, 0x3a

    #@f
    if-ne v0, v4, :cond_2

    #@11
    .line 2300
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@14
    move-result v4

    #@15
    const/4 v5, 0x2

    #@16
    if-ge v4, v5, :cond_0

    #@18
    .line 2301
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
    .line 2302
    const-string/jumbo v5, ": must be at least two characters"

    #@41
    .line 2301
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
    .line 2303
    return-object v7

    #@4c
    .line 2305
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 2306
    .local v3, "subName":Ljava/lang/String;
    invoke-static {v3, v6, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .line 2307
    .local v1, "nameError":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@56
    .line 2308
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
    .line 2309
    const-string/jumbo v5, ": "

    #@7f
    .line 2308
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
    .line 2310
    return-object v7

    #@8e
    .line 2312
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
    .line 2314
    .end local v1    # "nameError":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v8, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    .line 2315
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
    .line 2320
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@b6
    move-result-object v4

    #@b7
    return-object v4

    #@b8
    .line 2316
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
    .line 2317
    const-string/jumbo v5, ": "

    #@e1
    .line 2316
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
    .line 2318
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
    .line 2326
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
    .line 2329
    :cond_0
    if-eqz p4, :cond_5

    #@f
    .line 2330
    array-length v2, p4

    #@10
    add-int/lit8 v0, v2, -0x1

    #@12
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    #@14
    .line 2331
    aget-object v1, p4, v0

    #@16
    .line 2332
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
    .line 2333
    :cond_1
    return-object p0

    #@29
    .line 2327
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
    .line 2330
    .restart local v0    # "i":I
    .restart local v1    # "sp":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@30
    goto :goto_0

    #@31
    .line 2337
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
    .line 2338
    :cond_6
    return-object p1

    #@3a
    .line 2340
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
    .line 2345
    if-nez p2, :cond_0

    #@3
    .line 2346
    return-object p1

    #@4
    .line 2348
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v0

    #@8
    if-gtz v0, :cond_1

    #@a
    .line 2349
    return-object v1

    #@b
    .line 2351
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
    .line 473
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->installed:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 474
    :cond_0
    and-int/lit16 v2, p0, 0x2000

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 473
    :cond_1
    :goto_0
    return v0

    #@f
    :cond_2
    move v0, v1

    #@10
    .line 474
    goto :goto_0
.end method

.method public static closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .locals 1
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;

    #@0
    .prologue
    .line 5759
    if-eqz p0, :cond_0

    #@2
    .line 5761
    :try_start_0
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 5758
    :cond_0
    :goto_0
    return-void

    #@6
    .line 5762
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
    .line 1119
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;I)V

    #@3
    .line 1120
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
    .line 1121
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    #@10
    .line 1122
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/content/pm/PackageParser$Package;

    #@18
    .line 1123
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@1a
    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@1c
    .line 1124
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@1e
    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@20
    .line 1125
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@22
    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@24
    .line 1121
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_1

    #@27
    .line 1120
    .end local v0    # "childCount":I
    .end local v1    # "childPkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@28
    .restart local v0    # "childCount":I
    goto :goto_0

    #@29
    .line 1118
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
    .line 1151
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    .line 1154
    .local v5, "apkPath":Ljava/lang/String;
    const/16 v24, 0x0

    #@6
    .line 1156
    .local v24, "verified":Z
    const/4 v4, 0x0

    #@7
    .line 1157
    .local v4, "allSignersCerts":[[Ljava/security/cert/Certificate;
    const/16 v20, 0x0

    #@9
    .line 1159
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
    .line 1160
    invoke-static {v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    #@19
    move-result-object v4

    #@1a
    .line 1161
    .local v4, "allSignersCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v4}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v20

    #@1e
    .line 1163
    .local v20, "signatures":[Landroid/content/pm/Signature;
    const/16 v24, 0x1

    #@20
    .line 1173
    const-wide/32 v26, 0x40000

    #@23
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    #@26
    .line 1176
    .end local v4    # "allSignersCerts":[[Ljava/security/cert/Certificate;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    :goto_0
    if-eqz v24, :cond_1

    #@28
    .line 1177
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@2c
    move-object/from16 v25, v0

    #@2e
    if-nez v25, :cond_0

    #@30
    .line 1178
    move-object/from16 v0, p0

    #@32
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@34
    .line 1179
    move-object/from16 v0, v20

    #@36
    move-object/from16 v1, p0

    #@38
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@3a
    .line 1180
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
    .line 1181
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
    .line 1182
    aget-object v22, v4, v14

    #@52
    .line 1183
    .local v22, "signerCerts":[Ljava/security/cert/Certificate;
    const/16 v25, 0x0

    #@54
    aget-object v21, v22, v25

    #@56
    .line 1184
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
    .line 1181
    add-int/lit8 v14, v14, 0x1

    #@65
    goto :goto_1

    #@66
    .line 1166
    .end local v14    # "i":I
    .end local v21    # "signerCert":Ljava/security/cert/Certificate;
    .end local v22    # "signerCerts":[Ljava/security/cert/Certificate;
    .local v20, "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v7

    #@67
    .line 1168
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@69
    .line 1169
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
    .line 1170
    const-string/jumbo v27, " using APK Signature Scheme v2"

    #@7e
    .line 1169
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v26

    #@82
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v26

    #@86
    .line 1168
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
    .line 1172
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    #@93
    .line 1173
    const-wide/32 v26, 0x40000

    #@96
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    #@99
    .line 1172
    throw v25

    #@9a
    .line 1164
    :catch_1
    move-exception v6

    #@9b
    .line 1173
    .local v6, "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    const-wide/32 v26, 0x40000

    #@9e
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    #@a1
    goto :goto_0

    #@a2
    .line 1187
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
    .line 1188
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@b4
    .line 1190
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
    .line 1189
    const/16 v27, -0x68

    #@cc
    .line 1188
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
    .line 1198
    :cond_1
    const/16 v16, 0x0

    #@d8
    .line 1200
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
    .line 1205
    and-int/lit8 v25, p2, 0x40

    #@e7
    if-nez v25, :cond_2

    #@e9
    const/16 v19, 0x1

    #@eb
    .line 1206
    .local v19, "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_2
    new-instance v17, Landroid/util/jar/StrictJarFile;

    #@ed
    .line 1208
    if-eqz v24, :cond_3

    #@ef
    const/16 v25, 0x0

    #@f1
    .line 1206
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
    .line 1210
    .local v17, "jarFile":Landroid/util/jar/StrictJarFile;
    const-wide/32 v26, 0x40000

    #@fd
    :try_start_3
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    #@100
    .line 1213
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
    .line 1214
    .local v18, "manifestEntry":Ljava/util/zip/ZipEntry;
    if-nez v18, :cond_4

    #@10d
    .line 1215
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@10f
    .line 1216
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
    .line 1215
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
    .line 1274
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v8

    #@139
    .local v8, "e":Ljava/security/GeneralSecurityException;
    move-object/from16 v16, v17

    #@13b
    .line 1275
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_4
    :try_start_4
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@13d
    .line 1276
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
    .line 1275
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
    .line 1280
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catchall_1
    move-exception v25

    #@160
    .line 1281
    :goto_5
    invoke-static/range {v16 .. v16}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    #@163
    .line 1280
    throw v25

    #@164
    .line 1205
    .restart local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    :cond_2
    const/16 v19, 0x0

    #@166
    .restart local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    goto :goto_2

    #@167
    .line 1208
    :cond_3
    const/16 v25, 0x1

    #@169
    goto :goto_3

    #@16a
    .line 1220
    .end local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    if-eqz v24, :cond_5

    #@16c
    .line 1281
    invoke-static/range {v17 .. v17}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    #@16f
    .line 1221
    return-void

    #@170
    .line 1225
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
    .line 1226
    new-instance v23, Ljava/util/ArrayList;

    #@17f
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    #@182
    .line 1227
    .local v23, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    move-object/from16 v0, v23

    #@184
    move-object/from16 v1, v18

    #@186
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@189
    .line 1230
    and-int/lit8 v25, p2, 0x40

    #@18b
    if-nez v25, :cond_7

    #@18d
    .line 1231
    invoke-virtual/range {v17 .. v17}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    #@190
    move-result-object v15

    #@191
    .line 1232
    .local v15, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_6
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@194
    move-result v25

    #@195
    if-eqz v25, :cond_7

    #@197
    .line 1233
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19a
    move-result-object v9

    #@19b
    check-cast v9, Ljava/util/zip/ZipEntry;

    #@19d
    .line 1235
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    #@1a0
    move-result v25

    #@1a1
    if-nez v25, :cond_6

    #@1a3
    .line 1237
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@1a6
    move-result-object v12

    #@1a7
    .line 1238
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
    .line 1239
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
    .line 1241
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
    .line 1277
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
    .line 1278
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_7
    :try_start_6
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@1c8
    .line 1279
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
    .line 1278
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
    .line 1248
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
    .line 1249
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v17

    #@1fc
    invoke-static {v0, v9}, Landroid/content/pm/PackageParser;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    #@1ff
    move-result-object v11

    #@200
    .line 1250
    .local v11, "entryCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@203
    move-result v25

    #@204
    if-eqz v25, :cond_9

    #@206
    .line 1251
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@208
    .line 1252
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
    .line 1253
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@224
    move-result-object v27

    #@225
    .line 1252
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v26

    #@229
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22c
    move-result-object v26

    #@22d
    .line 1251
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
    .line 1280
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
    .line 1255
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
    .line 1257
    .local v13, "entrySignatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    #@244
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@246
    move-object/from16 v25, v0

    #@248
    if-nez v25, :cond_a

    #@24a
    .line 1258
    move-object/from16 v0, p0

    #@24c
    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@24e
    .line 1259
    move-object/from16 v0, p0

    #@250
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@252
    .line 1260
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
    .line 1261
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
    .line 1262
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
    .line 1261
    add-int/lit8 v14, v14, 0x1

    #@27a
    goto :goto_8

    #@27b
    .line 1265
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
    .line 1266
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    #@28b
    .line 1267
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
    .line 1268
    const-string/jumbo v27, " has mismatched certificates at entry "

    #@2a0
    .line 1267
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v26

    #@2a4
    .line 1269
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@2a7
    move-result-object v27

    #@2a8
    .line 1267
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
    .line 1266
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
    .line 1273
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
    .line 1281
    invoke-static/range {v17 .. v17}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    #@2c5
    .line 1150
    return-void

    #@2c6
    .line 1274
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
    .line 1277
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
    .line 1131
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@6
    .line 1132
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@8
    .line 1133
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@a
    .line 1135
    const-string/jumbo v1, "collectCertificates"

    #@d
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@10
    .line 1137
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@12
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@14
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@17
    invoke-static {p0, v1, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    #@1a
    .line 1139
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@1c
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    .line 1140
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
    .line 1141
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
    .line 1140
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 1145
    .end local v0    # "i":I
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3a
    .line 1130
    return-void

    #@3b
    .line 1144
    :catchall_0
    move-exception v1

    #@3c
    .line 1145
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3f
    .line 1144
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
    .line 1287
    array-length v2, p0

    #@1
    new-array v1, v2, [Landroid/content/pm/Signature;

    #@3
    .line 1288
    .local v1, "res":[Landroid/content/pm/Signature;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1289
    new-instance v2, Landroid/content/pm/Signature;

    #@9
    aget-object v3, p0, v0

    #@b
    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    #@e
    aput-object v2, v1, v0

    #@10
    .line 1288
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1291
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
    .line 5337
    if-eqz p4, :cond_0

    #@4
    .line 5340
    return v4

    #@5
    .line 5342
    :cond_0
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@7
    if-eqz v2, :cond_2

    #@9
    .line 5343
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@b
    if-ne v2, v4, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 5344
    .local v0, "enabled":Z
    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@10
    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@12
    if-eq v2, v0, :cond_2

    #@14
    .line 5345
    return v4

    #@15
    .line 5343
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    #@16
    .restart local v0    # "enabled":Z
    goto :goto_0

    #@17
    .line 5348
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
    .line 5349
    .local v1, "suspended":Z
    :goto_1
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    #@23
    if-eq v2, v1, :cond_4

    #@25
    .line 5350
    return v4

    #@26
    .line 5348
    .end local v1    # "suspended":Z
    :cond_3
    const/4 v1, 0x0

    #@27
    .restart local v1    # "suspended":Z
    goto :goto_1

    #@28
    .line 5352
    :cond_4
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    #@2a
    if-eqz v2, :cond_5

    #@2c
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    #@2e
    if-eqz v2, :cond_6

    #@30
    .line 5353
    :cond_5
    return v4

    #@31
    .line 5355
    :cond_6
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    #@33
    if-eqz v2, :cond_7

    #@35
    .line 5356
    return v4

    #@36
    .line 5358
    :cond_7
    and-int/lit16 v2, p0, 0x80

    #@38
    if-eqz v2, :cond_9

    #@3a
    .line 5359
    if-nez p3, :cond_8

    #@3c
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@3e
    if-eqz v2, :cond_9

    #@40
    .line 5360
    :cond_8
    return v4

    #@41
    .line 5362
    :cond_9
    and-int/lit16 v2, p0, 0x400

    #@43
    if-eqz v2, :cond_a

    #@45
    .line 5363
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@47
    if-eqz v2, :cond_a

    #@49
    .line 5364
    return v4

    #@4a
    .line 5366
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
    .line 5528
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 5529
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 5530
    return-object v2

    #@b
    .line 5534
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    #@d
    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    #@10
    .line 5535
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
    .line 5536
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
    .line 5512
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 5513
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 5514
    return-object v2

    #@b
    .line 5516
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
    .line 5517
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@17
    return-object v1

    #@18
    .line 5520
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    #@1a
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1c
    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    #@1f
    .line 5521
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@21
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@23
    .line 5522
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    #@25
    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@28
    move-result-object v1

    #@29
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2b
    .line 5523
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
    .line 5446
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 5447
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 5448
    return-object v2

    #@b
    .line 5452
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@d
    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    #@10
    .line 5453
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    #@13
    .line 5454
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 5455
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@19
    const/high16 v2, 0x200000

    #@1b
    or-int/2addr v1, v2

    #@1c
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1e
    .line 5459
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    #@21
    .line 5460
    return-object v0

    #@22
    .line 5457
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
    .line 5371
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
    .line 5408
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 5409
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
    .line 5412
    invoke-static {p1, p0, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_3

    #@16
    .line 5413
    const v1, 0x8000

    #@19
    and-int/2addr v1, p1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 5414
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@1e
    const/4 v2, 0x4

    #@1f
    if-eq v1, v2, :cond_3

    #@21
    .line 5422
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    invoke-static {v1, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    #@26
    .line 5423
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@28
    return-object v1

    #@29
    .line 5410
    :cond_2
    return-object v2

    #@2a
    .line 5427
    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@2c
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2e
    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    #@31
    .line 5428
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    #@34
    .line 5429
    and-int/lit16 v1, p1, 0x80

    #@36
    if-eqz v1, :cond_4

    #@38
    .line 5430
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@3a
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@3c
    .line 5432
    :cond_4
    and-int/lit16 v1, p1, 0x400

    #@3e
    if-eqz v1, :cond_5

    #@40
    .line 5433
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@42
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@44
    .line 5435
    :cond_5
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    #@46
    if-eqz v1, :cond_6

    #@48
    .line 5436
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4a
    const/high16 v2, 0x200000

    #@4c
    or-int/2addr v1, v2

    #@4d
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4f
    .line 5440
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    #@52
    .line 5441
    return-object v0

    #@53
    .line 5438
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
    .line 5660
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 5661
    :cond_0
    and-int/lit16 v1, p1, 0x80

    #@6
    if-nez v1, :cond_1

    #@8
    .line 5662
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@a
    return-object v1

    #@b
    .line 5664
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    #@d
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@f
    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    #@12
    .line 5665
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    #@14
    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    #@16
    .line 5666
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
    .line 465
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
    .line 464
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
    .line 484
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
    .line 487
    new-instance v10, Landroid/content/pm/PackageInfo;

    #@16
    invoke-direct {v10}, Landroid/content/pm/PackageInfo;-><init>()V

    #@19
    .line 488
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
    .line 489
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
    .line 490
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
    .line 491
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
    .line 492
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
    .line 493
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
    .line 494
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
    .line 495
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
    .line 496
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
    .line 497
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
    .line 498
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
    .line 499
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
    .line 500
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
    .line 501
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
    .line 503
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
    .line 504
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
    .line 505
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
    .line 506
    move-wide/from16 v0, p3

    #@d7
    iput-wide v0, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    #@d9
    .line 507
    move-wide/from16 v0, p5

    #@db
    iput-wide v0, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    #@dd
    .line 508
    move/from16 v0, p2

    #@df
    and-int/lit16 v0, v0, 0x100

    #@e1
    move/from16 v16, v0

    #@e3
    if-eqz v16, :cond_2

    #@e5
    .line 509
    move-object/from16 v0, p1

    #@e7
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->gids:[I

    #@e9
    .line 511
    :cond_2
    move/from16 v0, p2

    #@eb
    and-int/lit16 v0, v0, 0x4000

    #@ed
    move/from16 v16, v0

    #@ef
    if-eqz v16, :cond_5

    #@f1
    .line 512
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
    .line 513
    .local v4, "N":I
    :goto_0
    if-lez v4, :cond_3

    #@105
    .line 514
    new-array v0, v4, [Landroid/content/pm/ConfigurationInfo;

    #@107
    move-object/from16 v16, v0

    #@109
    move-object/from16 v0, v16

    #@10b
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    #@10d
    .line 515
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
    .line 517
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
    .line 518
    :goto_1
    if-lez v4, :cond_4

    #@12e
    .line 519
    new-array v0, v4, [Landroid/content/pm/FeatureInfo;

    #@130
    move-object/from16 v16, v0

    #@132
    move-object/from16 v0, v16

    #@134
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    #@136
    .line 520
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
    .line 522
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
    .line 523
    :goto_2
    if-lez v4, :cond_5

    #@157
    .line 524
    new-array v0, v4, [Landroid/content/pm/FeatureGroupInfo;

    #@159
    move-object/from16 v16, v0

    #@15b
    move-object/from16 v0, v16

    #@15d
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    #@15f
    .line 525
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
    .line 528
    .end local v4    # "N":I
    :cond_5
    and-int/lit8 v16, p2, 0x1

    #@16e
    if-eqz v16, :cond_b

    #@170
    .line 529
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
    .line 530
    .restart local v4    # "N":I
    if-lez v4, :cond_b

    #@17c
    .line 531
    const/4 v7, 0x0

    #@17d
    .line 532
    .local v7, "num":I
    new-array v12, v4, [Landroid/content/pm/ActivityInfo;

    #@17f
    .line 533
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
    .line 534
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
    .line 535
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
    .line 536
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
    .line 533
    :goto_4
    add-int/lit8 v6, v6, 0x1

    #@1b1
    move v8, v7

    #@1b2
    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_3

    #@1b3
    .line 485
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
    .line 512
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7
    const/4 v4, 0x0

    #@1b7
    goto/16 :goto_0

    #@1b9
    .line 517
    .restart local v4    # "N":I
    :cond_8
    const/4 v4, 0x0

    #@1ba
    goto/16 :goto_1

    #@1bc
    .line 522
    :cond_9
    const/4 v4, 0x0

    #@1bd
    goto :goto_2

    #@1be
    .line 539
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
    .line 542
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_b
    and-int/lit8 v16, p2, 0x2

    #@1ca
    if-eqz v16, :cond_d

    #@1cc
    .line 543
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
    .line 544
    .restart local v4    # "N":I
    if-lez v4, :cond_d

    #@1d8
    .line 545
    const/4 v7, 0x0

    #@1d9
    .line 546
    .restart local v7    # "num":I
    new-array v12, v4, [Landroid/content/pm/ActivityInfo;

    #@1db
    .line 547
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
    .line 548
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
    .line 549
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
    .line 550
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
    .line 547
    :goto_6
    add-int/lit8 v6, v6, 0x1

    #@20d
    move v8, v7

    #@20e
    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_5

    #@20f
    .line 553
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
    .line 556
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_d
    and-int/lit8 v16, p2, 0x4

    #@21b
    if-eqz v16, :cond_f

    #@21d
    .line 557
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
    .line 558
    .restart local v4    # "N":I
    if-lez v4, :cond_f

    #@229
    .line 559
    const/4 v7, 0x0

    #@22a
    .line 560
    .restart local v7    # "num":I
    new-array v14, v4, [Landroid/content/pm/ServiceInfo;

    #@22c
    .line 561
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
    .line 562
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
    .line 563
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
    .line 564
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
    .line 561
    :goto_8
    add-int/lit8 v6, v6, 0x1

    #@25e
    move v8, v7

    #@25f
    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_7

    #@260
    .line 567
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
    .line 570
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v14    # "res":[Landroid/content/pm/ServiceInfo;
    :cond_f
    and-int/lit8 v16, p2, 0x8

    #@26c
    if-eqz v16, :cond_11

    #@26e
    .line 571
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
    .line 572
    .restart local v4    # "N":I
    if-lez v4, :cond_11

    #@27a
    .line 573
    const/4 v7, 0x0

    #@27b
    .line 574
    .restart local v7    # "num":I
    new-array v13, v4, [Landroid/content/pm/ProviderInfo;

    #@27d
    .line 575
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
    .line 576
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
    .line 577
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
    .line 578
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
    .line 575
    :goto_a
    add-int/lit8 v6, v6, 0x1

    #@2af
    move v8, v7

    #@2b0
    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_9

    #@2b1
    .line 581
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
    .line 584
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v13    # "res":[Landroid/content/pm/ProviderInfo;
    :cond_11
    and-int/lit8 v16, p2, 0x10

    #@2bd
    if-eqz v16, :cond_12

    #@2bf
    .line 585
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
    .line 586
    .restart local v4    # "N":I
    if-lez v4, :cond_12

    #@2cb
    .line 587
    new-array v0, v4, [Landroid/content/pm/InstrumentationInfo;

    #@2cd
    move-object/from16 v16, v0

    #@2cf
    move-object/from16 v0, v16

    #@2d1
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    #@2d3
    .line 588
    const/4 v6, 0x0

    #@2d4
    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v4, :cond_12

    #@2d6
    .line 589
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    #@2d8
    move-object/from16 v17, v0

    #@2da
    .line 590
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
    .line 589
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
    .line 588
    add-int/lit8 v6, v6, 0x1

    #@2f4
    goto :goto_b

    #@2f5
    .line 594
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
    .line 595
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
    .line 596
    .restart local v4    # "N":I
    if-lez v4, :cond_13

    #@309
    .line 597
    new-array v0, v4, [Landroid/content/pm/PermissionInfo;

    #@30b
    move-object/from16 v16, v0

    #@30d
    move-object/from16 v0, v16

    #@30f
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    #@311
    .line 598
    const/4 v6, 0x0

    #@312
    .restart local v6    # "i":I
    :goto_c
    if-ge v6, v4, :cond_13

    #@314
    .line 599
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
    .line 598
    add-int/lit8 v6, v6, 0x1

    #@332
    goto :goto_c

    #@333
    .line 602
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
    .line 603
    if-lez v4, :cond_15

    #@33f
    .line 604
    new-array v0, v4, [Ljava/lang/String;

    #@341
    move-object/from16 v16, v0

    #@343
    move-object/from16 v0, v16

    #@345
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@347
    .line 605
    new-array v0, v4, [I

    #@349
    move-object/from16 v16, v0

    #@34b
    move-object/from16 v0, v16

    #@34d
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    #@34f
    .line 606
    const/4 v6, 0x0

    #@350
    .restart local v6    # "i":I
    :goto_d
    if-ge v6, v4, :cond_15

    #@352
    .line 607
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
    .line 608
    .local v9, "perm":Ljava/lang/String;
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@362
    move-object/from16 v16, v0

    #@364
    aput-object v9, v16, v6

    #@366
    .line 610
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
    .line 611
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
    .line 612
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
    .line 606
    :cond_14
    add-int/lit8 v6, v6, 0x1

    #@386
    goto :goto_d

    #@387
    .line 617
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v9    # "perm":Ljava/lang/String;
    :cond_15
    and-int/lit8 v16, p2, 0x40

    #@389
    if-eqz v16, :cond_16

    #@38b
    .line 618
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
    .line 619
    .restart local v4    # "N":I
    :goto_e
    if-lez v4, :cond_16

    #@39e
    .line 620
    new-array v0, v4, [Landroid/content/pm/Signature;

    #@3a0
    move-object/from16 v16, v0

    #@3a2
    move-object/from16 v0, v16

    #@3a4
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@3a6
    .line 621
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
    .line 624
    .end local v4    # "N":I
    :cond_16
    return-object v10

    #@3c0
    .line 618
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
    .line 5476
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 5477
    :cond_0
    and-int/lit16 v1, p1, 0x80

    #@6
    if-nez v1, :cond_1

    #@8
    .line 5478
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@a
    return-object v1

    #@b
    .line 5480
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    #@d
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@f
    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    #@12
    .line 5481
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    #@14
    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    #@16
    .line 5482
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
    .line 5465
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 5466
    :cond_0
    and-int/lit16 v1, p1, 0x80

    #@6
    if-nez v1, :cond_1

    #@8
    .line 5467
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@a
    return-object v1

    #@b
    .line 5469
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    #@d
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@f
    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    #@12
    .line 5470
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    #@14
    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    #@16
    .line 5471
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
    .line 5615
    if-nez p0, :cond_0

    #@3
    return-object v3

    #@4
    .line 5616
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 5617
    return-object v3

    #@b
    .line 5619
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
    .line 5620
    and-int/lit16 v1, p1, 0x800

    #@17
    if-nez v1, :cond_2

    #@19
    .line 5621
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@1b
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@1d
    if-nez v1, :cond_3

    #@1f
    .line 5622
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@21
    return-object v1

    #@22
    .line 5625
    :cond_3
    new-instance v0, Landroid/content/pm/ProviderInfo;

    #@24
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@26
    invoke-direct {v0, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    #@29
    .line 5626
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    #@2b
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    #@2d
    .line 5627
    and-int/lit16 v1, p1, 0x800

    #@2f
    if-nez v1, :cond_4

    #@31
    .line 5628
    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@33
    .line 5630
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    #@35
    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@38
    move-result-object v1

    #@39
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3b
    .line 5631
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
    .line 5566
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 5567
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 5568
    return-object v2

    #@b
    .line 5570
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
    .line 5571
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@17
    return-object v1

    #@18
    .line 5574
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    #@1a
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@1c
    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    #@1f
    .line 5575
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    #@21
    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@23
    .line 5576
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    #@25
    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@28
    move-result-object v1

    #@29
    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2b
    .line 5577
    return-object v0
.end method

.method public static getApkSigningVersion(Landroid/content/pm/PackageParser$Package;)I
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 1066
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
    .line 1067
    const/4 v1, 0x2

    #@9
    return v1

    #@a
    .line 1069
    :cond_0
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 1070
    :catch_0
    move-exception v0

    #@d
    .line 1072
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
    .line 3175
    if-eqz p0, :cond_0

    #@3
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@5
    if-nez v8, :cond_1

    #@7
    :cond_0
    return v9

    #@8
    .line 3176
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@a
    .line 3177
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v3

    #@e
    .line 3178
    .local v3, "countActivities":I
    const/4 v7, 0x0

    #@f
    .local v7, "n":I
    :goto_0
    if-ge v7, v3, :cond_7

    #@11
    .line 3179
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    #@17
    .line 3180
    .local v1, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@19
    .line 3181
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-nez v5, :cond_3

    #@1b
    .line 3178
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 3182
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v4

    #@22
    .line 3183
    .local v4, "countFilters":I
    const/4 v6, 0x0

    #@23
    .local v6, "m":I
    :goto_1
    if-ge v6, v4, :cond_2

    #@25
    .line 3184
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2b
    .line 3185
    .local v2, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string/jumbo v8, "android.intent.action.VIEW"

    #@2e
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    #@31
    move-result v8

    #@32
    if-nez v8, :cond_5

    #@34
    .line 3183
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@36
    goto :goto_1

    #@37
    .line 3186
    :cond_5
    const-string/jumbo v8, "android.intent.action.VIEW"

    #@3a
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    #@3d
    move-result v8

    #@3e
    if-eqz v8, :cond_4

    #@40
    .line 3187
    const-string/jumbo v8, "http"

    #@43
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    #@46
    move-result v8

    #@47
    if-nez v8, :cond_6

    #@49
    .line 3188
    const-string/jumbo v8, "https"

    #@4c
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    #@4f
    move-result v8

    #@50
    .line 3187
    if-eqz v8, :cond_4

    #@52
    .line 3189
    :cond_6
    const/4 v8, 0x1

    #@53
    return v8

    #@54
    .line 3193
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
    .line 447
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
    .line 451
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
    .line 478
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
    .line 890
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
    .line 898
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 899
    .local v0, "cookie":I
    if-nez v0, :cond_2

    #@10
    .line 900
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@12
    .line 901
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
    .line 900
    const/16 v3, -0x65

    #@28
    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 891
    .end local v0    # "cookie":I
    :cond_1
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@2e
    .line 892
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
    .line 891
    const/16 v3, -0x64

    #@44
    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 903
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
    .line 629
    const/4 v1, 0x0

    #@1
    .line 633
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@4
    move-result-object v1

    #@5
    .line 634
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/content/pm/PackageParser;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    #@8
    .line 635
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v2

    #@c
    .line 640
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f
    .line 635
    return-object v2

    #@10
    .line 636
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@11
    .line 637
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    #@13
    .line 638
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
    .line 637
    const/16 v4, -0x66

    #@38
    invoke-direct {v2, v4, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@3b
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 639
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@3d
    .line 640
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@40
    .line 639
    throw v2
.end method

.method private static modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 3166
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
    .line 3167
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@d
    .line 3168
    const-string/jumbo v1, "org.apache.http.legacy"

    #@10
    .line 3167
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@16
    .line 3159
    return-void
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 27
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
    .line 3380
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    #@2
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v23

    #@a
    .line 3382
    .local v23, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@e
    if-nez v4, :cond_0

    #@10
    .line 3383
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@12
    .line 3389
    move-object/from16 v0, p0

    #@14
    iget-object v12, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@16
    .line 3384
    const/4 v7, 0x3

    #@17
    .line 3385
    const/4 v8, 0x1

    #@18
    .line 3386
    const/4 v9, 0x2

    #@19
    .line 3387
    const/16 v10, 0x17

    #@1b
    .line 3388
    const/16 v11, 0x1e

    #@1d
    .line 3390
    const/4 v13, 0x7

    #@1e
    .line 3391
    const/16 v14, 0x11

    #@20
    .line 3392
    const/4 v15, 0x5

    #@21
    move-object/from16 v5, p1

    #@23
    move-object/from16 v6, p5

    #@25
    .line 3383
    invoke-direct/range {v4 .. v15}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    #@28
    move-object/from16 v0, p0

    #@2a
    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@2c
    .line 3395
    :cond_0
    move-object/from16 v0, p0

    #@2e
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@30
    if-eqz p6, :cond_1

    #@32
    const-string/jumbo v4, "<receiver>"

    #@35
    :goto_0
    iput-object v4, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@37
    .line 3396
    move-object/from16 v0, p0

    #@39
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@3b
    move-object/from16 v0, v23

    #@3d
    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@3f
    .line 3397
    move-object/from16 v0, p0

    #@41
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@43
    move/from16 v0, p4

    #@45
    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@47
    .line 3399
    new-instance v16, Landroid/content/pm/PackageParser$Activity;

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@4d
    new-instance v5, Landroid/content/pm/ActivityInfo;

    #@4f
    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    #@52
    move-object/from16 v0, v16

    #@54
    invoke-direct {v0, v4, v5}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    #@57
    .line 3400
    .local v16, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    #@58
    aget-object v4, p5, v4

    #@5a
    if-eqz v4, :cond_2

    #@5c
    .line 3401
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    #@5f
    .line 3402
    const/4 v4, 0x0

    #@60
    return-object v4

    #@61
    .line 3395
    .end local v16    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1
    const-string/jumbo v4, "<activity>"

    #@64
    goto :goto_0

    #@65
    .line 3405
    .restart local v16    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_2
    const/4 v4, 0x6

    #@66
    move-object/from16 v0, v23

    #@68
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@6b
    move-result v24

    #@6c
    .line 3406
    .local v24, "setExported":Z
    if-eqz v24, :cond_3

    #@6e
    .line 3407
    move-object/from16 v0, v16

    #@70
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@72
    const/4 v5, 0x6

    #@73
    const/4 v6, 0x0

    #@74
    move-object/from16 v0, v23

    #@76
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@79
    move-result v5

    #@7a
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    #@7c
    .line 3410
    :cond_3
    move-object/from16 v0, v16

    #@7e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@80
    const/4 v5, 0x0

    #@81
    const/4 v6, 0x0

    #@82
    move-object/from16 v0, v23

    #@84
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@87
    move-result v5

    #@88
    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I

    #@8a
    .line 3412
    move-object/from16 v0, v16

    #@8c
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@8e
    .line 3413
    move-object/from16 v0, v16

    #@90
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@92
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@94
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@96
    .line 3412
    const/16 v6, 0x1a

    #@98
    move-object/from16 v0, v23

    #@9a
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@9d
    move-result v5

    #@9e
    iput v5, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@a0
    .line 3416
    const/16 v4, 0x1b

    #@a2
    .line 3417
    const/16 v5, 0x400

    #@a4
    .line 3415
    move-object/from16 v0, v23

    #@a6
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@a9
    move-result-object v20

    #@aa
    .line 3418
    .local v20, "parentName":Ljava/lang/String;
    if-eqz v20, :cond_4

    #@ac
    .line 3419
    move-object/from16 v0, v16

    #@ae
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@b0
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@b2
    move-object/from16 v0, v20

    #@b4
    move-object/from16 v1, p5

    #@b6
    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@b9
    move-result-object v19

    #@ba
    .line 3420
    .local v19, "parentClassName":Ljava/lang/String;
    const/4 v4, 0x0

    #@bb
    aget-object v4, p5, v4

    #@bd
    if-nez v4, :cond_1b

    #@bf
    .line 3421
    move-object/from16 v0, v16

    #@c1
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@c3
    move-object/from16 v0, v19

    #@c5
    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@c7
    .line 3430
    .end local v19    # "parentClassName":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v4, 0x4

    #@c8
    const/4 v5, 0x0

    #@c9
    move-object/from16 v0, v23

    #@cb
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@ce
    move-result-object v25

    #@cf
    .line 3431
    .local v25, "str":Ljava/lang/String;
    if-nez v25, :cond_1c

    #@d1
    .line 3432
    move-object/from16 v0, v16

    #@d3
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@d5
    move-object/from16 v0, p1

    #@d7
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d9
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@db
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@dd
    .line 3438
    :goto_2
    const/16 v4, 0x8

    #@df
    .line 3439
    const/16 v5, 0x400

    #@e1
    .line 3437
    move-object/from16 v0, v23

    #@e3
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@e6
    move-result-object v25

    #@e7
    .line 3440
    move-object/from16 v0, v16

    #@e9
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@eb
    move-object/from16 v0, p1

    #@ed
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@ef
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@f1
    .line 3441
    move-object/from16 v0, p1

    #@f3
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f5
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@f7
    .line 3440
    move-object/from16 v0, v25

    #@f9
    move-object/from16 v1, p5

    #@fb
    invoke-static {v5, v6, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@fe
    move-result-object v5

    #@ff
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@101
    .line 3443
    move-object/from16 v0, v16

    #@103
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@105
    const/4 v5, 0x0

    #@106
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@108
    .line 3445
    const/16 v4, 0x9

    #@10a
    const/4 v5, 0x0

    #@10b
    .line 3444
    move-object/from16 v0, v23

    #@10d
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@110
    move-result v4

    #@111
    if-eqz v4, :cond_5

    #@113
    .line 3446
    move-object/from16 v0, v16

    #@115
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@117
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@119
    or-int/lit8 v5, v5, 0x1

    #@11b
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@11d
    .line 3449
    :cond_5
    const/16 v4, 0xa

    #@11f
    const/4 v5, 0x0

    #@120
    move-object/from16 v0, v23

    #@122
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@125
    move-result v4

    #@126
    if-eqz v4, :cond_6

    #@128
    .line 3450
    move-object/from16 v0, v16

    #@12a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@12c
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@12e
    or-int/lit8 v5, v5, 0x2

    #@130
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@132
    .line 3453
    :cond_6
    const/16 v4, 0xb

    #@134
    const/4 v5, 0x0

    #@135
    move-object/from16 v0, v23

    #@137
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@13a
    move-result v4

    #@13b
    if-eqz v4, :cond_7

    #@13d
    .line 3454
    move-object/from16 v0, v16

    #@13f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@141
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@143
    or-int/lit8 v5, v5, 0x4

    #@145
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@147
    .line 3457
    :cond_7
    const/16 v4, 0x15

    #@149
    const/4 v5, 0x0

    #@14a
    move-object/from16 v0, v23

    #@14c
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@14f
    move-result v4

    #@150
    if-eqz v4, :cond_8

    #@152
    .line 3458
    move-object/from16 v0, v16

    #@154
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@156
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@158
    or-int/lit16 v5, v5, 0x80

    #@15a
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@15c
    .line 3461
    :cond_8
    const/16 v4, 0x12

    #@15e
    const/4 v5, 0x0

    #@15f
    move-object/from16 v0, v23

    #@161
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@164
    move-result v4

    #@165
    if-eqz v4, :cond_9

    #@167
    .line 3462
    move-object/from16 v0, v16

    #@169
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@16b
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@16d
    or-int/lit8 v5, v5, 0x8

    #@16f
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@171
    .line 3465
    :cond_9
    const/16 v4, 0xc

    #@173
    const/4 v5, 0x0

    #@174
    move-object/from16 v0, v23

    #@176
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@179
    move-result v4

    #@17a
    if-eqz v4, :cond_a

    #@17c
    .line 3466
    move-object/from16 v0, v16

    #@17e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@180
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@182
    or-int/lit8 v5, v5, 0x10

    #@184
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@186
    .line 3469
    :cond_a
    const/16 v4, 0xd

    #@188
    const/4 v5, 0x0

    #@189
    move-object/from16 v0, v23

    #@18b
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@18e
    move-result v4

    #@18f
    if-eqz v4, :cond_b

    #@191
    .line 3470
    move-object/from16 v0, v16

    #@193
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@195
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@197
    or-int/lit8 v5, v5, 0x20

    #@199
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@19b
    .line 3474
    :cond_b
    move-object/from16 v0, p1

    #@19d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@19f
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1a1
    and-int/lit8 v4, v4, 0x20

    #@1a3
    if-eqz v4, :cond_1e

    #@1a5
    const/4 v4, 0x1

    #@1a6
    .line 3473
    :goto_3
    const/16 v5, 0x13

    #@1a8
    move-object/from16 v0, v23

    #@1aa
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1ad
    move-result v4

    #@1ae
    if-eqz v4, :cond_c

    #@1b0
    .line 3475
    move-object/from16 v0, v16

    #@1b2
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1b4
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1b6
    or-int/lit8 v5, v5, 0x40

    #@1b8
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1ba
    .line 3478
    :cond_c
    const/16 v4, 0x16

    #@1bc
    const/4 v5, 0x0

    #@1bd
    move-object/from16 v0, v23

    #@1bf
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1c2
    move-result v4

    #@1c3
    if-eqz v4, :cond_d

    #@1c5
    .line 3479
    move-object/from16 v0, v16

    #@1c7
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1c9
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1cb
    or-int/lit16 v5, v5, 0x100

    #@1cd
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1cf
    .line 3482
    :cond_d
    const/16 v4, 0x1d

    #@1d1
    const/4 v5, 0x0

    #@1d2
    move-object/from16 v0, v23

    #@1d4
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d7
    move-result v4

    #@1d8
    if-nez v4, :cond_e

    #@1da
    .line 3483
    const/16 v4, 0x27

    #@1dc
    const/4 v5, 0x0

    #@1dd
    move-object/from16 v0, v23

    #@1df
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1e2
    move-result v4

    #@1e3
    .line 3482
    if-eqz v4, :cond_f

    #@1e5
    .line 3484
    :cond_e
    move-object/from16 v0, v16

    #@1e7
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1e9
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1eb
    or-int/lit16 v5, v5, 0x400

    #@1ed
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@1ef
    .line 3487
    :cond_f
    const/16 v4, 0x18

    #@1f1
    const/4 v5, 0x0

    #@1f2
    move-object/from16 v0, v23

    #@1f4
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1f7
    move-result v4

    #@1f8
    if-eqz v4, :cond_10

    #@1fa
    .line 3488
    move-object/from16 v0, v16

    #@1fc
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1fe
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@200
    or-int/lit16 v5, v5, 0x800

    #@202
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@204
    .line 3491
    :cond_10
    const/16 v4, 0x2c

    #@206
    const/4 v5, 0x0

    #@207
    move-object/from16 v0, v23

    #@209
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@20c
    move-result v4

    #@20d
    if-eqz v4, :cond_11

    #@20f
    .line 3492
    move-object/from16 v0, v16

    #@211
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@213
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@215
    const/high16 v6, 0x20000000

    #@217
    or-int/2addr v5, v6

    #@218
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@21a
    .line 3495
    :cond_11
    if-nez p6, :cond_24

    #@21c
    .line 3496
    const/16 v4, 0x19

    #@21e
    move-object/from16 v0, v23

    #@220
    move/from16 v1, p7

    #@222
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@225
    move-result v4

    #@226
    if-eqz v4, :cond_12

    #@228
    .line 3498
    move-object/from16 v0, v16

    #@22a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@22c
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@22e
    or-int/lit16 v5, v5, 0x200

    #@230
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@232
    .line 3501
    :cond_12
    move-object/from16 v0, v16

    #@234
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@236
    .line 3502
    const/16 v5, 0xe

    #@238
    const/4 v6, 0x0

    #@239
    .line 3501
    move-object/from16 v0, v23

    #@23b
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@23e
    move-result v5

    #@23f
    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@241
    .line 3503
    move-object/from16 v0, v16

    #@243
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@245
    .line 3504
    const/16 v5, 0x21

    #@247
    .line 3505
    const/4 v6, 0x0

    #@248
    .line 3503
    move-object/from16 v0, v23

    #@24a
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@24d
    move-result v5

    #@24e
    iput v5, v4, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@250
    .line 3506
    move-object/from16 v0, v16

    #@252
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@254
    .line 3508
    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    #@257
    move-result v5

    #@258
    .line 3507
    const/16 v6, 0x22

    #@25a
    .line 3506
    move-object/from16 v0, v23

    #@25c
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@25f
    move-result v5

    #@260
    iput v5, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@262
    .line 3509
    move-object/from16 v0, v16

    #@264
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@266
    const/16 v5, 0x10

    #@268
    const/4 v6, 0x0

    #@269
    move-object/from16 v0, v23

    #@26b
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@26e
    move-result v5

    #@26f
    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@271
    .line 3510
    move-object/from16 v0, v16

    #@273
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@275
    .line 3511
    const/16 v5, 0x14

    #@277
    const/4 v6, 0x0

    #@278
    .line 3510
    move-object/from16 v0, v23

    #@27a
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@27d
    move-result v5

    #@27e
    iput v5, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@280
    .line 3513
    move-object/from16 v0, v16

    #@282
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@284
    .line 3514
    const/16 v5, 0x20

    #@286
    .line 3515
    const/4 v6, 0x0

    #@287
    .line 3513
    move-object/from16 v0, v23

    #@289
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@28c
    move-result v5

    #@28d
    iput v5, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@28f
    .line 3517
    const/16 v4, 0x1f

    #@291
    const/4 v5, 0x0

    #@292
    move-object/from16 v0, v23

    #@294
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@297
    move-result v4

    #@298
    if-eqz v4, :cond_13

    #@29a
    .line 3518
    move-object/from16 v0, v16

    #@29c
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@29e
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2a0
    const/high16 v6, -0x80000000

    #@2a2
    or-int/2addr v5, v6

    #@2a3
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2a5
    .line 3521
    :cond_13
    const/16 v4, 0x23

    #@2a7
    const/4 v5, 0x0

    #@2a8
    move-object/from16 v0, v23

    #@2aa
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2ad
    move-result v4

    #@2ae
    if-eqz v4, :cond_14

    #@2b0
    .line 3522
    move-object/from16 v0, v16

    #@2b2
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2b4
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2b6
    or-int/lit16 v5, v5, 0x2000

    #@2b8
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2ba
    .line 3525
    :cond_14
    const/16 v4, 0x24

    #@2bc
    const/4 v5, 0x0

    #@2bd
    move-object/from16 v0, v23

    #@2bf
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2c2
    move-result v4

    #@2c3
    if-eqz v4, :cond_15

    #@2c5
    .line 3526
    move-object/from16 v0, v16

    #@2c7
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2c9
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2cb
    or-int/lit16 v5, v5, 0x1000

    #@2cd
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2cf
    .line 3529
    :cond_15
    const/16 v4, 0x25

    #@2d1
    const/4 v5, 0x0

    #@2d2
    move-object/from16 v0, v23

    #@2d4
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2d7
    move-result v4

    #@2d8
    if-eqz v4, :cond_16

    #@2da
    .line 3530
    move-object/from16 v0, v16

    #@2dc
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2de
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2e0
    or-int/lit16 v5, v5, 0x4000

    #@2e2
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@2e4
    .line 3533
    :cond_16
    move-object/from16 v0, v16

    #@2e6
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2e8
    .line 3534
    const/16 v5, 0xf

    #@2ea
    .line 3535
    const/4 v6, -0x1

    #@2eb
    .line 3533
    move-object/from16 v0, v23

    #@2ed
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2f0
    move-result v5

    #@2f1
    iput v5, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@2f3
    .line 3537
    move-object/from16 v0, v16

    #@2f5
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2f7
    const/4 v5, 0x0

    #@2f8
    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@2fa
    .line 3538
    move-object/from16 v0, p1

    #@2fc
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2fe
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@300
    and-int/lit16 v4, v4, 0x800

    #@302
    if-eqz v4, :cond_1f

    #@304
    const/16 v17, 0x1

    #@306
    .line 3545
    .local v17, "appDefault":Z
    :goto_4
    const/16 v4, 0x28

    #@308
    move-object/from16 v0, v23

    #@30a
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@30d
    move-result v22

    #@30e
    .line 3547
    .local v22, "resizeableSetExplicitly":Z
    const/16 v4, 0x28

    #@310
    .line 3546
    move-object/from16 v0, v23

    #@312
    move/from16 v1, v17

    #@314
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@317
    move-result v21

    #@318
    .line 3549
    .local v21, "resizeable":Z
    if-eqz v21, :cond_21

    #@31a
    .line 3550
    const/16 v4, 0x29

    #@31c
    .line 3551
    const/4 v5, 0x0

    #@31d
    .line 3550
    move-object/from16 v0, v23

    #@31f
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@322
    move-result v4

    #@323
    if-eqz v4, :cond_20

    #@325
    .line 3552
    move-object/from16 v0, v16

    #@327
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@329
    const/4 v5, 0x3

    #@32a
    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@32c
    .line 3563
    :cond_17
    :goto_5
    const/16 v4, 0x2d

    #@32e
    const/4 v5, 0x0

    #@32f
    move-object/from16 v0, v23

    #@331
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@334
    move-result v4

    #@335
    if-eqz v4, :cond_18

    #@337
    .line 3564
    move-object/from16 v0, v16

    #@339
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@33b
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@33d
    const/high16 v6, 0x40000

    #@33f
    or-int/2addr v5, v6

    #@340
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@342
    .line 3567
    :cond_18
    move-object/from16 v0, v16

    #@344
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@346
    .line 3568
    const/16 v5, 0x26

    #@348
    const/4 v6, 0x0

    #@349
    move-object/from16 v0, v23

    #@34b
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@34e
    move-result v5

    #@34f
    .line 3567
    iput v5, v4, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@351
    .line 3570
    move-object/from16 v0, v16

    #@353
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@355
    .line 3571
    const/16 v5, 0x2a

    #@357
    .line 3572
    const/4 v6, 0x0

    #@358
    .line 3570
    move-object/from16 v0, v23

    #@35a
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@35d
    move-result v5

    #@35e
    move-object/from16 v0, v16

    #@360
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@362
    iput-boolean v5, v6, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    #@364
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    #@366
    .line 3574
    move-object/from16 v0, v16

    #@368
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@36a
    .line 3575
    const/16 v5, 0x2b

    #@36c
    move-object/from16 v0, v23

    #@36e
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@371
    move-result-object v5

    #@372
    .line 3574
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    #@374
    .line 3596
    .end local v17    # "appDefault":Z
    .end local v21    # "resizeable":Z
    .end local v22    # "resizeableSetExplicitly":Z
    .end local v24    # "setExported":Z
    :goto_6
    move-object/from16 v0, v16

    #@376
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@378
    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    #@37a
    if-eqz v4, :cond_19

    #@37c
    .line 3597
    move-object/from16 v0, p1

    #@37e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@380
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@382
    or-int/lit16 v5, v5, 0x100

    #@384
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@386
    .line 3601
    :cond_19
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    #@389
    .line 3603
    if-eqz p6, :cond_1a

    #@38b
    move-object/from16 v0, p1

    #@38d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@38f
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@391
    and-int/lit8 v4, v4, 0x2

    #@393
    if-eqz v4, :cond_1a

    #@395
    .line 3607
    move-object/from16 v0, v16

    #@397
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@399
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@39b
    move-object/from16 v0, p1

    #@39d
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@39f
    if-ne v4, v5, :cond_1a

    #@3a1
    .line 3608
    const-string/jumbo v4, "Heavy-weight applications can not have receivers in main process"

    #@3a4
    const/4 v5, 0x0

    #@3a5
    aput-object v4, p5, v5

    #@3a7
    .line 3612
    :cond_1a
    const/4 v4, 0x0

    #@3a8
    aget-object v4, p5, v4

    #@3aa
    if-eqz v4, :cond_26

    #@3ac
    .line 3613
    const/4 v4, 0x0

    #@3ad
    return-object v4

    #@3ae
    .line 3423
    .end local v25    # "str":Ljava/lang/String;
    .restart local v19    # "parentClassName":Ljava/lang/String;
    .restart local v24    # "setExported":Z
    :cond_1b
    const-string/jumbo v4, "PackageParser"

    #@3b1
    new-instance v5, Ljava/lang/StringBuilder;

    #@3b3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b6
    const-string/jumbo v6, "Activity "

    #@3b9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bc
    move-result-object v5

    #@3bd
    move-object/from16 v0, v16

    #@3bf
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@3c1
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3c3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c6
    move-result-object v5

    #@3c7
    const-string/jumbo v6, " specified invalid parentActivityName "

    #@3ca
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cd
    move-result-object v5

    #@3ce
    move-object/from16 v0, v20

    #@3d0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d3
    move-result-object v5

    #@3d4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d7
    move-result-object v5

    #@3d8
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3db
    .line 3425
    const/4 v4, 0x0

    #@3dc
    const/4 v5, 0x0

    #@3dd
    aput-object v4, p5, v5

    #@3df
    goto/16 :goto_1

    #@3e1
    .line 3434
    .end local v19    # "parentClassName":Ljava/lang/String;
    .restart local v25    # "str":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v16

    #@3e3
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@3e5
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@3e8
    move-result v4

    #@3e9
    if-lez v4, :cond_1d

    #@3eb
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@3ee
    move-result-object v4

    #@3ef
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3f2
    move-result-object v4

    #@3f3
    :goto_7
    iput-object v4, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@3f5
    goto/16 :goto_2

    #@3f7
    :cond_1d
    const/4 v4, 0x0

    #@3f8
    goto :goto_7

    #@3f9
    .line 3474
    :cond_1e
    const/4 v4, 0x0

    #@3fa
    goto/16 :goto_3

    #@3fc
    .line 3538
    :cond_1f
    const/16 v17, 0x0

    #@3fe
    .restart local v17    # "appDefault":Z
    goto/16 :goto_4

    #@400
    .line 3554
    .restart local v21    # "resizeable":Z
    .restart local v22    # "resizeableSetExplicitly":Z
    :cond_20
    move-object/from16 v0, v16

    #@402
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@404
    const/4 v5, 0x2

    #@405
    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@407
    goto/16 :goto_5

    #@409
    .line 3556
    :cond_21
    move-object/from16 v0, p1

    #@40b
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@40d
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@40f
    const/16 v5, 0x18

    #@411
    if-ge v4, v5, :cond_22

    #@413
    if-eqz v22, :cond_23

    #@415
    .line 3558
    :cond_22
    move-object/from16 v0, v16

    #@417
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@419
    const/4 v5, 0x0

    #@41a
    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@41c
    goto/16 :goto_5

    #@41e
    .line 3559
    :cond_23
    move-object/from16 v0, v16

    #@420
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@422
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    #@425
    move-result v4

    #@426
    if-nez v4, :cond_17

    #@428
    move-object/from16 v0, v16

    #@42a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@42c
    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@42e
    and-int/lit16 v4, v4, 0x800

    #@430
    if-nez v4, :cond_17

    #@432
    .line 3560
    move-object/from16 v0, v16

    #@434
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@436
    const/4 v5, 0x4

    #@437
    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@439
    goto/16 :goto_5

    #@43b
    .line 3577
    .end local v17    # "appDefault":Z
    .end local v21    # "resizeable":Z
    .end local v22    # "resizeableSetExplicitly":Z
    :cond_24
    move-object/from16 v0, v16

    #@43d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@43f
    const/4 v5, 0x0

    #@440
    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@442
    .line 3578
    move-object/from16 v0, v16

    #@444
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@446
    const/4 v5, 0x0

    #@447
    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@449
    .line 3580
    const/16 v4, 0x1c

    #@44b
    const/4 v5, 0x0

    #@44c
    move-object/from16 v0, v23

    #@44e
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@451
    move-result v4

    #@452
    if-eqz v4, :cond_25

    #@454
    .line 3581
    move-object/from16 v0, v16

    #@456
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@458
    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@45a
    const/high16 v6, 0x40000000    # 2.0f

    #@45c
    or-int/2addr v5, v6

    #@45d
    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@45f
    .line 3582
    move-object/from16 v0, v16

    #@461
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@463
    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    #@465
    if-eqz v4, :cond_25

    #@467
    move/from16 v0, p4

    #@469
    and-int/lit16 v4, v0, 0x80

    #@46b
    if-nez v4, :cond_25

    #@46d
    .line 3583
    const-string/jumbo v4, "PackageParser"

    #@470
    new-instance v5, Ljava/lang/StringBuilder;

    #@472
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@475
    const-string/jumbo v6, "Activity exported request ignored due to singleUser: "

    #@478
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47b
    move-result-object v5

    #@47c
    .line 3584
    move-object/from16 v0, v16

    #@47e
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    #@480
    .line 3583
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@483
    move-result-object v5

    #@484
    .line 3584
    const-string/jumbo v6, " at "

    #@487
    .line 3583
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48a
    move-result-object v5

    #@48b
    .line 3584
    move-object/from16 v0, p0

    #@48d
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@48f
    .line 3583
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@492
    move-result-object v5

    #@493
    .line 3584
    const-string/jumbo v6, " "

    #@496
    .line 3583
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@499
    move-result-object v5

    #@49a
    .line 3585
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@49d
    move-result-object v6

    #@49e
    .line 3583
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a1
    move-result-object v5

    #@4a2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a5
    move-result-object v5

    #@4a6
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a9
    .line 3586
    move-object/from16 v0, v16

    #@4ab
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@4ad
    const/4 v5, 0x0

    #@4ae
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    #@4b0
    .line 3587
    const/16 v24, 0x1

    #@4b2
    .line 3591
    .end local v24    # "setExported":Z
    :cond_25
    move-object/from16 v0, v16

    #@4b4
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@4b6
    .line 3592
    const/16 v5, 0x2a

    #@4b8
    .line 3593
    const/4 v6, 0x0

    #@4b9
    .line 3591
    move-object/from16 v0, v23

    #@4bb
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4be
    move-result v5

    #@4bf
    move-object/from16 v0, v16

    #@4c1
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@4c3
    iput-boolean v5, v6, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    #@4c5
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    #@4c7
    goto/16 :goto_6

    #@4c9
    .line 3616
    :cond_26
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@4cc
    move-result v18

    #@4cd
    .line 3618
    .local v18, "outerDepth":I
    :cond_27
    :goto_8
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@4d0
    move-result v26

    #@4d1
    .local v26, "type":I
    const/4 v4, 0x1

    #@4d2
    move/from16 v0, v26

    #@4d4
    if-eq v0, v4, :cond_33

    #@4d6
    .line 3619
    const/4 v4, 0x3

    #@4d7
    move/from16 v0, v26

    #@4d9
    if-ne v0, v4, :cond_28

    #@4db
    .line 3620
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@4de
    move-result v4

    #@4df
    move/from16 v0, v18

    #@4e1
    if-le v4, v0, :cond_33

    #@4e3
    .line 3621
    :cond_28
    const/4 v4, 0x3

    #@4e4
    move/from16 v0, v26

    #@4e6
    if-eq v0, v4, :cond_27

    #@4e8
    const/4 v4, 0x4

    #@4e9
    move/from16 v0, v26

    #@4eb
    if-eq v0, v4, :cond_27

    #@4ed
    .line 3625
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4f0
    move-result-object v4

    #@4f1
    const-string/jumbo v5, "intent-filter"

    #@4f4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f7
    move-result v4

    #@4f8
    if-eqz v4, :cond_2b

    #@4fa
    .line 3626
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@4fc
    move-object/from16 v0, v16

    #@4fe
    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    #@501
    .line 3627
    .local v9, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x1

    #@502
    const/4 v8, 0x1

    #@503
    move-object/from16 v4, p0

    #@505
    move-object/from16 v5, p2

    #@507
    move-object/from16 v6, p3

    #@509
    move-object/from16 v10, p5

    #@50b
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@50e
    move-result v4

    #@50f
    if-nez v4, :cond_29

    #@511
    .line 3628
    const/4 v4, 0x0

    #@512
    return-object v4

    #@513
    .line 3630
    :cond_29
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    #@516
    move-result v4

    #@517
    if-nez v4, :cond_2a

    #@519
    .line 3631
    const-string/jumbo v4, "PackageParser"

    #@51c
    new-instance v5, Ljava/lang/StringBuilder;

    #@51e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@521
    const-string/jumbo v6, "No actions in intent filter at "

    #@524
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@527
    move-result-object v5

    #@528
    .line 3632
    move-object/from16 v0, p0

    #@52a
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@52c
    .line 3631
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52f
    move-result-object v5

    #@530
    .line 3632
    const-string/jumbo v6, " "

    #@533
    .line 3631
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@536
    move-result-object v5

    #@537
    .line 3633
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@53a
    move-result-object v6

    #@53b
    .line 3631
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53e
    move-result-object v5

    #@53f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@542
    move-result-object v5

    #@543
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@546
    goto :goto_8

    #@547
    .line 3635
    :cond_2a
    move-object/from16 v0, v16

    #@549
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@54b
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54e
    goto/16 :goto_8

    #@550
    .line 3637
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2b
    if-nez p6, :cond_2f

    #@552
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@555
    move-result-object v4

    #@556
    const-string/jumbo v5, "preferred"

    #@559
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55c
    move-result v4

    #@55d
    if-eqz v4, :cond_2f

    #@55f
    .line 3638
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@561
    move-object/from16 v0, v16

    #@563
    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    #@566
    .line 3639
    .restart local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x0

    #@567
    const/4 v8, 0x0

    #@568
    move-object/from16 v4, p0

    #@56a
    move-object/from16 v5, p2

    #@56c
    move-object/from16 v6, p3

    #@56e
    move-object/from16 v10, p5

    #@570
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@573
    move-result v4

    #@574
    if-nez v4, :cond_2c

    #@576
    .line 3640
    const/4 v4, 0x0

    #@577
    return-object v4

    #@578
    .line 3642
    :cond_2c
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    #@57b
    move-result v4

    #@57c
    if-nez v4, :cond_2d

    #@57e
    .line 3643
    const-string/jumbo v4, "PackageParser"

    #@581
    new-instance v5, Ljava/lang/StringBuilder;

    #@583
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@586
    const-string/jumbo v6, "No actions in preferred at "

    #@589
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58c
    move-result-object v5

    #@58d
    .line 3644
    move-object/from16 v0, p0

    #@58f
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@591
    .line 3643
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@594
    move-result-object v5

    #@595
    .line 3644
    const-string/jumbo v6, " "

    #@598
    .line 3643
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59b
    move-result-object v5

    #@59c
    .line 3645
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@59f
    move-result-object v6

    #@5a0
    .line 3643
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a3
    move-result-object v5

    #@5a4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a7
    move-result-object v5

    #@5a8
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5ab
    goto/16 :goto_8

    #@5ad
    .line 3647
    :cond_2d
    move-object/from16 v0, p1

    #@5af
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@5b1
    if-nez v4, :cond_2e

    #@5b3
    .line 3648
    new-instance v4, Ljava/util/ArrayList;

    #@5b5
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5b8
    move-object/from16 v0, p1

    #@5ba
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@5bc
    .line 3650
    :cond_2e
    move-object/from16 v0, p1

    #@5be
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@5c0
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c3
    goto/16 :goto_8

    #@5c5
    .line 3652
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@5c8
    move-result-object v4

    #@5c9
    const-string/jumbo v5, "meta-data"

    #@5cc
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5cf
    move-result v4

    #@5d0
    if-eqz v4, :cond_30

    #@5d2
    .line 3653
    move-object/from16 v0, v16

    #@5d4
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@5d6
    move-object/from16 v0, p0

    #@5d8
    move-object/from16 v1, p2

    #@5da
    move-object/from16 v2, p3

    #@5dc
    move-object/from16 v3, p5

    #@5de
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@5e1
    move-result-object v4

    #@5e2
    move-object/from16 v0, v16

    #@5e4
    iput-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@5e6
    if-nez v4, :cond_27

    #@5e8
    .line 3655
    const/4 v4, 0x0

    #@5e9
    return-object v4

    #@5ea
    .line 3657
    :cond_30
    if-nez p6, :cond_31

    #@5ec
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@5ef
    move-result-object v4

    #@5f0
    const-string/jumbo v5, "layout"

    #@5f3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f6
    move-result v4

    #@5f7
    if-eqz v4, :cond_31

    #@5f9
    .line 3658
    move-object/from16 v0, p0

    #@5fb
    move-object/from16 v1, p2

    #@5fd
    move-object/from16 v2, p3

    #@5ff
    move-object/from16 v3, v16

    #@601
    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    #@604
    goto/16 :goto_8

    #@606
    .line 3661
    :cond_31
    const-string/jumbo v4, "PackageParser"

    #@609
    new-instance v5, Ljava/lang/StringBuilder;

    #@60b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@60e
    const-string/jumbo v6, "Problem in package "

    #@611
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@614
    move-result-object v5

    #@615
    move-object/from16 v0, p0

    #@617
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@619
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61c
    move-result-object v5

    #@61d
    const-string/jumbo v6, ":"

    #@620
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@623
    move-result-object v5

    #@624
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@627
    move-result-object v5

    #@628
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62b
    .line 3662
    if-eqz p6, :cond_32

    #@62d
    .line 3663
    const-string/jumbo v4, "PackageParser"

    #@630
    new-instance v5, Ljava/lang/StringBuilder;

    #@632
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@635
    const-string/jumbo v6, "Unknown element under <receiver>: "

    #@638
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63b
    move-result-object v5

    #@63c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@63f
    move-result-object v6

    #@640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@643
    move-result-object v5

    #@644
    .line 3664
    const-string/jumbo v6, " at "

    #@647
    .line 3663
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64a
    move-result-object v5

    #@64b
    .line 3664
    move-object/from16 v0, p0

    #@64d
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@64f
    .line 3663
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@652
    move-result-object v5

    #@653
    .line 3664
    const-string/jumbo v6, " "

    #@656
    .line 3663
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@659
    move-result-object v5

    #@65a
    .line 3665
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@65d
    move-result-object v6

    #@65e
    .line 3663
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@661
    move-result-object v5

    #@662
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@665
    move-result-object v5

    #@666
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@669
    .line 3671
    :goto_9
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@66c
    goto/16 :goto_8

    #@66e
    .line 3667
    :cond_32
    const-string/jumbo v4, "PackageParser"

    #@671
    new-instance v5, Ljava/lang/StringBuilder;

    #@673
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@676
    const-string/jumbo v6, "Unknown element under <activity>: "

    #@679
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67c
    move-result-object v5

    #@67d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@680
    move-result-object v6

    #@681
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@684
    move-result-object v5

    #@685
    .line 3668
    const-string/jumbo v6, " at "

    #@688
    .line 3667
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68b
    move-result-object v5

    #@68c
    .line 3668
    move-object/from16 v0, p0

    #@68e
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@690
    .line 3667
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@693
    move-result-object v5

    #@694
    .line 3668
    const-string/jumbo v6, " "

    #@697
    .line 3667
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69a
    move-result-object v5

    #@69b
    .line 3669
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@69e
    move-result-object v6

    #@69f
    .line 3667
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a2
    move-result-object v5

    #@6a3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a6
    move-result-object v5

    #@6a7
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6aa
    goto :goto_9

    #@6ab
    .line 3684
    :cond_33
    if-nez v24, :cond_34

    #@6ad
    .line 3685
    move-object/from16 v0, v16

    #@6af
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@6b1
    move-object/from16 v0, v16

    #@6b3
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@6b5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6b8
    move-result v4

    #@6b9
    if-lez v4, :cond_35

    #@6bb
    const/4 v4, 0x1

    #@6bc
    :goto_a
    iput-boolean v4, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    #@6be
    .line 3688
    :cond_34
    return-object v16

    #@6bf
    .line 3685
    :cond_35
    const/4 v4, 0x0

    #@6c0
    goto :goto_a
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .locals 30
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
    .line 3738
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    #@2
    .line 3737
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v23

    #@a
    .line 3741
    .local v23, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x7

    #@b
    .line 3742
    const/16 v5, 0x400

    #@d
    .line 3740
    move-object/from16 v0, v23

    #@f
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@12
    move-result-object v28

    #@13
    .line 3743
    .local v28, "targetActivity":Ljava/lang/String;
    if-nez v28, :cond_0

    #@15
    .line 3744
    const-string/jumbo v4, "<activity-alias> does not specify android:targetActivity"

    #@18
    const/4 v5, 0x0

    #@19
    aput-object v4, p5, v5

    #@1b
    .line 3745
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 3746
    const/4 v4, 0x0

    #@1f
    return-object v4

    #@20
    .line 3749
    :cond_0
    move-object/from16 v0, p1

    #@22
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@24
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@26
    move-object/from16 v0, v28

    #@28
    move-object/from16 v1, p5

    #@2a
    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v28

    #@2e
    .line 3751
    if-nez v28, :cond_1

    #@30
    .line 3752
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    #@33
    .line 3753
    const/4 v4, 0x0

    #@34
    return-object v4

    #@35
    .line 3756
    :cond_1
    move-object/from16 v0, p0

    #@37
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@39
    if-nez v4, :cond_2

    #@3b
    .line 3757
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@3d
    .line 3763
    move-object/from16 v0, p0

    #@3f
    iget-object v12, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@41
    .line 3758
    const/4 v7, 0x2

    #@42
    .line 3759
    const/4 v8, 0x0

    #@43
    .line 3760
    const/4 v9, 0x1

    #@44
    .line 3761
    const/16 v10, 0x8

    #@46
    .line 3762
    const/16 v11, 0xa

    #@48
    .line 3764
    const/4 v13, 0x0

    #@49
    .line 3765
    const/4 v14, 0x6

    #@4a
    .line 3766
    const/4 v15, 0x4

    #@4b
    move-object/from16 v5, p1

    #@4d
    move-object/from16 v6, p5

    #@4f
    .line 3757
    invoke-direct/range {v4 .. v15}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    #@52
    move-object/from16 v0, p0

    #@54
    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@56
    .line 3767
    move-object/from16 v0, p0

    #@58
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@5a
    const-string/jumbo v5, "<activity-alias>"

    #@5d
    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@5f
    .line 3770
    :cond_2
    move-object/from16 v0, p0

    #@61
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@63
    move-object/from16 v0, v23

    #@65
    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@67
    .line 3771
    move-object/from16 v0, p0

    #@69
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@6b
    move/from16 v0, p4

    #@6d
    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@6f
    .line 3773
    const/16 v27, 0x0

    #@71
    .line 3775
    .local v27, "target":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    #@73
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@75
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@78
    move-result v16

    #@79
    .line 3776
    .local v16, "NA":I
    const/16 v18, 0x0

    #@7b
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@7d
    move/from16 v1, v16

    #@7f
    if-ge v0, v1, :cond_3

    #@81
    .line 3777
    move-object/from16 v0, p1

    #@83
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@85
    move/from16 v0, v18

    #@87
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8a
    move-result-object v26

    #@8b
    check-cast v26, Landroid/content/pm/PackageParser$Activity;

    #@8d
    .line 3778
    .local v26, "t":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v26

    #@8f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@91
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@93
    move-object/from16 v0, v28

    #@95
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v4

    #@99
    if-eqz v4, :cond_4

    #@9b
    .line 3779
    move-object/from16 v27, v26

    #@9d
    .line 3784
    .end local v26    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v27    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    if-nez v27, :cond_5

    #@9f
    .line 3785
    new-instance v4, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v5, "<activity-alias> target activity "

    #@a7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    move-object/from16 v0, v28

    #@ad
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    .line 3786
    const-string/jumbo v5, " not found in manifest"

    #@b4
    .line 3785
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v4

    #@b8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v4

    #@bc
    const/4 v5, 0x0

    #@bd
    aput-object v4, p5, v5

    #@bf
    .line 3787
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    #@c2
    .line 3788
    const/4 v4, 0x0

    #@c3
    return-object v4

    #@c4
    .line 3776
    .restart local v26    # "t":Landroid/content/pm/PackageParser$Activity;
    .restart local v27    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    add-int/lit8 v18, v18, 0x1

    #@c6
    goto :goto_0

    #@c7
    .line 3791
    .end local v26    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v27    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_5
    new-instance v19, Landroid/content/pm/ActivityInfo;

    #@c9
    invoke-direct/range {v19 .. v19}, Landroid/content/pm/ActivityInfo;-><init>()V

    #@cc
    .line 3792
    .local v19, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v28

    #@ce
    move-object/from16 v1, v19

    #@d0
    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@d2
    .line 3793
    move-object/from16 v0, v27

    #@d4
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@d6
    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@d8
    move-object/from16 v0, v19

    #@da
    iput v4, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@dc
    .line 3794
    move-object/from16 v0, v27

    #@de
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@e0
    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@e2
    move-object/from16 v0, v19

    #@e4
    iput v4, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@e6
    .line 3795
    move-object/from16 v0, v27

    #@e8
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@ea
    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    #@ec
    move-object/from16 v0, v19

    #@ee
    iput v4, v0, Landroid/content/pm/ActivityInfo;->icon:I

    #@f0
    .line 3796
    move-object/from16 v0, v27

    #@f2
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@f4
    iget v4, v4, Landroid/content/pm/ActivityInfo;->logo:I

    #@f6
    move-object/from16 v0, v19

    #@f8
    iput v4, v0, Landroid/content/pm/ActivityInfo;->logo:I

    #@fa
    .line 3797
    move-object/from16 v0, v27

    #@fc
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@fe
    iget v4, v4, Landroid/content/pm/ActivityInfo;->banner:I

    #@100
    move-object/from16 v0, v19

    #@102
    iput v4, v0, Landroid/content/pm/ActivityInfo;->banner:I

    #@104
    .line 3798
    move-object/from16 v0, v27

    #@106
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@108
    iget v4, v4, Landroid/content/pm/ActivityInfo;->labelRes:I

    #@10a
    move-object/from16 v0, v19

    #@10c
    iput v4, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    #@10e
    .line 3799
    move-object/from16 v0, v27

    #@110
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@112
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@114
    move-object/from16 v0, v19

    #@116
    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@118
    .line 3800
    move-object/from16 v0, v27

    #@11a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@11c
    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@11e
    move-object/from16 v0, v19

    #@120
    iput v4, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@122
    .line 3801
    move-object/from16 v0, v27

    #@124
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@126
    iget v4, v4, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@128
    move-object/from16 v0, v19

    #@12a
    iput v4, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@12c
    .line 3802
    move-object/from16 v0, v27

    #@12e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@130
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@132
    move-object/from16 v0, v19

    #@134
    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@136
    .line 3803
    move-object/from16 v0, v19

    #@138
    iget v4, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@13a
    if-nez v4, :cond_6

    #@13c
    .line 3804
    move-object/from16 v0, v27

    #@13e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@140
    iget v4, v4, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@142
    move-object/from16 v0, v19

    #@144
    iput v4, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@146
    .line 3806
    :cond_6
    move-object/from16 v0, v27

    #@148
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@14a
    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@14c
    move-object/from16 v0, v19

    #@14e
    iput v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@150
    .line 3807
    move-object/from16 v0, v27

    #@152
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@154
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@156
    move-object/from16 v0, v19

    #@158
    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@15a
    .line 3808
    move-object/from16 v0, v27

    #@15c
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@15e
    iget v4, v4, Landroid/content/pm/ActivityInfo;->theme:I

    #@160
    move-object/from16 v0, v19

    #@162
    iput v4, v0, Landroid/content/pm/ActivityInfo;->theme:I

    #@164
    .line 3809
    move-object/from16 v0, v27

    #@166
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@168
    iget v4, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@16a
    move-object/from16 v0, v19

    #@16c
    iput v4, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@16e
    .line 3810
    move-object/from16 v0, v27

    #@170
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@172
    iget v4, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@174
    move-object/from16 v0, v19

    #@176
    iput v4, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@178
    .line 3811
    move-object/from16 v0, v27

    #@17a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@17c
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@17e
    move-object/from16 v0, v19

    #@180
    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@182
    .line 3812
    move-object/from16 v0, v27

    #@184
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@186
    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@188
    move-object/from16 v0, v19

    #@18a
    iput v4, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@18c
    .line 3813
    move-object/from16 v0, v27

    #@18e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@190
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@192
    move-object/from16 v0, v19

    #@194
    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@196
    .line 3814
    move-object/from16 v0, v27

    #@198
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@19a
    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@19c
    move-object/from16 v0, v19

    #@19e
    iput v4, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@1a0
    .line 3815
    move-object/from16 v0, v27

    #@1a2
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1a4
    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    #@1a6
    move-object/from16 v0, v19

    #@1a8
    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    #@1aa
    move-object/from16 v0, v19

    #@1ac
    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    #@1ae
    .line 3817
    new-instance v17, Landroid/content/pm/PackageParser$Activity;

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@1b4
    move-object/from16 v0, v17

    #@1b6
    move-object/from16 v1, v19

    #@1b8
    invoke-direct {v0, v4, v1}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    #@1bb
    .line 3818
    .local v17, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    #@1bc
    aget-object v4, p5, v4

    #@1be
    if-eqz v4, :cond_7

    #@1c0
    .line 3819
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    #@1c3
    .line 3820
    const/4 v4, 0x0

    #@1c4
    return-object v4

    #@1c5
    .line 3824
    :cond_7
    const/4 v4, 0x5

    #@1c6
    .line 3823
    move-object/from16 v0, v23

    #@1c8
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1cb
    move-result v24

    #@1cc
    .line 3825
    .local v24, "setExported":Z
    if-eqz v24, :cond_8

    #@1ce
    .line 3826
    move-object/from16 v0, v17

    #@1d0
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1d2
    .line 3827
    const/4 v5, 0x5

    #@1d3
    const/4 v6, 0x0

    #@1d4
    .line 3826
    move-object/from16 v0, v23

    #@1d6
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d9
    move-result v5

    #@1da
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    #@1dc
    .line 3832
    :cond_8
    const/4 v4, 0x3

    #@1dd
    const/4 v5, 0x0

    #@1de
    .line 3831
    move-object/from16 v0, v23

    #@1e0
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1e3
    move-result-object v25

    #@1e4
    .line 3833
    .local v25, "str":Ljava/lang/String;
    if-eqz v25, :cond_9

    #@1e6
    .line 3834
    move-object/from16 v0, v17

    #@1e8
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1ea
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@1ed
    move-result v4

    #@1ee
    if-lez v4, :cond_b

    #@1f0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@1f3
    move-result-object v4

    #@1f4
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1f7
    move-result-object v4

    #@1f8
    :goto_1
    iput-object v4, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@1fa
    .line 3838
    :cond_9
    const/16 v4, 0x9

    #@1fc
    .line 3839
    const/16 v5, 0x400

    #@1fe
    .line 3837
    move-object/from16 v0, v23

    #@200
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@203
    move-result-object v22

    #@204
    .line 3840
    .local v22, "parentName":Ljava/lang/String;
    if-eqz v22, :cond_a

    #@206
    .line 3841
    move-object/from16 v0, v17

    #@208
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@20a
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@20c
    move-object/from16 v0, v22

    #@20e
    move-object/from16 v1, p5

    #@210
    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@213
    move-result-object v21

    #@214
    .line 3842
    .local v21, "parentClassName":Ljava/lang/String;
    const/4 v4, 0x0

    #@215
    aget-object v4, p5, v4

    #@217
    if-nez v4, :cond_c

    #@219
    .line 3843
    move-object/from16 v0, v17

    #@21b
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@21d
    move-object/from16 v0, v21

    #@21f
    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@221
    .line 3851
    .end local v21    # "parentClassName":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    #@224
    .line 3853
    const/4 v4, 0x0

    #@225
    aget-object v4, p5, v4

    #@227
    if-eqz v4, :cond_d

    #@229
    .line 3854
    const/4 v4, 0x0

    #@22a
    return-object v4

    #@22b
    .line 3834
    .end local v22    # "parentName":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    #@22c
    goto :goto_1

    #@22d
    .line 3845
    .restart local v21    # "parentClassName":Ljava/lang/String;
    .restart local v22    # "parentName":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "PackageParser"

    #@230
    new-instance v5, Ljava/lang/StringBuilder;

    #@232
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@235
    const-string/jumbo v6, "Activity alias "

    #@238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v5

    #@23c
    move-object/from16 v0, v17

    #@23e
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@240
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@242
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v5

    #@246
    .line 3846
    const-string/jumbo v6, " specified invalid parentActivityName "

    #@249
    .line 3845
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v5

    #@24d
    move-object/from16 v0, v22

    #@24f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@252
    move-result-object v5

    #@253
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@256
    move-result-object v5

    #@257
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25a
    .line 3847
    const/4 v4, 0x0

    #@25b
    const/4 v5, 0x0

    #@25c
    aput-object v4, p5, v5

    #@25e
    goto :goto_2

    #@25f
    .line 3857
    .end local v21    # "parentClassName":Ljava/lang/String;
    :cond_d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@262
    move-result v20

    #@263
    .line 3859
    .local v20, "outerDepth":I
    :cond_e
    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@266
    move-result v29

    #@267
    .local v29, "type":I
    const/4 v4, 0x1

    #@268
    move/from16 v0, v29

    #@26a
    if-eq v0, v4, :cond_14

    #@26c
    .line 3860
    const/4 v4, 0x3

    #@26d
    move/from16 v0, v29

    #@26f
    if-ne v0, v4, :cond_f

    #@271
    .line 3861
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@274
    move-result v4

    #@275
    move/from16 v0, v20

    #@277
    if-le v4, v0, :cond_14

    #@279
    .line 3862
    :cond_f
    const/4 v4, 0x3

    #@27a
    move/from16 v0, v29

    #@27c
    if-eq v0, v4, :cond_e

    #@27e
    const/4 v4, 0x4

    #@27f
    move/from16 v0, v29

    #@281
    if-eq v0, v4, :cond_e

    #@283
    .line 3866
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@286
    move-result-object v4

    #@287
    const-string/jumbo v5, "intent-filter"

    #@28a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28d
    move-result v4

    #@28e
    if-eqz v4, :cond_12

    #@290
    .line 3867
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@292
    move-object/from16 v0, v17

    #@294
    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    #@297
    .line 3868
    .local v9, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x1

    #@298
    const/4 v8, 0x1

    #@299
    move-object/from16 v4, p0

    #@29b
    move-object/from16 v5, p2

    #@29d
    move-object/from16 v6, p3

    #@29f
    move-object/from16 v10, p5

    #@2a1
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@2a4
    move-result v4

    #@2a5
    if-nez v4, :cond_10

    #@2a7
    .line 3869
    const/4 v4, 0x0

    #@2a8
    return-object v4

    #@2a9
    .line 3871
    :cond_10
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    #@2ac
    move-result v4

    #@2ad
    if-nez v4, :cond_11

    #@2af
    .line 3872
    const-string/jumbo v4, "PackageParser"

    #@2b2
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b7
    const-string/jumbo v6, "No actions in intent filter at "

    #@2ba
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bd
    move-result-object v5

    #@2be
    .line 3873
    move-object/from16 v0, p0

    #@2c0
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@2c2
    .line 3872
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c5
    move-result-object v5

    #@2c6
    .line 3873
    const-string/jumbo v6, " "

    #@2c9
    .line 3872
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cc
    move-result-object v5

    #@2cd
    .line 3874
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@2d0
    move-result-object v6

    #@2d1
    .line 3872
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v5

    #@2d5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d8
    move-result-object v5

    #@2d9
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2dc
    goto :goto_3

    #@2dd
    .line 3876
    :cond_11
    move-object/from16 v0, v17

    #@2df
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@2e1
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e4
    goto/16 :goto_3

    #@2e6
    .line 3878
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_12
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@2e9
    move-result-object v4

    #@2ea
    const-string/jumbo v5, "meta-data"

    #@2ed
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f0
    move-result v4

    #@2f1
    if-eqz v4, :cond_13

    #@2f3
    .line 3879
    move-object/from16 v0, v17

    #@2f5
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@2f7
    move-object/from16 v0, p0

    #@2f9
    move-object/from16 v1, p2

    #@2fb
    move-object/from16 v2, p3

    #@2fd
    move-object/from16 v3, p5

    #@2ff
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@302
    move-result-object v4

    #@303
    move-object/from16 v0, v17

    #@305
    iput-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@307
    if-nez v4, :cond_e

    #@309
    .line 3881
    const/4 v4, 0x0

    #@30a
    return-object v4

    #@30b
    .line 3885
    :cond_13
    const-string/jumbo v4, "PackageParser"

    #@30e
    new-instance v5, Ljava/lang/StringBuilder;

    #@310
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@313
    const-string/jumbo v6, "Unknown element under <activity-alias>: "

    #@316
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@319
    move-result-object v5

    #@31a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@31d
    move-result-object v6

    #@31e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@321
    move-result-object v5

    #@322
    .line 3886
    const-string/jumbo v6, " at "

    #@325
    .line 3885
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@328
    move-result-object v5

    #@329
    .line 3886
    move-object/from16 v0, p0

    #@32b
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@32d
    .line 3885
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@330
    move-result-object v5

    #@331
    .line 3886
    const-string/jumbo v6, " "

    #@334
    .line 3885
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@337
    move-result-object v5

    #@338
    .line 3887
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@33b
    move-result-object v6

    #@33c
    .line 3885
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33f
    move-result-object v5

    #@340
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@343
    move-result-object v5

    #@344
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@347
    .line 3888
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@34a
    goto/16 :goto_3

    #@34c
    .line 3897
    :cond_14
    if-nez v24, :cond_15

    #@34e
    .line 3898
    move-object/from16 v0, v17

    #@350
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@352
    move-object/from16 v0, v17

    #@354
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@356
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@359
    move-result v4

    #@35a
    if-lez v4, :cond_16

    #@35c
    const/4 v4, 0x1

    #@35d
    :goto_4
    iput-boolean v4, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    #@35f
    .line 3901
    :cond_15
    return-object v17

    #@360
    .line 3898
    :cond_16
    const/4 v4, 0x0

    #@361
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
    .line 4360
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@5
    move-result v0

    #@6
    .line 4362
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
    .line 4363
    if-ne v1, v6, :cond_1

    #@e
    .line 4364
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@11
    move-result v2

    #@12
    if-le v2, v0, :cond_3

    #@14
    .line 4365
    :cond_1
    if-eq v1, v6, :cond_0

    #@16
    const/4 v2, 0x4

    #@17
    if-eq v1, v2, :cond_0

    #@19
    .line 4369
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
    .line 4371
    iget-object v2, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    #@28
    .line 4370
    invoke-direct {p0, p1, p2, v2, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    #@2e
    if-nez v2, :cond_0

    #@30
    .line 4372
    const/4 v2, 0x0

    #@31
    return v2

    #@32
    .line 4376
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
    .line 4377
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    .line 4376
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    .line 4377
    const-string/jumbo v4, " at "

    #@57
    .line 4376
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    .line 4377
    iget-object v4, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@5d
    .line 4376
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    .line 4377
    const-string/jumbo v4, " "

    #@64
    .line 4376
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    .line 4378
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    .line 4376
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
    .line 4379
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7a
    goto :goto_0

    #@7b
    .line 4387
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
    .line 1304
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v20

    #@4
    .line 1306
    .local v20, "apkPath":Ljava/lang/String;
    const/16 v21, 0x0

    #@6
    .line 1307
    .local v21, "assets":Landroid/content/res/AssetManager;
    const/16 v26, 0x0

    #@8
    .line 1309
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
    .line 1311
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .local v2, "assets":Landroid/content/res/AssetManager;
    :try_start_1
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@f
    .line 1310
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
    .line 1313
    move-object/from16 v0, v20

    #@27
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@2a
    move-result v23

    #@2b
    .line 1314
    .local v23, "cookie":I
    if-nez v23, :cond_0

    #@2d
    .line 1315
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@2f
    .line 1316
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
    .line 1315
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
    .line 1346
    .end local v23    # "cookie":I
    :catch_0
    move-exception v24

    #@4c
    .local v24, "e":Ljava/lang/Exception;
    move-object/from16 v5, v26

    #@4e
    .line 1347
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    :try_start_2
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@50
    .line 1348
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
    .line 1347
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
    .line 1349
    .end local v24    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@6f
    .line 1350
    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@72
    .line 1351
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@75
    .line 1349
    throw v3

    #@76
    .line 1319
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v23    # "cookie":I
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :try_start_3
    new-instance v25, Landroid/util/DisplayMetrics;

    #@78
    invoke-direct/range {v25 .. v25}, Landroid/util/DisplayMetrics;-><init>()V

    #@7b
    .line 1320
    .local v25, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v25 .. v25}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@7e
    .line 1322
    new-instance v4, Landroid/content/res/Resources;

    #@80
    const/4 v3, 0x0

    #@81
    move-object/from16 v0, v25

    #@83
    invoke-direct {v4, v2, v0, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    #@86
    .line 1323
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
    .line 1327
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move/from16 v0, p1

    #@91
    and-int/lit16 v3, v0, 0x100

    #@93
    if-eqz v3, :cond_1

    #@95
    .line 1329
    :try_start_4
    new-instance v27, Landroid/content/pm/PackageParser$Package;

    #@97
    const/4 v3, 0x0

    #@98
    move-object/from16 v0, v27

    #@9a
    invoke-direct {v0, v3}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    #@9d
    .line 1330
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
    .line 1332
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
    .line 1334
    const-wide/32 v6, 0x40000

    #@b1
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@b4
    .line 1336
    move-object/from16 v0, v27

    #@b6
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@b8
    .line 1337
    .local v8, "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, v27

    #@ba
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@bc
    .line 1343
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
    .line 1344
    invoke-static/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c6
    move-result-object v3

    #@c7
    .line 1350
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ca
    .line 1351
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@cd
    .line 1344
    return-object v3

    #@ce
    .line 1333
    .end local v22    # "attrs":Landroid/util/AttributeSet;
    .restart local v27    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v3

    #@cf
    .line 1334
    const-wide/32 v6, 0x40000

    #@d2
    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@d5
    .line 1333
    throw v3
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@d6
    .line 1346
    .end local v27    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :catch_1
    move-exception v24

    #@d7
    .restart local v24    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    #@d9
    .line 1339
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v8, 0x0

    #@da
    .line 1340
    .local v8, "signatures":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    #@db
    .local v9, "certificates":[[Ljava/security/cert/Certificate;
    goto :goto_2

    #@dc
    .line 1349
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
    .line 1346
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
    .line 1432
    invoke-static/range {p2 .. p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    #@3
    move-result-object v18

    #@4
    .line 1434
    .local v18, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, -0x1

    #@5
    .line 1435
    .local v8, "installLocation":I
    const/4 v6, 0x0

    #@6
    .line 1436
    .local v6, "versionCode":I
    const/4 v7, 0x0

    #@7
    .line 1437
    .local v7, "revisionCode":I
    const/4 v12, 0x0

    #@8
    .line 1438
    .local v12, "coreApp":Z
    const/4 v13, 0x0

    #@9
    .line 1439
    .local v13, "multiArch":Z
    const/4 v14, 0x0

    #@a
    .line 1440
    .local v14, "use32bitAbi":Z
    const/4 v15, 0x1

    #@b
    .line 1442
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
    .line 1443
    move-object/from16 v0, p3

    #@17
    move/from16 v1, v17

    #@19
    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    #@1c
    move-result-object v16

    #@1d
    .line 1444
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
    .line 1446
    const/4 v2, -0x1

    #@29
    .line 1445
    move-object/from16 v0, p3

    #@2b
    move/from16 v1, v17

    #@2d
    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    #@30
    move-result v8

    #@31
    .line 1442
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1447
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
    .line 1448
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
    .line 1449
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
    .line 1450
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
    .line 1451
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
    .line 1452
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
    .line 1458
    .end local v12    # "coreApp":Z
    .end local v16    # "attr":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@76
    move-result v2

    #@77
    add-int/lit8 v19, v2, 0x1

    #@79
    .line 1460
    .local v19, "searchDepth":I
    new-instance v9, Ljava/util/ArrayList;

    #@7b
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@7e
    .line 1461
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
    .line 1462
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
    .line 1463
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
    .line 1467
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
    .line 1468
    invoke-static/range {p1 .. p4}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;

    #@b6
    move-result-object v21

    #@b7
    .line 1469
    .local v21, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v21, :cond_7

    #@b9
    .line 1470
    move-object/from16 v0, v21

    #@bb
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@be
    .line 1474
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
    .line 1475
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
    .line 1476
    move-object/from16 v0, p3

    #@df
    move/from16 v1, v17

    #@e1
    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    #@e4
    move-result-object v16

    #@e5
    .line 1477
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
    .line 1478
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
    .line 1480
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
    .line 1481
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
    .line 1483
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
    .line 1484
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
    .line 1475
    :cond_a
    add-int/lit8 v17, v17, 0x1

    #@123
    goto :goto_2

    #@124
    .line 1490
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
    .line 1604
    :try_start_0
    invoke-static {p2, p2}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    #@3
    move-result-object v8

    #@4
    .line 1605
    .local v8, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@6
    check-cast v9, Ljava/lang/String;

    #@8
    .line 1606
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@a
    check-cast v11, Ljava/lang/String;

    #@c
    .line 1608
    .local v11, "splitName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 1609
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
    .line 1610
    const/16 v0, -0x6a

    #@2b
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 1611
    const/4 v0, 0x0

    #@2e
    return-object v0

    #@2f
    .line 1613
    .end local v8    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "splitName":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@30
    .line 1614
    .local v7, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/16 v0, -0x6a

    #@32
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@34
    .line 1615
    const/4 v0, 0x0

    #@35
    return-object v0

    #@36
    .line 1618
    .end local v7    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v8    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "splitName":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    #@38
    invoke-direct {v1, v9}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    #@3b
    .line 1621
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    #@3d
    .line 1620
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@40
    move-result-object v10

    #@41
    .line 1624
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x1

    #@42
    const/4 v2, 0x0

    #@43
    .line 1623
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
    .line 1626
    const/4 v0, 0x5

    #@4e
    const/4 v2, 0x0

    #@4f
    .line 1625
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@52
    move-result v0

    #@53
    iput v0, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@55
    .line 1628
    const/4 v0, 0x2

    #@56
    const/4 v2, 0x0

    #@57
    .line 1627
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@5d
    .line 1629
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@5f
    if-eqz v0, :cond_1

    #@61
    .line 1630
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@63
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@69
    .line 1633
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
    .line 1635
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    #@77
    .line 1637
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
    .line 908
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v23

    #@4
    .line 910
    .local v23, "apkPath":Ljava/lang/String;
    const/16 v33, 0x0

    #@6
    .line 911
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
    .line 912
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
    .line 913
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
    .line 916
    .end local v27    # "end":I
    .end local v33    # "volumeUuid":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    #@30
    move-object/from16 v0, p0

    #@32
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@34
    .line 917
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    move-object/from16 v0, p0

    #@3a
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@3c
    .line 921
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
    .line 923
    .local v24, "cookie":I
    const/16 v31, 0x0

    #@48
    .line 924
    .local v31, "res":Landroid/content/res/Resources;
    const/16 v29, 0x0

    #@4a
    .line 926
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
    .line 928
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v32, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v22, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@5a
    .line 927
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
    .line 929
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
    .line 931
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x1

    #@81
    new-array v0, v5, [Ljava/lang/String;

    #@83
    move-object/from16 v28, v0

    #@85
    .line 932
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
    .line 933
    .local v30, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v30, :cond_1

    #@95
    .line 934
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    #@97
    move-object/from16 v0, p0

    #@99
    iget v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@9b
    .line 935
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
    .line 934
    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@ca
    throw v5
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@cb
    .line 945
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v25

    #@cc
    .local v25, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v31, v32

    #@ce
    .line 946
    .end local v32    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_2
    throw v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cf
    .line 950
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v5

    #@d0
    .line 951
    :goto_1
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d3
    .line 950
    throw v5

    #@d4
    .line 938
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
    .line 939
    move-object/from16 v0, v30

    #@dd
    move-object/from16 v1, v33

    #@df
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    #@e2
    .line 940
    move-object/from16 v0, v30

    #@e4
    move-object/from16 v1, v23

    #@e6
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    #@e9
    .line 941
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
    .line 951
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f2
    .line 943
    return-object v30

    #@f3
    .line 947
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v32    # "res":Landroid/content/res/Resources;
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v31    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v26

    #@f4
    .line 948
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v26, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    #@f6
    .line 949
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
    .line 948
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
    .line 950
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
    .line 945
    .restart local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .local v31, "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v25

    #@119
    .restart local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    goto :goto_0

    #@11a
    .line 947
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
    .line 1525
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
    .line 1526
    const/4 v2, 0x5

    #@d
    .line 1525
    if-le v0, v2, :cond_0

    #@f
    .line 1527
    const-string/jumbo v0, "Maximum number of packages per APK is: 5"

    #@12
    const/4 v2, 0x0

    #@13
    aput-object v0, p5, v2

    #@15
    .line 1528
    const/16 v0, -0x6c

    #@17
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@19
    .line 1529
    const/4 v0, 0x0

    #@1a
    return v0

    #@1b
    .line 1533
    :cond_0
    const-string/jumbo v0, "package"

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-interface {p3, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    .line 1534
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
    .line 1535
    const/16 v0, -0x6a

    #@2d
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@2f
    .line 1536
    const/4 v0, 0x0

    #@30
    return v0

    #@31
    .line 1540
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@33
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 1541
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
    .line 1542
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@47
    .line 1541
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    .line 1543
    .local v8, "message":Ljava/lang/String;
    const-string/jumbo v0, "PackageParser"

    #@52
    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 1544
    const/4 v0, 0x0

    #@56
    aput-object v8, p5, v0

    #@58
    .line 1545
    const/16 v0, -0x6c

    #@5a
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@5c
    .line 1546
    const/4 v0, 0x0

    #@5d
    return v0

    #@5e
    .line 1550
    .end local v8    # "message":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v7}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_3

    #@64
    .line 1551
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
    .line 1552
    .restart local v8    # "message":Ljava/lang/String;
    const-string/jumbo v0, "PackageParser"

    #@7b
    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 1553
    const/4 v0, 0x0

    #@7f
    aput-object v8, p5, v0

    #@81
    .line 1554
    const/16 v0, -0x6c

    #@83
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@85
    .line 1555
    const/4 v0, 0x0

    #@86
    return v0

    #@87
    .line 1559
    .end local v8    # "message":Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    #@89
    invoke-direct {v1, v7}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    #@8c
    .line 1562
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@8e
    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@90
    .line 1563
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@92
    iput v0, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@94
    .line 1564
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@96
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@98
    .line 1565
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9a
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9c
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@9e
    iput v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@a0
    .line 1566
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a2
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a4
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@a6
    iput v2, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@a8
    .line 1568
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
    .line 1569
    if-nez v1, :cond_4

    #@b5
    .line 1571
    const/4 v0, 0x0

    #@b6
    return v0

    #@b7
    .line 1575
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@b9
    if-nez v0, :cond_5

    #@bb
    .line 1576
    new-instance v0, Ljava/util/ArrayList;

    #@bd
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c0
    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@c2
    .line 1578
    :cond_5
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@c4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c7
    .line 1579
    iput-object p1, v1, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    #@c9
    .line 1581
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
    .line 1662
    .local p2, "acceptedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    move-object/from16 v0, p0

    #@3
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@5
    .line 1663
    const/4 v5, 0x0

    #@6
    move-object/from16 v0, p0

    #@8
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@a
    .line 1664
    const/4 v5, 0x0

    #@b
    move-object/from16 v0, p0

    #@d
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@f
    .line 1665
    const/4 v5, 0x0

    #@10
    move-object/from16 v0, p0

    #@12
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@14
    .line 1668
    const/16 v20, 0x0

    #@16
    .line 1671
    .local v20, "foundApp":Z
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    #@18
    .line 1670
    move-object/from16 v0, p3

    #@1a
    move-object/from16 v1, p4

    #@1c
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1f
    move-result-object v41

    #@20
    .line 1674
    .local v41, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    #@21
    const/4 v6, 0x0

    #@22
    .line 1673
    move-object/from16 v0, v41

    #@24
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@27
    move-result-object v43

    #@28
    .line 1675
    .local v43, "str":Ljava/lang/String;
    if-eqz v43, :cond_1

    #@2a
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    #@2d
    move-result v5

    #@2e
    if-lez v5, :cond_1

    #@30
    .line 1676
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
    .line 1677
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
    .line 1683
    :cond_0
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    move-object/from16 v0, p1

    #@4d
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    #@4f
    .line 1685
    const/4 v5, 0x3

    #@50
    const/4 v6, 0x0

    #@51
    .line 1684
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
    .line 1689
    .end local v35    # "nameError":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x4

    #@5c
    .line 1690
    const/4 v6, -0x1

    #@5d
    .line 1688
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
    .line 1691
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
    .line 1695
    and-int/lit8 v5, p5, 0x10

    #@73
    if-eqz v5, :cond_2

    #@75
    .line 1696
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
    .line 1700
    :cond_2
    and-int/lit8 v5, p5, 0x20

    #@81
    if-eqz v5, :cond_3

    #@83
    .line 1701
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
    .line 1704
    :cond_3
    move/from16 v0, p5

    #@90
    and-int/lit16 v5, v0, 0x800

    #@92
    if-eqz v5, :cond_4

    #@94
    .line 1705
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
    .line 1709
    :cond_4
    const/16 v46, 0x1

    #@a0
    .line 1710
    .local v46, "supportsSmallScreens":I
    const/16 v45, 0x1

    #@a2
    .line 1711
    .local v45, "supportsNormalScreens":I
    const/16 v44, 0x1

    #@a4
    .line 1712
    .local v44, "supportsLargeScreens":I
    const/16 v47, 0x1

    #@a6
    .line 1713
    .local v47, "supportsXLargeScreens":I
    const/16 v40, 0x1

    #@a8
    .line 1714
    .local v40, "resizeable":I
    const/4 v14, 0x1

    #@a9
    .line 1716
    .local v14, "anyDensity":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@ac
    move-result v38

    #@ad
    .line 1717
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
    .line 1718
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
    .line 1719
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
    .line 1723
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@d0
    move-result-object v48

    #@d1
    .line 1725
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
    .line 1733
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
    .line 1734
    if-eqz v20, :cond_a

    #@ea
    .line 1740
    const-string/jumbo v5, "PackageParser"

    #@ed
    const-string/jumbo v6, "<manifest> has more than one <application>"

    #@f0
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f3
    .line 1741
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@f6
    goto :goto_0

    #@f7
    .line 1678
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
    .line 1679
    const-string/jumbo v6, "\": "

    #@10c
    .line 1678
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
    .line 1680
    const/16 v5, -0x6b

    #@11f
    move-object/from16 v0, p0

    #@121
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@123
    .line 1681
    const/4 v5, 0x0

    #@124
    return-object v5

    #@125
    .line 1726
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
    .line 1727
    const-string/jumbo v7, " at "

    #@13d
    .line 1726
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v6

    #@141
    .line 1727
    move-object/from16 v0, p0

    #@143
    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@145
    .line 1726
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v6

    #@149
    .line 1727
    const-string/jumbo v7, " "

    #@14c
    .line 1726
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v6

    #@150
    .line 1728
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@153
    move-result-object v7

    #@154
    .line 1726
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
    .line 1729
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@162
    goto/16 :goto_0

    #@164
    .line 1746
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
    .line 1747
    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    #@175
    move-result v5

    #@176
    if-nez v5, :cond_5

    #@178
    .line 1748
    const/4 v5, 0x0

    #@179
    return-object v5

    #@17a
    .line 1750
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
    .line 1752
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    #@187
    .line 1751
    move-object/from16 v0, p3

    #@189
    move-object/from16 v1, p4

    #@18b
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@18e
    move-result-object v41

    #@18f
    .line 1754
    const/4 v5, 0x1

    #@190
    .line 1753
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
    .line 1756
    const/4 v5, 0x0

    #@19b
    .line 1757
    const/4 v6, -0x1

    #@19c
    .line 1755
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
    .line 1758
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@1a9
    .line 1760
    move-object/from16 v0, p1

    #@1ab
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    #@1ad
    if-nez v5, :cond_c

    #@1af
    .line 1761
    const-string/jumbo v5, "<overlay> does not specify a target package"

    #@1b2
    const/4 v6, 0x0

    #@1b3
    aput-object v5, p6, v6

    #@1b5
    .line 1762
    const/16 v5, -0x6c

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@1bb
    .line 1763
    const/4 v5, 0x0

    #@1bc
    return-object v5

    #@1bd
    .line 1765
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
    .line 1766
    :cond_d
    const-string/jumbo v5, "<overlay> priority must be between 0 and 9999"

    #@1ce
    const/4 v6, 0x0

    #@1cf
    aput-object v5, p6, v6

    #@1d1
    .line 1768
    const/16 v5, -0x6c

    #@1d3
    .line 1767
    move-object/from16 v0, p0

    #@1d5
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@1d7
    .line 1769
    const/4 v5, 0x0

    #@1d8
    return-object v5

    #@1d9
    .line 1771
    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1dc
    goto/16 :goto_0

    #@1de
    .line 1773
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
    .line 1774
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
    .line 1775
    const/4 v5, 0x0

    #@1fa
    return-object v5

    #@1fb
    .line 1777
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
    .line 1778
    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    #@215
    move-result-object v5

    #@216
    if-nez v5, :cond_5

    #@218
    .line 1779
    const/4 v5, 0x0

    #@219
    return-object v5

    #@21a
    .line 1781
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
    .line 1782
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
    .line 1783
    const/4 v5, 0x0

    #@236
    return-object v5

    #@237
    .line 1785
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
    .line 1786
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
    .line 1787
    const/4 v5, 0x0

    #@253
    return-object v5

    #@254
    .line 1789
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
    .line 1790
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
    .line 1791
    const/4 v5, 0x0

    #@26e
    return-object v5

    #@26f
    .line 1793
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
    .line 1794
    const-string/jumbo v5, "uses-permission-sdk-23"

    #@27d
    move-object/from16 v0, v48

    #@27f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@282
    move-result v5

    #@283
    .line 1793
    if-eqz v5, :cond_16

    #@285
    .line 1795
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
    .line 1796
    const/4 v5, 0x0

    #@294
    return-object v5

    #@295
    .line 1798
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
    .line 1799
    new-instance v15, Landroid/content/pm/ConfigurationInfo;

    #@2a2
    invoke-direct {v15}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    #@2a5
    .line 1801
    .local v15, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    #@2a7
    .line 1800
    move-object/from16 v0, p3

    #@2a9
    move-object/from16 v1, p4

    #@2ab
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2ae
    move-result-object v41

    #@2af
    .line 1803
    const/4 v5, 0x0

    #@2b0
    .line 1804
    const/4 v6, 0x0

    #@2b1
    .line 1802
    move-object/from16 v0, v41

    #@2b3
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2b6
    move-result v5

    #@2b7
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    #@2b9
    .line 1806
    const/4 v5, 0x1

    #@2ba
    .line 1807
    const/4 v6, 0x0

    #@2bb
    .line 1805
    move-object/from16 v0, v41

    #@2bd
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2c0
    move-result v5

    #@2c1
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    #@2c3
    .line 1809
    const/4 v5, 0x2

    #@2c4
    .line 1810
    const/4 v6, 0x0

    #@2c5
    .line 1808
    move-object/from16 v0, v41

    #@2c7
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2ca
    move-result v5

    #@2cb
    if-eqz v5, :cond_17

    #@2cd
    .line 1811
    iget v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@2cf
    or-int/lit8 v5, v5, 0x1

    #@2d1
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@2d3
    .line 1814
    :cond_17
    const/4 v5, 0x3

    #@2d4
    .line 1815
    const/4 v6, 0x0

    #@2d5
    .line 1813
    move-object/from16 v0, v41

    #@2d7
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2da
    move-result v5

    #@2db
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    #@2dd
    .line 1817
    const/4 v5, 0x4

    #@2de
    .line 1818
    const/4 v6, 0x0

    #@2df
    .line 1816
    move-object/from16 v0, v41

    #@2e1
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2e4
    move-result v5

    #@2e5
    if-eqz v5, :cond_18

    #@2e7
    .line 1819
    iget v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@2e9
    or-int/lit8 v5, v5, 0x2

    #@2eb
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@2ed
    .line 1821
    :cond_18
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@2f0
    .line 1822
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
    .line 1824
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2ff
    goto/16 :goto_0

    #@301
    .line 1826
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
    .line 1827
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
    .line 1828
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
    .line 1830
    move-object/from16 v0, v19

    #@326
    iget-object v5, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@328
    if-nez v5, :cond_1a

    #@32a
    .line 1831
    new-instance v15, Landroid/content/pm/ConfigurationInfo;

    #@32c
    invoke-direct {v15}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    #@32f
    .line 1832
    .restart local v15    # "cPref":Landroid/content/pm/ConfigurationInfo;
    move-object/from16 v0, v19

    #@331
    iget v5, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@333
    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    #@335
    .line 1833
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
    .line 1836
    .end local v15    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_1a
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@344
    goto/16 :goto_0

    #@346
    .line 1838
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
    .line 1839
    new-instance v21, Landroid/content/pm/FeatureGroupInfo;

    #@353
    invoke-direct/range {v21 .. v21}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    #@356
    .line 1840
    .local v21, "group":Landroid/content/pm/FeatureGroupInfo;
    const/16 v18, 0x0

    #@358
    .line 1841
    .local v18, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@35b
    move-result v28

    #@35c
    .line 1842
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
    .line 1843
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
    .line 1844
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
    .line 1848
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@37f
    move-result-object v29

    #@380
    .line 1849
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
    .line 1850
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
    .line 1853
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
    .line 1854
    move-object/from16 v0, v18

    #@3a1
    move-object/from16 v1, v17

    #@3a3
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@3a6
    move-result-object v18

    #@3a7
    .line 1860
    .end local v17    # "featureInfo":Landroid/content/pm/FeatureInfo;
    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3aa
    goto :goto_1

    #@3ab
    .line 1856
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
    .line 1857
    const-string/jumbo v7, " at "

    #@3c3
    .line 1856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c6
    move-result-object v6

    #@3c7
    .line 1857
    move-object/from16 v0, p0

    #@3c9
    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@3cb
    .line 1856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ce
    move-result-object v6

    #@3cf
    .line 1857
    const-string/jumbo v7, " "

    #@3d2
    .line 1856
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d5
    move-result-object v6

    #@3d6
    .line 1858
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@3d9
    move-result-object v7

    #@3da
    .line 1856
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
    .line 1863
    .end local v29    # "innerTagName":Ljava/lang/String;
    :cond_1f
    if-eqz v18, :cond_20

    #@3e8
    .line 1864
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
    .line 1865
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
    .line 1867
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
    .line 1869
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
    .line 1870
    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    #@41f
    if-lez v5, :cond_30

    #@421
    .line 1872
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    #@423
    .line 1871
    move-object/from16 v0, p3

    #@425
    move-object/from16 v1, p4

    #@427
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@42a
    move-result-object v41

    #@42b
    .line 1874
    const/16 v33, 0x1

    #@42d
    .line 1875
    .local v33, "minVers":I
    const/16 v32, 0x0

    #@42f
    .line 1876
    .local v32, "minCode":Ljava/lang/String;
    const/16 v50, 0x0

    #@431
    .line 1877
    .local v50, "targetVers":I
    const/16 v49, 0x0

    #@433
    .line 1880
    .local v49, "targetCode":Ljava/lang/String;
    const/4 v5, 0x0

    #@434
    .line 1879
    move-object/from16 v0, v41

    #@436
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@439
    move-result-object v52

    #@43a
    .line 1881
    .local v52, "val":Landroid/util/TypedValue;
    if-eqz v52, :cond_22

    #@43c
    .line 1882
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
    .line 1883
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
    .line 1891
    .end local v32    # "minCode":Ljava/lang/String;
    .end local v49    # "targetCode":Ljava/lang/String;
    :cond_22
    :goto_3
    const/4 v5, 0x1

    #@454
    .line 1890
    move-object/from16 v0, v41

    #@456
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@459
    move-result-object v52

    #@45a
    .line 1892
    if-eqz v52, :cond_23

    #@45c
    .line 1893
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
    .line 1894
    move-object/from16 v0, v52

    #@46b
    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@46d
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@470
    move-result-object v49

    #@471
    .line 1895
    .local v49, "targetCode":Ljava/lang/String;
    if-nez v32, :cond_23

    #@473
    .line 1896
    move-object/from16 v32, v49

    #@475
    .line 1904
    .end local v49    # "targetCode":Ljava/lang/String;
    :cond_23
    :goto_4
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@478
    .line 1906
    if-eqz v32, :cond_2b

    #@47a
    .line 1907
    const/4 v13, 0x0

    #@47b
    .line 1908
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
    .line 1909
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
    .line 1910
    const/4 v13, 0x1

    #@48e
    .line 1914
    .end local v16    # "codename":Ljava/lang/String;
    :cond_24
    if-nez v13, :cond_29

    #@490
    .line 1915
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@492
    array-length v5, v5

    #@493
    if-lez v5, :cond_28

    #@495
    .line 1916
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
    .line 1917
    const-string/jumbo v6, " (current platform is any of "

    #@4aa
    .line 1916
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ad
    move-result-object v5

    #@4ae
    .line 1918
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@4b0
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@4b3
    move-result-object v6

    #@4b4
    .line 1916
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b7
    move-result-object v5

    #@4b8
    .line 1918
    const-string/jumbo v6, ")"

    #@4bb
    .line 1916
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
    .line 1923
    :goto_6
    const/16 v5, -0xc

    #@4c8
    move-object/from16 v0, p0

    #@4ca
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@4cc
    .line 1924
    const/4 v5, 0x0

    #@4cd
    return-object v5

    #@4ce
    .line 1886
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
    .line 1900
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
    .line 1908
    .restart local v13    # "allowedCodename":Z
    .restart local v16    # "codename":Ljava/lang/String;
    :cond_27
    add-int/lit8 v5, v5, 0x1

    #@4e1
    goto :goto_5

    #@4e2
    .line 1920
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
    .line 1921
    const-string/jumbo v6, " but this is a release platform."

    #@4f7
    .line 1920
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
    .line 1926
    :cond_29
    move-object/from16 v0, p1

    #@505
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@507
    .line 1927
    const/16 v6, 0x2710

    #@509
    .line 1926
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@50b
    .line 1937
    .end local v13    # "allowedCodename":Z
    :goto_7
    if-eqz v49, :cond_31

    #@50d
    .line 1938
    const/4 v13, 0x0

    #@50e
    .line 1939
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
    .line 1940
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
    .line 1941
    const/4 v13, 0x1

    #@521
    .line 1945
    .end local v16    # "codename":Ljava/lang/String;
    :cond_2a
    if-nez v13, :cond_2f

    #@523
    .line 1946
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@525
    array-length v5, v5

    #@526
    if-lez v5, :cond_2e

    #@528
    .line 1947
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
    .line 1948
    const-string/jumbo v6, " (current platform is any of "

    #@53d
    .line 1947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@540
    move-result-object v5

    #@541
    .line 1949
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@543
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@546
    move-result-object v6

    #@547
    .line 1947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54a
    move-result-object v5

    #@54b
    .line 1949
    const-string/jumbo v6, ")"

    #@54e
    .line 1947
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
    .line 1954
    :goto_9
    const/16 v5, -0xc

    #@55b
    move-object/from16 v0, p0

    #@55d
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@55f
    .line 1955
    const/4 v5, 0x0

    #@560
    return-object v5

    #@561
    .line 1928
    .end local v13    # "allowedCodename":Z
    :cond_2b
    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    #@563
    move/from16 v0, v33

    #@565
    if-le v0, v5, :cond_2c

    #@567
    .line 1929
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
    .line 1930
    const-string/jumbo v6, " (current version is #"

    #@57c
    .line 1929
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57f
    move-result-object v5

    #@580
    .line 1930
    sget v6, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    #@582
    .line 1929
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@585
    move-result-object v5

    #@586
    .line 1930
    const-string/jumbo v6, ")"

    #@589
    .line 1929
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
    .line 1931
    const/16 v5, -0xc

    #@596
    move-object/from16 v0, p0

    #@598
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@59a
    .line 1932
    const/4 v5, 0x0

    #@59b
    return-object v5

    #@59c
    .line 1934
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
    .line 1939
    .restart local v13    # "allowedCodename":Z
    .restart local v16    # "codename":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    #@5a8
    goto/16 :goto_8

    #@5aa
    .line 1951
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
    .line 1952
    const-string/jumbo v6, " but this is a release platform."

    #@5bf
    .line 1951
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
    .line 1958
    :cond_2f
    move-object/from16 v0, p1

    #@5cd
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5cf
    .line 1959
    const/16 v6, 0x2710

    #@5d1
    .line 1958
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@5d3
    .line 1965
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
    .line 1961
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
    .line 1967
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
    .line 1969
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    #@5ee
    .line 1968
    move-object/from16 v0, p3

    #@5f0
    move-object/from16 v1, p4

    #@5f2
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5f5
    move-result-object v41

    #@5f6
    .line 1971
    move-object/from16 v0, p1

    #@5f8
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5fa
    .line 1972
    const/4 v6, 0x6

    #@5fb
    .line 1973
    const/4 v7, 0x0

    #@5fc
    .line 1971
    move-object/from16 v0, v41

    #@5fe
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@601
    move-result v6

    #@602
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@604
    .line 1974
    move-object/from16 v0, p1

    #@606
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@608
    .line 1975
    const/4 v6, 0x7

    #@609
    .line 1976
    const/4 v7, 0x0

    #@60a
    .line 1974
    move-object/from16 v0, v41

    #@60c
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@60f
    move-result v6

    #@610
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@612
    .line 1977
    move-object/from16 v0, p1

    #@614
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@616
    .line 1978
    const/16 v6, 0x8

    #@618
    .line 1979
    const/4 v7, 0x0

    #@619
    .line 1977
    move-object/from16 v0, v41

    #@61b
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@61e
    move-result v6

    #@61f
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@621
    .line 1984
    const/4 v5, 0x1

    #@622
    .line 1983
    move-object/from16 v0, v41

    #@624
    move/from16 v1, v46

    #@626
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@629
    move-result v46

    #@62a
    .line 1987
    const/4 v5, 0x2

    #@62b
    .line 1986
    move-object/from16 v0, v41

    #@62d
    move/from16 v1, v45

    #@62f
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@632
    move-result v45

    #@633
    .line 1990
    const/4 v5, 0x3

    #@634
    .line 1989
    move-object/from16 v0, v41

    #@636
    move/from16 v1, v44

    #@638
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@63b
    move-result v44

    #@63c
    .line 1993
    const/4 v5, 0x5

    #@63d
    .line 1992
    move-object/from16 v0, v41

    #@63f
    move/from16 v1, v47

    #@641
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@644
    move-result v47

    #@645
    .line 1996
    const/4 v5, 0x4

    #@646
    .line 1995
    move-object/from16 v0, v41

    #@648
    move/from16 v1, v40

    #@64a
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@64d
    move-result v40

    #@64e
    .line 1999
    const/4 v5, 0x0

    #@64f
    .line 1998
    move-object/from16 v0, v41

    #@651
    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@654
    move-result v14

    #@655
    .line 2002
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@658
    .line 2004
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@65b
    goto/16 :goto_0

    #@65d
    .line 2006
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
    .line 2008
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    #@66a
    .line 2007
    move-object/from16 v0, p3

    #@66c
    move-object/from16 v1, p4

    #@66e
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@671
    move-result-object v41

    #@672
    .line 2013
    const/4 v5, 0x0

    #@673
    .line 2012
    move-object/from16 v0, v41

    #@675
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@678
    move-result-object v34

    #@679
    .line 2015
    .local v34, "name":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@67c
    .line 2017
    if-eqz v34, :cond_35

    #@67e
    and-int/lit8 v5, p5, 0x1

    #@680
    if-eqz v5, :cond_35

    #@682
    .line 2018
    move-object/from16 v0, p1

    #@684
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    #@686
    if-nez v5, :cond_34

    #@688
    .line 2019
    new-instance v5, Ljava/util/ArrayList;

    #@68a
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@68d
    move-object/from16 v0, p1

    #@68f
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    #@691
    .line 2021
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
    .line 2022
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
    .line 2026
    :cond_35
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@6ab
    goto/16 :goto_0

    #@6ad
    .line 2028
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
    .line 2029
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
    .line 2030
    const/4 v5, 0x0

    #@6c9
    return-object v5

    #@6ca
    .line 2032
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
    .line 2034
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    #@6d7
    .line 2033
    move-object/from16 v0, p3

    #@6d9
    move-object/from16 v1, p4

    #@6db
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6de
    move-result-object v41

    #@6df
    .line 2037
    const/4 v5, 0x0

    #@6e0
    const/4 v6, 0x0

    #@6e1
    .line 2036
    move-object/from16 v0, v41

    #@6e3
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@6e6
    move-result-object v37

    #@6e7
    .line 2038
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
    .line 2039
    move-object/from16 v0, p1

    #@6f5
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    #@6f7
    if-nez v5, :cond_38

    #@6f9
    .line 2040
    new-instance v5, Ljava/util/ArrayList;

    #@6fb
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@6fe
    move-object/from16 v0, p1

    #@700
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    #@702
    .line 2041
    move-object/from16 v0, p1

    #@704
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@706
    move-object/from16 v0, p1

    #@708
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    #@70a
    .line 2043
    :cond_38
    move-object/from16 v0, p1

    #@70c
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    #@70e
    move-object/from16 v0, v37

    #@710
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@713
    .line 2046
    :cond_39
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@716
    .line 2048
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@719
    goto/16 :goto_0

    #@71b
    .line 2050
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
    .line 2052
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    #@728
    .line 2051
    move-object/from16 v0, p3

    #@72a
    move-object/from16 v1, p4

    #@72c
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@72f
    move-result-object v41

    #@730
    .line 2055
    const/4 v5, 0x0

    #@731
    const/4 v6, 0x0

    #@732
    .line 2054
    move-object/from16 v0, v41

    #@734
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@737
    move-result-object v34

    #@738
    .line 2057
    .restart local v34    # "name":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@73b
    .line 2059
    if-eqz v34, :cond_3c

    #@73d
    .line 2060
    move-object/from16 v0, p1

    #@73f
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    #@741
    if-nez v5, :cond_3b

    #@743
    .line 2061
    new-instance v5, Ljava/util/ArrayList;

    #@745
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@748
    move-object/from16 v0, p1

    #@74a
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    #@74c
    .line 2063
    :cond_3b
    move-object/from16 v0, p1

    #@74e
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    #@750
    move-object/from16 v0, v34

    #@752
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@755
    .line 2066
    :cond_3c
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@758
    goto/16 :goto_0

    #@75a
    .line 2068
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
    .line 2070
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@768
    goto/16 :goto_0

    #@76a
    .line 2073
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
    .line 2075
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@778
    goto/16 :goto_0

    #@77a
    .line 2077
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
    .line 2078
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@788
    goto/16 :goto_0

    #@78a
    .line 2081
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
    .line 2083
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@798
    goto/16 :goto_0

    #@79a
    .line 2086
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
    .line 2088
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7a8
    goto/16 :goto_0

    #@7aa
    .line 2096
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
    .line 2097
    and-int/lit8 v5, p5, 0x40

    #@7b7
    if-eqz v5, :cond_44

    #@7b9
    .line 2099
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    #@7bb
    .line 2098
    move-object/from16 v0, p3

    #@7bd
    move-object/from16 v1, p4

    #@7bf
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7c2
    move-result-object v41

    #@7c3
    .line 2101
    const/4 v5, 0x0

    #@7c4
    const/4 v6, 0x0

    #@7c5
    .line 2100
    move-object/from16 v0, v41

    #@7c7
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@7ca
    move-result-object v22

    #@7cb
    .line 2102
    .local v22, "hash":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    #@7ce
    .line 2104
    const/4 v5, 0x0

    #@7cf
    move-object/from16 v0, p1

    #@7d1
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    #@7d3
    .line 2105
    if-eqz v22, :cond_44

    #@7d5
    .line 2106
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    #@7d8
    move-result v24

    #@7d9
    .line 2107
    .local v24, "hashLength":I
    div-int/lit8 v5, v24, 0x2

    #@7db
    new-array v0, v5, [B

    #@7dd
    move-object/from16 v23, v0

    #@7df
    .line 2108
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
    .line 2109
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
    .line 2110
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
    .line 2109
    add-int/2addr v6, v7

    #@808
    int-to-byte v6, v6

    #@809
    aput-byte v6, v23, v5

    #@80b
    .line 2108
    add-int/lit8 v25, v25, 0x2

    #@80d
    goto :goto_b

    #@80e
    .line 2112
    :cond_43
    move-object/from16 v0, v23

    #@810
    move-object/from16 v1, p1

    #@812
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    #@814
    .line 2116
    .end local v22    # "hash":Ljava/lang/String;
    .end local v23    # "hashBytes":[B
    .end local v24    # "hashLength":I
    .end local v25    # "i":I
    :cond_44
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@817
    goto/16 :goto_0

    #@819
    .line 2125
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
    .line 2126
    const-string/jumbo v7, " at "

    #@833
    .line 2125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@836
    move-result-object v6

    #@837
    .line 2126
    move-object/from16 v0, p0

    #@839
    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@83b
    .line 2125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83e
    move-result-object v6

    #@83f
    .line 2126
    const-string/jumbo v7, " "

    #@842
    .line 2125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@845
    move-result-object v6

    #@846
    .line 2127
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@849
    move-result-object v7

    #@84a
    .line 2125
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
    .line 2128
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@858
    goto/16 :goto_0

    #@85a
    .line 2133
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
    .line 2134
    const-string/jumbo v5, "<manifest> does not contain an <application> or <instrumentation>"

    #@869
    const/4 v6, 0x0

    #@86a
    aput-object v5, p6, v6

    #@86c
    .line 2135
    const/16 v5, -0x6d

    #@86e
    move-object/from16 v0, p0

    #@870
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@872
    .line 2138
    :cond_47
    sget-object v5, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@874
    array-length v11, v5

    #@875
    .line 2139
    .local v11, "NP":I
    const/16 v26, 0x0

    #@877
    .line 2140
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
    .line 2142
    sget-object v5, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@87f
    .line 2141
    aget-object v36, v5, v30

    #@881
    .line 2143
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
    .line 2158
    .end local v36    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_48
    if-eqz v26, :cond_49

    #@88f
    .line 2159
    const-string/jumbo v5, "PackageParser"

    #@892
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@895
    move-result-object v6

    #@896
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@899
    .line 2162
    :cond_49
    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@89b
    array-length v12, v5

    #@89c
    .line 2163
    .local v12, "NS":I
    const/16 v31, 0x0

    #@89e
    .local v31, "is":I
    :goto_d
    move/from16 v0, v31

    #@8a0
    if-ge v0, v12, :cond_4f

    #@8a2
    .line 2165
    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@8a4
    .line 2164
    aget-object v42, v5, v31

    #@8a6
    .line 2166
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
    .line 2167
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
    .line 2170
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
    .line 2171
    move-object/from16 v0, v42

    #@8cd
    iget-object v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    #@8cf
    aget-object v39, v5, v27

    #@8d1
    .line 2172
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
    .line 2173
    move-object/from16 v0, p1

    #@8df
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@8e1
    move-object/from16 v0, v39

    #@8e3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8e6
    .line 2170
    :cond_4a
    add-int/lit8 v27, v27, 0x1

    #@8e8
    goto :goto_e

    #@8e9
    .line 2146
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
    .line 2147
    if-nez v26, :cond_4d

    #@8f9
    .line 2148
    new-instance v26, Ljava/lang/StringBuilder;

    #@8fb
    const/16 v5, 0x80

    #@8fd
    move-object/from16 v0, v26

    #@8ff
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@902
    .line 2149
    .local v26, "implicitPerms":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    #@904
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@906
    move-object/from16 v0, v26

    #@908
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90b
    .line 2150
    const-string/jumbo v5, ": compat added "

    #@90e
    move-object/from16 v0, v26

    #@910
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@913
    .line 2154
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
    .line 2155
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
    .line 2140
    :cond_4c
    add-int/lit8 v30, v30, 0x1

    #@929
    goto/16 :goto_c

    #@92b
    .line 2152
    :cond_4d
    const/16 v5, 0x20

    #@92d
    move-object/from16 v0, v26

    #@92f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@932
    goto :goto_f

    #@933
    .line 2163
    .end local v36    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    .restart local v12    # "NS":I
    .restart local v31    # "is":I
    .restart local v42    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_4e
    add-int/lit8 v31, v31, 0x1

    #@935
    goto/16 :goto_d

    #@937
    .line 2178
    .end local v42    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_4f
    if-ltz v46, :cond_50

    #@939
    if-lez v46, :cond_51

    #@93b
    .line 2179
    move-object/from16 v0, p1

    #@93d
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@93f
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@941
    .line 2180
    const/4 v6, 0x4

    #@942
    .line 2179
    if-lt v5, v6, :cond_51

    #@944
    .line 2181
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
    .line 2183
    :cond_51
    if-eqz v45, :cond_52

    #@950
    .line 2184
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
    .line 2186
    :cond_52
    if-ltz v44, :cond_53

    #@95c
    if-lez v44, :cond_54

    #@95e
    .line 2187
    move-object/from16 v0, p1

    #@960
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@962
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@964
    .line 2188
    const/4 v6, 0x4

    #@965
    .line 2187
    if-lt v5, v6, :cond_54

    #@967
    .line 2189
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
    .line 2191
    :cond_54
    if-ltz v47, :cond_55

    #@973
    if-lez v47, :cond_56

    #@975
    .line 2192
    move-object/from16 v0, p1

    #@977
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@979
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@97b
    .line 2193
    const/16 v6, 0x9

    #@97d
    .line 2192
    if-lt v5, v6, :cond_56

    #@97f
    .line 2194
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
    .line 2196
    :cond_56
    if-ltz v40, :cond_57

    #@98c
    if-lez v40, :cond_58

    #@98e
    .line 2197
    move-object/from16 v0, p1

    #@990
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@992
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@994
    .line 2198
    const/4 v6, 0x4

    #@995
    .line 2197
    if-lt v5, v6, :cond_58

    #@997
    .line 2199
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
    .line 2201
    :cond_58
    if-ltz v14, :cond_59

    #@9a3
    if-lez v14, :cond_5a

    #@9a5
    .line 2202
    move-object/from16 v0, p1

    #@9a7
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9a9
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@9ab
    .line 2203
    const/4 v6, 0x4

    #@9ac
    .line 2202
    if-lt v5, v6, :cond_5a

    #@9ae
    .line 2204
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
    .line 2207
    :cond_5a
    return-object p1
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 34
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
    .line 2730
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    move-object/from16 v16, v0

    #@6
    .line 2731
    .local v16, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    #@8
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@c
    move-object/from16 v24, v0

    #@e
    .line 2734
    .local v24, "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    #@10
    .line 2733
    move-object/from16 v0, p2

    #@12
    move-object/from16 v1, p3

    #@14
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@17
    move-result-object v29

    #@18
    .line 2737
    .local v29, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    #@19
    const/4 v5, 0x0

    #@1a
    .line 2736
    move-object/from16 v0, v29

    #@1c
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1f
    move-result-object v22

    #@20
    .line 2738
    .local v22, "name":Ljava/lang/String;
    if-eqz v22, :cond_0

    #@22
    .line 2739
    move-object/from16 v0, v24

    #@24
    move-object/from16 v1, v22

    #@26
    move-object/from16 v2, p5

    #@28
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    move-object/from16 v0, v16

    #@2e
    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@30
    .line 2740
    move-object/from16 v0, v16

    #@32
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@34
    if-nez v4, :cond_0

    #@36
    .line 2741
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    #@39
    .line 2742
    const/16 v4, -0x6c

    #@3b
    move-object/from16 v0, p0

    #@3d
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@3f
    .line 2743
    const/4 v4, 0x0

    #@40
    return v4

    #@41
    .line 2748
    :cond_0
    const/4 v4, 0x4

    #@42
    .line 2749
    const/16 v5, 0x400

    #@44
    .line 2747
    move-object/from16 v0, v29

    #@46
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@49
    move-result-object v21

    #@4a
    .line 2750
    .local v21, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v21, :cond_1

    #@4c
    .line 2751
    move-object/from16 v0, v24

    #@4e
    move-object/from16 v1, v21

    #@50
    move-object/from16 v2, p5

    #@52
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    move-object/from16 v0, v16

    #@58
    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@5a
    .line 2756
    :cond_1
    const/16 v4, 0x11

    #@5c
    const/4 v5, 0x1

    #@5d
    .line 2755
    move-object/from16 v0, v29

    #@5f
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@62
    move-result v17

    #@63
    .line 2757
    .local v17, "allowBackup":Z
    if-eqz v17, :cond_6

    #@65
    .line 2758
    move-object/from16 v0, v16

    #@67
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@69
    const v5, 0x8000

    #@6c
    or-int/2addr v4, v5

    #@6d
    move-object/from16 v0, v16

    #@6f
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@71
    .line 2764
    const/16 v4, 0x10

    #@73
    .line 2765
    const/16 v5, 0x400

    #@75
    .line 2763
    move-object/from16 v0, v29

    #@77
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@7a
    move-result-object v18

    #@7b
    .line 2766
    .local v18, "backupAgent":Ljava/lang/String;
    if-eqz v18, :cond_5

    #@7d
    .line 2767
    move-object/from16 v0, v24

    #@7f
    move-object/from16 v1, v18

    #@81
    move-object/from16 v2, p5

    #@83
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    move-object/from16 v0, v16

    #@89
    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@8b
    .line 2774
    const/16 v4, 0x12

    #@8d
    .line 2775
    const/4 v5, 0x1

    #@8e
    .line 2773
    move-object/from16 v0, v29

    #@90
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@93
    move-result v4

    #@94
    if-eqz v4, :cond_2

    #@96
    .line 2776
    move-object/from16 v0, v16

    #@98
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9a
    const/high16 v5, 0x10000

    #@9c
    or-int/2addr v4, v5

    #@9d
    move-object/from16 v0, v16

    #@9f
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a1
    .line 2779
    :cond_2
    const/16 v4, 0x15

    #@a3
    .line 2780
    const/4 v5, 0x0

    #@a4
    .line 2778
    move-object/from16 v0, v29

    #@a6
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a9
    move-result v4

    #@aa
    if-eqz v4, :cond_3

    #@ac
    .line 2781
    move-object/from16 v0, v16

    #@ae
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@b0
    const/high16 v5, 0x20000

    #@b2
    or-int/2addr v4, v5

    #@b3
    move-object/from16 v0, v16

    #@b5
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@b7
    .line 2784
    :cond_3
    const/16 v4, 0x20

    #@b9
    .line 2785
    const/4 v5, 0x0

    #@ba
    .line 2783
    move-object/from16 v0, v29

    #@bc
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@bf
    move-result v4

    #@c0
    if-eqz v4, :cond_4

    #@c2
    .line 2786
    move-object/from16 v0, v16

    #@c4
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@c6
    const/high16 v5, 0x4000000

    #@c8
    or-int/2addr v4, v5

    #@c9
    move-object/from16 v0, v16

    #@cb
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@cd
    .line 2789
    :cond_4
    const/16 v4, 0x28

    #@cf
    .line 2790
    const/4 v5, 0x0

    #@d0
    .line 2788
    move-object/from16 v0, v29

    #@d2
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d5
    move-result v4

    #@d6
    if-eqz v4, :cond_5

    #@d8
    .line 2791
    move-object/from16 v0, v16

    #@da
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@dc
    or-int/lit16 v4, v4, 0x1000

    #@de
    move-object/from16 v0, v16

    #@e0
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@e2
    .line 2796
    :cond_5
    const/16 v4, 0x23

    #@e4
    .line 2795
    move-object/from16 v0, v29

    #@e6
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@e9
    move-result-object v33

    #@ea
    .line 2797
    .local v33, "v":Landroid/util/TypedValue;
    if-eqz v33, :cond_6

    #@ec
    move-object/from16 v0, v33

    #@ee
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    #@f0
    move-object/from16 v0, v16

    #@f2
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@f4
    if-nez v4, :cond_6

    #@f6
    .line 2803
    move-object/from16 v0, v33

    #@f8
    iget v4, v0, Landroid/util/TypedValue;->data:I

    #@fa
    if-nez v4, :cond_1c

    #@fc
    const/4 v4, -0x1

    #@fd
    :goto_0
    move-object/from16 v0, v16

    #@ff
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@101
    .line 2811
    .end local v18    # "backupAgent":Ljava/lang/String;
    .end local v33    # "v":Landroid/util/TypedValue;
    :cond_6
    const/4 v4, 0x1

    #@102
    .line 2810
    move-object/from16 v0, v29

    #@104
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@107
    move-result-object v33

    #@108
    .line 2812
    .restart local v33    # "v":Landroid/util/TypedValue;
    if-eqz v33, :cond_7

    #@10a
    move-object/from16 v0, v33

    #@10c
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    #@10e
    move-object/from16 v0, v16

    #@110
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    #@112
    if-nez v4, :cond_7

    #@114
    .line 2813
    invoke-virtual/range {v33 .. v33}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@117
    move-result-object v4

    #@118
    move-object/from16 v0, v16

    #@11a
    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@11c
    .line 2817
    :cond_7
    const/4 v4, 0x2

    #@11d
    const/4 v5, 0x0

    #@11e
    .line 2816
    move-object/from16 v0, v29

    #@120
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@123
    move-result v4

    #@124
    move-object/from16 v0, v16

    #@126
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    #@128
    .line 2819
    const/16 v4, 0x16

    #@12a
    const/4 v5, 0x0

    #@12b
    .line 2818
    move-object/from16 v0, v29

    #@12d
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@130
    move-result v4

    #@131
    move-object/from16 v0, v16

    #@133
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    #@135
    .line 2821
    const/16 v4, 0x1e

    #@137
    const/4 v5, 0x0

    #@138
    .line 2820
    move-object/from16 v0, v29

    #@13a
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@13d
    move-result v4

    #@13e
    move-object/from16 v0, v16

    #@140
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    #@142
    .line 2823
    const/4 v4, 0x0

    #@143
    const/4 v5, 0x0

    #@144
    .line 2822
    move-object/from16 v0, v29

    #@146
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@149
    move-result v4

    #@14a
    move-object/from16 v0, v16

    #@14c
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    #@14e
    .line 2825
    const/16 v4, 0xd

    #@150
    const/4 v5, 0x0

    #@151
    .line 2824
    move-object/from16 v0, v29

    #@153
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@156
    move-result v4

    #@157
    move-object/from16 v0, v16

    #@159
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@15b
    .line 2827
    and-int/lit8 v4, p4, 0x1

    #@15d
    if-eqz v4, :cond_8

    #@15f
    .line 2829
    const/16 v4, 0x8

    #@161
    .line 2830
    const/4 v5, 0x0

    #@162
    .line 2828
    move-object/from16 v0, v29

    #@164
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@167
    move-result v4

    #@168
    if-eqz v4, :cond_8

    #@16a
    .line 2831
    move-object/from16 v0, v16

    #@16c
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@16e
    or-int/lit8 v4, v4, 0x8

    #@170
    move-object/from16 v0, v16

    #@172
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@174
    .line 2836
    :cond_8
    const/16 v4, 0x1b

    #@176
    .line 2837
    const/4 v5, 0x0

    #@177
    .line 2835
    move-object/from16 v0, v29

    #@179
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@17c
    move-result v4

    #@17d
    if-eqz v4, :cond_9

    #@17f
    .line 2838
    const/4 v4, 0x1

    #@180
    move-object/from16 v0, p1

    #@182
    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    #@184
    .line 2841
    :cond_9
    const/16 v4, 0x1c

    #@186
    move-object/from16 v0, v29

    #@188
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@18b
    move-result-object v27

    #@18c
    .line 2843
    .local v27, "restrictedAccountType":Ljava/lang/String;
    if-eqz v27, :cond_a

    #@18e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    #@191
    move-result v4

    #@192
    if-lez v4, :cond_a

    #@194
    .line 2844
    move-object/from16 v0, v27

    #@196
    move-object/from16 v1, p1

    #@198
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    #@19a
    .line 2847
    :cond_a
    const/16 v4, 0x1d

    #@19c
    move-object/from16 v0, v29

    #@19e
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1a1
    move-result-object v26

    #@1a2
    .line 2849
    .local v26, "requiredAccountType":Ljava/lang/String;
    if-eqz v26, :cond_b

    #@1a4
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    #@1a7
    move-result v4

    #@1a8
    if-lez v4, :cond_b

    #@1aa
    .line 2850
    move-object/from16 v0, v26

    #@1ac
    move-object/from16 v1, p1

    #@1ae
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    #@1b0
    .line 2854
    :cond_b
    const/16 v4, 0xa

    #@1b2
    .line 2855
    const/4 v5, 0x0

    #@1b3
    .line 2853
    move-object/from16 v0, v29

    #@1b5
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b8
    move-result v4

    #@1b9
    if-eqz v4, :cond_c

    #@1bb
    .line 2856
    move-object/from16 v0, v16

    #@1bd
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1bf
    or-int/lit8 v4, v4, 0x2

    #@1c1
    move-object/from16 v0, v16

    #@1c3
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1c5
    .line 2860
    :cond_c
    const/16 v4, 0x14

    #@1c7
    .line 2861
    const/4 v5, 0x0

    #@1c8
    .line 2859
    move-object/from16 v0, v29

    #@1ca
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1cd
    move-result v4

    #@1ce
    if-eqz v4, :cond_d

    #@1d0
    .line 2862
    move-object/from16 v0, v16

    #@1d2
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1d4
    or-int/lit16 v4, v4, 0x4000

    #@1d6
    move-object/from16 v0, v16

    #@1d8
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1da
    .line 2867
    :cond_d
    move-object/from16 v0, p1

    #@1dc
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1de
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@1e0
    const/16 v5, 0xe

    #@1e2
    if-lt v4, v5, :cond_1d

    #@1e4
    const/4 v4, 0x1

    #@1e5
    .line 2866
    :goto_1
    const/16 v5, 0x17

    #@1e7
    .line 2865
    move-object/from16 v0, v29

    #@1e9
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1ec
    move-result v4

    #@1ed
    move-object/from16 v0, p1

    #@1ef
    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@1f1
    .line 2868
    move-object/from16 v0, p1

    #@1f3
    iget-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@1f5
    if-eqz v4, :cond_e

    #@1f7
    .line 2869
    move-object/from16 v0, v16

    #@1f9
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1fb
    const/high16 v5, 0x20000000

    #@1fd
    or-int/2addr v4, v5

    #@1fe
    move-object/from16 v0, v16

    #@200
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@202
    .line 2873
    :cond_e
    const/4 v4, 0x7

    #@203
    .line 2874
    const/4 v5, 0x1

    #@204
    .line 2872
    move-object/from16 v0, v29

    #@206
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@209
    move-result v4

    #@20a
    if-eqz v4, :cond_f

    #@20c
    .line 2875
    move-object/from16 v0, v16

    #@20e
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@210
    or-int/lit8 v4, v4, 0x4

    #@212
    move-object/from16 v0, v16

    #@214
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@216
    .line 2879
    :cond_f
    const/16 v4, 0xe

    #@218
    .line 2880
    const/4 v5, 0x0

    #@219
    .line 2878
    move-object/from16 v0, v29

    #@21b
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@21e
    move-result v4

    #@21f
    if-eqz v4, :cond_10

    #@221
    .line 2881
    move-object/from16 v0, v16

    #@223
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@225
    or-int/lit8 v4, v4, 0x20

    #@227
    move-object/from16 v0, v16

    #@229
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@22b
    .line 2885
    :cond_10
    const/4 v4, 0x5

    #@22c
    .line 2886
    const/4 v5, 0x1

    #@22d
    .line 2884
    move-object/from16 v0, v29

    #@22f
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@232
    move-result v4

    #@233
    if-eqz v4, :cond_11

    #@235
    .line 2887
    move-object/from16 v0, v16

    #@237
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@239
    or-int/lit8 v4, v4, 0x40

    #@23b
    move-object/from16 v0, v16

    #@23d
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@23f
    .line 2891
    :cond_11
    move-object/from16 v0, p1

    #@241
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    #@243
    if-nez v4, :cond_12

    #@245
    .line 2893
    const/16 v4, 0xf

    #@247
    .line 2894
    const/4 v5, 0x0

    #@248
    .line 2892
    move-object/from16 v0, v29

    #@24a
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@24d
    move-result v4

    #@24e
    if-eqz v4, :cond_12

    #@250
    .line 2895
    move-object/from16 v0, v16

    #@252
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@254
    or-int/lit16 v4, v4, 0x100

    #@256
    move-object/from16 v0, v16

    #@258
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@25a
    .line 2900
    :cond_12
    const/16 v4, 0x18

    #@25c
    .line 2901
    const/4 v5, 0x0

    #@25d
    .line 2899
    move-object/from16 v0, v29

    #@25f
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@262
    move-result v4

    #@263
    if-eqz v4, :cond_13

    #@265
    .line 2902
    move-object/from16 v0, v16

    #@267
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@269
    const/high16 v5, 0x100000

    #@26b
    or-int/2addr v4, v5

    #@26c
    move-object/from16 v0, v16

    #@26e
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@270
    .line 2906
    :cond_13
    const/16 v4, 0x24

    #@272
    .line 2907
    const/4 v5, 0x1

    #@273
    .line 2905
    move-object/from16 v0, v29

    #@275
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@278
    move-result v4

    #@279
    if-eqz v4, :cond_14

    #@27b
    .line 2908
    move-object/from16 v0, v16

    #@27d
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@27f
    const/high16 v5, 0x8000000

    #@281
    or-int/2addr v4, v5

    #@282
    move-object/from16 v0, v16

    #@284
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@286
    .line 2912
    :cond_14
    const/16 v4, 0x1a

    #@288
    .line 2913
    const/4 v5, 0x0

    #@289
    .line 2911
    move-object/from16 v0, v29

    #@28b
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@28e
    move-result v4

    #@28f
    if-eqz v4, :cond_15

    #@291
    .line 2914
    move-object/from16 v0, v16

    #@293
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@295
    const/high16 v5, 0x400000

    #@297
    or-int/2addr v4, v5

    #@298
    move-object/from16 v0, v16

    #@29a
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@29c
    .line 2918
    :cond_15
    const/16 v4, 0x21

    #@29e
    .line 2919
    const/4 v5, 0x0

    #@29f
    .line 2917
    move-object/from16 v0, v29

    #@2a1
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2a4
    move-result v4

    #@2a5
    if-eqz v4, :cond_16

    #@2a7
    .line 2920
    move-object/from16 v0, v16

    #@2a9
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2ab
    const/high16 v5, -0x80000000

    #@2ad
    or-int/2addr v4, v5

    #@2ae
    move-object/from16 v0, v16

    #@2b0
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2b2
    .line 2924
    :cond_16
    const/16 v4, 0x22

    #@2b4
    .line 2925
    const/4 v5, 0x1

    #@2b5
    .line 2923
    move-object/from16 v0, v29

    #@2b7
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2ba
    move-result v4

    #@2bb
    if-eqz v4, :cond_17

    #@2bd
    .line 2926
    move-object/from16 v0, v16

    #@2bf
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2c1
    const/high16 v5, 0x10000000

    #@2c3
    or-int/2addr v4, v5

    #@2c4
    move-object/from16 v0, v16

    #@2c6
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2c8
    .line 2930
    :cond_17
    const/16 v4, 0x26

    #@2ca
    .line 2931
    const/4 v5, 0x0

    #@2cb
    .line 2929
    move-object/from16 v0, v29

    #@2cd
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2d0
    move-result v4

    #@2d1
    if-eqz v4, :cond_18

    #@2d3
    .line 2932
    move-object/from16 v0, v16

    #@2d5
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@2d7
    or-int/lit8 v4, v4, 0x20

    #@2d9
    move-object/from16 v0, v16

    #@2db
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@2dd
    .line 2935
    :cond_18
    const/16 v4, 0x27

    #@2df
    .line 2936
    const/4 v5, 0x0

    #@2e0
    .line 2934
    move-object/from16 v0, v29

    #@2e2
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2e5
    move-result v4

    #@2e6
    if-eqz v4, :cond_19

    #@2e8
    .line 2937
    move-object/from16 v0, v16

    #@2ea
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@2ec
    or-int/lit8 v4, v4, 0x40

    #@2ee
    move-object/from16 v0, v16

    #@2f0
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@2f2
    .line 2941
    :cond_19
    move-object/from16 v0, p1

    #@2f4
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2f6
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2f8
    const/16 v5, 0x18

    #@2fa
    if-lt v4, v5, :cond_1e

    #@2fc
    const/4 v4, 0x1

    #@2fd
    .line 2940
    :goto_2
    const/16 v5, 0x25

    #@2ff
    move-object/from16 v0, v29

    #@301
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@304
    move-result v4

    #@305
    if-eqz v4, :cond_1a

    #@307
    .line 2942
    move-object/from16 v0, v16

    #@309
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@30b
    or-int/lit16 v4, v4, 0x800

    #@30d
    move-object/from16 v0, v16

    #@30f
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@311
    .line 2946
    :cond_1a
    const/16 v4, 0x29

    #@313
    .line 2947
    const/4 v5, 0x0

    #@314
    .line 2945
    move-object/from16 v0, v29

    #@316
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@319
    move-result v4

    #@31a
    move-object/from16 v0, v16

    #@31c
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    #@31e
    .line 2951
    const/4 v4, 0x6

    #@31f
    const/4 v5, 0x0

    #@320
    .line 2950
    move-object/from16 v0, v29

    #@322
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@325
    move-result-object v30

    #@326
    .line 2952
    .local v30, "str":Ljava/lang/String;
    if-eqz v30, :cond_1f

    #@328
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    #@32b
    move-result v4

    #@32c
    if-lez v4, :cond_1f

    #@32e
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@331
    move-result-object v4

    #@332
    :goto_3
    move-object/from16 v0, v16

    #@334
    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@336
    .line 2954
    move-object/from16 v0, p1

    #@338
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@33a
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@33c
    const/16 v5, 0x8

    #@33e
    if-lt v4, v5, :cond_20

    #@340
    .line 2956
    const/16 v4, 0xc

    #@342
    .line 2957
    const/16 v5, 0x400

    #@344
    .line 2955
    move-object/from16 v0, v29

    #@346
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@349
    move-result-object v30

    #@34a
    .line 2965
    :goto_4
    move-object/from16 v0, v16

    #@34c
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@34e
    move-object/from16 v0, v16

    #@350
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@352
    move-object/from16 v0, v30

    #@354
    move-object/from16 v1, p5

    #@356
    invoke-static {v4, v5, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@359
    move-result-object v4

    #@35a
    move-object/from16 v0, v16

    #@35c
    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@35e
    .line 2968
    const/4 v4, 0x0

    #@35f
    aget-object v4, p5, v4

    #@361
    if-nez v4, :cond_1b

    #@363
    .line 2970
    move-object/from16 v0, p1

    #@365
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@367
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@369
    const/16 v5, 0x8

    #@36b
    if-lt v4, v5, :cond_21

    #@36d
    .line 2972
    const/16 v4, 0xb

    #@36f
    .line 2973
    const/16 v5, 0x400

    #@371
    .line 2971
    move-object/from16 v0, v29

    #@373
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@376
    move-result-object v6

    #@377
    .line 2981
    .local v6, "pname":Ljava/lang/CharSequence;
    :goto_5
    move-object/from16 v0, v16

    #@379
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@37b
    .line 2982
    move-object/from16 v0, p0

    #@37d
    iget-object v8, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@37f
    .line 2981
    const/4 v5, 0x0

    #@380
    move/from16 v7, p4

    #@382
    move-object/from16 v9, p5

    #@384
    invoke-static/range {v4 .. v9}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@387
    move-result-object v4

    #@388
    move-object/from16 v0, v16

    #@38a
    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@38c
    .line 2985
    const/16 v4, 0x9

    #@38e
    const/4 v5, 0x1

    #@38f
    .line 2984
    move-object/from16 v0, v29

    #@391
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@394
    move-result v4

    #@395
    move-object/from16 v0, v16

    #@397
    iput-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@399
    .line 2988
    const/16 v4, 0x1f

    #@39b
    const/4 v5, 0x0

    #@39c
    .line 2987
    move-object/from16 v0, v29

    #@39e
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3a1
    move-result v4

    #@3a2
    if-eqz v4, :cond_1b

    #@3a4
    .line 2989
    move-object/from16 v0, v16

    #@3a6
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3a8
    const/high16 v5, 0x2000000

    #@3aa
    or-int/2addr v4, v5

    #@3ab
    move-object/from16 v0, v16

    #@3ad
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3af
    .line 3008
    .end local v6    # "pname":Ljava/lang/CharSequence;
    :cond_1b
    const/16 v4, 0x19

    #@3b1
    const/4 v5, 0x0

    #@3b2
    .line 3007
    move-object/from16 v0, v29

    #@3b4
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3b7
    move-result v4

    #@3b8
    move-object/from16 v0, v16

    #@3ba
    iput v4, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@3bc
    .line 3010
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    #@3bf
    .line 3012
    const/4 v4, 0x0

    #@3c0
    aget-object v4, p5, v4

    #@3c2
    if-eqz v4, :cond_22

    #@3c4
    .line 3013
    const/16 v4, -0x6c

    #@3c6
    move-object/from16 v0, p0

    #@3c8
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@3ca
    .line 3014
    const/4 v4, 0x0

    #@3cb
    return v4

    #@3cc
    .line 2803
    .end local v26    # "requiredAccountType":Ljava/lang/String;
    .end local v27    # "restrictedAccountType":Ljava/lang/String;
    .end local v30    # "str":Ljava/lang/String;
    .restart local v18    # "backupAgent":Ljava/lang/String;
    :cond_1c
    const/4 v4, 0x0

    #@3cd
    goto/16 :goto_0

    #@3cf
    .line 2867
    .end local v18    # "backupAgent":Ljava/lang/String;
    .restart local v26    # "requiredAccountType":Ljava/lang/String;
    .restart local v27    # "restrictedAccountType":Ljava/lang/String;
    :cond_1d
    const/4 v4, 0x0

    #@3d0
    goto/16 :goto_1

    #@3d2
    .line 2941
    :cond_1e
    const/4 v4, 0x0

    #@3d3
    goto/16 :goto_2

    #@3d5
    .line 2952
    .restart local v30    # "str":Ljava/lang/String;
    :cond_1f
    const/4 v4, 0x0

    #@3d6
    goto/16 :goto_3

    #@3d8
    .line 2963
    :cond_20
    const/16 v4, 0xc

    #@3da
    .line 2962
    move-object/from16 v0, v29

    #@3dc
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@3df
    move-result-object v30

    #@3e0
    goto/16 :goto_4

    #@3e2
    .line 2979
    :cond_21
    const/16 v4, 0xb

    #@3e4
    .line 2978
    move-object/from16 v0, v29

    #@3e6
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@3e9
    move-result-object v6

    #@3ea
    .restart local v6    # "pname":Ljava/lang/CharSequence;
    goto :goto_5

    #@3eb
    .line 3017
    .end local v6    # "pname":Ljava/lang/CharSequence;
    :cond_22
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@3ee
    move-result v19

    #@3ef
    .line 3019
    .local v19, "innerDepth":I
    :cond_23
    :goto_6
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@3f2
    move-result v32

    #@3f3
    .local v32, "type":I
    const/4 v4, 0x1

    #@3f4
    move/from16 v0, v32

    #@3f6
    if-eq v0, v4, :cond_36

    #@3f8
    .line 3020
    const/4 v4, 0x3

    #@3f9
    move/from16 v0, v32

    #@3fb
    if-ne v0, v4, :cond_24

    #@3fd
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@400
    move-result v4

    #@401
    move/from16 v0, v19

    #@403
    if-le v4, v0, :cond_36

    #@405
    .line 3021
    :cond_24
    const/4 v4, 0x3

    #@406
    move/from16 v0, v32

    #@408
    if-eq v0, v4, :cond_23

    #@40a
    const/4 v4, 0x4

    #@40b
    move/from16 v0, v32

    #@40d
    if-eq v0, v4, :cond_23

    #@40f
    .line 3025
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@412
    move-result-object v31

    #@413
    .line 3026
    .local v31, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "activity"

    #@416
    move-object/from16 v0, v31

    #@418
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41b
    move-result v4

    #@41c
    if-eqz v4, :cond_26

    #@41e
    .line 3028
    move-object/from16 v0, p1

    #@420
    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@422
    .line 3027
    const/4 v13, 0x0

    #@423
    move-object/from16 v7, p0

    #@425
    move-object/from16 v8, p1

    #@427
    move-object/from16 v9, p2

    #@429
    move-object/from16 v10, p3

    #@42b
    move/from16 v11, p4

    #@42d
    move-object/from16 v12, p5

    #@42f
    invoke-direct/range {v7 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    #@432
    move-result-object v15

    #@433
    .line 3029
    .local v15, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_25

    #@435
    .line 3030
    const/16 v4, -0x6c

    #@437
    move-object/from16 v0, p0

    #@439
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@43b
    .line 3031
    const/4 v4, 0x0

    #@43c
    return v4

    #@43d
    .line 3034
    :cond_25
    move-object/from16 v0, p1

    #@43f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@441
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@444
    goto :goto_6

    #@445
    .line 3036
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_26
    const-string/jumbo v4, "receiver"

    #@448
    move-object/from16 v0, v31

    #@44a
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44d
    move-result v4

    #@44e
    if-eqz v4, :cond_28

    #@450
    .line 3037
    const/4 v13, 0x1

    #@451
    const/4 v14, 0x0

    #@452
    move-object/from16 v7, p0

    #@454
    move-object/from16 v8, p1

    #@456
    move-object/from16 v9, p2

    #@458
    move-object/from16 v10, p3

    #@45a
    move/from16 v11, p4

    #@45c
    move-object/from16 v12, p5

    #@45e
    invoke-direct/range {v7 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    #@461
    move-result-object v15

    #@462
    .line 3038
    .restart local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_27

    #@464
    .line 3039
    const/16 v4, -0x6c

    #@466
    move-object/from16 v0, p0

    #@468
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@46a
    .line 3040
    const/4 v4, 0x0

    #@46b
    return v4

    #@46c
    .line 3043
    :cond_27
    move-object/from16 v0, p1

    #@46e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@470
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@473
    goto/16 :goto_6

    #@475
    .line 3045
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_28
    const-string/jumbo v4, "service"

    #@478
    move-object/from16 v0, v31

    #@47a
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47d
    move-result v4

    #@47e
    if-eqz v4, :cond_2a

    #@480
    .line 3046
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    #@483
    move-result-object v28

    #@484
    .line 3047
    .local v28, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v28, :cond_29

    #@486
    .line 3048
    const/16 v4, -0x6c

    #@488
    move-object/from16 v0, p0

    #@48a
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@48c
    .line 3049
    const/4 v4, 0x0

    #@48d
    return v4

    #@48e
    .line 3052
    :cond_29
    move-object/from16 v0, p1

    #@490
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@492
    move-object/from16 v0, v28

    #@494
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@497
    goto/16 :goto_6

    #@499
    .line 3054
    .end local v28    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_2a
    const-string/jumbo v4, "provider"

    #@49c
    move-object/from16 v0, v31

    #@49e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a1
    move-result v4

    #@4a2
    if-eqz v4, :cond_2c

    #@4a4
    .line 3055
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    #@4a7
    move-result-object v23

    #@4a8
    .line 3056
    .local v23, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v23, :cond_2b

    #@4aa
    .line 3057
    const/16 v4, -0x6c

    #@4ac
    move-object/from16 v0, p0

    #@4ae
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@4b0
    .line 3058
    const/4 v4, 0x0

    #@4b1
    return v4

    #@4b2
    .line 3061
    :cond_2b
    move-object/from16 v0, p1

    #@4b4
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@4b6
    move-object/from16 v0, v23

    #@4b8
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4bb
    goto/16 :goto_6

    #@4bd
    .line 3063
    .end local v23    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_2c
    const-string/jumbo v4, "activity-alias"

    #@4c0
    move-object/from16 v0, v31

    #@4c2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c5
    move-result v4

    #@4c6
    if-eqz v4, :cond_2e

    #@4c8
    .line 3064
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    #@4cb
    move-result-object v15

    #@4cc
    .line 3065
    .restart local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_2d

    #@4ce
    .line 3066
    const/16 v4, -0x6c

    #@4d0
    move-object/from16 v0, p0

    #@4d2
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@4d4
    .line 3067
    const/4 v4, 0x0

    #@4d5
    return v4

    #@4d6
    .line 3070
    :cond_2d
    move-object/from16 v0, p1

    #@4d8
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@4da
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4dd
    goto/16 :goto_6

    #@4df
    .line 3072
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_2e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4e2
    move-result-object v4

    #@4e3
    const-string/jumbo v5, "meta-data"

    #@4e6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e9
    move-result v4

    #@4ea
    if-eqz v4, :cond_2f

    #@4ec
    .line 3076
    move-object/from16 v0, p1

    #@4ee
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@4f0
    move-object/from16 v0, p0

    #@4f2
    move-object/from16 v1, p2

    #@4f4
    move-object/from16 v2, p3

    #@4f6
    move-object/from16 v3, p5

    #@4f8
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@4fb
    move-result-object v4

    #@4fc
    move-object/from16 v0, p1

    #@4fe
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@500
    if-nez v4, :cond_23

    #@502
    .line 3078
    const/16 v4, -0x6c

    #@504
    move-object/from16 v0, p0

    #@506
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@508
    .line 3079
    const/4 v4, 0x0

    #@509
    return v4

    #@50a
    .line 3082
    :cond_2f
    const-string/jumbo v4, "library"

    #@50d
    move-object/from16 v0, v31

    #@50f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@512
    move-result v4

    #@513
    if-eqz v4, :cond_31

    #@515
    .line 3084
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    #@517
    .line 3083
    move-object/from16 v0, p2

    #@519
    move-object/from16 v1, p3

    #@51b
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@51e
    move-result-object v29

    #@51f
    .line 3089
    const/4 v4, 0x0

    #@520
    .line 3088
    move-object/from16 v0, v29

    #@522
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@525
    move-result-object v20

    #@526
    .line 3091
    .local v20, "lname":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    #@529
    .line 3093
    if-eqz v20, :cond_30

    #@52b
    .line 3094
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@52e
    move-result-object v20

    #@52f
    .line 3095
    move-object/from16 v0, p1

    #@531
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@533
    move-object/from16 v0, v20

    #@535
    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    #@538
    move-result v4

    #@539
    if-nez v4, :cond_30

    #@53b
    .line 3096
    move-object/from16 v0, p1

    #@53d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@53f
    move-object/from16 v0, v20

    #@541
    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@544
    move-result-object v4

    #@545
    move-object/from16 v0, p1

    #@547
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@549
    .line 3100
    :cond_30
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@54c
    goto/16 :goto_6

    #@54e
    .line 3102
    .end local v20    # "lname":Ljava/lang/String;
    :cond_31
    const-string/jumbo v4, "uses-library"

    #@551
    move-object/from16 v0, v31

    #@553
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@556
    move-result v4

    #@557
    if-eqz v4, :cond_34

    #@559
    .line 3104
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    #@55b
    .line 3103
    move-object/from16 v0, p2

    #@55d
    move-object/from16 v1, p3

    #@55f
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@562
    move-result-object v29

    #@563
    .line 3109
    const/4 v4, 0x0

    #@564
    .line 3108
    move-object/from16 v0, v29

    #@566
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@569
    move-result-object v20

    #@56a
    .line 3111
    .restart local v20    # "lname":Ljava/lang/String;
    const/4 v4, 0x1

    #@56b
    .line 3112
    const/4 v5, 0x1

    #@56c
    .line 3110
    move-object/from16 v0, v29

    #@56e
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@571
    move-result v25

    #@572
    .line 3114
    .local v25, "req":Z
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    #@575
    .line 3116
    if-eqz v20, :cond_32

    #@577
    .line 3117
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@57a
    move-result-object v20

    #@57b
    .line 3118
    if-eqz v25, :cond_33

    #@57d
    .line 3119
    move-object/from16 v0, p1

    #@57f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@581
    move-object/from16 v0, v20

    #@583
    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@586
    move-result-object v4

    #@587
    move-object/from16 v0, p1

    #@589
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@58b
    .line 3126
    :cond_32
    :goto_7
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@58e
    goto/16 :goto_6

    #@590
    .line 3122
    :cond_33
    move-object/from16 v0, p1

    #@592
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@594
    .line 3121
    move-object/from16 v0, v20

    #@596
    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@599
    move-result-object v4

    #@59a
    move-object/from16 v0, p1

    #@59c
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@59e
    goto :goto_7

    #@59f
    .line 3128
    .end local v20    # "lname":Ljava/lang/String;
    .end local v25    # "req":Z
    :cond_34
    const-string/jumbo v4, "uses-package"

    #@5a2
    move-object/from16 v0, v31

    #@5a4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a7
    move-result v4

    #@5a8
    if-eqz v4, :cond_35

    #@5aa
    .line 3131
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5ad
    goto/16 :goto_6

    #@5af
    .line 3135
    :cond_35
    const-string/jumbo v4, "PackageParser"

    #@5b2
    new-instance v5, Ljava/lang/StringBuilder;

    #@5b4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b7
    const-string/jumbo v7, "Unknown element under <application>: "

    #@5ba
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5bd
    move-result-object v5

    #@5be
    move-object/from16 v0, v31

    #@5c0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c3
    move-result-object v5

    #@5c4
    .line 3136
    const-string/jumbo v7, " at "

    #@5c7
    .line 3135
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ca
    move-result-object v5

    #@5cb
    .line 3136
    move-object/from16 v0, p0

    #@5cd
    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@5cf
    .line 3135
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d2
    move-result-object v5

    #@5d3
    .line 3136
    const-string/jumbo v7, " "

    #@5d6
    .line 3135
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d9
    move-result-object v5

    #@5da
    .line 3137
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@5dd
    move-result-object v7

    #@5de
    .line 3135
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e1
    move-result-object v5

    #@5e2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e5
    move-result-object v5

    #@5e6
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e9
    .line 3138
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5ec
    goto/16 :goto_6

    #@5ee
    .line 3148
    .end local v31    # "tagName":Ljava/lang/String;
    :cond_36
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V

    #@5f1
    .line 3150
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    #@5f4
    move-result v4

    #@5f5
    if-eqz v4, :cond_37

    #@5f7
    .line 3151
    move-object/from16 v0, p1

    #@5f9
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5fb
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@5fd
    or-int/lit8 v5, v5, 0x10

    #@5ff
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@601
    .line 3156
    :goto_8
    const/4 v4, 0x1

    #@602
    return v4

    #@603
    .line 3153
    :cond_37
    move-object/from16 v0, p1

    #@605
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@607
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@609
    and-int/lit8 v5, v5, -0x11

    #@60b
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@60d
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
    .line 810
    invoke-static {p1, v7}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@4
    move-result-object v3

    #@5
    .line 812
    .local v3, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v8, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    #@7
    if-eqz v8, :cond_0

    #@9
    iget-boolean v8, v3, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    #@b
    if-eqz v8, :cond_1

    #@d
    .line 817
    :cond_0
    new-instance v0, Landroid/content/res/AssetManager;

    #@f
    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    #@12
    .line 821
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    #@14
    invoke-static {v0, v8, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    #@17
    .line 823
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@19
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@1c
    move-result v8

    #@1d
    if-nez v8, :cond_2

    #@1f
    .line 824
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@21
    array-length v9, v8

    #@22
    :goto_0
    if-ge v7, v9, :cond_2

    #@24
    aget-object v5, v8, v7

    #@26
    .line 825
    .local v5, "path":Ljava/lang/String;
    invoke-static {v0, v5, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 824
    add-int/lit8 v7, v7, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 813
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "path":Ljava/lang/String;
    :cond_1
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    #@2e
    .line 814
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
    .line 813
    const/16 v9, -0x6c

    #@44
    invoke-direct {v7, v9, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@47
    throw v7

    #@48
    .line 829
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@4a
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    #@4c
    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@4f
    .line 830
    .local v1, "baseApk":Ljava/io/File;
    invoke-direct {p0, v1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    #@52
    move-result-object v6

    #@53
    .line 831
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v6, :cond_3

    #@55
    .line 832
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    #@57
    .line 833
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
    .line 832
    const/16 v9, -0x64

    #@6d
    invoke-direct {v7, v9, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@70
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    .line 852
    .end local v1    # "baseApk":Ljava/io/File;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v7

    #@72
    .line 853
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@75
    .line 852
    throw v7

    #@76
    .line 836
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
    .line 837
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@80
    array-length v4, v7

    #@81
    .line 838
    .local v4, "num":I
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@83
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@85
    .line 839
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@87
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@89
    .line 840
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    #@8b
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    #@8d
    .line 841
    new-array v7, v4, [I

    #@8f
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    #@91
    .line 842
    new-array v7, v4, [I

    #@93
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    #@95
    .line 844
    const/4 v2, 0x0

    #@96
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    #@98
    .line 845
    invoke-direct {p0, v6, v2, v0, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    #@9b
    .line 844
    add-int/lit8 v2, v2, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 849
    .end local v2    # "i":I
    .end local v4    # "num":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@a1
    move-result-object v7

    #@a2
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    #@a5
    .line 850
    iget-boolean v7, v3, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    #@a7
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@aa
    .line 853
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ad
    .line 851
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
    .line 706
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v9

    #@4
    .line 707
    .local v9, "files":[Ljava/io/File;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 708
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@c
    .line 709
    const-string/jumbo v15, "No packages found in split"

    #@f
    .line 708
    const/16 v16, -0x64

    #@11
    move/from16 v0, v16

    #@13
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 712
    :cond_0
    const/4 v12, 0x0

    #@18
    .line 713
    .local v12, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    #@19
    .line 715
    .local v14, "versionCode":I
    new-instance v7, Landroid/util/ArrayMap;

    #@1b
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    #@1e
    .line 716
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
    .line 717
    .local v8, "file":Ljava/io/File;
    invoke-static {v8}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    #@27
    move-result v16

    #@28
    if-eqz v16, :cond_4

    #@2a
    .line 718
    move/from16 v0, p1

    #@2c
    invoke-static {v8, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    #@2f
    move-result-object v11

    #@30
    .line 722
    .local v11, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v12, :cond_2

    #@32
    .line 723
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@34
    .line 724
    .local v12, "packageName":Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@36
    .line 739
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
    .line 740
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@44
    .line 741
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
    .line 742
    const-string/jumbo v16, " defined more than once; most recent was "

    #@5b
    .line 741
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
    .line 740
    const/16 v16, -0x65

    #@69
    move/from16 v0, v16

    #@6b
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@6e
    throw v1

    #@6f
    .line 726
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
    .line 727
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@7d
    .line 728
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
    .line 729
    const-string/jumbo v16, "; expected "

    #@9f
    .line 728
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
    .line 727
    const/16 v16, -0x65

    #@ad
    move/from16 v0, v16

    #@af
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@b2
    throw v1

    #@b3
    .line 731
    :cond_3
    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@b5
    move/from16 v16, v0

    #@b7
    move/from16 v0, v16

    #@b9
    if-eq v14, v0, :cond_1

    #@bb
    .line 732
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@bd
    .line 733
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
    .line 734
    const-string/jumbo v16, "; expected "

    #@df
    .line 733
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
    .line 732
    const/16 v16, -0x65

    #@ed
    move/from16 v0, v16

    #@ef
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@f2
    throw v1

    #@f3
    .line 716
    .end local v11    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@f5
    goto/16 :goto_0

    #@f7
    .line 747
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
    .line 748
    .local v3, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v3, :cond_6

    #@100
    .line 749
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@102
    .line 750
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
    .line 749
    const/16 v16, -0x65

    #@11a
    move/from16 v0, v16

    #@11c
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@11f
    throw v1

    #@120
    .line 754
    :cond_6
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@123
    move-result v13

    #@124
    .line 756
    .local v13, "size":I
    const/4 v4, 0x0

    #@125
    .line 757
    .local v4, "splitNames":[Ljava/lang/String;
    const/4 v5, 0x0

    #@126
    .line 758
    .local v5, "splitCodePaths":[Ljava/lang/String;
    const/4 v6, 0x0

    #@127
    .line 759
    .local v6, "splitRevisionCodes":[I
    if-lez v13, :cond_7

    #@129
    .line 760
    new-array v4, v13, [Ljava/lang/String;

    #@12b
    .line 761
    .local v4, "splitNames":[Ljava/lang/String;
    new-array v5, v13, [Ljava/lang/String;

    #@12d
    .line 762
    .local v5, "splitCodePaths":[Ljava/lang/String;
    new-array v6, v13, [I

    #@12f
    .line 764
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
    .line 765
    .restart local v4    # "splitNames":[Ljava/lang/String;
    sget-object v1, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    #@13b
    invoke-static {v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@13e
    .line 767
    const/4 v10, 0x0

    #@13f
    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_7

    #@141
    .line 768
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
    .line 769
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
    .line 767
    add-int/lit8 v10, v10, 0x1

    #@15b
    goto :goto_1

    #@15c
    .line 773
    .end local v4    # "splitNames":[Ljava/lang/String;
    .end local v5    # "splitCodePaths":[Ljava/lang/String;
    .end local v6    # "splitRevisionCodes":[I
    .end local v10    # "i":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@15f
    move-result-object v2

    #@160
    .line 774
    .local v2, "codePath":Ljava/lang/String;
    new-instance v1, Landroid/content/pm/PackageParser$PackageLite;

    #@162
    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    #@165
    return-object v1
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 10
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
    .line 2664
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    #@2
    .line 2663
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v8

    #@6
    .line 2666
    .local v8, "sa":Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 2667
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@c
    .line 2668
    const/4 v3, 0x2

    #@d
    .line 2669
    const/4 v4, 0x0

    #@e
    .line 2670
    const/4 v5, 0x1

    #@f
    .line 2671
    const/4 v6, 0x6

    #@10
    .line 2672
    const/4 v7, 0x7

    #@11
    move-object v1, p1

    #@12
    move-object v2, p4

    #@13
    .line 2667
    invoke-direct/range {v0 .. v7}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII)V

    #@16
    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@18
    .line 2673
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@1a
    const-string/jumbo v1, "<instrumentation>"

    #@1d
    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    #@1f
    .line 2676
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@21
    iput-object v8, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    #@23
    .line 2678
    new-instance v4, Landroid/content/pm/PackageParser$Instrumentation;

    #@25
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@27
    .line 2679
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    #@29
    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    #@2c
    .line 2678
    invoke-direct {v4, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    #@2f
    .line 2680
    .local v4, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    #@30
    aget-object v0, p4, v0

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 2681
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@37
    .line 2682
    const/16 v0, -0x6c

    #@39
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@3b
    .line 2683
    const/4 v0, 0x0

    #@3c
    return-object v0

    #@3d
    .line 2690
    :cond_1
    const/4 v0, 0x3

    #@3e
    .line 2689
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    .line 2691
    .local v9, "str":Ljava/lang/String;
    iget-object v1, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@44
    if-eqz v9, :cond_2

    #@46
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    :goto_0
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@4c
    .line 2693
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@4e
    .line 2694
    const/4 v1, 0x4

    #@4f
    .line 2695
    const/4 v2, 0x0

    #@50
    .line 2693
    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@53
    move-result v1

    #@54
    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    #@56
    .line 2697
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@58
    .line 2698
    const/4 v1, 0x5

    #@59
    .line 2699
    const/4 v2, 0x0

    #@5a
    .line 2697
    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5d
    move-result v1

    #@5e
    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    #@60
    .line 2701
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@63
    .line 2703
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@65
    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@67
    if-nez v0, :cond_3

    #@69
    .line 2704
    const-string/jumbo v0, "<instrumentation> does not specify targetPackage"

    #@6c
    const/4 v1, 0x0

    #@6d
    aput-object v0, p4, v1

    #@6f
    .line 2705
    const/16 v0, -0x6c

    #@71
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@73
    .line 2706
    const/4 v0, 0x0

    #@74
    return-object v0

    #@75
    .line 2691
    :cond_2
    const/4 v0, 0x0

    #@76
    goto :goto_0

    #@77
    .line 2709
    :cond_3
    const-string/jumbo v3, "<instrumentation>"

    #@7a
    move-object v0, p0

    #@7b
    move-object v1, p2

    #@7c
    move-object v2, p3

    #@7d
    move-object v5, p4

    #@7e
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@81
    move-result v0

    #@82
    if-nez v0, :cond_4

    #@84
    .line 2711
    const/16 v0, -0x6c

    #@86
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@88
    .line 2712
    const/4 v0, 0x0

    #@89
    return-object v0

    #@8a
    .line 2715
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@8c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8f
    .line 2717
    return-object v4
.end method

.method private parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 16
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
    .line 4538
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    #@2
    .line 4537
    move-object/from16 v0, p1

    #@4
    move-object/from16 v1, p2

    #@6
    invoke-virtual {v0, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v8

    #@a
    .line 4541
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v13, 0x2

    #@b
    const/4 v14, 0x0

    #@c
    .line 4540
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f
    move-result v7

    #@10
    .line 4542
    .local v7, "priority":I
    move-object/from16 v0, p5

    #@12
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    #@15
    .line 4545
    const/4 v13, 0x0

    #@16
    .line 4544
    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@19
    move-result-object v11

    #@1a
    .line 4546
    .local v11, "v":Landroid/util/TypedValue;
    if-eqz v11, :cond_0

    #@1c
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    #@1e
    move-object/from16 v0, p5

    #@20
    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    #@22
    if-nez v13, :cond_0

    #@24
    .line 4547
    invoke-virtual {v11}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@27
    move-result-object v13

    #@28
    move-object/from16 v0, p5

    #@2a
    iput-object v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@2c
    .line 4551
    :cond_0
    const/4 v13, 0x1

    #@2d
    const/4 v14, 0x0

    #@2e
    .line 4550
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@31
    move-result v13

    #@32
    move-object/from16 v0, p5

    #@34
    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    #@36
    .line 4554
    const/4 v13, 0x3

    #@37
    const/4 v14, 0x0

    #@38
    .line 4553
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3b
    move-result v13

    #@3c
    move-object/from16 v0, p5

    #@3e
    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    #@40
    .line 4557
    const/4 v13, 0x4

    #@41
    const/4 v14, 0x0

    #@42
    .line 4556
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@45
    move-result v13

    #@46
    move-object/from16 v0, p5

    #@48
    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    #@4a
    .line 4559
    if-eqz p4, :cond_1

    #@4c
    .line 4561
    const/4 v13, 0x5

    #@4d
    .line 4562
    const/4 v14, 0x0

    #@4e
    .line 4560
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@51
    move-result v13

    #@52
    move-object/from16 v0, p5

    #@54
    invoke-virtual {v0, v13}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    #@57
    .line 4565
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@5a
    .line 4567
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@5d
    move-result v5

    #@5e
    .line 4569
    .local v5, "outerDepth":I
    :cond_2
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    #@61
    move-result v10

    #@62
    .local v10, "type":I
    const/4 v13, 0x1

    #@63
    if-eq v10, v13, :cond_16

    #@65
    .line 4570
    const/4 v13, 0x3

    #@66
    if-ne v10, v13, :cond_3

    #@68
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@6b
    move-result v13

    #@6c
    if-le v13, v5, :cond_16

    #@6e
    .line 4571
    :cond_3
    const/4 v13, 0x3

    #@6f
    if-eq v10, v13, :cond_2

    #@71
    const/4 v13, 0x4

    #@72
    if-eq v10, v13, :cond_2

    #@74
    .line 4575
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    .line 4576
    .local v4, "nodeName":Ljava/lang/String;
    const-string/jumbo v13, "action"

    #@7b
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v13

    #@7f
    if-eqz v13, :cond_6

    #@81
    .line 4578
    const-string/jumbo v13, "http://schemas.android.com/apk/res/android"

    #@84
    const-string/jumbo v14, "name"

    #@87
    .line 4577
    move-object/from16 v0, p2

    #@89
    invoke-interface {v0, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v12

    #@8d
    .line 4579
    .local v12, "value":Ljava/lang/String;
    if-eqz v12, :cond_4

    #@8f
    const-string/jumbo v13, ""

    #@92
    if-ne v12, v13, :cond_5

    #@94
    .line 4580
    :cond_4
    const-string/jumbo v13, "No value supplied for <android:name>"

    #@97
    const/4 v14, 0x0

    #@98
    aput-object v13, p6, v14

    #@9a
    .line 4581
    const/4 v13, 0x0

    #@9b
    return v13

    #@9c
    .line 4583
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@9f
    .line 4585
    move-object/from16 v0, p5

    #@a1
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    #@a4
    goto :goto_0

    #@a5
    .line 4586
    .end local v12    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v13, "category"

    #@a8
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ab
    move-result v13

    #@ac
    if-eqz v13, :cond_9

    #@ae
    .line 4588
    const-string/jumbo v13, "http://schemas.android.com/apk/res/android"

    #@b1
    const-string/jumbo v14, "name"

    #@b4
    .line 4587
    move-object/from16 v0, p2

    #@b6
    invoke-interface {v0, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b9
    move-result-object v12

    #@ba
    .line 4589
    .restart local v12    # "value":Ljava/lang/String;
    if-eqz v12, :cond_7

    #@bc
    const-string/jumbo v13, ""

    #@bf
    if-ne v12, v13, :cond_8

    #@c1
    .line 4590
    :cond_7
    const-string/jumbo v13, "No value supplied for <android:name>"

    #@c4
    const/4 v14, 0x0

    #@c5
    aput-object v13, p6, v14

    #@c7
    .line 4591
    const/4 v13, 0x0

    #@c8
    return v13

    #@c9
    .line 4593
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@cc
    .line 4595
    move-object/from16 v0, p5

    #@ce
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    #@d1
    goto :goto_0

    #@d2
    .line 4597
    .end local v12    # "value":Ljava/lang/String;
    :cond_9
    const-string/jumbo v13, "data"

    #@d5
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result v13

    #@d9
    if-eqz v13, :cond_15

    #@db
    .line 4599
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    #@dd
    .line 4598
    move-object/from16 v0, p1

    #@df
    move-object/from16 v1, p2

    #@e1
    invoke-virtual {v0, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@e4
    move-result-object v8

    #@e5
    .line 4602
    const/4 v13, 0x0

    #@e6
    const/4 v14, 0x0

    #@e7
    .line 4601
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@ea
    move-result-object v9

    #@eb
    .line 4603
    .local v9, "str":Ljava/lang/String;
    if-eqz v9, :cond_a

    #@ed
    .line 4605
    :try_start_0
    move-object/from16 v0, p5

    #@ef
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    #@f2
    .line 4614
    :cond_a
    const/4 v13, 0x1

    #@f3
    const/4 v14, 0x0

    #@f4
    .line 4613
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@f7
    move-result-object v9

    #@f8
    .line 4615
    if-eqz v9, :cond_b

    #@fa
    .line 4616
    move-object/from16 v0, p5

    #@fc
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    #@ff
    .line 4620
    :cond_b
    const/4 v13, 0x7

    #@100
    const/4 v14, 0x0

    #@101
    .line 4619
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@104
    move-result-object v9

    #@105
    .line 4621
    if-eqz v9, :cond_c

    #@107
    .line 4622
    const/4 v13, 0x0

    #@108
    move-object/from16 v0, p5

    #@10a
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@10d
    .line 4626
    :cond_c
    const/16 v13, 0x8

    #@10f
    const/4 v14, 0x0

    #@110
    .line 4625
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@113
    move-result-object v9

    #@114
    .line 4627
    if-eqz v9, :cond_d

    #@116
    .line 4628
    const/4 v13, 0x1

    #@117
    move-object/from16 v0, p5

    #@119
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@11c
    .line 4632
    :cond_d
    const/16 v13, 0x9

    #@11e
    const/4 v14, 0x0

    #@11f
    .line 4631
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@122
    move-result-object v9

    #@123
    .line 4633
    if-eqz v9, :cond_f

    #@125
    .line 4634
    if-nez p3, :cond_e

    #@127
    .line 4635
    const-string/jumbo v13, "sspPattern not allowed here; ssp must be literal"

    #@12a
    const/4 v14, 0x0

    #@12b
    aput-object v13, p6, v14

    #@12d
    .line 4636
    const/4 v13, 0x0

    #@12e
    return v13

    #@12f
    .line 4606
    :catch_0
    move-exception v2

    #@130
    .line 4607
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    #@133
    move-result-object v13

    #@134
    const/4 v14, 0x0

    #@135
    aput-object v13, p6, v14

    #@137
    .line 4608
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@13a
    .line 4609
    const/4 v13, 0x0

    #@13b
    return v13

    #@13c
    .line 4638
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_e
    const/4 v13, 0x2

    #@13d
    move-object/from16 v0, p5

    #@13f
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@142
    .line 4642
    :cond_f
    const/4 v13, 0x2

    #@143
    const/4 v14, 0x0

    #@144
    .line 4641
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@147
    move-result-object v3

    #@148
    .line 4644
    .local v3, "host":Ljava/lang/String;
    const/4 v13, 0x3

    #@149
    const/4 v14, 0x0

    #@14a
    .line 4643
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@14d
    move-result-object v6

    #@14e
    .line 4645
    .local v6, "port":Ljava/lang/String;
    if-eqz v3, :cond_10

    #@150
    .line 4646
    move-object/from16 v0, p5

    #@152
    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    #@155
    .line 4650
    :cond_10
    const/4 v13, 0x4

    #@156
    const/4 v14, 0x0

    #@157
    .line 4649
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@15a
    move-result-object v9

    #@15b
    .line 4651
    if-eqz v9, :cond_11

    #@15d
    .line 4652
    const/4 v13, 0x0

    #@15e
    move-object/from16 v0, p5

    #@160
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    #@163
    .line 4656
    :cond_11
    const/4 v13, 0x5

    #@164
    const/4 v14, 0x0

    #@165
    .line 4655
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@168
    move-result-object v9

    #@169
    .line 4657
    if-eqz v9, :cond_12

    #@16b
    .line 4658
    const/4 v13, 0x1

    #@16c
    move-object/from16 v0, p5

    #@16e
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    #@171
    .line 4662
    :cond_12
    const/4 v13, 0x6

    #@172
    const/4 v14, 0x0

    #@173
    .line 4661
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@176
    move-result-object v9

    #@177
    .line 4663
    if-eqz v9, :cond_14

    #@179
    .line 4664
    if-nez p3, :cond_13

    #@17b
    .line 4665
    const-string/jumbo v13, "pathPattern not allowed here; path must be literal"

    #@17e
    const/4 v14, 0x0

    #@17f
    aput-object v13, p6, v14

    #@181
    .line 4666
    const/4 v13, 0x0

    #@182
    return v13

    #@183
    .line 4668
    :cond_13
    const/4 v13, 0x2

    #@184
    move-object/from16 v0, p5

    #@186
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    #@189
    .line 4671
    :cond_14
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@18c
    .line 4672
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@18f
    goto/16 :goto_0

    #@191
    .line 4674
    .end local v3    # "host":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    :cond_15
    const-string/jumbo v13, "PackageParser"

    #@194
    new-instance v14, Ljava/lang/StringBuilder;

    #@196
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@199
    const-string/jumbo v15, "Unknown element under <intent-filter>: "

    #@19c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v14

    #@1a0
    .line 4675
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1a3
    move-result-object v15

    #@1a4
    .line 4674
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v14

    #@1a8
    .line 4675
    const-string/jumbo v15, " at "

    #@1ab
    .line 4674
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v14

    #@1af
    .line 4675
    move-object/from16 v0, p0

    #@1b1
    iget-object v15, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@1b3
    .line 4674
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v14

    #@1b7
    .line 4675
    const-string/jumbo v15, " "

    #@1ba
    .line 4674
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v14

    #@1be
    .line 4676
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@1c1
    move-result-object v15

    #@1c2
    .line 4674
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v14

    #@1c6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c9
    move-result-object v14

    #@1ca
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1cd
    .line 4677
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1d0
    goto/16 :goto_0

    #@1d2
    .line 4684
    .end local v4    # "nodeName":Ljava/lang/String;
    :cond_16
    const-string/jumbo v13, "android.intent.category.DEFAULT"

    #@1d5
    move-object/from16 v0, p5

    #@1d7
    invoke-virtual {v0, v13}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    #@1da
    move-result v13

    #@1db
    move-object/from16 v0, p5

    #@1dd
    iput-boolean v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    #@1df
    .line 4701
    const/4 v13, 0x1

    #@1e0
    return v13
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
    .line 2360
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@3
    move-result v14

    #@4
    .line 2361
    .local v14, "outerDepth":I
    const/4 v5, -0x1

    #@5
    .line 2363
    .local v5, "currentKeySetDepth":I
    const/4 v4, 0x0

    #@6
    .line 2364
    .local v4, "currentKeySet":Ljava/lang/String;
    new-instance v17, Landroid/util/ArrayMap;

    #@8
    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    #@b
    .line 2365
    .local v17, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v23, Landroid/util/ArraySet;

    #@d
    invoke-direct/range {v23 .. v23}, Landroid/util/ArraySet;-><init>()V

    #@10
    .line 2366
    .local v23, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/ArrayMap;

    #@12
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    #@15
    .line 2367
    .local v6, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    #@17
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    #@1a
    .line 2368
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
    .line 2369
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
    .line 2370
    :cond_1
    const/16 v24, 0x3

    #@38
    move/from16 v0, v22

    #@3a
    move/from16 v1, v24

    #@3c
    if-ne v0, v1, :cond_2

    #@3e
    .line 2371
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@41
    move-result v24

    #@42
    move/from16 v0, v24

    #@44
    if-ne v0, v5, :cond_0

    #@46
    .line 2372
    const/4 v4, 0x0

    #@47
    .line 2373
    .restart local v4    # "currentKeySet":Ljava/lang/String;
    const/4 v5, -0x1

    #@48
    goto :goto_0

    #@49
    .line 2377
    .end local v4    # "currentKeySet":Ljava/lang/String;
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4c
    move-result-object v21

    #@4d
    .line 2378
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
    .line 2379
    if-eqz v4, :cond_3

    #@5c
    .line 2380
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
    .line 2381
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@6b
    move-result-object v25

    #@6c
    .line 2380
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
    .line 2382
    const/16 v24, -0x6c

    #@7a
    move/from16 v0, v24

    #@7c
    move-object/from16 v1, p0

    #@7e
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@80
    .line 2383
    const/16 v24, 0x0

    #@82
    return v24

    #@83
    .line 2386
    :cond_3
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    #@85
    .line 2385
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
    .line 2388
    .local v20, "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    #@91
    .line 2387
    move-object/from16 v0, v20

    #@93
    move/from16 v1, v24

    #@95
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@98
    move-result-object v12

    #@99
    .line 2389
    .local v12, "keysetName":Ljava/lang/String;
    new-instance v24, Landroid/util/ArraySet;

    #@9b
    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    #@9e
    move-object/from16 v0, v24

    #@a0
    invoke-virtual {v6, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a3
    .line 2390
    move-object v4, v12

    #@a4
    .line 2391
    .local v4, "currentKeySet":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@a7
    move-result v5

    #@a8
    .line 2392
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@ab
    goto/16 :goto_0

    #@ad
    .line 2393
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
    .line 2394
    if-nez v4, :cond_5

    #@bc
    .line 2395
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
    .line 2396
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@cb
    move-result-object v25

    #@cc
    .line 2395
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
    .line 2397
    const/16 v24, -0x6c

    #@da
    move/from16 v0, v24

    #@dc
    move-object/from16 v1, p0

    #@de
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@e0
    .line 2398
    const/16 v24, 0x0

    #@e2
    return v24

    #@e3
    .line 2401
    :cond_5
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    #@e5
    .line 2400
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
    .line 2403
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    #@f1
    .line 2402
    move-object/from16 v0, v20

    #@f3
    move/from16 v1, v24

    #@f5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@f8
    move-result-object v15

    #@f9
    .line 2405
    .local v15, "publicKeyName":Ljava/lang/String;
    const/16 v24, 0x1

    #@fb
    .line 2404
    move-object/from16 v0, v20

    #@fd
    move/from16 v1, v24

    #@ff
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@102
    move-result-object v9

    #@103
    .line 2406
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
    .line 2407
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
    .line 2408
    const-string/jumbo v25, " on first use at "

    #@129
    .line 2407
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v24

    #@12d
    .line 2408
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@130
    move-result-object v25

    #@131
    .line 2407
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
    .line 2409
    const/16 v24, -0x6c

    #@13f
    move/from16 v0, v24

    #@141
    move-object/from16 v1, p0

    #@143
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@145
    .line 2410
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@148
    .line 2411
    const/16 v24, 0x0

    #@14a
    return v24

    #@14b
    .line 2412
    :cond_6
    if-eqz v9, :cond_9

    #@14d
    .line 2413
    invoke-static {v9}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@150
    move-result-object v3

    #@151
    .line 2414
    .local v3, "currentKey":Ljava/security/PublicKey;
    if-nez v3, :cond_7

    #@153
    .line 2415
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
    .line 2416
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@165
    move-result-object v26

    #@166
    .line 2415
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v25

    #@16a
    .line 2416
    const-string/jumbo v26, " key-set "

    #@16d
    .line 2415
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
    .line 2417
    const-string/jumbo v26, " will not be added to the package\'s defined key-sets."

    #@17a
    .line 2415
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
    .line 2418
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@188
    .line 2419
    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@18b
    .line 2420
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@18e
    goto/16 :goto_0

    #@190
    .line 2423
    :cond_7
    move-object/from16 v0, v17

    #@192
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@195
    move-result-object v24

    #@196
    if-eqz v24, :cond_8

    #@198
    .line 2424
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
    .line 2423
    if-eqz v24, :cond_a

    #@1a8
    .line 2427
    :cond_8
    move-object/from16 v0, v17

    #@1aa
    invoke-virtual {v0, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ad
    .line 2437
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
    .line 2438
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@1bb
    .line 2439
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 2429
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
    .line 2430
    const-string/jumbo v25, " conflicts with previously defined value at "

    #@1d5
    .line 2429
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v24

    #@1d9
    .line 2431
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@1dc
    move-result-object v25

    #@1dd
    .line 2429
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
    .line 2432
    const/16 v24, -0x6c

    #@1eb
    move/from16 v0, v24

    #@1ed
    move-object/from16 v1, p0

    #@1ef
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@1f1
    .line 2433
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@1f4
    .line 2434
    const/16 v24, 0x0

    #@1f6
    return v24

    #@1f7
    .line 2440
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
    .line 2442
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    #@206
    .line 2441
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
    .line 2444
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    #@212
    .line 2443
    move-object/from16 v0, v20

    #@214
    move/from16 v1, v24

    #@216
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@219
    move-result-object v13

    #@21a
    .line 2445
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, v23

    #@21c
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@21f
    .line 2446
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@222
    .line 2447
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@225
    goto/16 :goto_0

    #@227
    .line 2455
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
    .line 2456
    const-string/jumbo v26, " at "

    #@241
    .line 2455
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v25

    #@245
    .line 2456
    move-object/from16 v0, p0

    #@247
    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@249
    move-object/from16 v26, v0

    #@24b
    .line 2455
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v25

    #@24f
    .line 2456
    const-string/jumbo v26, " "

    #@252
    .line 2455
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v25

    #@256
    .line 2457
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@259
    move-result-object v26

    #@25a
    .line 2455
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
    .line 2458
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@268
    goto/16 :goto_0

    #@26a
    .line 2462
    .end local v21    # "tagName":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@26d
    move-result-object v16

    #@26e
    .line 2463
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
    .line 2464
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
    .line 2465
    const-string/jumbo v25, "\'key-set\' and \'public-key\' names must be distinct."

    #@29c
    .line 2464
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
    .line 2466
    const/16 v24, -0x6c

    #@2aa
    move/from16 v0, v24

    #@2ac
    move-object/from16 v1, p0

    #@2ae
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@2b0
    .line 2467
    const/16 v24, 0x0

    #@2b2
    return v24

    #@2b3
    .line 2469
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
    .line 2470
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
    .line 2471
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d5
    move-result-object v11

    #@2d6
    check-cast v11, Ljava/lang/String;

    #@2d8
    .line 2472
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
    .line 2473
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
    .line 2474
    const-string/jumbo v26, "\'key-set\' "

    #@307
    .line 2473
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
    .line 2474
    const-string/jumbo v26, " has no valid associated \'public-key\'."

    #@314
    .line 2473
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v25

    #@318
    .line 2475
    const-string/jumbo v26, " Not including in package\'s defined key-sets."

    #@31b
    .line 2473
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
    .line 2477
    :cond_10
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@32a
    move-result v24

    #@32b
    if-eqz v24, :cond_11

    #@32d
    .line 2478
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
    .line 2479
    const-string/jumbo v26, "\'key-set\' "

    #@350
    .line 2478
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
    .line 2479
    const-string/jumbo v26, " contained improper \'public-key\'"

    #@35d
    .line 2478
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@360
    move-result-object v25

    #@361
    .line 2480
    const-string/jumbo v26, " tags. Not including in package\'s defined key-sets."

    #@364
    .line 2478
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
    .line 2483
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
    .line 2484
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
    .line 2485
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
    .line 2488
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
    .line 2489
    move-object/from16 v0, v23

    #@3c7
    move-object/from16 v1, p1

    #@3c9
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    #@3cb
    .line 2496
    const/16 v24, 0x1

    #@3cd
    return v24

    #@3ce
    .line 2491
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
    .line 2492
    const-string/jumbo v25, "does not define all \'upgrade-key-set\'s ."

    #@3ee
    .line 2491
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
    .line 2493
    const/16 v24, -0x6c

    #@3fc
    move/from16 v0, v24

    #@3fe
    move-object/from16 v1, p0

    #@400
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@402
    .line 2494
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
    .line 3693
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    #@2
    .line 3692
    move-object/from16 v0, p1

    #@4
    move-object/from16 v1, p2

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v11

    #@a
    .line 3694
    .local v11, "sw":Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    #@b
    .line 3695
    .local v3, "width":I
    const/high16 v4, -0x40800000    # -1.0f

    #@d
    .line 3696
    .local v4, "widthFraction":F
    const/4 v5, -0x1

    #@e
    .line 3697
    .local v5, "height":I
    const/high16 v6, -0x40800000    # -1.0f

    #@10
    .line 3699
    .local v6, "heightFraction":F
    const/4 v2, 0x3

    #@11
    .line 3698
    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getType(I)I

    #@14
    move-result v12

    #@15
    .line 3700
    .local v12, "widthType":I
    const/4 v2, 0x6

    #@16
    if-ne v12, v2, :cond_2

    #@18
    .line 3703
    const/high16 v2, -0x40800000    # -1.0f

    #@1a
    .line 3702
    const/4 v13, 0x3

    #@1b
    .line 3703
    const/4 v14, 0x1

    #@1c
    const/4 v15, 0x1

    #@1d
    .line 3701
    invoke-virtual {v11, v13, v14, v15, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    #@20
    move-result v4

    #@21
    .line 3710
    :cond_0
    :goto_0
    const/4 v2, 0x4

    #@22
    .line 3709
    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getType(I)I

    #@25
    move-result v10

    #@26
    .line 3711
    .local v10, "heightType":I
    const/4 v2, 0x6

    #@27
    if-ne v10, v2, :cond_3

    #@29
    .line 3714
    const/high16 v2, -0x40800000    # -1.0f

    #@2b
    .line 3713
    const/4 v13, 0x4

    #@2c
    .line 3714
    const/4 v14, 0x1

    #@2d
    const/4 v15, 0x1

    #@2e
    .line 3712
    invoke-virtual {v11, v13, v14, v15, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    #@31
    move-result v6

    #@32
    .line 3721
    :cond_1
    :goto_1
    const/4 v2, 0x0

    #@33
    .line 3722
    const/16 v13, 0x11

    #@35
    .line 3720
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    #@38
    move-result v7

    #@39
    .line 3724
    .local v7, "gravity":I
    const/4 v2, 0x1

    #@3a
    .line 3725
    const/4 v13, -0x1

    #@3b
    .line 3723
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3e
    move-result v8

    #@3f
    .line 3727
    .local v8, "minWidth":I
    const/4 v2, 0x2

    #@40
    .line 3728
    const/4 v13, -0x1

    #@41
    .line 3726
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@44
    move-result v9

    #@45
    .line 3729
    .local v9, "minHeight":I
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    #@48
    .line 3730
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
    .line 3691
    return-void

    #@54
    .line 3704
    .end local v7    # "gravity":I
    .end local v8    # "minWidth":I
    .end local v9    # "minHeight":I
    .end local v10    # "heightType":I
    :cond_2
    const/4 v2, 0x5

    #@55
    if-ne v12, v2, :cond_0

    #@57
    .line 3706
    const/4 v2, 0x3

    #@58
    .line 3707
    const/4 v13, -0x1

    #@59
    .line 3705
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@5c
    move-result v3

    #@5d
    goto :goto_0

    #@5e
    .line 3715
    .restart local v10    # "heightType":I
    :cond_3
    const/4 v2, 0x5

    #@5f
    if-ne v10, v2, :cond_1

    #@61
    .line 3717
    const/4 v2, 0x4

    #@62
    .line 3718
    const/4 v13, -0x1

    #@63
    .line 3716
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
    .line 4395
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    #@5
    .line 4394
    invoke-virtual {p1, p2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v2

    #@9
    .line 4397
    .local v2, "sa":Landroid/content/res/TypedArray;
    if-nez p3, :cond_0

    #@b
    .line 4398
    new-instance p3, Landroid/os/Bundle;

    #@d
    .end local p3    # "data":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    #@10
    .line 4401
    .restart local p3    # "data":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 4403
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    #@16
    .line 4404
    const-string/jumbo v5, "<meta-data> requires an android:name attribute"

    #@19
    aput-object v5, p4, v6

    #@1b
    .line 4405
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 4406
    return-object v4

    #@1f
    .line 4409
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 4412
    const/4 v7, 0x2

    #@24
    .line 4411
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@27
    move-result-object v3

    #@28
    .line 4413
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_2

    #@2a
    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 4415
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    #@30
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@33
    .line 4447
    .end local p3    # "data":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@36
    .line 4449
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@39
    .line 4451
    return-object p3

    #@3a
    .line 4417
    .restart local p3    # "data":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@3d
    move-result-object v3

    #@3e
    .line 4420
    if-eqz v3, :cond_9

    #@40
    .line 4421
    iget v7, v3, Landroid/util/TypedValue;->type:I

    #@42
    const/4 v8, 0x3

    #@43
    if-ne v7, v8, :cond_4

    #@45
    .line 4422
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@48
    move-result-object v0

    #@49
    .line 4423
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
    .line 4424
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@59
    const/16 v7, 0x12

    #@5b
    if-ne v4, v7, :cond_6

    #@5d
    .line 4425
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
    .line 4426
    :cond_6
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@6a
    const/16 v5, 0x10

    #@6c
    if-lt v4, v5, :cond_7

    #@6e
    .line 4427
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@70
    const/16 v5, 0x1f

    #@72
    if-gt v4, v5, :cond_7

    #@74
    .line 4428
    iget v4, v3, Landroid/util/TypedValue;->data:I

    #@76
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@79
    goto :goto_0

    #@7a
    .line 4429
    :cond_7
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@7c
    const/4 v5, 0x4

    #@7d
    if-ne v4, v5, :cond_8

    #@7f
    .line 4430
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    #@82
    move-result v4

    #@83
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@86
    goto :goto_0

    #@87
    .line 4433
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
    .line 4434
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@99
    move-result-object v6

    #@9a
    .line 4433
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    .line 4434
    const-string/jumbo v6, " at "

    #@a1
    .line 4433
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    .line 4434
    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@a7
    .line 4433
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v5

    #@ab
    .line 4434
    const-string/jumbo v6, " "

    #@ae
    .line 4433
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    .line 4435
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@b5
    move-result-object v6

    #@b6
    .line 4433
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
    .line 4442
    :cond_9
    const-string/jumbo v4, "<meta-data> requires an android:value or android:resource attribute"

    #@c6
    aput-object v4, p4, v6

    #@c8
    .line 4443
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
    .line 699
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    #@4
    move-result-object v2

    #@5
    .line 700
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 701
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

.method private parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z
    .locals 8
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "outError"    # [Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "sa"    # Landroid/content/res/TypedArray;
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "logoRes"    # I
    .param p10, "bannerRes"    # I

    #@0
    .prologue
    .line 3338
    const/4 v6, 0x0

    #@1
    invoke-virtual {p5, p6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    .line 3339
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_0

    #@7
    .line 3340
    new-instance v6, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v6

    #@10
    const-string/jumbo v7, " does not specify android:name"

    #@13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    const/4 v7, 0x0

    #@1c
    aput-object v6, p3, v7

    #@1e
    .line 3341
    const/4 v6, 0x0

    #@1f
    return v6

    #@20
    .line 3345
    :cond_0
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@22
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@24
    invoke-static {v6, v4, p3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    .line 3344
    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@2a
    .line 3346
    iget-object v6, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@2c
    if-nez v6, :cond_1

    #@2e
    .line 3347
    const/4 v6, 0x0

    #@2f
    return v6

    #@30
    .line 3350
    :cond_1
    const/4 v6, 0x0

    #@31
    move/from16 v0, p8

    #@33
    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@36
    move-result v2

    #@37
    .line 3351
    .local v2, "iconVal":I
    if-eqz v2, :cond_2

    #@39
    .line 3352
    iput v2, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    #@3b
    .line 3353
    const/4 v6, 0x0

    #@3c
    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@3e
    .line 3356
    :cond_2
    const/4 v6, 0x0

    #@3f
    move/from16 v0, p9

    #@41
    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@44
    move-result v3

    #@45
    .line 3357
    .local v3, "logoVal":I
    if-eqz v3, :cond_3

    #@47
    .line 3358
    iput v3, p2, Landroid/content/pm/PackageItemInfo;->logo:I

    #@49
    .line 3361
    :cond_3
    const/4 v6, 0x0

    #@4a
    move/from16 v0, p10

    #@4c
    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4f
    move-result v1

    #@50
    .line 3362
    .local v1, "bannerVal":I
    if-eqz v1, :cond_4

    #@52
    .line 3363
    iput v1, p2, Landroid/content/pm/PackageItemInfo;->banner:I

    #@54
    .line 3366
    :cond_4
    invoke-virtual {p5, p7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@57
    move-result-object v5

    #@58
    .line 3367
    .local v5, "v":Landroid/util/TypedValue;
    if-eqz v5, :cond_5

    #@5a
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    #@5c
    iput v6, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@5e
    if-nez v6, :cond_5

    #@60
    .line 3368
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@63
    move-result-object v6

    #@64
    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@66
    .line 3371
    :cond_5
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@68
    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@6a
    .line 3373
    const/4 v6, 0x1

    #@6b
    return v6
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
    .line 690
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 691
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 693
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
    .line 1390
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
    .line 1391
    if-ne v3, v8, :cond_0

    #@10
    .line 1394
    :cond_1
    const/4 v4, 0x2

    #@11
    if-eq v3, v4, :cond_2

    #@13
    .line 1395
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@15
    .line 1396
    const-string/jumbo v5, "No start tag found"

    #@18
    .line 1395
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@1b
    throw v4

    #@1c
    .line 1398
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
    .line 1399
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@2b
    .line 1400
    const-string/jumbo v5, "No <manifest> tag"

    #@2e
    .line 1399
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@31
    throw v4

    #@32
    .line 1403
    :cond_3
    const-string/jumbo v4, "package"

    #@35
    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 1404
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "android"

    #@3c
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-nez v4, :cond_4

    #@42
    .line 1405
    invoke-static {v1, v8, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 1406
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@48
    .line 1407
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@4a
    .line 1408
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
    .line 1407
    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@61
    throw v4

    #@62
    .line 1412
    .end local v0    # "error":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "split"

    #@65
    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    .line 1413
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_5

    #@6b
    .line 1414
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6e
    move-result v4

    #@6f
    if-nez v4, :cond_7

    #@71
    .line 1415
    const/4 v2, 0x0

    #@72
    .line 1425
    .end local v2    # "splitName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    .line 1426
    if-eqz v2, :cond_6

    #@78
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    .line 1425
    :cond_6
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@7f
    move-result-object v4

    #@80
    return-object v4

    #@81
    .line 1417
    .restart local v2    # "splitName":Ljava/lang/String;
    :cond_7
    invoke-static {v2, v7, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    .line 1418
    .restart local v0    # "error":Ljava/lang/String;
    if-eqz v0, :cond_5

    #@87
    .line 1419
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@89
    .line 1420
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
    .line 1419
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
    .line 2546
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v14, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    #@7
    .line 2549
    .local v14, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    #@9
    .line 2548
    move-object/from16 v0, p2

    #@b
    move-object/from16 v1, p3

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v7

    #@11
    .line 2551
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@13
    .line 2552
    const-string/jumbo v6, "<permission>"

    #@16
    .line 2553
    const/4 v8, 0x2

    #@17
    .line 2554
    const/4 v9, 0x0

    #@18
    .line 2555
    const/4 v10, 0x1

    #@19
    .line 2556
    const/4 v11, 0x6

    #@1a
    .line 2557
    const/16 v12, 0x8

    #@1c
    move-object v2, p0

    #@1d
    move-object/from16 v3, p1

    #@1f
    move-object/from16 v5, p4

    #@21
    .line 2551
    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_0

    #@27
    .line 2558
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@2a
    .line 2559
    const/16 v2, -0x6c

    #@2c
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@2e
    .line 2560
    const/4 v2, 0x0

    #@2f
    return-object v2

    #@30
    .line 2565
    :cond_0
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@32
    .line 2566
    const/4 v3, 0x4

    #@33
    .line 2565
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@39
    .line 2567
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@3b
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@3d
    if-eqz v2, :cond_1

    #@3f
    .line 2568
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@41
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@43
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@45
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@4b
    .line 2571
    :cond_1
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@4d
    .line 2572
    const/4 v3, 0x5

    #@4e
    .line 2573
    const/4 v4, 0x0

    #@4f
    .line 2571
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@52
    move-result v3

    #@53
    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@55
    .line 2575
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@57
    .line 2576
    const/4 v3, 0x3

    #@58
    .line 2577
    const/4 v4, 0x0

    #@59
    .line 2575
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5c
    move-result v3

    #@5d
    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@5f
    .line 2579
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@61
    .line 2580
    const/4 v3, 0x7

    #@62
    const/4 v4, 0x0

    #@63
    .line 2579
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@66
    move-result v3

    #@67
    iput v3, v2, Landroid/content/pm/PermissionInfo;->flags:I

    #@69
    .line 2582
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@6c
    .line 2584
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@6e
    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@70
    const/4 v3, -0x1

    #@71
    if-ne v2, v3, :cond_2

    #@73
    .line 2585
    const-string/jumbo v2, "<permission> does not specify protectionLevel"

    #@76
    const/4 v3, 0x0

    #@77
    aput-object v2, p4, v3

    #@79
    .line 2586
    const/16 v2, -0x6c

    #@7b
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@7d
    .line 2587
    const/4 v2, 0x0

    #@7e
    return-object v2

    #@7f
    .line 2590
    :cond_2
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@81
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@83
    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@85
    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    #@88
    move-result v3

    #@89
    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@8b
    .line 2592
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@8d
    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@8f
    and-int/lit16 v2, v2, 0xff0

    #@91
    if-eqz v2, :cond_3

    #@93
    .line 2593
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@95
    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@97
    and-int/lit8 v2, v2, 0xf

    #@99
    .line 2594
    const/4 v3, 0x2

    #@9a
    .line 2593
    if-eq v2, v3, :cond_3

    #@9c
    .line 2595
    const-string/jumbo v2, "<permission>  protectionLevel specifies a flag but is not based on signature type"

    #@9f
    const/4 v3, 0x0

    #@a0
    aput-object v2, p4, v3

    #@a2
    .line 2597
    const/16 v2, -0x6c

    #@a4
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@a6
    .line 2598
    const/4 v2, 0x0

    #@a7
    return-object v2

    #@a8
    .line 2602
    :cond_3
    const-string/jumbo v11, "<permission>"

    #@ab
    move-object v8, p0

    #@ac
    move-object/from16 v9, p2

    #@ae
    move-object/from16 v10, p3

    #@b0
    move-object v12, v14

    #@b1
    move-object/from16 v13, p4

    #@b3
    invoke-direct/range {v8 .. v13}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@b6
    move-result v2

    #@b7
    if-nez v2, :cond_4

    #@b9
    .line 2603
    const/16 v2, -0x6c

    #@bb
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@bd
    .line 2604
    const/4 v2, 0x0

    #@be
    return-object v2

    #@bf
    .line 2607
    :cond_4
    move-object/from16 v0, p1

    #@c1
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@c3
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c6
    .line 2609
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
    .line 2502
    new-instance v14, Landroid/content/pm/PackageParser$PermissionGroup;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v14, v0}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    #@7
    .line 2505
    .local v14, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    #@9
    .line 2504
    move-object/from16 v0, p3

    #@b
    move-object/from16 v1, p4

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v7

    #@11
    .line 2507
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@13
    .line 2508
    const-string/jumbo v6, "<permission-group>"

    #@16
    .line 2509
    const/4 v8, 0x2

    #@17
    .line 2510
    const/4 v9, 0x0

    #@18
    .line 2511
    const/4 v10, 0x1

    #@19
    .line 2512
    const/4 v11, 0x5

    #@1a
    .line 2513
    const/4 v12, 0x7

    #@1b
    move-object v2, p0

    #@1c
    move-object/from16 v3, p1

    #@1e
    move-object/from16 v5, p5

    #@20
    .line 2507
    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_0

    #@26
    .line 2514
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 2515
    const/16 v2, -0x6c

    #@2b
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@2d
    .line 2516
    const/4 v2, 0x0

    #@2e
    return-object v2

    #@2f
    .line 2519
    :cond_0
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@31
    .line 2520
    const/4 v3, 0x4

    #@32
    .line 2521
    const/4 v4, 0x0

    #@33
    .line 2519
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@36
    move-result v3

    #@37
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    #@39
    .line 2522
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@3b
    .line 2523
    const/4 v3, 0x6

    #@3c
    const/4 v4, 0x0

    #@3d
    .line 2522
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@40
    move-result v3

    #@41
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->flags:I

    #@43
    .line 2524
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@45
    .line 2525
    const/4 v3, 0x3

    #@46
    const/4 v4, 0x0

    #@47
    .line 2524
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4a
    move-result v3

    #@4b
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@4d
    .line 2526
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@4f
    iget v2, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@51
    if-lez v2, :cond_1

    #@53
    and-int/lit8 v2, p2, 0x1

    #@55
    if-nez v2, :cond_1

    #@57
    .line 2527
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@59
    const/4 v3, 0x0

    #@5a
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@5c
    .line 2530
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@5f
    .line 2532
    const-string/jumbo v11, "<permission-group>"

    #@62
    move-object v8, p0

    #@63
    move-object/from16 v9, p3

    #@65
    move-object/from16 v10, p4

    #@67
    move-object v12, v14

    #@68
    move-object/from16 v13, p5

    #@6a
    invoke-direct/range {v8 .. v13}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@6d
    move-result v2

    #@6e
    if-nez v2, :cond_2

    #@70
    .line 2534
    const/16 v2, -0x6c

    #@72
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@74
    .line 2535
    const/4 v2, 0x0

    #@75
    return-object v2

    #@76
    .line 2538
    :cond_2
    move-object/from16 v0, p1

    #@78
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7d
    .line 2540
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
    .line 2615
    new-instance v15, Landroid/content/pm/PackageParser$Permission;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v15, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    #@7
    .line 2618
    .local v15, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    #@9
    .line 2617
    move-object/from16 v0, p2

    #@b
    move-object/from16 v1, p3

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v7

    #@11
    .line 2620
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@13
    .line 2621
    const-string/jumbo v6, "<permission-tree>"

    #@16
    .line 2622
    const/4 v8, 0x2

    #@17
    .line 2623
    const/4 v9, 0x0

    #@18
    .line 2624
    const/4 v10, 0x1

    #@19
    .line 2625
    const/4 v11, 0x3

    #@1a
    .line 2626
    const/4 v12, 0x4

    #@1b
    move-object/from16 v2, p0

    #@1d
    move-object/from16 v3, p1

    #@1f
    move-object/from16 v5, p4

    #@21
    .line 2620
    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_0

    #@27
    .line 2627
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@2a
    .line 2628
    const/16 v2, -0x6c

    #@2c
    move-object/from16 v0, p0

    #@2e
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@30
    .line 2629
    const/4 v2, 0x0

    #@31
    return-object v2

    #@32
    .line 2632
    :cond_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@35
    .line 2634
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
    .line 2635
    .local v14, "index":I
    if-lez v14, :cond_1

    #@41
    .line 2636
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
    .line 2638
    :cond_1
    if-gez v14, :cond_2

    #@4f
    .line 2639
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
    .line 2640
    iget-object v3, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@5d
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@5f
    .line 2639
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
    .line 2641
    const/16 v2, -0x6c

    #@6c
    move-object/from16 v0, p0

    #@6e
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@70
    .line 2642
    const/4 v2, 0x0

    #@71
    return-object v2

    #@72
    .line 2645
    :cond_2
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@74
    const/4 v3, 0x0

    #@75
    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@77
    .line 2646
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@79
    const/4 v3, 0x0

    #@7a
    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@7c
    .line 2647
    const/4 v2, 0x1

    #@7d
    iput-boolean v2, v15, Landroid/content/pm/PackageParser$Permission;->tree:Z

    #@7f
    .line 2649
    const-string/jumbo v11, "<permission-tree>"

    #@82
    move-object/from16 v8, p0

    #@84
    move-object/from16 v9, p2

    #@86
    move-object/from16 v10, p3

    #@88
    move-object v12, v15

    #@89
    move-object/from16 v13, p4

    #@8b
    invoke-direct/range {v8 .. v13}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@8e
    move-result v2

    #@8f
    if-nez v2, :cond_3

    #@91
    .line 2651
    const/16 v2, -0x6c

    #@93
    move-object/from16 v0, p0

    #@95
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@97
    .line 2652
    const/4 v2, 0x0

    #@98
    return-object v2

    #@99
    .line 2655
    :cond_3
    move-object/from16 v0, p1

    #@9b
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@9d
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a0
    .line 2657
    return-object v15
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
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
    .line 3908
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    #@2
    .line 3907
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v21

    #@a
    .line 3910
    .local v21, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@c
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@e
    if-nez v5, :cond_0

    #@10
    .line 3911
    new-instance v5, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@12
    .line 3917
    move-object/from16 v0, p0

    #@14
    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@16
    .line 3912
    const/4 v8, 0x2

    #@17
    .line 3913
    const/4 v9, 0x0

    #@18
    .line 3914
    const/4 v10, 0x1

    #@19
    .line 3915
    const/16 v11, 0xf

    #@1b
    .line 3916
    const/16 v12, 0x11

    #@1d
    .line 3918
    const/16 v14, 0x8

    #@1f
    .line 3919
    const/16 v15, 0xe

    #@21
    .line 3920
    const/16 v16, 0x6

    #@23
    move-object/from16 v6, p1

    #@25
    move-object/from16 v7, p5

    #@27
    .line 3911
    invoke-direct/range {v5 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    #@2a
    move-object/from16 v0, p0

    #@2c
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@2e
    .line 3921
    move-object/from16 v0, p0

    #@30
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@32
    const-string/jumbo v6, "<provider>"

    #@35
    iput-object v6, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@37
    .line 3924
    :cond_0
    move-object/from16 v0, p0

    #@39
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@3b
    move-object/from16 v0, v21

    #@3d
    iput-object v0, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@3f
    .line 3925
    move-object/from16 v0, p0

    #@41
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@43
    move/from16 v0, p4

    #@45
    iput v0, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@47
    .line 3927
    new-instance v18, Landroid/content/pm/PackageParser$Provider;

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@4d
    new-instance v6, Landroid/content/pm/ProviderInfo;

    #@4f
    invoke-direct {v6}, Landroid/content/pm/ProviderInfo;-><init>()V

    #@52
    move-object/from16 v0, v18

    #@54
    invoke-direct {v0, v5, v6}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    #@57
    .line 3928
    .local v18, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v5, 0x0

    #@58
    aget-object v5, p5, v5

    #@5a
    if-eqz v5, :cond_1

    #@5c
    .line 3929
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    #@5f
    .line 3930
    const/4 v5, 0x0

    #@60
    return-object v5

    #@61
    .line 3933
    :cond_1
    const/16 v20, 0x0

    #@63
    .line 3935
    .local v20, "providerExportedDefault":Z
    move-object/from16 v0, p1

    #@65
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@67
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@69
    const/16 v6, 0x11

    #@6b
    if-ge v5, v6, :cond_2

    #@6d
    .line 3939
    const/16 v20, 0x1

    #@6f
    .line 3942
    :cond_2
    move-object/from16 v0, v18

    #@71
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@73
    .line 3943
    const/4 v6, 0x7

    #@74
    .line 3942
    move-object/from16 v0, v21

    #@76
    move/from16 v1, v20

    #@78
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@7b
    move-result v6

    #@7c
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    #@7e
    .line 3947
    const/16 v5, 0xa

    #@80
    const/4 v6, 0x0

    #@81
    .line 3946
    move-object/from16 v0, v21

    #@83
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@86
    move-result-object v17

    #@87
    .line 3949
    .local v17, "cpname":Ljava/lang/String;
    move-object/from16 v0, v18

    #@89
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@8b
    .line 3950
    const/16 v6, 0xb

    #@8d
    .line 3951
    const/4 v7, 0x0

    #@8e
    .line 3949
    move-object/from16 v0, v21

    #@90
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@93
    move-result v6

    #@94
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@96
    .line 3954
    const/4 v5, 0x3

    #@97
    const/4 v6, 0x0

    #@98
    .line 3953
    move-object/from16 v0, v21

    #@9a
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@9d
    move-result-object v19

    #@9e
    .line 3956
    .local v19, "permission":Ljava/lang/String;
    const/4 v5, 0x4

    #@9f
    const/4 v6, 0x0

    #@a0
    .line 3955
    move-object/from16 v0, v21

    #@a2
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@a5
    move-result-object v22

    #@a6
    .line 3957
    .local v22, "str":Ljava/lang/String;
    if-nez v22, :cond_3

    #@a8
    .line 3958
    move-object/from16 v22, v19

    #@aa
    .line 3960
    :cond_3
    if-nez v22, :cond_7

    #@ac
    .line 3961
    move-object/from16 v0, v18

    #@ae
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@b0
    move-object/from16 v0, p1

    #@b2
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b4
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@b6
    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@b8
    .line 3967
    :goto_0
    const/4 v5, 0x5

    #@b9
    const/4 v6, 0x0

    #@ba
    .line 3966
    move-object/from16 v0, v21

    #@bc
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@bf
    move-result-object v22

    #@c0
    .line 3968
    if-nez v22, :cond_4

    #@c2
    .line 3969
    move-object/from16 v22, v19

    #@c4
    .line 3971
    :cond_4
    if-nez v22, :cond_9

    #@c6
    .line 3972
    move-object/from16 v0, v18

    #@c8
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@ca
    move-object/from16 v0, p1

    #@cc
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@ce
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@d0
    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@d2
    .line 3978
    :goto_1
    move-object/from16 v0, v18

    #@d4
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@d6
    .line 3979
    const/16 v6, 0xd

    #@d8
    .line 3980
    const/4 v7, 0x0

    #@d9
    .line 3978
    move-object/from16 v0, v21

    #@db
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@de
    move-result v6

    #@df
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@e1
    .line 3982
    move-object/from16 v0, v18

    #@e3
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@e5
    .line 3983
    const/16 v6, 0x9

    #@e7
    .line 3984
    const/4 v7, 0x0

    #@e8
    .line 3982
    move-object/from16 v0, v21

    #@ea
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ed
    move-result v6

    #@ee
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@f0
    .line 3986
    move-object/from16 v0, v18

    #@f2
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@f4
    .line 3987
    const/16 v6, 0xc

    #@f6
    .line 3988
    const/4 v7, 0x0

    #@f7
    .line 3986
    move-object/from16 v0, v21

    #@f9
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@fc
    move-result v6

    #@fd
    iput v6, v5, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@ff
    .line 3990
    move-object/from16 v0, v18

    #@101
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@103
    const/4 v6, 0x0

    #@104
    iput v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    #@106
    .line 3993
    const/16 v5, 0x10

    #@108
    .line 3994
    const/4 v6, 0x0

    #@109
    .line 3992
    move-object/from16 v0, v21

    #@10b
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@10e
    move-result v5

    #@10f
    if-eqz v5, :cond_5

    #@111
    .line 3995
    move-object/from16 v0, v18

    #@113
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@115
    iget v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    #@117
    const/high16 v7, 0x40000000    # 2.0f

    #@119
    or-int/2addr v6, v7

    #@11a
    iput v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    #@11c
    .line 3996
    move-object/from16 v0, v18

    #@11e
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@120
    iget-boolean v5, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    #@122
    if-eqz v5, :cond_5

    #@124
    move/from16 v0, p4

    #@126
    and-int/lit16 v5, v0, 0x80

    #@128
    if-nez v5, :cond_5

    #@12a
    .line 3997
    const-string/jumbo v5, "PackageParser"

    #@12d
    new-instance v6, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    const-string/jumbo v7, "Provider exported request ignored due to singleUser: "

    #@135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v6

    #@139
    .line 3998
    move-object/from16 v0, v18

    #@13b
    iget-object v7, v0, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    #@13d
    .line 3997
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v6

    #@141
    .line 3998
    const-string/jumbo v7, " at "

    #@144
    .line 3997
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v6

    #@148
    .line 3998
    move-object/from16 v0, p0

    #@14a
    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@14c
    .line 3997
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v6

    #@150
    .line 3998
    const-string/jumbo v7, " "

    #@153
    .line 3997
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v6

    #@157
    .line 3999
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@15a
    move-result-object v7

    #@15b
    .line 3997
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v6

    #@15f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@162
    move-result-object v6

    #@163
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@166
    .line 4000
    move-object/from16 v0, v18

    #@168
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@16a
    const/4 v6, 0x0

    #@16b
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    #@16d
    .line 4004
    :cond_5
    move-object/from16 v0, v18

    #@16f
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@171
    .line 4005
    const/16 v6, 0x12

    #@173
    .line 4006
    const/4 v7, 0x0

    #@174
    .line 4004
    move-object/from16 v0, v21

    #@176
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@179
    move-result v6

    #@17a
    move-object/from16 v0, v18

    #@17c
    iget-object v7, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@17e
    iput-boolean v6, v7, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    #@180
    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->encryptionAware:Z

    #@182
    .line 4007
    move-object/from16 v0, v18

    #@184
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@186
    iget-boolean v5, v5, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    #@188
    if-eqz v5, :cond_6

    #@18a
    .line 4008
    move-object/from16 v0, p1

    #@18c
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@18e
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@190
    or-int/lit16 v6, v6, 0x100

    #@192
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@194
    .line 4012
    :cond_6
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    #@197
    .line 4014
    move-object/from16 v0, p1

    #@199
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@19b
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@19d
    and-int/lit8 v5, v5, 0x2

    #@19f
    if-eqz v5, :cond_b

    #@1a1
    .line 4018
    move-object/from16 v0, v18

    #@1a3
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@1a5
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    #@1a7
    move-object/from16 v0, p1

    #@1a9
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@1ab
    if-ne v5, v6, :cond_b

    #@1ad
    .line 4019
    const-string/jumbo v5, "Heavy-weight applications can not have providers in main process"

    #@1b0
    const/4 v6, 0x0

    #@1b1
    aput-object v5, p5, v6

    #@1b3
    .line 4020
    const/4 v5, 0x0

    #@1b4
    return-object v5

    #@1b5
    .line 3963
    :cond_7
    move-object/from16 v0, v18

    #@1b7
    iget-object v6, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@1b9
    .line 3964
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    #@1bc
    move-result v5

    #@1bd
    if-lez v5, :cond_8

    #@1bf
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v5

    #@1c3
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1c6
    move-result-object v5

    #@1c7
    .line 3963
    :goto_2
    iput-object v5, v6, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@1c9
    goto/16 :goto_0

    #@1cb
    .line 3964
    :cond_8
    const/4 v5, 0x0

    #@1cc
    goto :goto_2

    #@1cd
    .line 3974
    :cond_9
    move-object/from16 v0, v18

    #@1cf
    iget-object v6, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@1d1
    .line 3975
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    #@1d4
    move-result v5

    #@1d5
    if-lez v5, :cond_a

    #@1d7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@1da
    move-result-object v5

    #@1db
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1de
    move-result-object v5

    #@1df
    .line 3974
    :goto_3
    iput-object v5, v6, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@1e1
    goto/16 :goto_1

    #@1e3
    .line 3975
    :cond_a
    const/4 v5, 0x0

    #@1e4
    goto :goto_3

    #@1e5
    .line 4024
    :cond_b
    if-nez v17, :cond_c

    #@1e7
    .line 4025
    const-string/jumbo v5, "<provider> does not include authorities attribute"

    #@1ea
    const/4 v6, 0x0

    #@1eb
    aput-object v5, p5, v6

    #@1ed
    .line 4026
    const/4 v5, 0x0

    #@1ee
    return-object v5

    #@1ef
    .line 4028
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@1f2
    move-result v5

    #@1f3
    if-gtz v5, :cond_d

    #@1f5
    .line 4029
    const-string/jumbo v5, "<provider> has empty authorities attribute"

    #@1f8
    const/4 v6, 0x0

    #@1f9
    aput-object v5, p5, v6

    #@1fb
    .line 4030
    const/4 v5, 0x0

    #@1fc
    return-object v5

    #@1fd
    .line 4032
    :cond_d
    move-object/from16 v0, v18

    #@1ff
    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@201
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@204
    move-result-object v6

    #@205
    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@207
    .line 4034
    move-object/from16 v0, p0

    #@209
    move-object/from16 v1, p2

    #@20b
    move-object/from16 v2, p3

    #@20d
    move-object/from16 v3, v18

    #@20f
    move-object/from16 v4, p5

    #@211
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    #@214
    move-result v5

    #@215
    if-nez v5, :cond_e

    #@217
    .line 4035
    const/4 v5, 0x0

    #@218
    return-object v5

    #@219
    .line 4038
    :cond_e
    return-object v18
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
    .line 4044
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@3
    move-result v15

    #@4
    .line 4046
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
    .line 4047
    const/4 v4, 0x3

    #@e
    move/from16 v0, v23

    #@10
    if-ne v0, v4, :cond_1

    #@12
    .line 4048
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@15
    move-result v4

    #@16
    if-le v4, v15, :cond_16

    #@18
    .line 4049
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
    .line 4053
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
    .line 4054
    new-instance v9, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@31
    move-object/from16 v0, p3

    #@33
    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    #@36
    .line 4055
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
    .line 4056
    const/4 v4, 0x0

    #@47
    return v4

    #@48
    .line 4058
    :cond_2
    move-object/from16 v0, p3

    #@4a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    goto :goto_0

    #@50
    .line 4060
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
    .line 4062
    move-object/from16 v0, p3

    #@5f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    #@61
    .line 4061
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
    .line 4063
    const/4 v4, 0x0

    #@74
    return v4

    #@75
    .line 4066
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
    .line 4068
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    #@84
    .line 4067
    move-object/from16 v0, p1

    #@86
    move-object/from16 v1, p2

    #@88
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8b
    move-result-object v21

    #@8c
    .line 4070
    .local v21, "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    #@8e
    .line 4073
    .local v17, "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    #@8f
    const/4 v5, 0x0

    #@90
    .line 4072
    move-object/from16 v0, v21

    #@92
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@95
    move-result-object v22

    #@96
    .line 4074
    .local v22, "str":Ljava/lang/String;
    if-eqz v22, :cond_5

    #@98
    .line 4075
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
    .line 4079
    :cond_5
    const/4 v4, 0x1

    #@a3
    const/4 v5, 0x0

    #@a4
    .line 4078
    move-object/from16 v0, v21

    #@a6
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@a9
    move-result-object v22

    #@aa
    .line 4080
    if-eqz v22, :cond_6

    #@ac
    .line 4081
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
    .line 4085
    :cond_6
    const/4 v4, 0x2

    #@b7
    const/4 v5, 0x0

    #@b8
    .line 4084
    move-object/from16 v0, v21

    #@ba
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@bd
    move-result-object v22

    #@be
    .line 4086
    if-eqz v22, :cond_7

    #@c0
    .line 4087
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
    .line 4090
    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    #@cd
    .line 4092
    if-eqz v17, :cond_9

    #@cf
    .line 4093
    move-object/from16 v0, p3

    #@d1
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@d3
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@d5
    if-nez v4, :cond_8

    #@d7
    .line 4094
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
    .line 4095
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
    .line 4103
    :goto_1
    move-object/from16 v0, p3

    #@eb
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@ed
    const/4 v5, 0x1

    #@ee
    iput-boolean v5, v4, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@f0
    .line 4116
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@f3
    goto/16 :goto_0

    #@f5
    .line 4097
    :cond_8
    move-object/from16 v0, p3

    #@f7
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@f9
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@fb
    array-length v11, v4

    #@fc
    .line 4098
    .local v11, "N":I
    add-int/lit8 v4, v11, 0x1

    #@fe
    new-array v14, v4, [Landroid/os/PatternMatcher;

    #@100
    .line 4099
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
    .line 4100
    aput-object v17, v14, v11

    #@10d
    .line 4101
    move-object/from16 v0, p3

    #@10f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@111
    iput-object v14, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@113
    goto :goto_1

    #@114
    .line 4106
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
    .line 4107
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@126
    move-result-object v6

    #@127
    .line 4106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v5

    #@12b
    .line 4107
    const-string/jumbo v6, " at "

    #@12e
    .line 4106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v5

    #@132
    .line 4107
    move-object/from16 v0, p0

    #@134
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@136
    .line 4106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v5

    #@13a
    .line 4107
    const-string/jumbo v6, " "

    #@13d
    .line 4106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v5

    #@141
    .line 4108
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@144
    move-result-object v6

    #@145
    .line 4106
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
    .line 4109
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@153
    goto/16 :goto_0

    #@155
    .line 4118
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
    .line 4120
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    #@164
    .line 4119
    move-object/from16 v0, p1

    #@166
    move-object/from16 v1, p2

    #@168
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@16b
    move-result-object v21

    #@16c
    .line 4122
    .restart local v21    # "sa":Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    #@16e
    .line 4125
    .local v16, "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    #@16f
    const/4 v5, 0x0

    #@170
    .line 4124
    move-object/from16 v0, v21

    #@172
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@175
    move-result-object v19

    #@176
    .line 4127
    .local v19, "permission":Ljava/lang/String;
    const/4 v4, 0x1

    #@177
    const/4 v5, 0x0

    #@178
    .line 4126
    move-object/from16 v0, v21

    #@17a
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@17d
    move-result-object v20

    #@17e
    .line 4128
    .local v20, "readPermission":Ljava/lang/String;
    if-nez v20, :cond_b

    #@180
    .line 4129
    move-object/from16 v20, v19

    #@182
    .line 4132
    :cond_b
    const/4 v4, 0x2

    #@183
    const/4 v5, 0x0

    #@184
    .line 4131
    move-object/from16 v0, v21

    #@186
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@189
    move-result-object v24

    #@18a
    .line 4133
    .local v24, "writePermission":Ljava/lang/String;
    if-nez v24, :cond_c

    #@18c
    .line 4134
    move-object/from16 v24, v19

    #@18e
    .line 4137
    :cond_c
    const/4 v12, 0x0

    #@18f
    .line 4138
    .local v12, "havePerm":Z
    if-eqz v20, :cond_d

    #@191
    .line 4139
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@194
    move-result-object v20

    #@195
    .line 4140
    const/4 v12, 0x1

    #@196
    .line 4142
    :cond_d
    if-eqz v24, :cond_e

    #@198
    .line 4143
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@19b
    move-result-object v24

    #@19c
    .line 4144
    const/4 v12, 0x1

    #@19d
    .line 4147
    :cond_e
    if-nez v12, :cond_f

    #@19f
    .line 4149
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
    .line 4150
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1b1
    move-result-object v6

    #@1b2
    .line 4149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v5

    #@1b6
    .line 4150
    const-string/jumbo v6, " at "

    #@1b9
    .line 4149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v5

    #@1bd
    .line 4150
    move-object/from16 v0, p0

    #@1bf
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@1c1
    .line 4149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v5

    #@1c5
    .line 4150
    const-string/jumbo v6, " "

    #@1c8
    .line 4149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v5

    #@1cc
    .line 4151
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@1cf
    move-result-object v6

    #@1d0
    .line 4149
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
    .line 4152
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1de
    goto/16 :goto_0

    #@1e0
    .line 4161
    :cond_f
    const/4 v4, 0x3

    #@1e1
    const/4 v5, 0x0

    #@1e2
    .line 4160
    move-object/from16 v0, v21

    #@1e4
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1e7
    move-result-object v18

    #@1e8
    .line 4162
    .local v18, "path":Ljava/lang/String;
    if-eqz v18, :cond_10

    #@1ea
    .line 4163
    new-instance v16, Landroid/content/pm/PathPermission;

    #@1ec
    .line 4164
    .end local v16    # "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    #@1ed
    .line 4163
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
    .line 4168
    :cond_10
    const/4 v4, 0x4

    #@1f9
    const/4 v5, 0x0

    #@1fa
    .line 4167
    move-object/from16 v0, v21

    #@1fc
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1ff
    move-result-object v18

    #@200
    .line 4169
    if-eqz v18, :cond_11

    #@202
    .line 4170
    new-instance v16, Landroid/content/pm/PathPermission;

    #@204
    .line 4171
    const/4 v4, 0x1

    #@205
    .line 4170
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
    .line 4175
    :cond_11
    const/4 v4, 0x5

    #@211
    const/4 v5, 0x0

    #@212
    .line 4174
    move-object/from16 v0, v21

    #@214
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@217
    move-result-object v18

    #@218
    .line 4176
    if-eqz v18, :cond_12

    #@21a
    .line 4177
    new-instance v16, Landroid/content/pm/PathPermission;

    #@21c
    .line 4178
    const/4 v4, 0x2

    #@21d
    .line 4177
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
    .line 4181
    :cond_12
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    #@22b
    .line 4183
    if-eqz v16, :cond_14

    #@22d
    .line 4184
    move-object/from16 v0, p3

    #@22f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@231
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@233
    if-nez v4, :cond_13

    #@235
    .line 4185
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
    .line 4186
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
    .line 4205
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@24a
    goto/16 :goto_0

    #@24c
    .line 4188
    :cond_13
    move-object/from16 v0, p3

    #@24e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@250
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@252
    array-length v11, v4

    #@253
    .line 4189
    .restart local v11    # "N":I
    add-int/lit8 v4, v11, 0x1

    #@255
    new-array v13, v4, [Landroid/content/pm/PathPermission;

    #@257
    .line 4190
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
    .line 4191
    aput-object v16, v13, v11

    #@264
    .line 4192
    move-object/from16 v0, p3

    #@266
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@268
    iput-object v13, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@26a
    goto :goto_2

    #@26b
    .line 4196
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
    .line 4197
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@27d
    move-result-object v6

    #@27e
    .line 4196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v5

    #@282
    .line 4197
    const-string/jumbo v6, " at "

    #@285
    .line 4196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@288
    move-result-object v5

    #@289
    .line 4197
    move-object/from16 v0, p0

    #@28b
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@28d
    .line 4196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v5

    #@291
    .line 4197
    const-string/jumbo v6, " "

    #@294
    .line 4196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@297
    move-result-object v5

    #@298
    .line 4198
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@29b
    move-result-object v6

    #@29c
    .line 4196
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
    .line 4199
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2aa
    goto/16 :goto_0

    #@2ac
    .line 4209
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
    .line 4210
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@2be
    move-result-object v6

    #@2bf
    .line 4209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v5

    #@2c3
    .line 4210
    const-string/jumbo v6, " at "

    #@2c6
    .line 4209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c9
    move-result-object v5

    #@2ca
    .line 4210
    move-object/from16 v0, p0

    #@2cc
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@2ce
    .line 4209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d1
    move-result-object v5

    #@2d2
    .line 4210
    const-string/jumbo v6, " "

    #@2d5
    .line 4209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d8
    move-result-object v5

    #@2d9
    .line 4211
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@2dc
    move-result-object v6

    #@2dd
    .line 4209
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
    .line 4212
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2eb
    goto/16 :goto_0

    #@2ed
    .line 4220
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
    .line 4482
    if-nez p0, :cond_0

    #@3
    .line 4483
    const-string/jumbo v6, "PackageParser"

    #@6
    const-string/jumbo v7, "Could not parse null public key"

    #@9
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 4484
    return-object v8

    #@d
    .line 4489
    :cond_0
    const/4 v6, 0x0

    #@e
    :try_start_0
    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@11
    move-result-object v3

    #@12
    .line 4490
    .local v3, "encoded":[B
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    #@14
    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 4498
    .local v5, "keySpec":Ljava/security/spec/EncodedKeySpec;
    :try_start_1
    const-string/jumbo v6, "RSA"

    #@1a
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@1d
    move-result-object v4

    #@1e
    .line 4499
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
    .line 4491
    .end local v3    # "encoded":[B
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_0
    move-exception v0

    #@24
    .line 4492
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "PackageParser"

    #@27
    const-string/jumbo v7, "Could not parse verifier public key; invalid Base64"

    #@2a
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 4493
    return-object v8

    #@2e
    .line 4500
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "encoded":[B
    .restart local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_1
    move-exception v1

    #@2f
    .line 4501
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    #@32
    const-string/jumbo v7, "Could not parse public key: RSA KeyFactory not included in build"

    #@35
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 4508
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    :try_start_2
    const-string/jumbo v6, "EC"

    #@3b
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@3e
    move-result-object v4

    #@3f
    .line 4509
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
    .line 4510
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_2
    move-exception v1

    #@45
    .line 4511
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    #@48
    const-string/jumbo v7, "Could not parse public key: EC KeyFactory not included in build"

    #@4b
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 4518
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "DSA"

    #@51
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@54
    move-result-object v4

    #@55
    .line 4519
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
    .line 4520
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_3
    move-exception v1

    #@5b
    .line 4521
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    #@5e
    const-string/jumbo v7, "Could not parse public key: DSA KeyFactory not included in build"

    #@61
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 4527
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v8

    #@65
    .line 4522
    :catch_4
    move-exception v2

    #@66
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_2

    #@67
    .line 4512
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_5
    move-exception v2

    #@68
    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_1

    #@69
    .line 4502
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_6
    move-exception v2

    #@6a
    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .locals 22
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
    .line 4227
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    #@2
    .line 4226
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v18

    #@a
    .line 4229
    .local v18, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@e
    if-nez v4, :cond_0

    #@10
    .line 4230
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@12
    .line 4236
    move-object/from16 v0, p0

    #@14
    iget-object v12, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@16
    .line 4231
    const/4 v7, 0x2

    #@17
    .line 4232
    const/4 v8, 0x0

    #@18
    .line 4233
    const/4 v9, 0x1

    #@19
    .line 4234
    const/16 v10, 0x8

    #@1b
    .line 4235
    const/16 v11, 0xc

    #@1d
    .line 4237
    const/4 v13, 0x6

    #@1e
    .line 4238
    const/4 v14, 0x7

    #@1f
    .line 4239
    const/4 v15, 0x4

    #@20
    move-object/from16 v5, p1

    #@22
    move-object/from16 v6, p5

    #@24
    .line 4230
    invoke-direct/range {v4 .. v15}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    #@27
    move-object/from16 v0, p0

    #@29
    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@2b
    .line 4240
    move-object/from16 v0, p0

    #@2d
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@2f
    const-string/jumbo v5, "<service>"

    #@32
    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@34
    .line 4243
    :cond_0
    move-object/from16 v0, p0

    #@36
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@38
    move-object/from16 v0, v18

    #@3a
    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@3c
    .line 4244
    move-object/from16 v0, p0

    #@3e
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@40
    move/from16 v0, p4

    #@42
    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@44
    .line 4246
    new-instance v17, Landroid/content/pm/PackageParser$Service;

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@4a
    new-instance v5, Landroid/content/pm/ServiceInfo;

    #@4c
    invoke-direct {v5}, Landroid/content/pm/ServiceInfo;-><init>()V

    #@4f
    move-object/from16 v0, v17

    #@51
    invoke-direct {v0, v4, v5}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    #@54
    .line 4247
    .local v17, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v4, 0x0

    #@55
    aget-object v4, p5, v4

    #@57
    if-eqz v4, :cond_1

    #@59
    .line 4248
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    #@5c
    .line 4249
    const/4 v4, 0x0

    #@5d
    return-object v4

    #@5e
    .line 4253
    :cond_1
    const/4 v4, 0x5

    #@5f
    .line 4252
    move-object/from16 v0, v18

    #@61
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@64
    move-result v19

    #@65
    .line 4254
    .local v19, "setExported":Z
    if-eqz v19, :cond_2

    #@67
    .line 4255
    move-object/from16 v0, v17

    #@69
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@6b
    .line 4256
    const/4 v5, 0x5

    #@6c
    const/4 v6, 0x0

    #@6d
    .line 4255
    move-object/from16 v0, v18

    #@6f
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@72
    move-result v5

    #@73
    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    #@75
    .line 4260
    :cond_2
    const/4 v4, 0x3

    #@76
    const/4 v5, 0x0

    #@77
    .line 4259
    move-object/from16 v0, v18

    #@79
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@7c
    move-result-object v20

    #@7d
    .line 4261
    .local v20, "str":Ljava/lang/String;
    if-nez v20, :cond_8

    #@7f
    .line 4262
    move-object/from16 v0, v17

    #@81
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@83
    move-object/from16 v0, p1

    #@85
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@87
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@89
    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@8b
    .line 4267
    :goto_0
    move-object/from16 v0, v17

    #@8d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@8f
    const/4 v5, 0x0

    #@90
    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@92
    .line 4269
    const/16 v4, 0x9

    #@94
    .line 4270
    const/4 v5, 0x0

    #@95
    .line 4268
    move-object/from16 v0, v18

    #@97
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@9a
    move-result v4

    #@9b
    if-eqz v4, :cond_3

    #@9d
    .line 4271
    move-object/from16 v0, v17

    #@9f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@a1
    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@a3
    or-int/lit8 v5, v5, 0x1

    #@a5
    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@a7
    .line 4274
    :cond_3
    const/16 v4, 0xa

    #@a9
    .line 4275
    const/4 v5, 0x0

    #@aa
    .line 4273
    move-object/from16 v0, v18

    #@ac
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@af
    move-result v4

    #@b0
    if-eqz v4, :cond_4

    #@b2
    .line 4276
    move-object/from16 v0, v17

    #@b4
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@b6
    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@b8
    or-int/lit8 v5, v5, 0x2

    #@ba
    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@bc
    .line 4279
    :cond_4
    const/16 v4, 0xe

    #@be
    .line 4280
    const/4 v5, 0x0

    #@bf
    .line 4278
    move-object/from16 v0, v18

    #@c1
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c4
    move-result v4

    #@c5
    if-eqz v4, :cond_5

    #@c7
    .line 4281
    move-object/from16 v0, v17

    #@c9
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@cb
    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@cd
    or-int/lit8 v5, v5, 0x4

    #@cf
    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@d1
    .line 4284
    :cond_5
    const/16 v4, 0xb

    #@d3
    .line 4285
    const/4 v5, 0x0

    #@d4
    .line 4283
    move-object/from16 v0, v18

    #@d6
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d9
    move-result v4

    #@da
    if-eqz v4, :cond_6

    #@dc
    .line 4286
    move-object/from16 v0, v17

    #@de
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@e0
    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@e2
    const/high16 v6, 0x40000000    # 2.0f

    #@e4
    or-int/2addr v5, v6

    #@e5
    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    #@e7
    .line 4287
    move-object/from16 v0, v17

    #@e9
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@eb
    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    #@ed
    if-eqz v4, :cond_6

    #@ef
    move/from16 v0, p4

    #@f1
    and-int/lit16 v4, v0, 0x80

    #@f3
    if-nez v4, :cond_6

    #@f5
    .line 4288
    const-string/jumbo v4, "PackageParser"

    #@f8
    new-instance v5, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v6, "Service exported request ignored due to singleUser: "

    #@100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v5

    #@104
    .line 4289
    move-object/from16 v0, v17

    #@106
    iget-object v6, v0, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    #@108
    .line 4288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v5

    #@10c
    .line 4289
    const-string/jumbo v6, " at "

    #@10f
    .line 4288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v5

    #@113
    .line 4289
    move-object/from16 v0, p0

    #@115
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@117
    .line 4288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v5

    #@11b
    .line 4289
    const-string/jumbo v6, " "

    #@11e
    .line 4288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v5

    #@122
    .line 4290
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@125
    move-result-object v6

    #@126
    .line 4288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v5

    #@12a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v5

    #@12e
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@131
    .line 4291
    move-object/from16 v0, v17

    #@133
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@135
    const/4 v5, 0x0

    #@136
    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    #@138
    .line 4292
    const/16 v19, 0x1

    #@13a
    .line 4296
    .end local v19    # "setExported":Z
    :cond_6
    move-object/from16 v0, v17

    #@13c
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@13e
    .line 4297
    const/16 v5, 0xd

    #@140
    .line 4298
    const/4 v6, 0x0

    #@141
    .line 4296
    move-object/from16 v0, v18

    #@143
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@146
    move-result v5

    #@147
    move-object/from16 v0, v17

    #@149
    iget-object v6, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@14b
    iput-boolean v5, v6, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    #@14d
    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->encryptionAware:Z

    #@14f
    .line 4299
    move-object/from16 v0, v17

    #@151
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@153
    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    #@155
    if-eqz v4, :cond_7

    #@157
    .line 4300
    move-object/from16 v0, p1

    #@159
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@15b
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@15d
    or-int/lit16 v5, v5, 0x100

    #@15f
    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@161
    .line 4304
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    #@164
    .line 4306
    move-object/from16 v0, p1

    #@166
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@168
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@16a
    and-int/lit8 v4, v4, 0x2

    #@16c
    if-eqz v4, :cond_a

    #@16e
    .line 4310
    move-object/from16 v0, v17

    #@170
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@172
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    #@174
    move-object/from16 v0, p1

    #@176
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@178
    if-ne v4, v5, :cond_a

    #@17a
    .line 4311
    const-string/jumbo v4, "Heavy-weight applications can not have services in main process"

    #@17d
    const/4 v5, 0x0

    #@17e
    aput-object v4, p5, v5

    #@180
    .line 4312
    const/4 v4, 0x0

    #@181
    return-object v4

    #@182
    .line 4264
    .restart local v19    # "setExported":Z
    :cond_8
    move-object/from16 v0, v17

    #@184
    iget-object v5, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@186
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    #@189
    move-result v4

    #@18a
    if-lez v4, :cond_9

    #@18c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@18f
    move-result-object v4

    #@190
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@193
    move-result-object v4

    #@194
    :goto_1
    iput-object v4, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@196
    goto/16 :goto_0

    #@198
    :cond_9
    const/4 v4, 0x0

    #@199
    goto :goto_1

    #@19a
    .line 4316
    .end local v19    # "setExported":Z
    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@19d
    move-result v16

    #@19e
    .line 4318
    .local v16, "outerDepth":I
    :cond_b
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@1a1
    move-result v21

    #@1a2
    .local v21, "type":I
    const/4 v4, 0x1

    #@1a3
    move/from16 v0, v21

    #@1a5
    if-eq v0, v4, :cond_10

    #@1a7
    .line 4319
    const/4 v4, 0x3

    #@1a8
    move/from16 v0, v21

    #@1aa
    if-ne v0, v4, :cond_c

    #@1ac
    .line 4320
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@1af
    move-result v4

    #@1b0
    move/from16 v0, v16

    #@1b2
    if-le v4, v0, :cond_10

    #@1b4
    .line 4321
    :cond_c
    const/4 v4, 0x3

    #@1b5
    move/from16 v0, v21

    #@1b7
    if-eq v0, v4, :cond_b

    #@1b9
    const/4 v4, 0x4

    #@1ba
    move/from16 v0, v21

    #@1bc
    if-eq v0, v4, :cond_b

    #@1be
    .line 4325
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1c1
    move-result-object v4

    #@1c2
    const-string/jumbo v5, "intent-filter"

    #@1c5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c8
    move-result v4

    #@1c9
    if-eqz v4, :cond_e

    #@1cb
    .line 4326
    new-instance v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@1cd
    move-object/from16 v0, v17

    #@1cf
    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    #@1d2
    .line 4327
    .local v9, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v7, 0x1

    #@1d3
    const/4 v8, 0x0

    #@1d4
    move-object/from16 v4, p0

    #@1d6
    move-object/from16 v5, p2

    #@1d8
    move-object/from16 v6, p3

    #@1da
    move-object/from16 v10, p5

    #@1dc
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@1df
    move-result v4

    #@1e0
    if-nez v4, :cond_d

    #@1e2
    .line 4328
    const/4 v4, 0x0

    #@1e3
    return-object v4

    #@1e4
    .line 4331
    :cond_d
    move-object/from16 v0, v17

    #@1e6
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    #@1e8
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1eb
    goto :goto_2

    #@1ec
    .line 4332
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1ef
    move-result-object v4

    #@1f0
    const-string/jumbo v5, "meta-data"

    #@1f3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f6
    move-result v4

    #@1f7
    if-eqz v4, :cond_f

    #@1f9
    .line 4333
    move-object/from16 v0, v17

    #@1fb
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    move-object/from16 v1, p2

    #@201
    move-object/from16 v2, p3

    #@203
    move-object/from16 v3, p5

    #@205
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@208
    move-result-object v4

    #@209
    move-object/from16 v0, v17

    #@20b
    iput-object v4, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    #@20d
    if-nez v4, :cond_b

    #@20f
    .line 4335
    const/4 v4, 0x0

    #@210
    return-object v4

    #@211
    .line 4339
    :cond_f
    const-string/jumbo v4, "PackageParser"

    #@214
    new-instance v5, Ljava/lang/StringBuilder;

    #@216
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@219
    const-string/jumbo v6, "Unknown element under <service>: "

    #@21c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v5

    #@220
    .line 4340
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@223
    move-result-object v6

    #@224
    .line 4339
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v5

    #@228
    .line 4340
    const-string/jumbo v6, " at "

    #@22b
    .line 4339
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v5

    #@22f
    .line 4340
    move-object/from16 v0, p0

    #@231
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@233
    .line 4339
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v5

    #@237
    .line 4340
    const-string/jumbo v6, " "

    #@23a
    .line 4339
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v5

    #@23e
    .line 4341
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@241
    move-result-object v6

    #@242
    .line 4339
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v5

    #@246
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@249
    move-result-object v5

    #@24a
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24d
    .line 4342
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@250
    goto/16 :goto_2

    #@252
    .line 4351
    :cond_10
    if-nez v19, :cond_11

    #@254
    .line 4352
    move-object/from16 v0, v17

    #@256
    iget-object v5, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@258
    move-object/from16 v0, v17

    #@25a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    #@25c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@25f
    move-result v4

    #@260
    if-lez v4, :cond_12

    #@262
    const/4 v4, 0x1

    #@263
    :goto_3
    iput-boolean v4, v5, Landroid/content/pm/ServiceInfo;->exported:Z

    #@265
    .line 4355
    :cond_11
    return-object v17

    #@266
    .line 4352
    :cond_12
    const/4 v4, 0x0

    #@267
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
    .line 1001
    move-object v0, p3

    #@1
    .line 1004
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    #@4
    .line 1006
    const/4 v5, 0x0

    #@5
    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@7
    .line 1007
    const/4 v5, 0x0

    #@8
    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@a
    .line 1008
    const/4 v5, 0x0

    #@b
    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@d
    .line 1009
    const/4 v5, 0x0

    #@e
    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@10
    .line 1013
    const/4 v1, 0x0

    #@11
    .line 1015
    .local v1, "foundApp":Z
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@14
    move-result v2

    #@15
    .line 1016
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
    .line 1017
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
    .line 1018
    :cond_1
    const/4 v5, 0x3

    #@26
    if-eq v4, v5, :cond_0

    #@28
    const/4 v5, 0x4

    #@29
    if-eq v4, v5, :cond_0

    #@2b
    .line 1022
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 1023
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "application"

    #@32
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_3

    #@38
    .line 1024
    if-eqz v1, :cond_2

    #@3a
    .line 1030
    const-string/jumbo v5, "PackageParser"

    #@3d
    const-string/jumbo v6, "<manifest> has more than one <application>"

    #@40
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 1031
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@46
    goto :goto_0

    #@47
    .line 1036
    :cond_2
    const/4 v1, 0x1

    #@48
    .line 1037
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    #@4b
    move-result v5

    #@4c
    if-nez v5, :cond_0

    #@4e
    .line 1038
    const/4 v5, 0x0

    #@4f
    return-object v5

    #@50
    .line 1048
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
    .line 1049
    const-string/jumbo v7, " at "

    #@6a
    .line 1048
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    .line 1049
    iget-object v7, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@70
    .line 1048
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    .line 1049
    const-string/jumbo v7, " "

    #@77
    .line 1048
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    .line 1050
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@7e
    move-result-object v7

    #@7f
    .line 1048
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
    .line 1051
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@8d
    goto :goto_0

    #@8e
    .line 1056
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    #@90
    .line 1057
    const-string/jumbo v5, "<manifest> does not contain an <application>"

    #@93
    const/4 v6, 0x0

    #@94
    aput-object v5, p6, v6

    #@96
    .line 1058
    const/16 v5, -0x6d

    #@98
    iput v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@9a
    .line 1061
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
    .line 957
    move-object/from16 v0, p1

    #@2
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@4
    aget-object v21, v3, p2

    #@6
    .line 959
    .local v21, "apkPath":Ljava/lang/String;
    const/4 v3, 0x1

    #@7
    move-object/from16 v0, p0

    #@9
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@b
    .line 960
    move-object/from16 v0, v21

    #@d
    move-object/from16 v1, p0

    #@f
    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@11
    .line 964
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
    .line 966
    .local v22, "cookie":I
    const/16 v26, 0x0

    #@1d
    .line 967
    .local v26, "res":Landroid/content/res/Resources;
    const/16 v25, 0x0

    #@1f
    .line 969
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
    .line 971
    .end local v26    # "res":Landroid/content/res/Resources;
    .local v27, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@2f
    .line 970
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
    .line 972
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
    .line 974
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
    .line 975
    invoke-direct/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@63
    move-result-object p1

    #@64
    .line 976
    if-nez p1, :cond_0

    #@66
    .line 977
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@68
    move-object/from16 v0, p0

    #@6a
    iget v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@6c
    .line 978
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
    .line 977
    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@9b
    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@9c
    .line 981
    .end local v9    # "outError":[Ljava/lang/String;
    :catch_0
    move-exception v23

    #@9d
    .local v23, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v26, v27

    #@9f
    .line 982
    .end local v27    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_3
    throw v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a0
    .line 986
    .end local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v3

    #@a1
    .line 987
    :goto_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a4
    .line 986
    throw v3

    #@a5
    .line 987
    .restart local v9    # "outError":[Ljava/lang/String;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a8
    .line 956
    return-void

    #@a9
    .line 983
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
    .line 984
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_2
    :try_start_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@ae
    .line 985
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
    .line 984
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
    .line 986
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
    .line 981
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
    .line 983
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
    .line 3208
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    #@2
    .line 3207
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v18

    #@a
    .line 3211
    .local v18, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x7

    #@b
    const/4 v5, 0x1

    #@c
    .line 3210
    move-object/from16 v0, v18

    #@e
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 3212
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
    .line 3215
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@21
    move-result v13

    #@22
    .line 3217
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
    .line 3218
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
    .line 3219
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
    .line 3223
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@43
    move-result-object v19

    #@44
    .line 3224
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
    .line 3226
    move-object/from16 v0, p1

    #@51
    iget-boolean v11, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@53
    .line 3225
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
    .line 3227
    .local v12, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_3

    #@66
    .line 3228
    const/16 v4, -0x6c

    #@68
    move-object/from16 v0, p0

    #@6a
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@6c
    .line 3229
    const/4 v4, 0x0

    #@6d
    return v4

    #@6e
    .line 3232
    :cond_3
    move-object/from16 v0, p1

    #@70
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@75
    goto :goto_0

    #@76
    .line 3234
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
    .line 3235
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
    .line 3236
    .restart local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_5

    #@95
    .line 3237
    const/16 v4, -0x6c

    #@97
    move-object/from16 v0, p0

    #@99
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@9b
    .line 3238
    const/4 v4, 0x0

    #@9c
    return v4

    #@9d
    .line 3241
    :cond_5
    move-object/from16 v0, p1

    #@9f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@a1
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a4
    goto/16 :goto_0

    #@a6
    .line 3243
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
    .line 3244
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    #@c0
    move-result-object v17

    #@c1
    .line 3245
    .local v17, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v17, :cond_7

    #@c3
    .line 3246
    const/16 v4, -0x6c

    #@c5
    move-object/from16 v0, p0

    #@c7
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@c9
    .line 3247
    const/4 v4, 0x0

    #@ca
    return v4

    #@cb
    .line 3250
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
    .line 3252
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
    .line 3253
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    #@f0
    move-result-object v15

    #@f1
    .line 3254
    .local v15, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v15, :cond_9

    #@f3
    .line 3255
    const/16 v4, -0x6c

    #@f5
    move-object/from16 v0, p0

    #@f7
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@f9
    .line 3256
    const/4 v4, 0x0

    #@fa
    return v4

    #@fb
    .line 3259
    :cond_9
    move-object/from16 v0, p1

    #@fd
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@ff
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@102
    goto/16 :goto_0

    #@104
    .line 3261
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
    .line 3262
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    #@11e
    move-result-object v12

    #@11f
    .line 3263
    .restart local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_b

    #@121
    .line 3264
    const/16 v4, -0x6c

    #@123
    move-object/from16 v0, p0

    #@125
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@127
    .line 3265
    const/4 v4, 0x0

    #@128
    return v4

    #@129
    .line 3268
    :cond_b
    move-object/from16 v0, p1

    #@12b
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@12d
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@130
    goto/16 :goto_0

    #@132
    .line 3270
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
    .line 3274
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
    .line 3276
    const/16 v4, -0x6c

    #@157
    move-object/from16 v0, p0

    #@159
    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@15b
    .line 3277
    const/4 v4, 0x0

    #@15c
    return v4

    #@15d
    .line 3280
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
    .line 3282
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    #@16a
    .line 3281
    move-object/from16 v0, p2

    #@16c
    move-object/from16 v1, p3

    #@16e
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@171
    move-result-object v18

    #@172
    .line 3287
    const/4 v4, 0x0

    #@173
    .line 3286
    move-object/from16 v0, v18

    #@175
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@178
    move-result-object v14

    #@179
    .line 3289
    .local v14, "lname":Ljava/lang/String;
    const/4 v4, 0x1

    #@17a
    .line 3290
    const/4 v5, 0x1

    #@17b
    .line 3288
    move-object/from16 v0, v18

    #@17d
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@180
    move-result v16

    #@181
    .line 3292
    .local v16, "req":Z
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    #@184
    .line 3294
    if-eqz v14, :cond_e

    #@186
    .line 3295
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@189
    move-result-object v14

    #@18a
    .line 3296
    if-eqz v16, :cond_f

    #@18c
    .line 3298
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
    .line 3300
    move-object/from16 v0, p1

    #@19a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@19c
    .line 3299
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@19f
    move-result-object v4

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@1a4
    .line 3310
    :cond_e
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1a7
    goto/16 :goto_0

    #@1a9
    .line 3303
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
    .line 3305
    move-object/from16 v0, p1

    #@1b5
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@1b7
    .line 3304
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
    .line 3312
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
    .line 3315
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1ce
    goto/16 :goto_0

    #@1d0
    .line 3319
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
    .line 3320
    const-string/jumbo v6, " at "

    #@1e8
    .line 3319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v5

    #@1ec
    .line 3320
    move-object/from16 v0, p0

    #@1ee
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@1f0
    .line 3319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v5

    #@1f4
    .line 3320
    const-string/jumbo v6, " "

    #@1f7
    .line 3319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v5

    #@1fb
    .line 3321
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@1fe
    move-result-object v6

    #@1ff
    .line 3319
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
    .line 3322
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@20d
    goto/16 :goto_0

    #@20f
    .line 3332
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
    .line 2211
    new-instance v0, Landroid/content/pm/FeatureInfo;

    #@4
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    #@7
    .line 2213
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    #@9
    .line 2212
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v1

    #@d
    .line 2216
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iput-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@13
    .line 2219
    const/4 v2, 0x3

    #@14
    .line 2218
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@17
    move-result v2

    #@18
    iput v2, v0, Landroid/content/pm/FeatureInfo;->version:I

    #@1a
    .line 2220
    iget-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 2221
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@21
    move-result v2

    #@22
    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@24
    .line 2226
    :cond_0
    const/4 v2, 0x2

    #@25
    .line 2225
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 2227
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    #@2d
    or-int/lit8 v2, v2, 0x1

    #@2f
    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    #@31
    .line 2229
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@34
    .line 2230
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
    .line 2236
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    #@4
    .line 2235
    invoke-virtual {p2, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v3

    #@8
    .line 2240
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 2243
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    #@d
    .line 2244
    .local v1, "maxSdkVersion":I
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@10
    move-result-object v4

    #@11
    .line 2246
    .local v4, "val":Landroid/util/TypedValue;
    if-eqz v4, :cond_0

    #@13
    .line 2247
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
    .line 2248
    iget v1, v4, Landroid/util/TypedValue;->data:I

    #@21
    .line 2252
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@24
    .line 2254
    if-eqz v1, :cond_1

    #@26
    sget v5, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@28
    if-lt v1, v5, :cond_2

    #@2a
    .line 2255
    :cond_1
    if-eqz v2, :cond_2

    #@2c
    .line 2256
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    .line 2257
    .local v0, "index":I
    const/4 v5, -0x1

    #@33
    if-ne v0, v5, :cond_3

    #@35
    .line 2258
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    .line 2267
    .end local v0    # "index":I
    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@41
    .line 2268
    return v8

    #@42
    .line 2260
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
    .line 2261
    const-string/jumbo v7, " in package: "

    #@58
    .line 2260
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    .line 2261
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@5e
    .line 2260
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    .line 2261
    const-string/jumbo v7, " at: "

    #@65
    .line 2260
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    .line 2262
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    .line 2260
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
    .line 4457
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPackageVerifier:[I

    #@4
    .line 4456
    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v3

    #@8
    .line 4459
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 4463
    .local v1, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    #@d
    .line 4462
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 4465
    .local v0, "encodedPublicKey":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@14
    .line 4467
    if-eqz v1, :cond_0

    #@16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 4468
    :cond_0
    const-string/jumbo v4, "PackageParser"

    #@1f
    const-string/jumbo v5, "verifier package name was null; skipping"

    #@22
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 4469
    return-object v7

    #@26
    .line 4472
    :cond_1
    invoke-static {v0}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@29
    move-result-object v2

    #@2a
    .line 4473
    .local v2, "publicKey":Ljava/security/PublicKey;
    if-nez v2, :cond_2

    #@2c
    .line 4474
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
    .line 4475
    return-object v7

    #@47
    .line 4478
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
    .line 1084
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@3
    .line 1085
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@5
    .line 1086
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@7
    .line 1088
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@9
    .line 1090
    :try_start_0
    invoke-static {p1}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    #@c
    move-result-object v6

    #@d
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1096
    new-instance v6, Landroid/util/ArraySet;

    #@11
    array-length v7, p1

    #@12
    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    #@15
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@17
    .line 1097
    const/4 v3, 0x0

    #@18
    .local v3, "i":I
    :goto_0
    array-length v6, p1

    #@19
    if-ge v3, v6, :cond_0

    #@1b
    .line 1098
    aget-object v5, p1, v3

    #@1d
    .line 1099
    .local v5, "signerCerts":[Ljava/security/cert/Certificate;
    const/4 v6, 0x0

    #@1e
    aget-object v4, v5, v6

    #@20
    .line 1100
    .local v4, "signerCert":Ljava/security/cert/Certificate;
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@22
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@29
    .line 1097
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1091
    .end local v3    # "i":I
    .end local v4    # "signerCert":Ljava/security/cert/Certificate;
    .end local v5    # "signerCerts":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v2

    #@2d
    .line 1093
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    #@2f
    .line 1094
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
    .line 1093
    const/16 v8, -0x67

    #@47
    invoke-direct {v6, v8, v7, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@4a
    throw v6

    #@4b
    .line 1103
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
    .line 1104
    .local v0, "childCount":I
    :goto_1
    const/4 v3, 0x0

    #@56
    :goto_2
    if-ge v3, v0, :cond_2

    #@58
    .line 1105
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Landroid/content/pm/PackageParser$Package;

    #@60
    .line 1106
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@62
    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@64
    .line 1107
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@66
    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@68
    .line 1108
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@6a
    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@6c
    .line 1104
    add-int/lit8 v3, v3, 0x1

    #@6e
    goto :goto_2

    #@6f
    .line 1103
    .end local v0    # "childCount":I
    .end local v1    # "childPkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v0, 0x0

    #@70
    .restart local v0    # "childCount":I
    goto :goto_1

    #@71
    .line 1083
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
    .line 5743
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    .line 5744
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    #@b
    .line 5745
    const/16 v3, 0x1000

    #@d
    new-array v0, v3, [B

    #@f
    .line 5748
    :cond_0
    const/4 v2, 0x0

    #@10
    .line 5749
    .local v2, "n":I
    const/4 v1, 0x0

    #@11
    .line 5750
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
    .line 5751
    add-int/2addr v1, v2

    #@1b
    goto :goto_0

    #@1c
    .line 5754
    :cond_1
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@21
    .line 5755
    int-to-long v4, v1

    #@22
    return-wide v4
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0
    .param p0, "compatibilityModeEnabled"    # Z

    #@0
    .prologue
    .line 5737
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    #@2
    .line 5736
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1499
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 1500
    .local v0, "N":I
    new-array v2, v0, [B

    #@6
    .line 1501
    .local v2, "sig":[B
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 1502
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v3

    #@d
    int-to-byte v3, v3

    #@e
    aput-byte v3, v2, v1

    #@10
    .line 1501
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1504
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
    .line 5377
    sget-boolean v2, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 5378
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    #@9
    .line 5380
    :cond_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 5381
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@f
    const/high16 v3, 0x800000

    #@11
    or-int/2addr v2, v3

    #@12
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@14
    .line 5385
    :goto_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 5386
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1a
    const/high16 v3, 0x40000000    # 2.0f

    #@1c
    or-int/2addr v2, v3

    #@1d
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1f
    .line 5390
    :goto_1
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    #@21
    if-eqz v2, :cond_4

    #@23
    .line 5391
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@25
    or-int/lit8 v2, v2, 0x1

    #@27
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@29
    .line 5395
    :goto_2
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@2b
    if-ne v2, v0, :cond_5

    #@2d
    .line 5396
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@2f
    .line 5403
    :cond_1
    :goto_3
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@31
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@33
    .line 5375
    return-void

    #@34
    .line 5383
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
    .line 5388
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
    .line 5393
    :cond_4
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@48
    and-int/lit8 v2, v2, -0x2

    #@4a
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@4c
    goto :goto_2

    #@4d
    .line 5397
    :cond_5
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@4f
    const/4 v3, 0x4

    #@50
    if-ne v2, v3, :cond_7

    #@52
    .line 5398
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
    .line 5399
    :cond_7
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@5f
    const/4 v2, 0x2

    #@60
    if-eq v0, v2, :cond_8

    #@62
    .line 5400
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@64
    const/4 v2, 0x3

    #@65
    if-ne v0, v2, :cond_1

    #@67
    .line 5401
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
    .line 1357
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 1358
    .local v0, "N":I
    const/4 v3, 0x0

    #@5
    .line 1359
    .local v3, "hasSep":Z
    const/4 v2, 0x1

    #@6
    .line 1360
    .local v2, "front":Z
    const/4 v4, 0x0

    #@7
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_7

    #@9
    .line 1361
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v1

    #@d
    .line 1362
    .local v1, "c":C
    const/16 v5, 0x61

    #@f
    if-lt v1, v5, :cond_2

    #@11
    const/16 v5, 0x7a

    #@13
    if-gt v1, v5, :cond_2

    #@15
    .line 1363
    :cond_0
    const/4 v2, 0x0

    #@16
    .line 1360
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1362
    :cond_2
    const/16 v5, 0x41

    #@1b
    if-lt v1, v5, :cond_3

    #@1d
    const/16 v5, 0x5a

    #@1f
    if-le v1, v5, :cond_0

    #@21
    .line 1366
    :cond_3
    if-nez v2, :cond_5

    #@23
    .line 1367
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
    .line 1371
    :cond_5
    const/16 v5, 0x2e

    #@31
    if-ne v1, v5, :cond_6

    #@33
    .line 1372
    const/4 v3, 0x1

    #@34
    .line 1373
    const/4 v2, 0x1

    #@35
    .line 1374
    goto :goto_1

    #@36
    .line 1376
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
    .line 1378
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
    .line 1381
    :cond_8
    if-nez v3, :cond_a

    #@5c
    if-eqz p1, :cond_a

    #@5e
    .line 1382
    const-string/jumbo v5, "must have at least one \'.\' separator"

    #@61
    .line 1381
    :goto_2
    return-object v5

    #@62
    .line 1379
    :cond_9
    const-string/jumbo v5, "Invalid filename"

    #@65
    return-object v5

    #@66
    .line 1382
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
    .line 869
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@3
    move-result-object v1

    #@4
    .line 870
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 871
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    #@a
    if-nez v3, :cond_0

    #@c
    .line 872
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@e
    .line 873
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
    .line 872
    const/16 v5, -0x6c

    #@24
    invoke-direct {v3, v5, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 877
    :cond_0
    new-instance v0, Landroid/content/res/AssetManager;

    #@2a
    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    #@2d
    .line 879
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    #@30
    move-result-object v2

    #@31
    .line 880
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    #@38
    .line 881
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    #@3a
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 884
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@40
    .line 882
    return-object v2

    #@41
    .line 883
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    #@42
    .line 884
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    .line 883
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
    .line 793
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 794
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 796
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
    .line 443
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@2
    .line 442
    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0
    .param p1, "onlyCoreApps"    # Z

    #@0
    .prologue
    .line 439
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    #@2
    .line 438
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0
    .param p1, "procs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 430
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@2
    .line 429
    return-void
.end method
