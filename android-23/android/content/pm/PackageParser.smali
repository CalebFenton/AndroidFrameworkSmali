.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$NewPermissionInfo;,
        Landroid/content/pm/PackageParser$SplitPermissionInfo;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$PackageParserException;
    }
.end annotation


# static fields
.field private static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final PARSE_CHATTY:I = 0x2

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x100

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x20

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

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
    .line 155
    new-array v0, v7, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@8
    .line 156
    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@a
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@d
    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    #@10
    aput-object v1, v0, v5

    #@12
    .line 158
    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@14
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    #@17
    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    #@1a
    aput-object v1, v0, v6

    #@1c
    .line 154
    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@1e
    .line 168
    const/4 v0, 0x3

    #@1f
    new-array v0, v0, [Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@21
    .line 173
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@23
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@26
    .line 174
    new-array v3, v6, [Ljava/lang/String;

    #@28
    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    #@2b
    aput-object v4, v3, v5

    #@2d
    .line 175
    const/16 v4, 0x2711

    #@2f
    .line 173
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    #@32
    aput-object v1, v0, v5

    #@34
    .line 176
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@36
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    #@39
    .line 177
    new-array v3, v6, [Ljava/lang/String;

    #@3b
    const-string/jumbo v4, "android.permission.READ_CALL_LOG"

    #@3e
    aput-object v4, v3, v5

    #@40
    .line 176
    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    #@43
    aput-object v1, v0, v6

    #@45
    .line 179
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@47
    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    #@4a
    .line 180
    new-array v3, v6, [Ljava/lang/String;

    #@4c
    const-string/jumbo v4, "android.permission.WRITE_CALL_LOG"

    #@4f
    aput-object v4, v3, v5

    #@51
    .line 179
    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    #@54
    aput-object v1, v0, v7

    #@56
    .line 167
    sput-object v0, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@58
    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5a
    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    #@5c
    .line 195
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    #@5e
    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@60
    .line 199
    sput-boolean v6, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    #@62
    .line 618
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    #@64
    const/4 v1, 0x0

    #@65
    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$SplitNameComparator;)V

    #@68
    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    #@6a
    .line 5103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@6c
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@6f
    sput-object v0, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    #@71
    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 197
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@6
    .line 355
    new-instance v0, Landroid/util/DisplayMetrics;

    #@8
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@b
    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@d
    .line 356
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@f
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@12
    .line 354
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
    .line 1950
    if-eqz p1, :cond_0

    #@6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v3

    #@a
    if-gtz v3, :cond_1

    #@c
    .line 1951
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
    .line 1952
    return-object v6

    #@23
    .line 1954
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 1955
    .local v2, "cls":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    .line 1956
    .local v1, "c":C
    if-ne v1, v4, :cond_2

    #@2d
    .line 1957
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
    .line 1959
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    #@46
    move-result v3

    #@47
    if-gez v3, :cond_3

    #@49
    .line 1960
    new-instance v0, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4e
    .line 1961
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 1962
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 1963
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
    .line 1965
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
    .line 1966
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    return-object v3

    #@6a
    .line 1968
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
    .line 1969
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
    .line 1974
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 1975
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 1976
    .local v0, "c":C
    if-eqz p0, :cond_2

    #@d
    const/16 v4, 0x3a

    #@f
    if-ne v0, v4, :cond_2

    #@11
    .line 1977
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@14
    move-result v4

    #@15
    const/4 v5, 0x2

    #@16
    if-ge v4, v5, :cond_0

    #@18
    .line 1978
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
    .line 1979
    const-string/jumbo v5, ": must be at least two characters"

    #@41
    .line 1978
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
    .line 1980
    return-object v7

    #@4c
    .line 1982
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 1983
    .local v3, "subName":Ljava/lang/String;
    invoke-static {v3, v6, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .line 1984
    .local v1, "nameError":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@56
    .line 1985
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
    .line 1986
    const-string/jumbo v5, ": "

    #@7f
    .line 1985
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
    .line 1987
    return-object v7

    #@8e
    .line 1989
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
    .line 1991
    .end local v1    # "nameError":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v8, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    .line 1992
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
    .line 1997
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@b6
    move-result-object v4

    #@b7
    return-object v4

    #@b8
    .line 1993
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
    .line 1994
    const-string/jumbo v5, ": "

    #@e1
    .line 1993
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
    .line 1995
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
    .line 2003
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
    .line 2006
    :cond_0
    if-eqz p4, :cond_5

    #@f
    .line 2007
    array-length v2, p4

    #@10
    add-int/lit8 v0, v2, -0x1

    #@12
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    #@14
    .line 2008
    aget-object v1, p4, v0

    #@16
    .line 2009
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
    .line 2010
    :cond_1
    return-object p0

    #@29
    .line 2004
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
    .line 2007
    .restart local v0    # "i":I
    .restart local v1    # "sp":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@30
    goto :goto_0

    #@31
    .line 2014
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
    .line 2015
    :cond_6
    return-object p1

    #@3a
    .line 2017
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
    .line 2022
    if-nez p2, :cond_0

    #@3
    .line 2023
    return-object p1

    #@4
    .line 2025
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v0

    #@8
    if-gtz v0, :cond_1

    #@a
    .line 2026
    return-object v1

    #@b
    .line 2028
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
    .line 403
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->installed:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 404
    :cond_0
    and-int/lit16 v2, p0, 0x2000

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 403
    :cond_1
    :goto_0
    return v0

    #@f
    :cond_2
    move v0, v1

    #@10
    .line 404
    goto :goto_0
.end method

.method public static closeQuietly(Ljava/util/jar/StrictJarFile;)V
    .locals 1
    .param p0, "jarFile"    # Ljava/util/jar/StrictJarFile;

    #@0
    .prologue
    .line 5122
    if-eqz p0, :cond_0

    #@2
    .line 5124
    :try_start_0
    invoke-virtual {p0}, Ljava/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 5121
    :cond_0
    :goto_0
    return-void

    #@6
    .line 5125
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    .locals 17
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1068
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1070
    .local v1, "apkPath":Ljava/lang/String;
    const/4 v10, 0x0

    #@5
    .line 1072
    .local v10, "jarFile":Ljava/util/jar/StrictJarFile;
    :try_start_0
    new-instance v11, Ljava/util/jar/StrictJarFile;

    #@7
    invoke-direct {v11, v1}, Ljava/util/jar/StrictJarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 1075
    .end local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .local v11, "jarFile":Ljava/util/jar/StrictJarFile;
    :try_start_1
    const-string/jumbo v14, "AndroidManifest.xml"

    #@d
    invoke-virtual {v11, v14}, Ljava/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@10
    move-result-object v12

    #@11
    .line 1076
    .local v12, "manifestEntry":Ljava/util/zip/ZipEntry;
    if-nez v12, :cond_0

    #@13
    .line 1077
    new-instance v14, Landroid/content/pm/PackageParser$PackageParserException;

    #@15
    .line 1078
    new-instance v15, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v16, "Package "

    #@1d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v15

    #@21
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v15

    #@25
    const-string/jumbo v16, " has no manifest"

    #@28
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v15

    #@2c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v15

    #@30
    .line 1077
    const/16 v16, -0x65

    #@32
    move/from16 v0, v16

    #@34
    invoke-direct {v14, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@37
    throw v14
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@38
    .line 1126
    .end local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    #@39
    .local v3, "e":Ljava/security/GeneralSecurityException;
    move-object v10, v11

    #@3a
    .line 1127
    .end local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    :goto_0
    :try_start_2
    new-instance v14, Landroid/content/pm/PackageParser$PackageParserException;

    #@3c
    .line 1128
    new-instance v15, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v16, "Failed to collect certificates from "

    #@44
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v15

    #@48
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v15

    #@4c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v15

    #@50
    .line 1127
    const/16 v16, -0x69

    #@52
    move/from16 v0, v16

    #@54
    invoke-direct {v14, v0, v15, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@57
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    .line 1132
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v14

    #@59
    .line 1133
    :goto_1
    invoke-static {v10}, Landroid/content/pm/PackageParser;->closeQuietly(Ljava/util/jar/StrictJarFile;)V

    #@5c
    .line 1132
    throw v14

    #@5d
    .line 1081
    .restart local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_3
    new-instance v13, Ljava/util/ArrayList;

    #@5f
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@62
    .line 1082
    .local v13, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@65
    .line 1085
    and-int/lit8 v14, p2, 0x1

    #@67
    if-nez v14, :cond_2

    #@69
    .line 1086
    invoke-virtual {v11}, Ljava/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    #@6c
    move-result-object v9

    #@6d
    .line 1087
    .local v9, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@70
    move-result v14

    #@71
    if-eqz v14, :cond_2

    #@73
    .line 1088
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@76
    move-result-object v4

    #@77
    check-cast v4, Ljava/util/zip/ZipEntry;

    #@79
    .line 1090
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    #@7c
    move-result v14

    #@7d
    if-nez v14, :cond_1

    #@7f
    .line 1091
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@82
    move-result-object v14

    #@83
    const-string/jumbo v15, "META-INF/"

    #@86
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@89
    move-result v14

    #@8a
    if-nez v14, :cond_1

    #@8c
    .line 1092
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@8f
    move-result-object v14

    #@90
    const-string/jumbo v15, "AndroidManifest.xml"

    #@93
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v14

    #@97
    if-nez v14, :cond_1

    #@99
    .line 1094
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@9c
    goto :goto_2

    #@9d
    .line 1129
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catch_1
    move-exception v2

    #@9e
    .local v2, "e":Ljava/lang/Exception;
    move-object v10, v11

    #@9f
    .line 1130
    .end local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    :goto_3
    :try_start_4
    new-instance v14, Landroid/content/pm/PackageParser$PackageParserException;

    #@a1
    .line 1131
    new-instance v15, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v16, "Failed to collect certificates from "

    #@a9
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v15

    #@ad
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v15

    #@b1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v15

    #@b5
    .line 1130
    const/16 v16, -0x67

    #@b7
    move/from16 v0, v16

    #@b9
    invoke-direct {v14, v0, v15, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@bc
    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@bd
    .line 1101
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_2
    :try_start_5
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c0
    move-result-object v5

    #@c1
    .local v5, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@c4
    move-result v14

    #@c5
    if-eqz v14, :cond_6

    #@c7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ca
    move-result-object v4

    #@cb
    check-cast v4, Ljava/util/zip/ZipEntry;

    #@cd
    .line 1102
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    invoke-static {v11, v4}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    #@d0
    move-result-object v6

    #@d1
    .line 1103
    .local v6, "entryCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@d4
    move-result v14

    #@d5
    if-eqz v14, :cond_4

    #@d7
    .line 1104
    new-instance v14, Landroid/content/pm/PackageParser$PackageParserException;

    #@d9
    .line 1105
    new-instance v15, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v16, "Package "

    #@e1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v15

    #@e5
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v15

    #@e9
    const-string/jumbo v16, " has no certificates at entry "

    #@ec
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v15

    #@f0
    .line 1106
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@f3
    move-result-object v16

    #@f4
    .line 1105
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v15

    #@f8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v15

    #@fc
    .line 1104
    const/16 v16, -0x67

    #@fe
    move/from16 v0, v16

    #@100
    invoke-direct {v14, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@103
    throw v14

    #@104
    .line 1132
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catchall_1
    move-exception v14

    #@105
    move-object v10, v11

    #@106
    .end local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    .local v10, "jarFile":Ljava/util/jar/StrictJarFile;
    goto/16 :goto_1

    #@108
    .line 1108
    .end local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "entry$iterator":Ljava/util/Iterator;
    .restart local v6    # "entryCerts":[[Ljava/security/cert/Certificate;
    .restart local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_4
    invoke-static {v6}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    #@10b
    move-result-object v7

    #@10c
    .line 1110
    .local v7, "entrySignatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    #@10e
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@110
    if-nez v14, :cond_5

    #@112
    .line 1111
    move-object/from16 v0, p0

    #@114
    iput-object v6, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@116
    .line 1112
    move-object/from16 v0, p0

    #@118
    iput-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@11a
    .line 1113
    new-instance v14, Landroid/util/ArraySet;

    #@11c
    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    #@11f
    move-object/from16 v0, p0

    #@121
    iput-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@123
    .line 1114
    const/4 v8, 0x0

    #@124
    .local v8, "i":I
    :goto_4
    array-length v14, v6

    #@125
    if-ge v8, v14, :cond_3

    #@127
    .line 1115
    move-object/from16 v0, p0

    #@129
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@12b
    aget-object v15, v6, v8

    #@12d
    const/16 v16, 0x0

    #@12f
    aget-object v15, v15, v16

    #@131
    invoke-virtual {v15}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@134
    move-result-object v15

    #@135
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@138
    .line 1114
    add-int/lit8 v8, v8, 0x1

    #@13a
    goto :goto_4

    #@13b
    .line 1118
    .end local v8    # "i":I
    :cond_5
    move-object/from16 v0, p0

    #@13d
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@13f
    invoke-static {v14, v7}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    #@142
    move-result v14

    #@143
    if-nez v14, :cond_3

    #@145
    .line 1119
    new-instance v14, Landroid/content/pm/PackageParser$PackageParserException;

    #@147
    .line 1120
    new-instance v15, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v16, "Package "

    #@14f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v15

    #@153
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v15

    #@157
    .line 1121
    const-string/jumbo v16, " has mismatched certificates at entry "

    #@15a
    .line 1120
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v15

    #@15e
    .line 1122
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@161
    move-result-object v16

    #@162
    .line 1120
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v15

    #@166
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v15

    #@16a
    const/16 v16, -0x68

    #@16c
    .line 1119
    move/from16 v0, v16

    #@16e
    invoke-direct {v14, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@171
    throw v14
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@172
    .line 1133
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v7    # "entrySignatures":[Landroid/content/pm/Signature;
    :cond_6
    invoke-static {v11}, Landroid/content/pm/PackageParser;->closeQuietly(Ljava/util/jar/StrictJarFile;)V

    #@175
    .line 1067
    return-void

    #@176
    .line 1126
    .end local v5    # "entry$iterator":Ljava/util/Iterator;
    .end local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    .end local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .local v10, "jarFile":Ljava/util/jar/StrictJarFile;
    :catch_2
    move-exception v3

    #@177
    .restart local v3    # "e":Ljava/security/GeneralSecurityException;
    goto/16 :goto_0

    #@179
    .line 1129
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v2

    #@17a
    .restart local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_3
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
    .line 1139
    array-length v2, p0

    #@1
    new-array v1, v2, [Landroid/content/pm/Signature;

    #@3
    .line 1140
    .local v1, "res":[Landroid/content/pm/Signature;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1141
    new-instance v2, Landroid/content/pm/Signature;

    #@9
    aget-object v3, p0, v0

    #@b
    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    #@e
    aput-object v2, v1, v0

    #@10
    .line 1140
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1143
    :cond_0
    return-object v1
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 4
    .param p0, "flags"    # I
    .param p1, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 4705
    if-eqz p4, :cond_0

    #@4
    .line 4708
    return v2

    #@5
    .line 4710
    :cond_0
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 4711
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@b
    if-ne v1, v2, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 4712
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@10
    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@12
    if-eq v1, v0, :cond_2

    #@14
    .line 4713
    return v2

    #@15
    .line 4711
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    #@16
    .restart local v0    # "enabled":Z
    goto :goto_0

    #@17
    .line 4716
    .end local v0    # "enabled":Z
    :cond_2
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->installed:Z

    #@19
    if-eqz v1, :cond_3

    #@1b
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    #@1d
    if-eqz v1, :cond_4

    #@1f
    .line 4717
    :cond_3
    return v2

    #@20
    .line 4719
    :cond_4
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    #@22
    if-eqz v1, :cond_5

    #@24
    .line 4720
    return v2

    #@25
    .line 4722
    :cond_5
    and-int/lit16 v1, p0, 0x80

    #@27
    if-eqz v1, :cond_7

    #@29
    .line 4723
    if-nez p3, :cond_6

    #@2b
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@2d
    if-eqz v1, :cond_7

    #@2f
    .line 4724
    :cond_6
    return v2

    #@30
    .line 4726
    :cond_7
    and-int/lit16 v1, p0, 0x400

    #@32
    if-eqz v1, :cond_8

    #@34
    .line 4727
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@36
    if-eqz v1, :cond_8

    #@38
    .line 4728
    return v2

    #@39
    .line 4730
    :cond_8
    return v3
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
    .line 4891
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 4892
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 4893
    return-object v2

    #@b
    .line 4897
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    #@d
    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    #@10
    .line 4898
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
    .line 4899
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
    .line 4875
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 4876
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 4877
    return-object v2

    #@b
    .line 4879
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
    .line 4880
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@17
    return-object v1

    #@18
    .line 4883
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    #@1a
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1c
    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    #@1f
    .line 4884
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@21
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@23
    .line 4885
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    #@25
    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@28
    move-result-object v1

    #@29
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2b
    .line 4886
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
    .line 4807
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 4808
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 4809
    return-object v2

    #@b
    .line 4813
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@d
    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    #@10
    .line 4814
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@12
    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    #@15
    move-result v1

    #@16
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@18
    .line 4815
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@1a
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1c
    invoke-static {v1, p3, v2}, Landroid/os/Environment;->getDataUserPackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@26
    .line 4817
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 4818
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2c
    const/high16 v2, 0x200000

    #@2e
    or-int/2addr v1, v2

    #@2f
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@31
    .line 4822
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    #@34
    .line 4823
    return-object v0

    #@35
    .line 4820
    :cond_2
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@37
    const v2, -0x200001

    #@3a
    and-int/2addr v1, v2

    #@3b
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3d
    goto :goto_0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    #@0
    .prologue
    .line 4735
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
    .line 4767
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 4768
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 4769
    return-object v2

    #@b
    .line 4771
    :cond_1
    invoke-static {p1, p0, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_3

    #@11
    .line 4772
    const v1, 0x8000

    #@14
    and-int/2addr v1, p1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 4773
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@19
    const/4 v2, 0x4

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 4781
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1e
    invoke-static {v1, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    #@21
    .line 4782
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    return-object v1

    #@24
    .line 4786
    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@26
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@28
    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    #@2b
    .line 4787
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@2d
    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    #@30
    move-result v1

    #@31
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@33
    .line 4788
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@35
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@37
    invoke-static {v1, p3, v2}, Landroid/os/Environment;->getDataUserPackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@41
    .line 4790
    and-int/lit16 v1, p1, 0x80

    #@43
    if-eqz v1, :cond_4

    #@45
    .line 4791
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@47
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@49
    .line 4793
    :cond_4
    and-int/lit16 v1, p1, 0x400

    #@4b
    if-eqz v1, :cond_5

    #@4d
    .line 4794
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@4f
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@51
    .line 4796
    :cond_5
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    #@53
    if-eqz v1, :cond_6

    #@55
    .line 4797
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@57
    const/high16 v2, 0x200000

    #@59
    or-int/2addr v1, v2

    #@5a
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5c
    .line 4801
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    #@5f
    .line 4802
    return-object v0

    #@60
    .line 4799
    :cond_6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@62
    const v2, -0x200001

    #@65
    and-int/2addr v1, v2

    #@66
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@68
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
    .line 5023
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 5024
    :cond_0
    and-int/lit16 v1, p1, 0x80

    #@6
    if-nez v1, :cond_1

    #@8
    .line 5025
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@a
    return-object v1

    #@b
    .line 5027
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    #@d
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@f
    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    #@12
    .line 5028
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    #@14
    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    #@16
    .line 5029
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
    .line 395
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
    .line 394
    invoke-static/range {v1 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 19
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
    .line 415
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v0, p2

    #@2
    move-object/from16 v1, p8

    #@4
    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v14

    #@8
    if-nez v14, :cond_0

    #@a
    .line 416
    const/4 v14, 0x0

    #@b
    return-object v14

    #@c
    .line 418
    :cond_0
    new-instance v11, Landroid/content/pm/PackageInfo;

    #@e
    invoke-direct {v11}, Landroid/content/pm/PackageInfo;-><init>()V

    #@11
    .line 419
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    #@13
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@15
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@17
    .line 420
    move-object/from16 v0, p0

    #@19
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@1b
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    #@1d
    .line 421
    move-object/from16 v0, p0

    #@1f
    iget v14, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@21
    iput v14, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    #@23
    .line 422
    move-object/from16 v0, p0

    #@25
    iget v14, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@27
    iput v14, v11, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    #@29
    .line 423
    move-object/from16 v0, p0

    #@2b
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    #@2d
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    #@2f
    .line 424
    move-object/from16 v0, p0

    #@31
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@33
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@35
    .line 425
    move-object/from16 v0, p0

    #@37
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    #@39
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    #@3b
    .line 426
    move-object/from16 v0, p0

    #@3d
    iget v14, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    #@3f
    iput v14, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    #@41
    .line 427
    move-object/from16 v0, p0

    #@43
    move/from16 v1, p2

    #@45
    move-object/from16 v2, p8

    #@47
    move/from16 v3, p9

    #@49
    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@4c
    move-result-object v14

    #@4d
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4f
    .line 428
    move-object/from16 v0, p0

    #@51
    iget v14, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    #@53
    iput v14, v11, Landroid/content/pm/PackageInfo;->installLocation:I

    #@55
    .line 429
    move-object/from16 v0, p0

    #@57
    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    #@59
    iput-boolean v14, v11, Landroid/content/pm/PackageInfo;->coreApp:Z

    #@5b
    .line 430
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5d
    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5f
    and-int/lit8 v14, v14, 0x1

    #@61
    if-nez v14, :cond_1

    #@63
    .line 431
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@65
    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    #@67
    and-int/lit16 v14, v14, 0x80

    #@69
    if-eqz v14, :cond_2

    #@6b
    .line 432
    :cond_1
    move-object/from16 v0, p0

    #@6d
    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    #@6f
    iput-boolean v14, v11, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    #@71
    .line 434
    :cond_2
    move-object/from16 v0, p0

    #@73
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    #@75
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@77
    .line 435
    move-object/from16 v0, p0

    #@79
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    #@7b
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    #@7d
    .line 436
    move-object/from16 v0, p0

    #@7f
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    #@81
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    #@83
    .line 437
    move-wide/from16 v0, p3

    #@85
    iput-wide v0, v11, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    #@87
    .line 438
    move-wide/from16 v0, p5

    #@89
    iput-wide v0, v11, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    #@8b
    .line 439
    move/from16 v0, p2

    #@8d
    and-int/lit16 v14, v0, 0x100

    #@8f
    if-eqz v14, :cond_3

    #@91
    .line 440
    move-object/from16 v0, p1

    #@93
    iput-object v0, v11, Landroid/content/pm/PackageInfo;->gids:[I

    #@95
    .line 442
    :cond_3
    move/from16 v0, p2

    #@97
    and-int/lit16 v14, v0, 0x4000

    #@99
    if-eqz v14, :cond_6

    #@9b
    .line 443
    move-object/from16 v0, p0

    #@9d
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@9f
    if-eqz v14, :cond_8

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@a5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@a8
    move-result v4

    #@a9
    .line 444
    .local v4, "N":I
    :goto_0
    if-lez v4, :cond_4

    #@ab
    .line 445
    new-array v14, v4, [Landroid/content/pm/ConfigurationInfo;

    #@ad
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    #@af
    .line 446
    move-object/from16 v0, p0

    #@b1
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@b3
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    #@b5
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b8
    .line 448
    :cond_4
    move-object/from16 v0, p0

    #@ba
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    #@bc
    if-eqz v14, :cond_9

    #@be
    move-object/from16 v0, p0

    #@c0
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    #@c2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@c5
    move-result v4

    #@c6
    .line 449
    :goto_1
    if-lez v4, :cond_5

    #@c8
    .line 450
    new-array v14, v4, [Landroid/content/pm/FeatureInfo;

    #@ca
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    #@cc
    .line 451
    move-object/from16 v0, p0

    #@ce
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    #@d0
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    #@d2
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d5
    .line 453
    :cond_5
    move-object/from16 v0, p0

    #@d7
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    #@d9
    if-eqz v14, :cond_a

    #@db
    move-object/from16 v0, p0

    #@dd
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    #@df
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@e2
    move-result v4

    #@e3
    .line 454
    :goto_2
    if-lez v4, :cond_6

    #@e5
    .line 455
    new-array v14, v4, [Landroid/content/pm/FeatureGroupInfo;

    #@e7
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    #@e9
    .line 456
    move-object/from16 v0, p0

    #@eb
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    #@ed
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    #@ef
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f2
    .line 459
    .end local v4    # "N":I
    :cond_6
    and-int/lit8 v14, p2, 0x1

    #@f4
    if-eqz v14, :cond_f

    #@f6
    .line 460
    move-object/from16 v0, p0

    #@f8
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@fa
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@fd
    move-result v4

    #@fe
    .line 461
    .restart local v4    # "N":I
    if-lez v4, :cond_f

    #@100
    .line 462
    move/from16 v0, p2

    #@102
    and-int/lit16 v14, v0, 0x200

    #@104
    if-eqz v14, :cond_b

    #@106
    .line 463
    new-array v14, v4, [Landroid/content/pm/ActivityInfo;

    #@108
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    #@10a
    .line 471
    :goto_3
    const/4 v6, 0x0

    #@10b
    .local v6, "i":I
    const/4 v7, 0x0

    #@10c
    .local v7, "j":I
    move v8, v7

    #@10d
    .end local v7    # "j":I
    .local v8, "j":I
    :goto_4
    if-ge v6, v4, :cond_f

    #@10f
    .line 472
    move-object/from16 v0, p0

    #@111
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@113
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@116
    move-result-object v5

    #@117
    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    #@119
    .line 473
    .local v5, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v14, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@11b
    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    #@11d
    if-nez v14, :cond_7

    #@11f
    .line 474
    move/from16 v0, p2

    #@121
    and-int/lit16 v14, v0, 0x200

    #@123
    if-eqz v14, :cond_e

    #@125
    .line 475
    :cond_7
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    #@127
    add-int/lit8 v7, v8, 0x1

    #@129
    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    #@12b
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@12d
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@130
    move-result-object v14

    #@131
    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    #@133
    move/from16 v0, p2

    #@135
    move-object/from16 v1, p8

    #@137
    move/from16 v2, p9

    #@139
    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    #@13c
    move-result-object v14

    #@13d
    aput-object v14, v15, v8

    #@13f
    .line 471
    :goto_5
    add-int/lit8 v6, v6, 0x1

    #@141
    move v8, v7

    #@142
    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_4

    #@143
    .line 443
    .end local v4    # "N":I
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_8
    const/4 v4, 0x0

    #@144
    .restart local v4    # "N":I
    goto/16 :goto_0

    #@146
    .line 448
    :cond_9
    const/4 v4, 0x0

    #@147
    goto/16 :goto_1

    #@149
    .line 453
    :cond_a
    const/4 v4, 0x0

    #@14a
    goto :goto_2

    #@14b
    .line 465
    :cond_b
    const/4 v9, 0x0

    #@14c
    .line 466
    .local v9, "num":I
    const/4 v6, 0x0

    #@14d
    .restart local v6    # "i":I
    :goto_6
    if-ge v6, v4, :cond_d

    #@14f
    .line 467
    move-object/from16 v0, p0

    #@151
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@153
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@156
    move-result-object v14

    #@157
    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    #@159
    iget-object v14, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@15b
    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    #@15d
    if-eqz v14, :cond_c

    #@15f
    add-int/lit8 v9, v9, 0x1

    #@161
    .line 466
    :cond_c
    add-int/lit8 v6, v6, 0x1

    #@163
    goto :goto_6

    #@164
    .line 469
    :cond_d
    new-array v14, v9, [Landroid/content/pm/ActivityInfo;

    #@166
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    #@168
    goto :goto_3

    #@169
    .end local v9    # "num":I
    .restart local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .restart local v8    # "j":I
    :cond_e
    move v7, v8

    #@16a
    .line 474
    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_5

    #@16b
    .line 481
    .end local v4    # "N":I
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_f
    and-int/lit8 v14, p2, 0x2

    #@16d
    if-eqz v14, :cond_15

    #@16f
    .line 482
    move-object/from16 v0, p0

    #@171
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@173
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@176
    move-result v4

    #@177
    .line 483
    .restart local v4    # "N":I
    if-lez v4, :cond_15

    #@179
    .line 484
    move/from16 v0, p2

    #@17b
    and-int/lit16 v14, v0, 0x200

    #@17d
    if-eqz v14, :cond_11

    #@17f
    .line 485
    new-array v14, v4, [Landroid/content/pm/ActivityInfo;

    #@181
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    #@183
    .line 493
    :goto_7
    const/4 v6, 0x0

    #@184
    .restart local v6    # "i":I
    const/4 v7, 0x0

    #@185
    .restart local v7    # "j":I
    move v8, v7

    #@186
    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_8
    if-ge v6, v4, :cond_15

    #@188
    .line 494
    move-object/from16 v0, p0

    #@18a
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@18c
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18f
    move-result-object v5

    #@190
    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    #@192
    .line 495
    .restart local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v14, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@194
    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    #@196
    if-nez v14, :cond_10

    #@198
    .line 496
    move/from16 v0, p2

    #@19a
    and-int/lit16 v14, v0, 0x200

    #@19c
    if-eqz v14, :cond_14

    #@19e
    .line 497
    :cond_10
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    #@1a0
    add-int/lit8 v7, v8, 0x1

    #@1a2
    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    #@1a4
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@1a6
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a9
    move-result-object v14

    #@1aa
    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    #@1ac
    move/from16 v0, p2

    #@1ae
    move-object/from16 v1, p8

    #@1b0
    move/from16 v2, p9

    #@1b2
    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    #@1b5
    move-result-object v14

    #@1b6
    aput-object v14, v15, v8

    #@1b8
    .line 493
    :goto_9
    add-int/lit8 v6, v6, 0x1

    #@1ba
    move v8, v7

    #@1bb
    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_8

    #@1bc
    .line 487
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_11
    const/4 v9, 0x0

    #@1bd
    .line 488
    .restart local v9    # "num":I
    const/4 v6, 0x0

    #@1be
    .restart local v6    # "i":I
    :goto_a
    if-ge v6, v4, :cond_13

    #@1c0
    .line 489
    move-object/from16 v0, p0

    #@1c2
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@1c4
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c7
    move-result-object v14

    #@1c8
    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    #@1ca
    iget-object v14, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1cc
    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    #@1ce
    if-eqz v14, :cond_12

    #@1d0
    add-int/lit8 v9, v9, 0x1

    #@1d2
    .line 488
    :cond_12
    add-int/lit8 v6, v6, 0x1

    #@1d4
    goto :goto_a

    #@1d5
    .line 491
    :cond_13
    new-array v14, v9, [Landroid/content/pm/ActivityInfo;

    #@1d7
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    #@1d9
    goto :goto_7

    #@1da
    .end local v9    # "num":I
    .restart local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .restart local v8    # "j":I
    :cond_14
    move v7, v8

    #@1db
    .line 496
    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_9

    #@1dc
    .line 503
    .end local v4    # "N":I
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_15
    and-int/lit8 v14, p2, 0x4

    #@1de
    if-eqz v14, :cond_1b

    #@1e0
    .line 504
    move-object/from16 v0, p0

    #@1e2
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@1e4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@1e7
    move-result v4

    #@1e8
    .line 505
    .restart local v4    # "N":I
    if-lez v4, :cond_1b

    #@1ea
    .line 506
    move/from16 v0, p2

    #@1ec
    and-int/lit16 v14, v0, 0x200

    #@1ee
    if-eqz v14, :cond_17

    #@1f0
    .line 507
    new-array v14, v4, [Landroid/content/pm/ServiceInfo;

    #@1f2
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    #@1f4
    .line 515
    :goto_b
    const/4 v6, 0x0

    #@1f5
    .restart local v6    # "i":I
    const/4 v7, 0x0

    #@1f6
    .restart local v7    # "j":I
    move v8, v7

    #@1f7
    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_c
    if-ge v6, v4, :cond_1b

    #@1f9
    .line 516
    move-object/from16 v0, p0

    #@1fb
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@1fd
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@200
    move-result-object v13

    #@201
    check-cast v13, Landroid/content/pm/PackageParser$Service;

    #@203
    .line 517
    .local v13, "service":Landroid/content/pm/PackageParser$Service;
    iget-object v14, v13, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@205
    iget-boolean v14, v14, Landroid/content/pm/ServiceInfo;->enabled:Z

    #@207
    if-nez v14, :cond_16

    #@209
    .line 518
    move/from16 v0, p2

    #@20b
    and-int/lit16 v14, v0, 0x200

    #@20d
    if-eqz v14, :cond_1a

    #@20f
    .line 519
    :cond_16
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    #@211
    add-int/lit8 v7, v8, 0x1

    #@213
    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    #@215
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@217
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21a
    move-result-object v14

    #@21b
    check-cast v14, Landroid/content/pm/PackageParser$Service;

    #@21d
    move/from16 v0, p2

    #@21f
    move-object/from16 v1, p8

    #@221
    move/from16 v2, p9

    #@223
    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    #@226
    move-result-object v14

    #@227
    aput-object v14, v15, v8

    #@229
    .line 515
    :goto_d
    add-int/lit8 v6, v6, 0x1

    #@22b
    move v8, v7

    #@22c
    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_c

    #@22d
    .line 509
    .end local v6    # "i":I
    .end local v8    # "j":I
    .end local v13    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_17
    const/4 v9, 0x0

    #@22e
    .line 510
    .restart local v9    # "num":I
    const/4 v6, 0x0

    #@22f
    .restart local v6    # "i":I
    :goto_e
    if-ge v6, v4, :cond_19

    #@231
    .line 511
    move-object/from16 v0, p0

    #@233
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@235
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@238
    move-result-object v14

    #@239
    check-cast v14, Landroid/content/pm/PackageParser$Service;

    #@23b
    iget-object v14, v14, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@23d
    iget-boolean v14, v14, Landroid/content/pm/ServiceInfo;->enabled:Z

    #@23f
    if-eqz v14, :cond_18

    #@241
    add-int/lit8 v9, v9, 0x1

    #@243
    .line 510
    :cond_18
    add-int/lit8 v6, v6, 0x1

    #@245
    goto :goto_e

    #@246
    .line 513
    :cond_19
    new-array v14, v9, [Landroid/content/pm/ServiceInfo;

    #@248
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    #@24a
    goto :goto_b

    #@24b
    .end local v9    # "num":I
    .restart local v8    # "j":I
    .restart local v13    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_1a
    move v7, v8

    #@24c
    .line 518
    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_d

    #@24d
    .line 525
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v13    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_1b
    and-int/lit8 v14, p2, 0x8

    #@24f
    if-eqz v14, :cond_21

    #@251
    .line 526
    move-object/from16 v0, p0

    #@253
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@255
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@258
    move-result v4

    #@259
    .line 527
    .restart local v4    # "N":I
    if-lez v4, :cond_21

    #@25b
    .line 528
    move/from16 v0, p2

    #@25d
    and-int/lit16 v14, v0, 0x200

    #@25f
    if-eqz v14, :cond_1d

    #@261
    .line 529
    new-array v14, v4, [Landroid/content/pm/ProviderInfo;

    #@263
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    #@265
    .line 537
    :goto_f
    const/4 v6, 0x0

    #@266
    .restart local v6    # "i":I
    const/4 v7, 0x0

    #@267
    .restart local v7    # "j":I
    move v8, v7

    #@268
    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_10
    if-ge v6, v4, :cond_21

    #@26a
    .line 538
    move-object/from16 v0, p0

    #@26c
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@26e
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@271
    move-result-object v12

    #@272
    check-cast v12, Landroid/content/pm/PackageParser$Provider;

    #@274
    .line 539
    .local v12, "provider":Landroid/content/pm/PackageParser$Provider;
    iget-object v14, v12, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@276
    iget-boolean v14, v14, Landroid/content/pm/ProviderInfo;->enabled:Z

    #@278
    if-nez v14, :cond_1c

    #@27a
    .line 540
    move/from16 v0, p2

    #@27c
    and-int/lit16 v14, v0, 0x200

    #@27e
    if-eqz v14, :cond_20

    #@280
    .line 541
    :cond_1c
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    #@282
    add-int/lit8 v7, v8, 0x1

    #@284
    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    #@286
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@288
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28b
    move-result-object v14

    #@28c
    check-cast v14, Landroid/content/pm/PackageParser$Provider;

    #@28e
    move/from16 v0, p2

    #@290
    move-object/from16 v1, p8

    #@292
    move/from16 v2, p9

    #@294
    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    #@297
    move-result-object v14

    #@298
    aput-object v14, v15, v8

    #@29a
    .line 537
    :goto_11
    add-int/lit8 v6, v6, 0x1

    #@29c
    move v8, v7

    #@29d
    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_10

    #@29e
    .line 531
    .end local v6    # "i":I
    .end local v8    # "j":I
    .end local v12    # "provider":Landroid/content/pm/PackageParser$Provider;
    :cond_1d
    const/4 v9, 0x0

    #@29f
    .line 532
    .restart local v9    # "num":I
    const/4 v6, 0x0

    #@2a0
    .restart local v6    # "i":I
    :goto_12
    if-ge v6, v4, :cond_1f

    #@2a2
    .line 533
    move-object/from16 v0, p0

    #@2a4
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@2a6
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a9
    move-result-object v14

    #@2aa
    check-cast v14, Landroid/content/pm/PackageParser$Provider;

    #@2ac
    iget-object v14, v14, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@2ae
    iget-boolean v14, v14, Landroid/content/pm/ProviderInfo;->enabled:Z

    #@2b0
    if-eqz v14, :cond_1e

    #@2b2
    add-int/lit8 v9, v9, 0x1

    #@2b4
    .line 532
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    #@2b6
    goto :goto_12

    #@2b7
    .line 535
    :cond_1f
    new-array v14, v9, [Landroid/content/pm/ProviderInfo;

    #@2b9
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    #@2bb
    goto :goto_f

    #@2bc
    .end local v9    # "num":I
    .restart local v8    # "j":I
    .restart local v12    # "provider":Landroid/content/pm/PackageParser$Provider;
    :cond_20
    move v7, v8

    #@2bd
    .line 540
    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_11

    #@2be
    .line 547
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v12    # "provider":Landroid/content/pm/PackageParser$Provider;
    :cond_21
    and-int/lit8 v14, p2, 0x10

    #@2c0
    if-eqz v14, :cond_22

    #@2c2
    .line 548
    move-object/from16 v0, p0

    #@2c4
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@2c6
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@2c9
    move-result v4

    #@2ca
    .line 549
    .restart local v4    # "N":I
    if-lez v4, :cond_22

    #@2cc
    .line 550
    new-array v14, v4, [Landroid/content/pm/InstrumentationInfo;

    #@2ce
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    #@2d0
    .line 551
    const/4 v6, 0x0

    #@2d1
    .restart local v6    # "i":I
    :goto_13
    if-ge v6, v4, :cond_22

    #@2d3
    .line 552
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    #@2d5
    .line 553
    move-object/from16 v0, p0

    #@2d7
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@2d9
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2dc
    move-result-object v14

    #@2dd
    check-cast v14, Landroid/content/pm/PackageParser$Instrumentation;

    #@2df
    .line 552
    move/from16 v0, p2

    #@2e1
    invoke-static {v14, v0}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    #@2e4
    move-result-object v14

    #@2e5
    aput-object v14, v15, v6

    #@2e7
    .line 551
    add-int/lit8 v6, v6, 0x1

    #@2e9
    goto :goto_13

    #@2ea
    .line 557
    .end local v4    # "N":I
    .end local v6    # "i":I
    :cond_22
    move/from16 v0, p2

    #@2ec
    and-int/lit16 v14, v0, 0x1000

    #@2ee
    if-eqz v14, :cond_25

    #@2f0
    .line 558
    move-object/from16 v0, p0

    #@2f2
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@2f4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@2f7
    move-result v4

    #@2f8
    .line 559
    .restart local v4    # "N":I
    if-lez v4, :cond_23

    #@2fa
    .line 560
    new-array v14, v4, [Landroid/content/pm/PermissionInfo;

    #@2fc
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    #@2fe
    .line 561
    const/4 v6, 0x0

    #@2ff
    .restart local v6    # "i":I
    :goto_14
    if-ge v6, v4, :cond_23

    #@301
    .line 562
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    #@303
    move-object/from16 v0, p0

    #@305
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@307
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30a
    move-result-object v14

    #@30b
    check-cast v14, Landroid/content/pm/PackageParser$Permission;

    #@30d
    move/from16 v0, p2

    #@30f
    invoke-static {v14, v0}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    #@312
    move-result-object v14

    #@313
    aput-object v14, v15, v6

    #@315
    .line 561
    add-int/lit8 v6, v6, 0x1

    #@317
    goto :goto_14

    #@318
    .line 565
    .end local v6    # "i":I
    :cond_23
    move-object/from16 v0, p0

    #@31a
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@31c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@31f
    move-result v4

    #@320
    .line 566
    if-lez v4, :cond_25

    #@322
    .line 567
    new-array v14, v4, [Ljava/lang/String;

    #@324
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@326
    .line 568
    new-array v14, v4, [I

    #@328
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    #@32a
    .line 569
    const/4 v6, 0x0

    #@32b
    .restart local v6    # "i":I
    :goto_15
    if-ge v6, v4, :cond_25

    #@32d
    .line 570
    move-object/from16 v0, p0

    #@32f
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@331
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@334
    move-result-object v10

    #@335
    check-cast v10, Ljava/lang/String;

    #@337
    .line 571
    .local v10, "perm":Ljava/lang/String;
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@339
    aput-object v10, v14, v6

    #@33b
    .line 573
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    #@33d
    aget v15, v14, v6

    #@33f
    or-int/lit8 v15, v15, 0x1

    #@341
    aput v15, v14, v6

    #@343
    .line 574
    if-eqz p7, :cond_24

    #@345
    move-object/from16 v0, p7

    #@347
    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@34a
    move-result v14

    #@34b
    if-eqz v14, :cond_24

    #@34d
    .line 575
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    #@34f
    aget v15, v14, v6

    #@351
    or-int/lit8 v15, v15, 0x2

    #@353
    aput v15, v14, v6

    #@355
    .line 569
    :cond_24
    add-int/lit8 v6, v6, 0x1

    #@357
    goto :goto_15

    #@358
    .line 580
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v10    # "perm":Ljava/lang/String;
    :cond_25
    and-int/lit8 v14, p2, 0x40

    #@35a
    if-eqz v14, :cond_26

    #@35c
    .line 581
    move-object/from16 v0, p0

    #@35e
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@360
    if-eqz v14, :cond_27

    #@362
    move-object/from16 v0, p0

    #@364
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@366
    array-length v4, v14

    #@367
    .line 582
    .restart local v4    # "N":I
    :goto_16
    if-lez v4, :cond_26

    #@369
    .line 583
    new-array v14, v4, [Landroid/content/pm/Signature;

    #@36b
    iput-object v14, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@36d
    .line 584
    move-object/from16 v0, p0

    #@36f
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@371
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@373
    const/16 v16, 0x0

    #@375
    const/16 v17, 0x0

    #@377
    move/from16 v0, v16

    #@379
    move/from16 v1, v17

    #@37b
    invoke-static {v14, v0, v15, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@37e
    .line 587
    .end local v4    # "N":I
    :cond_26
    return-object v11

    #@37f
    .line 581
    :cond_27
    const/4 v4, 0x0

    #@380
    .restart local v4    # "N":I
    goto :goto_16
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p0, "pg"    # Landroid/content/pm/PackageParser$PermissionGroup;
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4839
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 4840
    :cond_0
    and-int/lit16 v1, p1, 0x80

    #@6
    if-nez v1, :cond_1

    #@8
    .line 4841
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@a
    return-object v1

    #@b
    .line 4843
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    #@d
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@f
    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    #@12
    .line 4844
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    #@14
    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    #@16
    .line 4845
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
    .line 4828
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 4829
    :cond_0
    and-int/lit16 v1, p1, 0x80

    #@6
    if-nez v1, :cond_1

    #@8
    .line 4830
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@a
    return-object v1

    #@b
    .line 4832
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    #@d
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@f
    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    #@12
    .line 4833
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    #@14
    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    #@16
    .line 4834
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
    .line 4978
    if-nez p0, :cond_0

    #@3
    return-object v3

    #@4
    .line 4979
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 4980
    return-object v3

    #@b
    .line 4982
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
    .line 4983
    and-int/lit16 v1, p1, 0x800

    #@17
    if-nez v1, :cond_2

    #@19
    .line 4984
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@1b
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@1d
    if-nez v1, :cond_3

    #@1f
    .line 4985
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@21
    return-object v1

    #@22
    .line 4988
    :cond_3
    new-instance v0, Landroid/content/pm/ProviderInfo;

    #@24
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@26
    invoke-direct {v0, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    #@29
    .line 4989
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    #@2b
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    #@2d
    .line 4990
    and-int/lit16 v1, p1, 0x800

    #@2f
    if-nez v1, :cond_4

    #@31
    .line 4991
    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@33
    .line 4993
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    #@35
    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@38
    move-result-object v1

    #@39
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3b
    .line 4994
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
    .line 4929
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 4930
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 4931
    return-object v2

    #@b
    .line 4933
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
    .line 4934
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@17
    return-object v1

    #@18
    .line 4937
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    #@1a
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@1c
    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    #@1f
    .line 4938
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    #@21
    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@23
    .line 4939
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    #@25
    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    #@28
    move-result-object v1

    #@29
    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2b
    .line 4940
    return-object v0
.end method

.method private static hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 2824
    if-eqz p0, :cond_0

    #@3
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@5
    if-nez v8, :cond_1

    #@7
    :cond_0
    return v9

    #@8
    .line 2825
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@a
    .line 2826
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v3

    #@e
    .line 2827
    .local v3, "countActivities":I
    const/4 v7, 0x0

    #@f
    .local v7, "n":I
    :goto_0
    if-ge v7, v3, :cond_7

    #@11
    .line 2828
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    #@17
    .line 2829
    .local v1, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@19
    .line 2830
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-nez v5, :cond_3

    #@1b
    .line 2827
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2831
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v4

    #@22
    .line 2832
    .local v4, "countFilters":I
    const/4 v6, 0x0

    #@23
    .local v6, "m":I
    :goto_1
    if-ge v6, v4, :cond_2

    #@25
    .line 2833
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2b
    .line 2834
    .local v2, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string/jumbo v8, "android.intent.action.VIEW"

    #@2e
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    #@31
    move-result v8

    #@32
    if-nez v8, :cond_5

    #@34
    .line 2832
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@36
    goto :goto_1

    #@37
    .line 2835
    :cond_5
    const-string/jumbo v8, "android.intent.action.VIEW"

    #@3a
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    #@3d
    move-result v8

    #@3e
    if-eqz v8, :cond_4

    #@40
    .line 2836
    const-string/jumbo v8, "http"

    #@43
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    #@46
    move-result v8

    #@47
    if-nez v8, :cond_6

    #@49
    .line 2837
    const-string/jumbo v8, "https"

    #@4c
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    #@4f
    move-result v8

    #@50
    .line 2836
    if-eqz v8, :cond_4

    #@52
    .line 2838
    :cond_6
    const/4 v8, 0x1

    #@53
    return v8

    #@54
    .line 2842
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
    .line 377
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
    .line 381
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
    .line 408
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
    .line 848
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
    .line 856
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 857
    .local v0, "cookie":I
    if-nez v0, :cond_2

    #@10
    .line 858
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@12
    .line 859
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
    .line 858
    const/16 v3, -0x65

    #@28
    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 849
    .end local v0    # "cookie":I
    :cond_1
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@2e
    .line 850
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
    .line 849
    const/16 v3, -0x64

    #@44
    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 861
    .restart local v0    # "cookie":I
    :cond_2
    return v0
.end method

.method private static loadCertificates(Ljava/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 5
    .param p0, "jarFile"    # Ljava/util/jar/StrictJarFile;
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 592
    const/4 v1, 0x0

    #@1
    .line 596
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@4
    move-result-object v1

    #@5
    .line 597
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/content/pm/PackageParser;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    #@8
    .line 598
    invoke-virtual {p0, p1}, Ljava/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v2

    #@c
    .line 603
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f
    .line 598
    return-object v2

    #@10
    .line 599
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@11
    .line 600
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    #@13
    .line 601
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
    .line 600
    const/16 v4, -0x66

    #@38
    invoke-direct {v2, v4, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@3b
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 602
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@3d
    .line 603
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@40
    .line 602
    throw v2
.end method

.method private static modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 2815
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
    .line 2816
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@d
    .line 2817
    const-string/jumbo v1, "org.apache.http.legacy"

    #@10
    .line 2816
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@16
    .line 2808
    return-void
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 22
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .param p7, "receiver"    # Z
    .param p8, "hardwareAccelerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3029
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    #@2
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p4

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v18

    #@a
    .line 3031
    .local v18, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@e
    if-nez v2, :cond_0

    #@10
    .line 3032
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@12
    .line 3038
    move-object/from16 v0, p0

    #@14
    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@16
    .line 3033
    const/4 v5, 0x3

    #@17
    .line 3034
    const/4 v6, 0x1

    #@18
    .line 3035
    const/4 v7, 0x2

    #@19
    .line 3036
    const/16 v8, 0x17

    #@1b
    .line 3037
    const/16 v9, 0x1e

    #@1d
    .line 3039
    const/4 v11, 0x7

    #@1e
    .line 3040
    const/16 v12, 0x11

    #@20
    .line 3041
    const/4 v13, 0x5

    #@21
    move-object/from16 v3, p1

    #@23
    move-object/from16 v4, p6

    #@25
    .line 3032
    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    #@28
    move-object/from16 v0, p0

    #@2a
    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@2c
    .line 3044
    :cond_0
    move-object/from16 v0, p0

    #@2e
    iget-object v3, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@30
    if-eqz p7, :cond_1

    #@32
    const-string/jumbo v2, "<receiver>"

    #@35
    :goto_0
    iput-object v2, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@37
    .line 3045
    move-object/from16 v0, p0

    #@39
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@3b
    move-object/from16 v0, v18

    #@3d
    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@3f
    .line 3046
    move-object/from16 v0, p0

    #@41
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@43
    move/from16 v0, p5

    #@45
    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@47
    .line 3048
    new-instance v14, Landroid/content/pm/PackageParser$Activity;

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@4d
    new-instance v3, Landroid/content/pm/ActivityInfo;

    #@4f
    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    #@52
    invoke-direct {v14, v2, v3}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    #@55
    .line 3049
    .local v14, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v2, 0x0

    #@56
    aget-object v2, p6, v2

    #@58
    if-eqz v2, :cond_2

    #@5a
    .line 3050
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    #@5d
    .line 3051
    const/4 v2, 0x0

    #@5e
    return-object v2

    #@5f
    .line 3044
    .end local v14    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1
    const-string/jumbo v2, "<activity>"

    #@62
    goto :goto_0

    #@63
    .line 3054
    .restart local v14    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_2
    const/4 v2, 0x6

    #@64
    move-object/from16 v0, v18

    #@66
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@69
    move-result v19

    #@6a
    .line 3055
    .local v19, "setExported":Z
    if-eqz v19, :cond_3

    #@6c
    .line 3056
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@6e
    const/4 v3, 0x6

    #@6f
    const/4 v4, 0x0

    #@70
    move-object/from16 v0, v18

    #@72
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@75
    move-result v3

    #@76
    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    #@78
    .line 3059
    :cond_3
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@7a
    const/4 v3, 0x0

    #@7b
    const/4 v4, 0x0

    #@7c
    move-object/from16 v0, v18

    #@7e
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@81
    move-result v3

    #@82
    iput v3, v2, Landroid/content/pm/ActivityInfo;->theme:I

    #@84
    .line 3061
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@86
    .line 3062
    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@88
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8a
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@8c
    .line 3061
    const/16 v4, 0x1a

    #@8e
    move-object/from16 v0, v18

    #@90
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@93
    move-result v3

    #@94
    iput v3, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@96
    .line 3065
    const/16 v2, 0x1b

    #@98
    .line 3066
    const/16 v3, 0x400

    #@9a
    .line 3064
    move-object/from16 v0, v18

    #@9c
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@9f
    move-result-object v17

    #@a0
    .line 3067
    .local v17, "parentName":Ljava/lang/String;
    if-eqz v17, :cond_4

    #@a2
    .line 3068
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@a4
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@a6
    move-object/from16 v0, v17

    #@a8
    move-object/from16 v1, p6

    #@aa
    invoke-static {v2, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@ad
    move-result-object v16

    #@ae
    .line 3069
    .local v16, "parentClassName":Ljava/lang/String;
    const/4 v2, 0x0

    #@af
    aget-object v2, p6, v2

    #@b1
    if-nez v2, :cond_19

    #@b3
    .line 3070
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@b5
    move-object/from16 v0, v16

    #@b7
    iput-object v0, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@b9
    .line 3079
    .end local v16    # "parentClassName":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v2, 0x4

    #@ba
    const/4 v3, 0x0

    #@bb
    move-object/from16 v0, v18

    #@bd
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@c0
    move-result-object v20

    #@c1
    .line 3080
    .local v20, "str":Ljava/lang/String;
    if-nez v20, :cond_1a

    #@c3
    .line 3081
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@c5
    move-object/from16 v0, p1

    #@c7
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c9
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@cb
    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@cd
    .line 3087
    :goto_2
    const/16 v2, 0x8

    #@cf
    .line 3088
    const/16 v3, 0x400

    #@d1
    .line 3086
    move-object/from16 v0, v18

    #@d3
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@d6
    move-result-object v20

    #@d7
    .line 3089
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@d9
    move-object/from16 v0, p1

    #@db
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@dd
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@df
    .line 3090
    move-object/from16 v0, p1

    #@e1
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e3
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@e5
    .line 3089
    move-object/from16 v0, v20

    #@e7
    move-object/from16 v1, p6

    #@e9
    invoke-static {v3, v4, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@ec
    move-result-object v3

    #@ed
    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@ef
    .line 3092
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@f1
    const/4 v3, 0x0

    #@f2
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@f4
    .line 3094
    const/16 v2, 0x9

    #@f6
    const/4 v3, 0x0

    #@f7
    .line 3093
    move-object/from16 v0, v18

    #@f9
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@fc
    move-result v2

    #@fd
    if-eqz v2, :cond_5

    #@ff
    .line 3095
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@101
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@103
    or-int/lit8 v3, v3, 0x1

    #@105
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@107
    .line 3098
    :cond_5
    const/16 v2, 0xa

    #@109
    const/4 v3, 0x0

    #@10a
    move-object/from16 v0, v18

    #@10c
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@10f
    move-result v2

    #@110
    if-eqz v2, :cond_6

    #@112
    .line 3099
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@114
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@116
    or-int/lit8 v3, v3, 0x2

    #@118
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@11a
    .line 3102
    :cond_6
    const/16 v2, 0xb

    #@11c
    const/4 v3, 0x0

    #@11d
    move-object/from16 v0, v18

    #@11f
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@122
    move-result v2

    #@123
    if-eqz v2, :cond_7

    #@125
    .line 3103
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@127
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@129
    or-int/lit8 v3, v3, 0x4

    #@12b
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@12d
    .line 3106
    :cond_7
    const/16 v2, 0x15

    #@12f
    const/4 v3, 0x0

    #@130
    move-object/from16 v0, v18

    #@132
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@135
    move-result v2

    #@136
    if-eqz v2, :cond_8

    #@138
    .line 3107
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@13a
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@13c
    or-int/lit16 v3, v3, 0x80

    #@13e
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@140
    .line 3110
    :cond_8
    const/16 v2, 0x12

    #@142
    const/4 v3, 0x0

    #@143
    move-object/from16 v0, v18

    #@145
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@148
    move-result v2

    #@149
    if-eqz v2, :cond_9

    #@14b
    .line 3111
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@14d
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@14f
    or-int/lit8 v3, v3, 0x8

    #@151
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@153
    .line 3114
    :cond_9
    const/16 v2, 0xc

    #@155
    const/4 v3, 0x0

    #@156
    move-object/from16 v0, v18

    #@158
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@15b
    move-result v2

    #@15c
    if-eqz v2, :cond_a

    #@15e
    .line 3115
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@160
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@162
    or-int/lit8 v3, v3, 0x10

    #@164
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@166
    .line 3118
    :cond_a
    const/16 v2, 0xd

    #@168
    const/4 v3, 0x0

    #@169
    move-object/from16 v0, v18

    #@16b
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@16e
    move-result v2

    #@16f
    if-eqz v2, :cond_b

    #@171
    .line 3119
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@173
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@175
    or-int/lit8 v3, v3, 0x20

    #@177
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@179
    .line 3123
    :cond_b
    move-object/from16 v0, p1

    #@17b
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@17d
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@17f
    and-int/lit8 v2, v2, 0x20

    #@181
    if-eqz v2, :cond_1c

    #@183
    const/4 v2, 0x1

    #@184
    .line 3122
    :goto_3
    const/16 v3, 0x13

    #@186
    move-object/from16 v0, v18

    #@188
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@18b
    move-result v2

    #@18c
    if-eqz v2, :cond_c

    #@18e
    .line 3124
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@190
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@192
    or-int/lit8 v3, v3, 0x40

    #@194
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@196
    .line 3127
    :cond_c
    const/16 v2, 0x16

    #@198
    const/4 v3, 0x0

    #@199
    move-object/from16 v0, v18

    #@19b
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@19e
    move-result v2

    #@19f
    if-eqz v2, :cond_d

    #@1a1
    .line 3128
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1a3
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@1a5
    or-int/lit16 v3, v3, 0x100

    #@1a7
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@1a9
    .line 3131
    :cond_d
    const/16 v2, 0x1d

    #@1ab
    const/4 v3, 0x0

    #@1ac
    move-object/from16 v0, v18

    #@1ae
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b1
    move-result v2

    #@1b2
    if-nez v2, :cond_e

    #@1b4
    .line 3132
    const/16 v2, 0x27

    #@1b6
    const/4 v3, 0x0

    #@1b7
    move-object/from16 v0, v18

    #@1b9
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1bc
    move-result v2

    #@1bd
    .line 3131
    if-eqz v2, :cond_f

    #@1bf
    .line 3133
    :cond_e
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1c1
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@1c3
    or-int/lit16 v3, v3, 0x400

    #@1c5
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@1c7
    .line 3136
    :cond_f
    const/16 v2, 0x18

    #@1c9
    const/4 v3, 0x0

    #@1ca
    move-object/from16 v0, v18

    #@1cc
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1cf
    move-result v2

    #@1d0
    if-eqz v2, :cond_10

    #@1d2
    .line 3137
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1d4
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@1d6
    or-int/lit16 v3, v3, 0x800

    #@1d8
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@1da
    .line 3140
    :cond_10
    const/16 v2, 0x29

    #@1dc
    const/4 v3, 0x0

    #@1dd
    move-object/from16 v0, v18

    #@1df
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1e2
    move-result v2

    #@1e3
    if-eqz v2, :cond_11

    #@1e5
    .line 3141
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1e7
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@1e9
    const/high16 v4, 0x20000000

    #@1eb
    or-int/2addr v3, v4

    #@1ec
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@1ee
    .line 3144
    :cond_11
    if-nez p7, :cond_1e

    #@1f0
    .line 3145
    const/16 v2, 0x19

    #@1f2
    move-object/from16 v0, v18

    #@1f4
    move/from16 v1, p8

    #@1f6
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1f9
    move-result v2

    #@1fa
    if-eqz v2, :cond_12

    #@1fc
    .line 3147
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1fe
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@200
    or-int/lit16 v3, v3, 0x200

    #@202
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@204
    .line 3150
    :cond_12
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@206
    .line 3151
    const/16 v3, 0xe

    #@208
    const/4 v4, 0x0

    #@209
    .line 3150
    move-object/from16 v0, v18

    #@20b
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@20e
    move-result v3

    #@20f
    iput v3, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@211
    .line 3152
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@213
    .line 3153
    const/16 v3, 0x21

    #@215
    .line 3154
    const/4 v4, 0x0

    #@216
    .line 3152
    move-object/from16 v0, v18

    #@218
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@21b
    move-result v3

    #@21c
    iput v3, v2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@21e
    .line 3155
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@220
    .line 3157
    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    #@223
    move-result v3

    #@224
    .line 3156
    const/16 v4, 0x22

    #@226
    .line 3155
    move-object/from16 v0, v18

    #@228
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@22b
    move-result v3

    #@22c
    iput v3, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@22e
    .line 3158
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@230
    const/16 v3, 0x10

    #@232
    const/4 v4, 0x0

    #@233
    move-object/from16 v0, v18

    #@235
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@238
    move-result v3

    #@239
    iput v3, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@23b
    .line 3159
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@23d
    .line 3160
    const/16 v3, 0x14

    #@23f
    const/4 v4, 0x0

    #@240
    .line 3159
    move-object/from16 v0, v18

    #@242
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@245
    move-result v3

    #@246
    iput v3, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@248
    .line 3162
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@24a
    .line 3163
    const/16 v3, 0x20

    #@24c
    .line 3164
    const/4 v4, 0x0

    #@24d
    .line 3162
    move-object/from16 v0, v18

    #@24f
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@252
    move-result v3

    #@253
    iput v3, v2, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@255
    .line 3166
    const/16 v2, 0x1f

    #@257
    const/4 v3, 0x0

    #@258
    move-object/from16 v0, v18

    #@25a
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@25d
    move-result v2

    #@25e
    if-eqz v2, :cond_13

    #@260
    .line 3167
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@262
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@264
    const/high16 v4, -0x80000000

    #@266
    or-int/2addr v3, v4

    #@267
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@269
    .line 3170
    :cond_13
    const/16 v2, 0x23

    #@26b
    const/4 v3, 0x0

    #@26c
    move-object/from16 v0, v18

    #@26e
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@271
    move-result v2

    #@272
    if-eqz v2, :cond_14

    #@274
    .line 3171
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@276
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@278
    or-int/lit16 v3, v3, 0x2000

    #@27a
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@27c
    .line 3174
    :cond_14
    const/16 v2, 0x24

    #@27e
    const/4 v3, 0x0

    #@27f
    move-object/from16 v0, v18

    #@281
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@284
    move-result v2

    #@285
    if-eqz v2, :cond_15

    #@287
    .line 3175
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@289
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@28b
    or-int/lit16 v3, v3, 0x1000

    #@28d
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@28f
    .line 3178
    :cond_15
    const/16 v2, 0x25

    #@291
    const/4 v3, 0x0

    #@292
    move-object/from16 v0, v18

    #@294
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@297
    move-result v2

    #@298
    if-eqz v2, :cond_16

    #@29a
    .line 3179
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@29c
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@29e
    or-int/lit16 v3, v3, 0x4000

    #@2a0
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@2a2
    .line 3182
    :cond_16
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2a4
    .line 3183
    const/16 v3, 0x28

    #@2a6
    const/4 v4, 0x0

    #@2a7
    .line 3182
    move-object/from16 v0, v18

    #@2a9
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2ac
    move-result v3

    #@2ad
    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->resizeable:Z

    #@2af
    .line 3184
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2b1
    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->resizeable:Z

    #@2b3
    if-eqz v2, :cond_1d

    #@2b5
    .line 3186
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2b7
    const/4 v3, -0x1

    #@2b8
    iput v3, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@2ba
    .line 3193
    :goto_4
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2bc
    .line 3194
    const/16 v3, 0x26

    #@2be
    const/4 v4, 0x0

    #@2bf
    move-object/from16 v0, v18

    #@2c1
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2c4
    move-result v3

    #@2c5
    .line 3193
    iput v3, v2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@2c7
    .line 3211
    .end local v19    # "setExported":Z
    :cond_17
    :goto_5
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    #@2ca
    .line 3213
    if-eqz p7, :cond_18

    #@2cc
    move-object/from16 v0, p1

    #@2ce
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2d0
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@2d2
    and-int/lit8 v2, v2, 0x2

    #@2d4
    if-eqz v2, :cond_18

    #@2d6
    .line 3217
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2d8
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@2da
    move-object/from16 v0, p1

    #@2dc
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@2de
    if-ne v2, v3, :cond_18

    #@2e0
    .line 3218
    const-string/jumbo v2, "Heavy-weight applications can not have receivers in main process"

    #@2e3
    const/4 v3, 0x0

    #@2e4
    aput-object v2, p6, v3

    #@2e6
    .line 3222
    :cond_18
    const/4 v2, 0x0

    #@2e7
    aget-object v2, p6, v2

    #@2e9
    if-eqz v2, :cond_1f

    #@2eb
    .line 3223
    const/4 v2, 0x0

    #@2ec
    return-object v2

    #@2ed
    .line 3072
    .end local v20    # "str":Ljava/lang/String;
    .restart local v16    # "parentClassName":Ljava/lang/String;
    .restart local v19    # "setExported":Z
    :cond_19
    const-string/jumbo v2, "PackageParser"

    #@2f0
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f5
    const-string/jumbo v4, "Activity "

    #@2f8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fb
    move-result-object v3

    #@2fc
    iget-object v4, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@2fe
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@303
    move-result-object v3

    #@304
    const-string/jumbo v4, " specified invalid parentActivityName "

    #@307
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v3

    #@30b
    move-object/from16 v0, v17

    #@30d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@310
    move-result-object v3

    #@311
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@314
    move-result-object v3

    #@315
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@318
    .line 3074
    const/4 v2, 0x0

    #@319
    const/4 v3, 0x0

    #@31a
    aput-object v2, p6, v3

    #@31c
    goto/16 :goto_1

    #@31e
    .line 3083
    .end local v16    # "parentClassName":Ljava/lang/String;
    .restart local v20    # "str":Ljava/lang/String;
    :cond_1a
    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@320
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    #@323
    move-result v2

    #@324
    if-lez v2, :cond_1b

    #@326
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@329
    move-result-object v2

    #@32a
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@32d
    move-result-object v2

    #@32e
    :goto_6
    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@330
    goto/16 :goto_2

    #@332
    :cond_1b
    const/4 v2, 0x0

    #@333
    goto :goto_6

    #@334
    .line 3123
    :cond_1c
    const/4 v2, 0x0

    #@335
    goto/16 :goto_3

    #@337
    .line 3188
    :cond_1d
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@339
    .line 3189
    const/16 v3, 0xf

    #@33b
    .line 3190
    const/4 v4, -0x1

    #@33c
    .line 3188
    move-object/from16 v0, v18

    #@33e
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@341
    move-result v3

    #@342
    iput v3, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@344
    goto/16 :goto_4

    #@346
    .line 3196
    :cond_1e
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@348
    const/4 v3, 0x0

    #@349
    iput v3, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@34b
    .line 3197
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@34d
    const/4 v3, 0x0

    #@34e
    iput v3, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@350
    .line 3199
    const/16 v2, 0x1c

    #@352
    const/4 v3, 0x0

    #@353
    move-object/from16 v0, v18

    #@355
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@358
    move-result v2

    #@359
    if-eqz v2, :cond_17

    #@35b
    .line 3200
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@35d
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@35f
    const/high16 v4, 0x40000000    # 2.0f

    #@361
    or-int/2addr v3, v4

    #@362
    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@364
    .line 3201
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@366
    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    #@368
    if-eqz v2, :cond_17

    #@36a
    move/from16 v0, p5

    #@36c
    and-int/lit16 v2, v0, 0x80

    #@36e
    if-nez v2, :cond_17

    #@370
    .line 3202
    const-string/jumbo v2, "PackageParser"

    #@373
    new-instance v3, Ljava/lang/StringBuilder;

    #@375
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@378
    const-string/jumbo v4, "Activity exported request ignored due to singleUser: "

    #@37b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37e
    move-result-object v3

    #@37f
    .line 3203
    iget-object v4, v14, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    #@381
    .line 3202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@384
    move-result-object v3

    #@385
    .line 3203
    const-string/jumbo v4, " at "

    #@388
    .line 3202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38b
    move-result-object v3

    #@38c
    .line 3203
    move-object/from16 v0, p0

    #@38e
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@390
    .line 3202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@393
    move-result-object v3

    #@394
    .line 3203
    const-string/jumbo v4, " "

    #@397
    .line 3202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39a
    move-result-object v3

    #@39b
    .line 3204
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@39e
    move-result-object v4

    #@39f
    .line 3202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a2
    move-result-object v3

    #@3a3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a6
    move-result-object v3

    #@3a7
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3aa
    .line 3205
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@3ac
    const/4 v3, 0x0

    #@3ad
    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    #@3af
    .line 3206
    const/16 v19, 0x1

    #@3b1
    .local v19, "setExported":Z
    goto/16 :goto_5

    #@3b3
    .line 3226
    .end local v19    # "setExported":Z
    :cond_1f
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3b6
    move-result v15

    #@3b7
    .line 3228
    .local v15, "outerDepth":I
    :cond_20
    :goto_7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3ba
    move-result v21

    #@3bb
    .local v21, "type":I
    const/4 v2, 0x1

    #@3bc
    move/from16 v0, v21

    #@3be
    if-eq v0, v2, :cond_2b

    #@3c0
    .line 3229
    const/4 v2, 0x3

    #@3c1
    move/from16 v0, v21

    #@3c3
    if-ne v0, v2, :cond_21

    #@3c5
    .line 3230
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3c8
    move-result v2

    #@3c9
    if-le v2, v15, :cond_2b

    #@3cb
    .line 3231
    :cond_21
    const/4 v2, 0x3

    #@3cc
    move/from16 v0, v21

    #@3ce
    if-eq v0, v2, :cond_20

    #@3d0
    const/4 v2, 0x4

    #@3d1
    move/from16 v0, v21

    #@3d3
    if-eq v0, v2, :cond_20

    #@3d5
    .line 3235
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3d8
    move-result-object v2

    #@3d9
    const-string/jumbo v3, "intent-filter"

    #@3dc
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3df
    move-result v2

    #@3e0
    if-eqz v2, :cond_24

    #@3e2
    .line 3236
    new-instance v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@3e4
    invoke-direct {v8, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    #@3e7
    .line 3237
    .local v8, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v6, 0x1

    #@3e8
    const/4 v7, 0x1

    #@3e9
    move-object/from16 v2, p0

    #@3eb
    move-object/from16 v3, p2

    #@3ed
    move-object/from16 v4, p3

    #@3ef
    move-object/from16 v5, p4

    #@3f1
    move-object/from16 v9, p6

    #@3f3
    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@3f6
    move-result v2

    #@3f7
    if-nez v2, :cond_22

    #@3f9
    .line 3238
    const/4 v2, 0x0

    #@3fa
    return-object v2

    #@3fb
    .line 3240
    :cond_22
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    #@3fe
    move-result v2

    #@3ff
    if-nez v2, :cond_23

    #@401
    .line 3241
    const-string/jumbo v2, "PackageParser"

    #@404
    new-instance v3, Ljava/lang/StringBuilder;

    #@406
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@409
    const-string/jumbo v4, "No actions in intent filter at "

    #@40c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40f
    move-result-object v3

    #@410
    .line 3242
    move-object/from16 v0, p0

    #@412
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@414
    .line 3241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@417
    move-result-object v3

    #@418
    .line 3242
    const-string/jumbo v4, " "

    #@41b
    .line 3241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41e
    move-result-object v3

    #@41f
    .line 3243
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@422
    move-result-object v4

    #@423
    .line 3241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@426
    move-result-object v3

    #@427
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42a
    move-result-object v3

    #@42b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42e
    goto :goto_7

    #@42f
    .line 3245
    :cond_23
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@431
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@434
    goto :goto_7

    #@435
    .line 3247
    .end local v8    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_24
    if-nez p7, :cond_28

    #@437
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@43a
    move-result-object v2

    #@43b
    const-string/jumbo v3, "preferred"

    #@43e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@441
    move-result v2

    #@442
    if-eqz v2, :cond_28

    #@444
    .line 3248
    new-instance v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@446
    invoke-direct {v8, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    #@449
    .line 3249
    .restart local v8    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v6, 0x0

    #@44a
    const/4 v7, 0x0

    #@44b
    move-object/from16 v2, p0

    #@44d
    move-object/from16 v3, p2

    #@44f
    move-object/from16 v4, p3

    #@451
    move-object/from16 v5, p4

    #@453
    move-object/from16 v9, p6

    #@455
    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@458
    move-result v2

    #@459
    if-nez v2, :cond_25

    #@45b
    .line 3250
    const/4 v2, 0x0

    #@45c
    return-object v2

    #@45d
    .line 3252
    :cond_25
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    #@460
    move-result v2

    #@461
    if-nez v2, :cond_26

    #@463
    .line 3253
    const-string/jumbo v2, "PackageParser"

    #@466
    new-instance v3, Ljava/lang/StringBuilder;

    #@468
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46b
    const-string/jumbo v4, "No actions in preferred at "

    #@46e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@471
    move-result-object v3

    #@472
    .line 3254
    move-object/from16 v0, p0

    #@474
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@476
    .line 3253
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@479
    move-result-object v3

    #@47a
    .line 3254
    const-string/jumbo v4, " "

    #@47d
    .line 3253
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@480
    move-result-object v3

    #@481
    .line 3255
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@484
    move-result-object v4

    #@485
    .line 3253
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@488
    move-result-object v3

    #@489
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48c
    move-result-object v3

    #@48d
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@490
    goto/16 :goto_7

    #@492
    .line 3257
    :cond_26
    move-object/from16 v0, p1

    #@494
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@496
    if-nez v2, :cond_27

    #@498
    .line 3258
    new-instance v2, Ljava/util/ArrayList;

    #@49a
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@49d
    move-object/from16 v0, p1

    #@49f
    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@4a1
    .line 3260
    :cond_27
    move-object/from16 v0, p1

    #@4a3
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@4a5
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4a8
    goto/16 :goto_7

    #@4aa
    .line 3262
    .end local v8    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_28
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4ad
    move-result-object v2

    #@4ae
    const-string/jumbo v3, "meta-data"

    #@4b1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b4
    move-result v2

    #@4b5
    if-eqz v2, :cond_29

    #@4b7
    .line 3263
    iget-object v6, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@4b9
    move-object/from16 v2, p0

    #@4bb
    move-object/from16 v3, p2

    #@4bd
    move-object/from16 v4, p3

    #@4bf
    move-object/from16 v5, p4

    #@4c1
    move-object/from16 v7, p6

    #@4c3
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@4c6
    move-result-object v2

    #@4c7
    iput-object v2, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@4c9
    if-nez v2, :cond_20

    #@4cb
    .line 3265
    const/4 v2, 0x0

    #@4cc
    return-object v2

    #@4cd
    .line 3269
    :cond_29
    const-string/jumbo v2, "PackageParser"

    #@4d0
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d5
    const-string/jumbo v4, "Problem in package "

    #@4d8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4db
    move-result-object v3

    #@4dc
    move-object/from16 v0, p0

    #@4de
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@4e0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e3
    move-result-object v3

    #@4e4
    const-string/jumbo v4, ":"

    #@4e7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ea
    move-result-object v3

    #@4eb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ee
    move-result-object v3

    #@4ef
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f2
    .line 3270
    if-eqz p7, :cond_2a

    #@4f4
    .line 3271
    const-string/jumbo v2, "PackageParser"

    #@4f7
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4fc
    const-string/jumbo v4, "Unknown element under <receiver>: "

    #@4ff
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@502
    move-result-object v3

    #@503
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@506
    move-result-object v4

    #@507
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50a
    move-result-object v3

    #@50b
    .line 3272
    const-string/jumbo v4, " at "

    #@50e
    .line 3271
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@511
    move-result-object v3

    #@512
    .line 3272
    move-object/from16 v0, p0

    #@514
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@516
    .line 3271
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@519
    move-result-object v3

    #@51a
    .line 3272
    const-string/jumbo v4, " "

    #@51d
    .line 3271
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@520
    move-result-object v3

    #@521
    .line 3273
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@524
    move-result-object v4

    #@525
    .line 3271
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@528
    move-result-object v3

    #@529
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52c
    move-result-object v3

    #@52d
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@530
    .line 3279
    :goto_8
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@533
    goto/16 :goto_7

    #@535
    .line 3275
    :cond_2a
    const-string/jumbo v2, "PackageParser"

    #@538
    new-instance v3, Ljava/lang/StringBuilder;

    #@53a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53d
    const-string/jumbo v4, "Unknown element under <activity>: "

    #@540
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@543
    move-result-object v3

    #@544
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@547
    move-result-object v4

    #@548
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54b
    move-result-object v3

    #@54c
    .line 3276
    const-string/jumbo v4, " at "

    #@54f
    .line 3275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@552
    move-result-object v3

    #@553
    .line 3276
    move-object/from16 v0, p0

    #@555
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@557
    .line 3275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55a
    move-result-object v3

    #@55b
    .line 3276
    const-string/jumbo v4, " "

    #@55e
    .line 3275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@561
    move-result-object v3

    #@562
    .line 3277
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@565
    move-result-object v4

    #@566
    .line 3275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@569
    move-result-object v3

    #@56a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56d
    move-result-object v3

    #@56e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@571
    goto :goto_8

    #@572
    .line 3292
    :cond_2b
    if-nez v19, :cond_2c

    #@574
    .line 3293
    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@576
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@578
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@57b
    move-result v2

    #@57c
    if-lez v2, :cond_2d

    #@57e
    const/4 v2, 0x1

    #@57f
    :goto_9
    iput-boolean v2, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    #@581
    .line 3296
    :cond_2c
    return-object v14

    #@582
    .line 3293
    :cond_2d
    const/4 v2, 0x0

    #@583
    goto :goto_9
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .locals 28
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3303
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    #@2
    .line 3302
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p4

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v21

    #@a
    .line 3306
    .local v21, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x7

    #@b
    .line 3307
    const/16 v3, 0x400

    #@d
    .line 3305
    move-object/from16 v0, v21

    #@f
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@12
    move-result-object v26

    #@13
    .line 3308
    .local v26, "targetActivity":Ljava/lang/String;
    if-nez v26, :cond_0

    #@15
    .line 3309
    const-string/jumbo v2, "<activity-alias> does not specify android:targetActivity"

    #@18
    const/4 v3, 0x0

    #@19
    aput-object v2, p6, v3

    #@1b
    .line 3310
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 3311
    const/4 v2, 0x0

    #@1f
    return-object v2

    #@20
    .line 3314
    :cond_0
    move-object/from16 v0, p1

    #@22
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@24
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@26
    move-object/from16 v0, v26

    #@28
    move-object/from16 v1, p6

    #@2a
    invoke-static {v2, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v26

    #@2e
    .line 3316
    if-nez v26, :cond_1

    #@30
    .line 3317
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    #@33
    .line 3318
    const/4 v2, 0x0

    #@34
    return-object v2

    #@35
    .line 3321
    :cond_1
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@39
    if-nez v2, :cond_2

    #@3b
    .line 3322
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@3d
    .line 3328
    move-object/from16 v0, p0

    #@3f
    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@41
    .line 3323
    const/4 v5, 0x2

    #@42
    .line 3324
    const/4 v6, 0x0

    #@43
    .line 3325
    const/4 v7, 0x1

    #@44
    .line 3326
    const/16 v8, 0x8

    #@46
    .line 3327
    const/16 v9, 0xa

    #@48
    .line 3329
    const/4 v11, 0x0

    #@49
    .line 3330
    const/4 v12, 0x6

    #@4a
    .line 3331
    const/4 v13, 0x4

    #@4b
    move-object/from16 v3, p1

    #@4d
    move-object/from16 v4, p6

    #@4f
    .line 3322
    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    #@52
    move-object/from16 v0, p0

    #@54
    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@56
    .line 3332
    move-object/from16 v0, p0

    #@58
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@5a
    const-string/jumbo v3, "<activity-alias>"

    #@5d
    iput-object v3, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@5f
    .line 3335
    :cond_2
    move-object/from16 v0, p0

    #@61
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@63
    move-object/from16 v0, v21

    #@65
    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@67
    .line 3336
    move-object/from16 v0, p0

    #@69
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@6b
    move/from16 v0, p5

    #@6d
    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@6f
    .line 3338
    const/16 v25, 0x0

    #@71
    .line 3340
    .local v25, "target":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    #@73
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@75
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@78
    move-result v14

    #@79
    .line 3341
    .local v14, "NA":I
    const/16 v16, 0x0

    #@7b
    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    #@7d
    if-ge v0, v14, :cond_3

    #@7f
    .line 3342
    move-object/from16 v0, p1

    #@81
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@83
    move/from16 v0, v16

    #@85
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@88
    move-result-object v24

    #@89
    check-cast v24, Landroid/content/pm/PackageParser$Activity;

    #@8b
    .line 3343
    .local v24, "t":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v24

    #@8d
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@8f
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@91
    move-object/from16 v0, v26

    #@93
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v2

    #@97
    if-eqz v2, :cond_4

    #@99
    .line 3344
    move-object/from16 v25, v24

    #@9b
    .line 3349
    .end local v24    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v25    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    if-nez v25, :cond_5

    #@9d
    .line 3350
    new-instance v2, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v3, "<activity-alias> target activity "

    #@a5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    move-object/from16 v0, v26

    #@ab
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    .line 3351
    const-string/jumbo v3, " not found in manifest"

    #@b2
    .line 3350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v2

    #@ba
    const/4 v3, 0x0

    #@bb
    aput-object v2, p6, v3

    #@bd
    .line 3352
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    #@c0
    .line 3353
    const/4 v2, 0x0

    #@c1
    return-object v2

    #@c2
    .line 3341
    .restart local v24    # "t":Landroid/content/pm/PackageParser$Activity;
    .restart local v25    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    add-int/lit8 v16, v16, 0x1

    #@c4
    goto :goto_0

    #@c5
    .line 3356
    .end local v24    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v25    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_5
    new-instance v17, Landroid/content/pm/ActivityInfo;

    #@c7
    invoke-direct/range {v17 .. v17}, Landroid/content/pm/ActivityInfo;-><init>()V

    #@ca
    .line 3357
    .local v17, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v26

    #@cc
    move-object/from16 v1, v17

    #@ce
    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@d0
    .line 3358
    move-object/from16 v0, v25

    #@d2
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@d4
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@d6
    move-object/from16 v0, v17

    #@d8
    iput v2, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@da
    .line 3359
    move-object/from16 v0, v25

    #@dc
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@de
    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@e0
    move-object/from16 v0, v17

    #@e2
    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@e4
    .line 3360
    move-object/from16 v0, v25

    #@e6
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@e8
    iget v2, v2, Landroid/content/pm/ActivityInfo;->icon:I

    #@ea
    move-object/from16 v0, v17

    #@ec
    iput v2, v0, Landroid/content/pm/ActivityInfo;->icon:I

    #@ee
    .line 3361
    move-object/from16 v0, v25

    #@f0
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@f2
    iget v2, v2, Landroid/content/pm/ActivityInfo;->logo:I

    #@f4
    move-object/from16 v0, v17

    #@f6
    iput v2, v0, Landroid/content/pm/ActivityInfo;->logo:I

    #@f8
    .line 3362
    move-object/from16 v0, v25

    #@fa
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@fc
    iget v2, v2, Landroid/content/pm/ActivityInfo;->banner:I

    #@fe
    move-object/from16 v0, v17

    #@100
    iput v2, v0, Landroid/content/pm/ActivityInfo;->banner:I

    #@102
    .line 3363
    move-object/from16 v0, v25

    #@104
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@106
    iget v2, v2, Landroid/content/pm/ActivityInfo;->labelRes:I

    #@108
    move-object/from16 v0, v17

    #@10a
    iput v2, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    #@10c
    .line 3364
    move-object/from16 v0, v25

    #@10e
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@110
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@112
    move-object/from16 v0, v17

    #@114
    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@116
    .line 3365
    move-object/from16 v0, v25

    #@118
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@11a
    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@11c
    move-object/from16 v0, v17

    #@11e
    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@120
    .line 3366
    move-object/from16 v0, v25

    #@122
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@124
    iget v2, v2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@126
    move-object/from16 v0, v17

    #@128
    iput v2, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@12a
    .line 3367
    move-object/from16 v0, v25

    #@12c
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@12e
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@130
    move-object/from16 v0, v17

    #@132
    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@134
    .line 3368
    move-object/from16 v0, v17

    #@136
    iget v2, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@138
    if-nez v2, :cond_6

    #@13a
    .line 3369
    move-object/from16 v0, v25

    #@13c
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@13e
    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@140
    move-object/from16 v0, v17

    #@142
    iput v2, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@144
    .line 3371
    :cond_6
    move-object/from16 v0, v25

    #@146
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@148
    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@14a
    move-object/from16 v0, v17

    #@14c
    iput v2, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@14e
    .line 3372
    move-object/from16 v0, v25

    #@150
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@152
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@154
    move-object/from16 v0, v17

    #@156
    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@158
    .line 3373
    move-object/from16 v0, v25

    #@15a
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@15c
    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    #@15e
    move-object/from16 v0, v17

    #@160
    iput v2, v0, Landroid/content/pm/ActivityInfo;->theme:I

    #@162
    .line 3374
    move-object/from16 v0, v25

    #@164
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@166
    iget v2, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@168
    move-object/from16 v0, v17

    #@16a
    iput v2, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@16c
    .line 3375
    move-object/from16 v0, v25

    #@16e
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@170
    iget v2, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@172
    move-object/from16 v0, v17

    #@174
    iput v2, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@176
    .line 3376
    move-object/from16 v0, v25

    #@178
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@17a
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@17c
    move-object/from16 v0, v17

    #@17e
    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@180
    .line 3377
    move-object/from16 v0, v25

    #@182
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@184
    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@186
    move-object/from16 v0, v17

    #@188
    iput v2, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@18a
    .line 3379
    new-instance v15, Landroid/content/pm/PackageParser$Activity;

    #@18c
    move-object/from16 v0, p0

    #@18e
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@190
    move-object/from16 v0, v17

    #@192
    invoke-direct {v15, v2, v0}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    #@195
    .line 3380
    .local v15, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v2, 0x0

    #@196
    aget-object v2, p6, v2

    #@198
    if-eqz v2, :cond_7

    #@19a
    .line 3381
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    #@19d
    .line 3382
    const/4 v2, 0x0

    #@19e
    return-object v2

    #@19f
    .line 3386
    :cond_7
    const/4 v2, 0x5

    #@1a0
    .line 3385
    move-object/from16 v0, v21

    #@1a2
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1a5
    move-result v22

    #@1a6
    .line 3387
    .local v22, "setExported":Z
    if-eqz v22, :cond_8

    #@1a8
    .line 3388
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1aa
    .line 3389
    const/4 v3, 0x5

    #@1ab
    const/4 v4, 0x0

    #@1ac
    .line 3388
    move-object/from16 v0, v21

    #@1ae
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b1
    move-result v3

    #@1b2
    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    #@1b4
    .line 3394
    :cond_8
    const/4 v2, 0x3

    #@1b5
    const/4 v3, 0x0

    #@1b6
    .line 3393
    move-object/from16 v0, v21

    #@1b8
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1bb
    move-result-object v23

    #@1bc
    .line 3395
    .local v23, "str":Ljava/lang/String;
    if-eqz v23, :cond_9

    #@1be
    .line 3396
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1c0
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@1c3
    move-result v2

    #@1c4
    if-lez v2, :cond_b

    #@1c6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@1c9
    move-result-object v2

    #@1ca
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1cd
    move-result-object v2

    #@1ce
    :goto_1
    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@1d0
    .line 3400
    :cond_9
    const/16 v2, 0x9

    #@1d2
    .line 3401
    const/16 v3, 0x400

    #@1d4
    .line 3399
    move-object/from16 v0, v21

    #@1d6
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1d9
    move-result-object v20

    #@1da
    .line 3402
    .local v20, "parentName":Ljava/lang/String;
    if-eqz v20, :cond_a

    #@1dc
    .line 3403
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1de
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1e0
    move-object/from16 v0, v20

    #@1e2
    move-object/from16 v1, p6

    #@1e4
    invoke-static {v2, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@1e7
    move-result-object v19

    #@1e8
    .line 3404
    .local v19, "parentClassName":Ljava/lang/String;
    const/4 v2, 0x0

    #@1e9
    aget-object v2, p6, v2

    #@1eb
    if-nez v2, :cond_c

    #@1ed
    .line 3405
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@1ef
    move-object/from16 v0, v19

    #@1f1
    iput-object v0, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@1f3
    .line 3413
    .end local v19    # "parentClassName":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    #@1f6
    .line 3415
    const/4 v2, 0x0

    #@1f7
    aget-object v2, p6, v2

    #@1f9
    if-eqz v2, :cond_d

    #@1fb
    .line 3416
    const/4 v2, 0x0

    #@1fc
    return-object v2

    #@1fd
    .line 3396
    .end local v20    # "parentName":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    #@1fe
    goto :goto_1

    #@1ff
    .line 3407
    .restart local v19    # "parentClassName":Ljava/lang/String;
    .restart local v20    # "parentName":Ljava/lang/String;
    :cond_c
    const-string/jumbo v2, "PackageParser"

    #@202
    new-instance v3, Ljava/lang/StringBuilder;

    #@204
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@207
    const-string/jumbo v4, "Activity alias "

    #@20a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v3

    #@20e
    iget-object v4, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@210
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@215
    move-result-object v3

    #@216
    .line 3408
    const-string/jumbo v4, " specified invalid parentActivityName "

    #@219
    .line 3407
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v3

    #@21d
    move-object/from16 v0, v20

    #@21f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v3

    #@223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@226
    move-result-object v3

    #@227
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22a
    .line 3409
    const/4 v2, 0x0

    #@22b
    const/4 v3, 0x0

    #@22c
    aput-object v2, p6, v3

    #@22e
    goto :goto_2

    #@22f
    .line 3419
    .end local v19    # "parentClassName":Ljava/lang/String;
    :cond_d
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@232
    move-result v18

    #@233
    .line 3421
    .local v18, "outerDepth":I
    :cond_e
    :goto_3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@236
    move-result v27

    #@237
    .local v27, "type":I
    const/4 v2, 0x1

    #@238
    move/from16 v0, v27

    #@23a
    if-eq v0, v2, :cond_14

    #@23c
    .line 3422
    const/4 v2, 0x3

    #@23d
    move/from16 v0, v27

    #@23f
    if-ne v0, v2, :cond_f

    #@241
    .line 3423
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@244
    move-result v2

    #@245
    move/from16 v0, v18

    #@247
    if-le v2, v0, :cond_14

    #@249
    .line 3424
    :cond_f
    const/4 v2, 0x3

    #@24a
    move/from16 v0, v27

    #@24c
    if-eq v0, v2, :cond_e

    #@24e
    const/4 v2, 0x4

    #@24f
    move/from16 v0, v27

    #@251
    if-eq v0, v2, :cond_e

    #@253
    .line 3428
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@256
    move-result-object v2

    #@257
    const-string/jumbo v3, "intent-filter"

    #@25a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25d
    move-result v2

    #@25e
    if-eqz v2, :cond_12

    #@260
    .line 3429
    new-instance v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@262
    invoke-direct {v8, v15}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    #@265
    .line 3430
    .local v8, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v6, 0x1

    #@266
    const/4 v7, 0x1

    #@267
    move-object/from16 v2, p0

    #@269
    move-object/from16 v3, p2

    #@26b
    move-object/from16 v4, p3

    #@26d
    move-object/from16 v5, p4

    #@26f
    move-object/from16 v9, p6

    #@271
    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@274
    move-result v2

    #@275
    if-nez v2, :cond_10

    #@277
    .line 3431
    const/4 v2, 0x0

    #@278
    return-object v2

    #@279
    .line 3433
    :cond_10
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    #@27c
    move-result v2

    #@27d
    if-nez v2, :cond_11

    #@27f
    .line 3434
    const-string/jumbo v2, "PackageParser"

    #@282
    new-instance v3, Ljava/lang/StringBuilder;

    #@284
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@287
    const-string/jumbo v4, "No actions in intent filter at "

    #@28a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v3

    #@28e
    .line 3435
    move-object/from16 v0, p0

    #@290
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@292
    .line 3434
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@295
    move-result-object v3

    #@296
    .line 3435
    const-string/jumbo v4, " "

    #@299
    .line 3434
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29c
    move-result-object v3

    #@29d
    .line 3436
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2a0
    move-result-object v4

    #@2a1
    .line 3434
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v3

    #@2a5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a8
    move-result-object v3

    #@2a9
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2ac
    goto :goto_3

    #@2ad
    .line 3438
    :cond_11
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@2af
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b2
    goto :goto_3

    #@2b3
    .line 3440
    .end local v8    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_12
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2b6
    move-result-object v2

    #@2b7
    const-string/jumbo v3, "meta-data"

    #@2ba
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2bd
    move-result v2

    #@2be
    if-eqz v2, :cond_13

    #@2c0
    .line 3441
    iget-object v6, v15, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@2c2
    move-object/from16 v2, p0

    #@2c4
    move-object/from16 v3, p2

    #@2c6
    move-object/from16 v4, p3

    #@2c8
    move-object/from16 v5, p4

    #@2ca
    move-object/from16 v7, p6

    #@2cc
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@2cf
    move-result-object v2

    #@2d0
    iput-object v2, v15, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    #@2d2
    if-nez v2, :cond_e

    #@2d4
    .line 3443
    const/4 v2, 0x0

    #@2d5
    return-object v2

    #@2d6
    .line 3447
    :cond_13
    const-string/jumbo v2, "PackageParser"

    #@2d9
    new-instance v3, Ljava/lang/StringBuilder;

    #@2db
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2de
    const-string/jumbo v4, "Unknown element under <activity-alias>: "

    #@2e1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v3

    #@2e5
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2e8
    move-result-object v4

    #@2e9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ec
    move-result-object v3

    #@2ed
    .line 3448
    const-string/jumbo v4, " at "

    #@2f0
    .line 3447
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f3
    move-result-object v3

    #@2f4
    .line 3448
    move-object/from16 v0, p0

    #@2f6
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@2f8
    .line 3447
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fb
    move-result-object v3

    #@2fc
    .line 3448
    const-string/jumbo v4, " "

    #@2ff
    .line 3447
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@302
    move-result-object v3

    #@303
    .line 3449
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@306
    move-result-object v4

    #@307
    .line 3447
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v3

    #@30b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30e
    move-result-object v3

    #@30f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@312
    .line 3450
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@315
    goto/16 :goto_3

    #@317
    .line 3459
    :cond_14
    if-nez v22, :cond_15

    #@319
    .line 3460
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@31b
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@31d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@320
    move-result v2

    #@321
    if-lez v2, :cond_16

    #@323
    const/4 v2, 0x1

    #@324
    :goto_4
    iput-boolean v2, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    #@326
    .line 3463
    :cond_15
    return-object v15

    #@327
    .line 3460
    :cond_16
    const/4 v2, 0x0

    #@328
    goto :goto_4
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$Component;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3904
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v6

    #@4
    .line 3906
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v7

    #@8
    .local v7, "type":I
    const/4 v0, 0x1

    #@9
    if-eq v7, v0, :cond_3

    #@b
    .line 3907
    const/4 v0, 0x3

    #@c
    if-ne v7, v0, :cond_1

    #@e
    .line 3908
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v0

    #@12
    if-le v0, v6, :cond_3

    #@14
    .line 3909
    :cond_1
    const/4 v0, 0x3

    #@15
    if-eq v7, v0, :cond_0

    #@17
    const/4 v0, 0x4

    #@18
    if-eq v7, v0, :cond_0

    #@1a
    .line 3913
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "meta-data"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 3915
    iget-object v4, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    #@29
    move-object v0, p0

    #@2a
    move-object v1, p1

    #@2b
    move-object v2, p2

    #@2c
    move-object v3, p3

    #@2d
    move-object v5, p6

    #@2e
    .line 3914
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    #@34
    if-nez v0, :cond_0

    #@36
    .line 3916
    const/4 v0, 0x0

    #@37
    return v0

    #@38
    .line 3920
    :cond_2
    const-string/jumbo v0, "PackageParser"

    #@3b
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v2, "Unknown element under "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    const-string/jumbo v2, ": "

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 3921
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .line 3920
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    .line 3921
    const-string/jumbo v2, " at "

    #@5d
    .line 3920
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    .line 3921
    iget-object v2, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@63
    .line 3920
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    .line 3921
    const-string/jumbo v2, " "

    #@6a
    .line 3920
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    .line 3922
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    .line 3920
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 3923
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@80
    goto :goto_0

    #@81
    .line 3931
    :cond_3
    const/4 v0, 0x1

    #@82
    return v0
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 27
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1156
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v20

    #@4
    .line 1158
    .local v20, "apkPath":Ljava/lang/String;
    const/16 v21, 0x0

    #@6
    .line 1159
    .local v21, "assets":Landroid/content/res/AssetManager;
    const/16 v25, 0x0

    #@8
    .line 1161
    .local v25, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v2, Landroid/content/res/AssetManager;

    #@a
    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    .line 1163
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .local v2, "assets":Landroid/content/res/AssetManager;
    :try_start_1
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@f
    .line 1162
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
    .line 1165
    move-object/from16 v0, v20

    #@27
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@2a
    move-result v22

    #@2b
    .line 1166
    .local v22, "cookie":I
    if-nez v22, :cond_0

    #@2d
    .line 1167
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@2f
    .line 1168
    new-instance v7, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v9, "Failed to parse "

    #@37
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    move-object/from16 v0, v20

    #@3d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    .line 1167
    const/16 v9, -0x64

    #@47
    invoke-direct {v3, v9, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@4a
    throw v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@4b
    .line 1190
    .end local v22    # "cookie":I
    :catch_0
    move-exception v23

    #@4c
    .local v23, "e":Ljava/lang/Exception;
    move-object/from16 v5, v25

    #@4e
    .line 1191
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    :try_start_2
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@50
    .line 1192
    new-instance v7, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v9, "Failed to parse "

    #@58
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    move-object/from16 v0, v20

    #@5e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    .line 1191
    const/16 v9, -0x66

    #@68
    move-object/from16 v0, v23

    #@6a
    invoke-direct {v3, v9, v7, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@6d
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6e
    .line 1193
    .end local v23    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@6f
    .line 1194
    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@72
    .line 1195
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@75
    .line 1193
    throw v3

    #@76
    .line 1171
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "cookie":I
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :try_start_3
    new-instance v24, Landroid/util/DisplayMetrics;

    #@78
    invoke-direct/range {v24 .. v24}, Landroid/util/DisplayMetrics;-><init>()V

    #@7b
    .line 1172
    .local v24, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v24 .. v24}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@7e
    .line 1174
    new-instance v4, Landroid/content/res/Resources;

    #@80
    const/4 v3, 0x0

    #@81
    move-object/from16 v0, v24

    #@83
    invoke-direct {v4, v2, v0, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    #@86
    .line 1175
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v3, "AndroidManifest.xml"

    #@89
    move/from16 v0, v22

    #@8b
    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@8e
    move-result-object v5

    #@8f
    .line 1178
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move/from16 v0, p1

    #@91
    and-int/lit16 v3, v0, 0x100

    #@93
    if-eqz v3, :cond_1

    #@95
    .line 1180
    :try_start_4
    new-instance v26, Landroid/content/pm/PackageParser$Package;

    #@97
    const/4 v3, 0x0

    #@98
    move-object/from16 v0, v26

    #@9a
    invoke-direct {v0, v3}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    #@9d
    .line 1181
    .local v26, "tempPkg":Landroid/content/pm/PackageParser$Package;
    const/4 v3, 0x0

    #@9e
    move-object/from16 v0, v26

    #@a0
    move-object/from16 v1, p0

    #@a2
    invoke-static {v0, v1, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    #@a5
    .line 1182
    move-object/from16 v0, v26

    #@a7
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@a9
    .line 1187
    .end local v26    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :goto_2
    move-object v6, v5

    #@aa
    .local v6, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v3, v20

    #@ac
    move/from16 v7, p1

    #@ae
    .line 1188
    invoke-static/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b1
    move-result-object v3

    #@b2
    .line 1194
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b5
    .line 1195
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b8
    .line 1188
    return-object v3

    #@b9
    .line 1184
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    :cond_1
    const/4 v8, 0x0

    #@ba
    .local v8, "signatures":[Landroid/content/pm/Signature;
    goto :goto_2

    #@bb
    .line 1193
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    .end local v22    # "cookie":I
    .end local v24    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v3

    #@bc
    move-object/from16 v5, v25

    #@be
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    #@c0
    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto :goto_1

    #@c1
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    :catchall_2
    move-exception v3

    #@c2
    move-object/from16 v5, v25

    #@c4
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1

    #@c5
    .line 1190
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    :catch_1
    move-exception v23

    #@c6
    .restart local v23    # "e":Ljava/lang/Exception;
    move-object/from16 v5, v25

    #@c8
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    #@ca
    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto :goto_0

    #@cb
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v22    # "cookie":I
    .restart local v24    # "metrics":Landroid/util/DisplayMetrics;
    :catch_2
    move-exception v23

    #@cc
    .restart local v23    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 19
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "flags"    # I
    .param p5, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1276
    invoke-static/range {p2 .. p4}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;

    #@3
    move-result-object v15

    #@4
    .line 1278
    .local v15, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, -0x1

    #@5
    .line 1279
    .local v7, "installLocation":I
    const/4 v5, 0x0

    #@6
    .line 1280
    .local v5, "versionCode":I
    const/4 v6, 0x0

    #@7
    .line 1281
    .local v6, "revisionCode":I
    const/4 v10, 0x0

    #@8
    .line 1282
    .local v10, "coreApp":Z
    const/4 v11, 0x0

    #@9
    .line 1283
    .local v11, "multiArch":Z
    const/4 v12, 0x1

    #@a
    .line 1285
    .local v12, "extractNativeLibs":Z
    const/4 v14, 0x0

    #@b
    .end local v10    # "coreApp":Z
    .local v14, "i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    #@e
    move-result v1

    #@f
    if-ge v14, v1, :cond_4

    #@11
    .line 1286
    move-object/from16 v0, p3

    #@13
    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    #@16
    move-result-object v13

    #@17
    .line 1287
    .local v13, "attr":Ljava/lang/String;
    const-string/jumbo v1, "installLocation"

    #@1a
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 1289
    const/4 v1, -0x1

    #@21
    .line 1288
    move-object/from16 v0, p3

    #@23
    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    #@26
    move-result v7

    #@27
    .line 1285
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1290
    :cond_1
    const-string/jumbo v1, "versionCode"

    #@2d
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 1291
    const/4 v1, 0x0

    #@34
    move-object/from16 v0, p3

    #@36
    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    #@39
    move-result v5

    #@3a
    goto :goto_1

    #@3b
    .line 1292
    :cond_2
    const-string/jumbo v1, "revisionCode"

    #@3e
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_3

    #@44
    .line 1293
    const/4 v1, 0x0

    #@45
    move-object/from16 v0, p3

    #@47
    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    #@4a
    move-result v6

    #@4b
    goto :goto_1

    #@4c
    .line 1294
    :cond_3
    const-string/jumbo v1, "coreApp"

    #@4f
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_0

    #@55
    .line 1295
    const/4 v1, 0x0

    #@56
    move-object/from16 v0, p3

    #@58
    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@5b
    move-result v10

    #@5c
    .local v10, "coreApp":Z
    goto :goto_1

    #@5d
    .line 1301
    .end local v10    # "coreApp":Z
    .end local v13    # "attr":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@60
    move-result v1

    #@61
    add-int/lit8 v16, v1, 0x1

    #@63
    .line 1303
    .local v16, "searchDepth":I
    new-instance v8, Ljava/util/ArrayList;

    #@65
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@68
    .line 1304
    .end local v11    # "multiArch":Z
    .end local v12    # "extractNativeLibs":Z
    .local v8, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6b
    move-result v17

    #@6c
    .local v17, "type":I
    const/4 v1, 0x1

    #@6d
    move/from16 v0, v17

    #@6f
    if-eq v0, v1, :cond_a

    #@71
    .line 1305
    const/4 v1, 0x3

    #@72
    move/from16 v0, v17

    #@74
    if-ne v0, v1, :cond_6

    #@76
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@79
    move-result v1

    #@7a
    move/from16 v0, v16

    #@7c
    if-lt v1, v0, :cond_a

    #@7e
    .line 1306
    :cond_6
    const/4 v1, 0x3

    #@7f
    move/from16 v0, v17

    #@81
    if-eq v0, v1, :cond_5

    #@83
    const/4 v1, 0x4

    #@84
    move/from16 v0, v17

    #@86
    if-eq v0, v1, :cond_5

    #@88
    .line 1310
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@8b
    move-result v1

    #@8c
    move/from16 v0, v16

    #@8e
    if-ne v1, v0, :cond_7

    #@90
    const-string/jumbo v1, "package-verifier"

    #@93
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v1

    #@9b
    if-eqz v1, :cond_7

    #@9d
    .line 1311
    invoke-static/range {p1 .. p4}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;

    #@a0
    move-result-object v18

    #@a1
    .line 1312
    .local v18, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v18, :cond_7

    #@a3
    .line 1313
    move-object/from16 v0, v18

    #@a5
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a8
    .line 1317
    .end local v18    # "verifier":Landroid/content/pm/VerifierInfo;
    :cond_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@ab
    move-result v1

    #@ac
    move/from16 v0, v16

    #@ae
    if-ne v1, v0, :cond_5

    #@b0
    const-string/jumbo v1, "application"

    #@b3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b6
    move-result-object v2

    #@b7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v1

    #@bb
    if-eqz v1, :cond_5

    #@bd
    .line 1318
    const/4 v14, 0x0

    #@be
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    #@c1
    move-result v1

    #@c2
    if-ge v14, v1, :cond_5

    #@c4
    .line 1319
    move-object/from16 v0, p3

    #@c6
    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    #@c9
    move-result-object v13

    #@ca
    .line 1320
    .restart local v13    # "attr":Ljava/lang/String;
    const-string/jumbo v1, "multiArch"

    #@cd
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d0
    move-result v1

    #@d1
    if-eqz v1, :cond_8

    #@d3
    .line 1321
    const/4 v1, 0x0

    #@d4
    move-object/from16 v0, p3

    #@d6
    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@d9
    move-result v11

    #@da
    .line 1323
    :cond_8
    const-string/jumbo v1, "extractNativeLibs"

    #@dd
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e0
    move-result v1

    #@e1
    if-eqz v1, :cond_9

    #@e3
    .line 1324
    const/4 v1, 0x1

    #@e4
    move-object/from16 v0, p3

    #@e6
    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@e9
    move-result v12

    #@ea
    .line 1318
    :cond_9
    add-int/lit8 v14, v14, 0x1

    #@ec
    goto :goto_2

    #@ed
    .line 1330
    .end local v13    # "attr":Ljava/lang/String;
    :cond_a
    new-instance v1, Landroid/content/pm/PackageParser$ApkLite;

    #@ef
    iget-object v3, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@f1
    check-cast v3, Ljava/lang/String;

    #@f3
    iget-object v4, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@f5
    check-cast v4, Ljava/lang/String;

    #@f7
    move-object/from16 v2, p0

    #@f9
    move-object/from16 v9, p5

    #@fb
    invoke-direct/range {v1 .. v12}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;ZZZ)V

    #@fe
    return-object v1
.end method

.method private parseBaseApk(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 58
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
    .line 1355
    move/from16 v0, p3

    #@2
    and-int/lit16 v3, v0, 0x200

    #@4
    if-eqz v3, :cond_0

    #@6
    const/16 v55, 0x1

    #@8
    .line 1357
    .local v55, "trustedOverlay":Z
    :goto_0
    move-object/from16 v7, p2

    #@a
    .line 1359
    .local v7, "attrs":Landroid/util/AttributeSet;
    const/4 v3, 0x0

    #@b
    move-object/from16 v0, p0

    #@d
    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@f
    .line 1360
    const/4 v3, 0x0

    #@10
    move-object/from16 v0, p0

    #@12
    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@14
    .line 1361
    const/4 v3, 0x0

    #@15
    move-object/from16 v0, p0

    #@17
    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@19
    .line 1362
    const/4 v3, 0x0

    #@1a
    move-object/from16 v0, p0

    #@1c
    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@1e
    .line 1367
    :try_start_0
    move-object/from16 v0, p2

    #@20
    move/from16 v1, p3

    #@22
    invoke-static {v0, v7, v1}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;

    #@25
    move-result-object v40

    #@26
    .line 1368
    .local v40, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v40

    #@28
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2a
    move-object/from16 v42, v0

    #@2c
    check-cast v42, Ljava/lang/String;

    #@2e
    .line 1369
    .local v42, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v40

    #@30
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@32
    move-object/from16 v46, v0

    #@34
    check-cast v46, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 1377
    .local v46, "splitName":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v3

    #@3a
    if-nez v3, :cond_1

    #@3c
    .line 1378
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Expected base APK, but found split "

    #@44
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    move-object/from16 v0, v46

    #@4a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    const/4 v5, 0x0

    #@53
    aput-object v3, p4, v5

    #@55
    .line 1379
    const/16 v3, -0x6a

    #@57
    move-object/from16 v0, p0

    #@59
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@5b
    .line 1380
    const/4 v3, 0x0

    #@5c
    return-object v3

    #@5d
    .line 1355
    .end local v7    # "attrs":Landroid/util/AttributeSet;
    .end local v40    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v42    # "pkgName":Ljava/lang/String;
    .end local v46    # "splitName":Ljava/lang/String;
    .end local v55    # "trustedOverlay":Z
    :cond_0
    const/16 v55, 0x0

    #@5f
    .restart local v55    # "trustedOverlay":Z
    goto :goto_0

    #@60
    .line 1370
    .restart local v7    # "attrs":Landroid/util/AttributeSet;
    :catch_0
    move-exception v21

    #@61
    .line 1371
    .local v21, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/16 v3, -0x6a

    #@63
    move-object/from16 v0, p0

    #@65
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@67
    .line 1372
    const/4 v3, 0x0

    #@68
    return-object v3

    #@69
    .line 1383
    .end local v21    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v40    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v42    # "pkgName":Ljava/lang/String;
    .restart local v46    # "splitName":Ljava/lang/String;
    :cond_1
    new-instance v4, Landroid/content/pm/PackageParser$Package;

    #@6b
    move-object/from16 v0, v42

    #@6d
    invoke-direct {v4, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    #@70
    .line 1384
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    const/16 v25, 0x0

    #@72
    .line 1387
    .local v25, "foundApp":Z
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    #@74
    .line 1386
    move-object/from16 v0, p1

    #@76
    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@79
    move-result-object v44

    #@7a
    .line 1389
    .local v44, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    #@7b
    const/4 v5, 0x0

    #@7c
    .line 1388
    move-object/from16 v0, v44

    #@7e
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@81
    move-result v3

    #@82
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@84
    iput v3, v5, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@86
    iput v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@88
    .line 1391
    const/4 v3, 0x5

    #@89
    const/4 v5, 0x0

    #@8a
    .line 1390
    move-object/from16 v0, v44

    #@8c
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@8f
    move-result v3

    #@90
    iput v3, v4, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@92
    .line 1393
    const/4 v3, 0x2

    #@93
    const/4 v5, 0x0

    #@94
    .line 1392
    move-object/from16 v0, v44

    #@96
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@9c
    .line 1394
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@9e
    if-eqz v3, :cond_2

    #@a0
    .line 1395
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@a2
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@a8
    .line 1398
    :cond_2
    const/4 v3, 0x0

    #@a9
    const/4 v5, 0x0

    #@aa
    .line 1397
    move-object/from16 v0, v44

    #@ac
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@af
    move-result-object v47

    #@b0
    .line 1399
    .local v47, "str":Ljava/lang/String;
    if-eqz v47, :cond_4

    #@b2
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    #@b5
    move-result v3

    #@b6
    if-lez v3, :cond_4

    #@b8
    .line 1400
    const/4 v3, 0x1

    #@b9
    const/4 v5, 0x0

    #@ba
    move-object/from16 v0, v47

    #@bc
    invoke-static {v0, v3, v5}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@bf
    move-result-object v36

    #@c0
    .line 1401
    .local v36, "nameError":Ljava/lang/String;
    if-eqz v36, :cond_3

    #@c2
    const-string/jumbo v3, "android"

    #@c5
    move-object/from16 v0, v42

    #@c7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result v3

    #@cb
    if-eqz v3, :cond_9

    #@cd
    .line 1407
    :cond_3
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    #@d3
    .line 1409
    const/4 v3, 0x3

    #@d4
    const/4 v5, 0x0

    #@d5
    .line 1408
    move-object/from16 v0, v44

    #@d7
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@da
    move-result v3

    #@db
    iput v3, v4, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    #@dd
    .line 1413
    .end local v36    # "nameError":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x4

    #@de
    .line 1414
    const/4 v5, -0x1

    #@df
    .line 1412
    move-object/from16 v0, v44

    #@e1
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@e4
    move-result v3

    #@e5
    iput v3, v4, Landroid/content/pm/PackageParser$Package;->installLocation:I

    #@e7
    .line 1415
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e9
    iget v5, v4, Landroid/content/pm/PackageParser$Package;->installLocation:I

    #@eb
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@ed
    .line 1417
    const-string/jumbo v3, "coreApp"

    #@f0
    const/4 v5, 0x0

    #@f1
    const/4 v6, 0x0

    #@f2
    invoke-interface {v7, v5, v3, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@f5
    move-result v3

    #@f6
    iput-boolean v3, v4, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    #@f8
    .line 1419
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    #@fb
    .line 1422
    and-int/lit8 v3, p3, 0x10

    #@fd
    if-eqz v3, :cond_5

    #@ff
    .line 1423
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@101
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@103
    or-int/lit8 v5, v5, 0x4

    #@105
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@107
    .line 1427
    :cond_5
    and-int/lit8 v3, p3, 0x20

    #@109
    if-eqz v3, :cond_6

    #@10b
    .line 1428
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@10d
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@10f
    const/high16 v6, 0x40000

    #@111
    or-int/2addr v5, v6

    #@112
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@114
    .line 1432
    :cond_6
    const/16 v50, 0x1

    #@116
    .line 1433
    .local v50, "supportsSmallScreens":I
    const/16 v49, 0x1

    #@118
    .line 1434
    .local v49, "supportsNormalScreens":I
    const/16 v48, 0x1

    #@11a
    .line 1435
    .local v48, "supportsLargeScreens":I
    const/16 v51, 0x1

    #@11c
    .line 1436
    .local v51, "supportsXLargeScreens":I
    const/16 v43, 0x1

    #@11e
    .line 1437
    .local v43, "resizeable":I
    const/16 v18, 0x1

    #@120
    .line 1439
    .local v18, "anyDensity":I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@123
    move-result v39

    #@124
    .line 1440
    .local v39, "outerDepth":I
    :cond_7
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    #@127
    move-result v56

    #@128
    .local v56, "type":I
    const/4 v3, 0x1

    #@129
    move/from16 v0, v56

    #@12b
    if-eq v0, v3, :cond_41

    #@12d
    .line 1441
    const/4 v3, 0x3

    #@12e
    move/from16 v0, v56

    #@130
    if-ne v0, v3, :cond_8

    #@132
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@135
    move-result v3

    #@136
    move/from16 v0, v39

    #@138
    if-le v3, v0, :cond_41

    #@13a
    .line 1442
    :cond_8
    const/4 v3, 0x3

    #@13b
    move/from16 v0, v56

    #@13d
    if-eq v0, v3, :cond_7

    #@13f
    const/4 v3, 0x4

    #@140
    move/from16 v0, v56

    #@142
    if-eq v0, v3, :cond_7

    #@144
    .line 1446
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@147
    move-result-object v52

    #@148
    .line 1447
    .local v52, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "application"

    #@14b
    move-object/from16 v0, v52

    #@14d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@150
    move-result v3

    #@151
    if-eqz v3, :cond_b

    #@153
    .line 1448
    if-eqz v25, :cond_a

    #@155
    .line 1454
    const-string/jumbo v3, "PackageParser"

    #@158
    const-string/jumbo v5, "<manifest> has more than one <application>"

    #@15b
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15e
    .line 1455
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@161
    goto :goto_1

    #@162
    .line 1402
    .end local v18    # "anyDensity":I
    .end local v39    # "outerDepth":I
    .end local v43    # "resizeable":I
    .end local v48    # "supportsLargeScreens":I
    .end local v49    # "supportsNormalScreens":I
    .end local v50    # "supportsSmallScreens":I
    .end local v51    # "supportsXLargeScreens":I
    .end local v52    # "tagName":Ljava/lang/String;
    .end local v56    # "type":I
    .restart local v36    # "nameError":Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v5, "<manifest> specifies bad sharedUserId name \""

    #@16a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v3

    #@16e
    move-object/from16 v0, v47

    #@170
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v3

    #@174
    .line 1403
    const-string/jumbo v5, "\": "

    #@177
    .line 1402
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v3

    #@17b
    move-object/from16 v0, v36

    #@17d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v3

    #@181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@184
    move-result-object v3

    #@185
    const/4 v5, 0x0

    #@186
    aput-object v3, p4, v5

    #@188
    .line 1404
    const/16 v3, -0x6b

    #@18a
    move-object/from16 v0, p0

    #@18c
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@18e
    .line 1405
    const/4 v3, 0x0

    #@18f
    return-object v3

    #@190
    .line 1460
    .end local v36    # "nameError":Ljava/lang/String;
    .restart local v18    # "anyDensity":I
    .restart local v39    # "outerDepth":I
    .restart local v43    # "resizeable":I
    .restart local v48    # "supportsLargeScreens":I
    .restart local v49    # "supportsNormalScreens":I
    .restart local v50    # "supportsSmallScreens":I
    .restart local v51    # "supportsXLargeScreens":I
    .restart local v52    # "tagName":Ljava/lang/String;
    .restart local v56    # "type":I
    :cond_a
    const/16 v25, 0x1

    #@192
    move-object/from16 v3, p0

    #@194
    move-object/from16 v5, p1

    #@196
    move-object/from16 v6, p2

    #@198
    move/from16 v8, p3

    #@19a
    move-object/from16 v9, p4

    #@19c
    .line 1461
    invoke-direct/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z

    #@19f
    move-result v3

    #@1a0
    if-nez v3, :cond_7

    #@1a2
    .line 1462
    const/4 v3, 0x0

    #@1a3
    return-object v3

    #@1a4
    .line 1464
    :cond_b
    const-string/jumbo v3, "overlay"

    #@1a7
    move-object/from16 v0, v52

    #@1a9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ac
    move-result v3

    #@1ad
    if-eqz v3, :cond_f

    #@1af
    .line 1465
    move/from16 v0, v55

    #@1b1
    iput-boolean v0, v4, Landroid/content/pm/PackageParser$Package;->mTrustedOverlay:Z

    #@1b3
    .line 1468
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    #@1b5
    .line 1467
    move-object/from16 v0, p1

    #@1b7
    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1ba
    move-result-object v44

    #@1bb
    .line 1470
    const/4 v3, 0x1

    #@1bc
    .line 1469
    move-object/from16 v0, v44

    #@1be
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1c1
    move-result-object v3

    #@1c2
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    #@1c4
    .line 1472
    const/4 v3, 0x0

    #@1c5
    .line 1473
    const/4 v5, -0x1

    #@1c6
    .line 1471
    move-object/from16 v0, v44

    #@1c8
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1cb
    move-result v3

    #@1cc
    iput v3, v4, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    #@1ce
    .line 1474
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    #@1d1
    .line 1476
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    #@1d3
    if-nez v3, :cond_c

    #@1d5
    .line 1477
    const-string/jumbo v3, "<overlay> does not specify a target package"

    #@1d8
    const/4 v5, 0x0

    #@1d9
    aput-object v3, p4, v5

    #@1db
    .line 1478
    const/16 v3, -0x6c

    #@1dd
    move-object/from16 v0, p0

    #@1df
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@1e1
    .line 1479
    const/4 v3, 0x0

    #@1e2
    return-object v3

    #@1e3
    .line 1481
    :cond_c
    iget v3, v4, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    #@1e5
    if-ltz v3, :cond_d

    #@1e7
    iget v3, v4, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    #@1e9
    const/16 v5, 0x270f

    #@1eb
    if-le v3, v5, :cond_e

    #@1ed
    .line 1482
    :cond_d
    const-string/jumbo v3, "<overlay> priority must be between 0 and 9999"

    #@1f0
    const/4 v5, 0x0

    #@1f1
    aput-object v3, p4, v5

    #@1f3
    .line 1484
    const/16 v3, -0x6c

    #@1f5
    .line 1483
    move-object/from16 v0, p0

    #@1f7
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@1f9
    .line 1485
    const/4 v3, 0x0

    #@1fa
    return-object v3

    #@1fb
    .line 1487
    :cond_e
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1fe
    goto/16 :goto_1

    #@200
    .line 1489
    :cond_f
    const-string/jumbo v3, "key-sets"

    #@203
    move-object/from16 v0, v52

    #@205
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@208
    move-result v3

    #@209
    if-eqz v3, :cond_10

    #@20b
    move-object/from16 v3, p0

    #@20d
    move-object/from16 v5, p1

    #@20f
    move-object/from16 v6, p2

    #@211
    move-object/from16 v8, p4

    #@213
    .line 1490
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z

    #@216
    move-result v3

    #@217
    if-nez v3, :cond_7

    #@219
    .line 1491
    const/4 v3, 0x0

    #@21a
    return-object v3

    #@21b
    .line 1493
    :cond_10
    const-string/jumbo v3, "permission-group"

    #@21e
    move-object/from16 v0, v52

    #@220
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@223
    move-result v3

    #@224
    if-eqz v3, :cond_11

    #@226
    move-object/from16 v8, p0

    #@228
    move-object v9, v4

    #@229
    move/from16 v10, p3

    #@22b
    move-object/from16 v11, p1

    #@22d
    move-object/from16 v12, p2

    #@22f
    move-object v13, v7

    #@230
    move-object/from16 v14, p4

    #@232
    .line 1494
    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    #@235
    move-result-object v3

    #@236
    if-nez v3, :cond_7

    #@238
    .line 1495
    const/4 v3, 0x0

    #@239
    return-object v3

    #@23a
    .line 1497
    :cond_11
    const-string/jumbo v3, "permission"

    #@23d
    move-object/from16 v0, v52

    #@23f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@242
    move-result v3

    #@243
    if-eqz v3, :cond_12

    #@245
    move-object/from16 v3, p0

    #@247
    move-object/from16 v5, p1

    #@249
    move-object/from16 v6, p2

    #@24b
    move-object/from16 v8, p4

    #@24d
    .line 1498
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    #@250
    move-result-object v3

    #@251
    if-nez v3, :cond_7

    #@253
    .line 1499
    const/4 v3, 0x0

    #@254
    return-object v3

    #@255
    .line 1501
    :cond_12
    const-string/jumbo v3, "permission-tree"

    #@258
    move-object/from16 v0, v52

    #@25a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25d
    move-result v3

    #@25e
    if-eqz v3, :cond_13

    #@260
    move-object/from16 v3, p0

    #@262
    move-object/from16 v5, p1

    #@264
    move-object/from16 v6, p2

    #@266
    move-object/from16 v8, p4

    #@268
    .line 1502
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    #@26b
    move-result-object v3

    #@26c
    if-nez v3, :cond_7

    #@26e
    .line 1503
    const/4 v3, 0x0

    #@26f
    return-object v3

    #@270
    .line 1505
    :cond_13
    const-string/jumbo v3, "uses-permission"

    #@273
    move-object/from16 v0, v52

    #@275
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@278
    move-result v3

    #@279
    if-eqz v3, :cond_14

    #@27b
    .line 1506
    move-object/from16 v0, p0

    #@27d
    move-object/from16 v1, p1

    #@27f
    move-object/from16 v2, p2

    #@281
    invoke-direct {v0, v4, v1, v2, v7}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z

    #@284
    move-result v3

    #@285
    if-nez v3, :cond_7

    #@287
    .line 1507
    const/4 v3, 0x0

    #@288
    return-object v3

    #@289
    .line 1509
    :cond_14
    const-string/jumbo v3, "uses-permission-sdk-m"

    #@28c
    move-object/from16 v0, v52

    #@28e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@291
    move-result v3

    #@292
    if-nez v3, :cond_15

    #@294
    .line 1510
    const-string/jumbo v3, "uses-permission-sdk-23"

    #@297
    move-object/from16 v0, v52

    #@299
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29c
    move-result v3

    #@29d
    .line 1509
    if-eqz v3, :cond_16

    #@29f
    .line 1511
    :cond_15
    move-object/from16 v0, p0

    #@2a1
    move-object/from16 v1, p1

    #@2a3
    move-object/from16 v2, p2

    #@2a5
    invoke-direct {v0, v4, v1, v2, v7}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z

    #@2a8
    move-result v3

    #@2a9
    if-nez v3, :cond_7

    #@2ab
    .line 1512
    const/4 v3, 0x0

    #@2ac
    return-object v3

    #@2ad
    .line 1514
    :cond_16
    const-string/jumbo v3, "uses-configuration"

    #@2b0
    move-object/from16 v0, v52

    #@2b2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b5
    move-result v3

    #@2b6
    if-eqz v3, :cond_19

    #@2b8
    .line 1515
    new-instance v19, Landroid/content/pm/ConfigurationInfo;

    #@2ba
    invoke-direct/range {v19 .. v19}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    #@2bd
    .line 1517
    .local v19, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    #@2bf
    .line 1516
    move-object/from16 v0, p1

    #@2c1
    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2c4
    move-result-object v44

    #@2c5
    .line 1519
    const/4 v3, 0x0

    #@2c6
    .line 1520
    const/4 v5, 0x0

    #@2c7
    .line 1518
    move-object/from16 v0, v44

    #@2c9
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2cc
    move-result v3

    #@2cd
    move-object/from16 v0, v19

    #@2cf
    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    #@2d1
    .line 1522
    const/4 v3, 0x1

    #@2d2
    .line 1523
    const/4 v5, 0x0

    #@2d3
    .line 1521
    move-object/from16 v0, v44

    #@2d5
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2d8
    move-result v3

    #@2d9
    move-object/from16 v0, v19

    #@2db
    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    #@2dd
    .line 1525
    const/4 v3, 0x2

    #@2de
    .line 1526
    const/4 v5, 0x0

    #@2df
    .line 1524
    move-object/from16 v0, v44

    #@2e1
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2e4
    move-result v3

    #@2e5
    if-eqz v3, :cond_17

    #@2e7
    .line 1527
    move-object/from16 v0, v19

    #@2e9
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@2eb
    or-int/lit8 v3, v3, 0x1

    #@2ed
    move-object/from16 v0, v19

    #@2ef
    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@2f1
    .line 1530
    :cond_17
    const/4 v3, 0x3

    #@2f2
    .line 1531
    const/4 v5, 0x0

    #@2f3
    .line 1529
    move-object/from16 v0, v44

    #@2f5
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2f8
    move-result v3

    #@2f9
    move-object/from16 v0, v19

    #@2fb
    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    #@2fd
    .line 1533
    const/4 v3, 0x4

    #@2fe
    .line 1534
    const/4 v5, 0x0

    #@2ff
    .line 1532
    move-object/from16 v0, v44

    #@301
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@304
    move-result v3

    #@305
    if-eqz v3, :cond_18

    #@307
    .line 1535
    move-object/from16 v0, v19

    #@309
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@30b
    or-int/lit8 v3, v3, 0x2

    #@30d
    move-object/from16 v0, v19

    #@30f
    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@311
    .line 1537
    :cond_18
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    #@314
    .line 1538
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@316
    move-object/from16 v0, v19

    #@318
    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@31b
    move-result-object v3

    #@31c
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@31e
    .line 1540
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@321
    goto/16 :goto_1

    #@323
    .line 1542
    .end local v19    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_19
    const-string/jumbo v3, "uses-feature"

    #@326
    move-object/from16 v0, v52

    #@328
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32b
    move-result v3

    #@32c
    if-eqz v3, :cond_1b

    #@32e
    .line 1543
    move-object/from16 v0, p0

    #@330
    move-object/from16 v1, p1

    #@332
    invoke-direct {v0, v1, v7}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    #@335
    move-result-object v24

    #@336
    .line 1544
    .local v24, "fi":Landroid/content/pm/FeatureInfo;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    #@338
    move-object/from16 v0, v24

    #@33a
    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@33d
    move-result-object v3

    #@33e
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    #@340
    .line 1546
    move-object/from16 v0, v24

    #@342
    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@344
    if-nez v3, :cond_1a

    #@346
    .line 1547
    new-instance v19, Landroid/content/pm/ConfigurationInfo;

    #@348
    invoke-direct/range {v19 .. v19}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    #@34b
    .line 1548
    .restart local v19    # "cPref":Landroid/content/pm/ConfigurationInfo;
    move-object/from16 v0, v24

    #@34d
    iget v3, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@34f
    move-object/from16 v0, v19

    #@351
    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    #@353
    .line 1549
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@355
    move-object/from16 v0, v19

    #@357
    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@35a
    move-result-object v3

    #@35b
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@35d
    .line 1552
    .end local v19    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_1a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@360
    goto/16 :goto_1

    #@362
    .line 1554
    .end local v24    # "fi":Landroid/content/pm/FeatureInfo;
    :cond_1b
    const-string/jumbo v3, "feature-group"

    #@365
    move-object/from16 v0, v52

    #@367
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36a
    move-result v3

    #@36b
    if-eqz v3, :cond_21

    #@36d
    .line 1555
    new-instance v26, Landroid/content/pm/FeatureGroupInfo;

    #@36f
    invoke-direct/range {v26 .. v26}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    #@372
    .line 1556
    .local v26, "group":Landroid/content/pm/FeatureGroupInfo;
    const/16 v23, 0x0

    #@374
    .line 1557
    .local v23, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@377
    move-result v29

    #@378
    .line 1558
    .end local v23    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v29, "innerDepth":I
    :cond_1c
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    #@37b
    move-result v56

    #@37c
    const/4 v3, 0x1

    #@37d
    move/from16 v0, v56

    #@37f
    if-eq v0, v3, :cond_1f

    #@381
    .line 1559
    const/4 v3, 0x3

    #@382
    move/from16 v0, v56

    #@384
    if-ne v0, v3, :cond_1d

    #@386
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@389
    move-result v3

    #@38a
    move/from16 v0, v29

    #@38c
    if-le v3, v0, :cond_1f

    #@38e
    .line 1560
    :cond_1d
    const/4 v3, 0x3

    #@38f
    move/from16 v0, v56

    #@391
    if-eq v0, v3, :cond_1c

    #@393
    const/4 v3, 0x4

    #@394
    move/from16 v0, v56

    #@396
    if-eq v0, v3, :cond_1c

    #@398
    .line 1564
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@39b
    move-result-object v30

    #@39c
    .line 1565
    .local v30, "innerTagName":Ljava/lang/String;
    const-string/jumbo v3, "uses-feature"

    #@39f
    move-object/from16 v0, v30

    #@3a1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a4
    move-result v3

    #@3a5
    if-eqz v3, :cond_1e

    #@3a7
    .line 1566
    move-object/from16 v0, p0

    #@3a9
    move-object/from16 v1, p1

    #@3ab
    invoke-direct {v0, v1, v7}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    #@3ae
    move-result-object v22

    #@3af
    .line 1569
    .local v22, "featureInfo":Landroid/content/pm/FeatureInfo;
    move-object/from16 v0, v22

    #@3b1
    iget v3, v0, Landroid/content/pm/FeatureInfo;->flags:I

    #@3b3
    or-int/lit8 v3, v3, 0x1

    #@3b5
    move-object/from16 v0, v22

    #@3b7
    iput v3, v0, Landroid/content/pm/FeatureInfo;->flags:I

    #@3b9
    .line 1570
    move-object/from16 v0, v23

    #@3bb
    move-object/from16 v1, v22

    #@3bd
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@3c0
    move-result-object v23

    #@3c1
    .line 1576
    .end local v22    # "featureInfo":Landroid/content/pm/FeatureInfo;
    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3c4
    goto :goto_2

    #@3c5
    .line 1572
    :cond_1e
    const-string/jumbo v3, "PackageParser"

    #@3c8
    new-instance v5, Ljava/lang/StringBuilder;

    #@3ca
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3cd
    const-string/jumbo v6, "Unknown element under <feature-group>: "

    #@3d0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d3
    move-result-object v5

    #@3d4
    move-object/from16 v0, v30

    #@3d6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d9
    move-result-object v5

    #@3da
    .line 1573
    const-string/jumbo v6, " at "

    #@3dd
    .line 1572
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e0
    move-result-object v5

    #@3e1
    .line 1573
    move-object/from16 v0, p0

    #@3e3
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@3e5
    .line 1572
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e8
    move-result-object v5

    #@3e9
    .line 1573
    const-string/jumbo v6, " "

    #@3ec
    .line 1572
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ef
    move-result-object v5

    #@3f0
    .line 1574
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@3f3
    move-result-object v6

    #@3f4
    .line 1572
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f7
    move-result-object v5

    #@3f8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3fb
    move-result-object v5

    #@3fc
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3ff
    goto :goto_3

    #@400
    .line 1579
    .end local v30    # "innerTagName":Ljava/lang/String;
    :cond_1f
    if-eqz v23, :cond_20

    #@402
    .line 1580
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    #@405
    move-result v3

    #@406
    new-array v3, v3, [Landroid/content/pm/FeatureInfo;

    #@408
    move-object/from16 v0, v26

    #@40a
    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    #@40c
    .line 1581
    move-object/from16 v0, v26

    #@40e
    iget-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    #@410
    move-object/from16 v0, v23

    #@412
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@415
    move-result-object v3

    #@416
    check-cast v3, [Landroid/content/pm/FeatureInfo;

    #@418
    move-object/from16 v0, v26

    #@41a
    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    #@41c
    .line 1583
    :cond_20
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    #@41e
    move-object/from16 v0, v26

    #@420
    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@423
    move-result-object v3

    #@424
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    #@426
    goto/16 :goto_1

    #@428
    .line 1585
    .end local v26    # "group":Landroid/content/pm/FeatureGroupInfo;
    .end local v29    # "innerDepth":I
    :cond_21
    const-string/jumbo v3, "uses-sdk"

    #@42b
    move-object/from16 v0, v52

    #@42d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@430
    move-result v3

    #@431
    if-eqz v3, :cond_31

    #@433
    .line 1586
    sget v3, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    #@435
    if-lez v3, :cond_2f

    #@437
    .line 1588
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    #@439
    .line 1587
    move-object/from16 v0, p1

    #@43b
    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@43e
    move-result-object v44

    #@43f
    .line 1590
    const/16 v34, 0x0

    #@441
    .line 1591
    .local v34, "minVers":I
    const/16 v33, 0x0

    #@443
    .line 1592
    .local v33, "minCode":Ljava/lang/String;
    const/16 v54, 0x0

    #@445
    .line 1593
    .local v54, "targetVers":I
    const/16 v53, 0x0

    #@447
    .line 1596
    .local v53, "targetCode":Ljava/lang/String;
    const/4 v3, 0x0

    #@448
    .line 1595
    move-object/from16 v0, v44

    #@44a
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@44d
    move-result-object v57

    #@44e
    .line 1597
    .local v57, "val":Landroid/util/TypedValue;
    if-eqz v57, :cond_22

    #@450
    .line 1598
    move-object/from16 v0, v57

    #@452
    iget v3, v0, Landroid/util/TypedValue;->type:I

    #@454
    const/4 v5, 0x3

    #@455
    if-ne v3, v5, :cond_25

    #@457
    move-object/from16 v0, v57

    #@459
    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@45b
    if-eqz v3, :cond_25

    #@45d
    .line 1599
    move-object/from16 v0, v57

    #@45f
    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@461
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@464
    move-result-object v33

    #@465
    .local v33, "minCode":Ljava/lang/String;
    move-object/from16 v53, v33

    #@467
    .line 1607
    .end local v33    # "minCode":Ljava/lang/String;
    .end local v53    # "targetCode":Ljava/lang/String;
    :cond_22
    :goto_4
    const/4 v3, 0x1

    #@468
    .line 1606
    move-object/from16 v0, v44

    #@46a
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@46d
    move-result-object v57

    #@46e
    .line 1608
    if-eqz v57, :cond_23

    #@470
    .line 1609
    move-object/from16 v0, v57

    #@472
    iget v3, v0, Landroid/util/TypedValue;->type:I

    #@474
    const/4 v5, 0x3

    #@475
    if-ne v3, v5, :cond_26

    #@477
    move-object/from16 v0, v57

    #@479
    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@47b
    if-eqz v3, :cond_26

    #@47d
    .line 1610
    move-object/from16 v0, v57

    #@47f
    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@481
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@484
    move-result-object v33

    #@485
    .restart local v33    # "minCode":Ljava/lang/String;
    move-object/from16 v53, v33

    #@487
    .line 1617
    .end local v33    # "minCode":Ljava/lang/String;
    :cond_23
    :goto_5
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    #@48a
    .line 1619
    if-eqz v33, :cond_29

    #@48c
    .line 1620
    const/16 v17, 0x0

    #@48e
    .line 1621
    .local v17, "allowedCodename":Z
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@490
    const/4 v3, 0x0

    #@491
    array-length v6, v5

    #@492
    :goto_6
    if-ge v3, v6, :cond_24

    #@494
    aget-object v20, v5, v3

    #@496
    .line 1622
    .local v20, "codename":Ljava/lang/String;
    move-object/from16 v0, v33

    #@498
    move-object/from16 v1, v20

    #@49a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49d
    move-result v8

    #@49e
    if-eqz v8, :cond_27

    #@4a0
    .line 1623
    const/16 v17, 0x1

    #@4a2
    .line 1627
    .end local v20    # "codename":Ljava/lang/String;
    :cond_24
    if-nez v17, :cond_2a

    #@4a4
    .line 1628
    sget-object v3, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@4a6
    array-length v3, v3

    #@4a7
    if-lez v3, :cond_28

    #@4a9
    .line 1629
    new-instance v3, Ljava/lang/StringBuilder;

    #@4ab
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4ae
    const-string/jumbo v5, "Requires development platform "

    #@4b1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b4
    move-result-object v3

    #@4b5
    move-object/from16 v0, v33

    #@4b7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ba
    move-result-object v3

    #@4bb
    .line 1630
    const-string/jumbo v5, " (current platform is any of "

    #@4be
    .line 1629
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c1
    move-result-object v3

    #@4c2
    .line 1631
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@4c4
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@4c7
    move-result-object v5

    #@4c8
    .line 1629
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cb
    move-result-object v3

    #@4cc
    .line 1631
    const-string/jumbo v5, ")"

    #@4cf
    .line 1629
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d2
    move-result-object v3

    #@4d3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d6
    move-result-object v3

    #@4d7
    const/4 v5, 0x0

    #@4d8
    aput-object v3, p4, v5

    #@4da
    .line 1636
    :goto_7
    const/16 v3, -0xc

    #@4dc
    move-object/from16 v0, p0

    #@4de
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@4e0
    .line 1637
    const/4 v3, 0x0

    #@4e1
    return-object v3

    #@4e2
    .line 1602
    .end local v17    # "allowedCodename":Z
    .local v33, "minCode":Ljava/lang/String;
    .restart local v53    # "targetCode":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v57

    #@4e4
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@4e6
    move/from16 v34, v0

    #@4e8
    move/from16 v54, v34

    #@4ea
    goto/16 :goto_4

    #@4ec
    .line 1613
    .end local v33    # "minCode":Ljava/lang/String;
    .end local v53    # "targetCode":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v57

    #@4ee
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@4f0
    move/from16 v54, v0

    #@4f2
    goto :goto_5

    #@4f3
    .line 1621
    .restart local v17    # "allowedCodename":Z
    .restart local v20    # "codename":Ljava/lang/String;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    #@4f5
    goto :goto_6

    #@4f6
    .line 1633
    .end local v20    # "codename":Ljava/lang/String;
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4fb
    const-string/jumbo v5, "Requires development platform "

    #@4fe
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@501
    move-result-object v3

    #@502
    move-object/from16 v0, v33

    #@504
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@507
    move-result-object v3

    #@508
    .line 1634
    const-string/jumbo v5, " but this is a release platform."

    #@50b
    .line 1633
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50e
    move-result-object v3

    #@50f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@512
    move-result-object v3

    #@513
    const/4 v5, 0x0

    #@514
    aput-object v3, p4, v5

    #@516
    goto :goto_7

    #@517
    .line 1639
    .end local v17    # "allowedCodename":Z
    :cond_29
    sget v3, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    #@519
    move/from16 v0, v34

    #@51b
    if-le v0, v3, :cond_2a

    #@51d
    .line 1640
    new-instance v3, Ljava/lang/StringBuilder;

    #@51f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@522
    const-string/jumbo v5, "Requires newer sdk version #"

    #@525
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@528
    move-result-object v3

    #@529
    move/from16 v0, v34

    #@52b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52e
    move-result-object v3

    #@52f
    .line 1641
    const-string/jumbo v5, " (current version is #"

    #@532
    .line 1640
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@535
    move-result-object v3

    #@536
    .line 1641
    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    #@538
    .line 1640
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53b
    move-result-object v3

    #@53c
    .line 1641
    const-string/jumbo v5, ")"

    #@53f
    .line 1640
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@542
    move-result-object v3

    #@543
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@546
    move-result-object v3

    #@547
    const/4 v5, 0x0

    #@548
    aput-object v3, p4, v5

    #@54a
    .line 1642
    const/16 v3, -0xc

    #@54c
    move-object/from16 v0, p0

    #@54e
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@550
    .line 1643
    const/4 v3, 0x0

    #@551
    return-object v3

    #@552
    .line 1646
    :cond_2a
    if-eqz v53, :cond_30

    #@554
    .line 1647
    const/16 v17, 0x0

    #@556
    .line 1648
    .restart local v17    # "allowedCodename":Z
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@558
    const/4 v3, 0x0

    #@559
    array-length v6, v5

    #@55a
    :goto_8
    if-ge v3, v6, :cond_2b

    #@55c
    aget-object v20, v5, v3

    #@55e
    .line 1649
    .restart local v20    # "codename":Ljava/lang/String;
    move-object/from16 v0, v53

    #@560
    move-object/from16 v1, v20

    #@562
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@565
    move-result v8

    #@566
    if-eqz v8, :cond_2c

    #@568
    .line 1650
    const/16 v17, 0x1

    #@56a
    .line 1654
    .end local v20    # "codename":Ljava/lang/String;
    :cond_2b
    if-nez v17, :cond_2e

    #@56c
    .line 1655
    sget-object v3, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@56e
    array-length v3, v3

    #@56f
    if-lez v3, :cond_2d

    #@571
    .line 1656
    new-instance v3, Ljava/lang/StringBuilder;

    #@573
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@576
    const-string/jumbo v5, "Requires development platform "

    #@579
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57c
    move-result-object v3

    #@57d
    move-object/from16 v0, v53

    #@57f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@582
    move-result-object v3

    #@583
    .line 1657
    const-string/jumbo v5, " (current platform is any of "

    #@586
    .line 1656
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@589
    move-result-object v3

    #@58a
    .line 1658
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    #@58c
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@58f
    move-result-object v5

    #@590
    .line 1656
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@593
    move-result-object v3

    #@594
    .line 1658
    const-string/jumbo v5, ")"

    #@597
    .line 1656
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59a
    move-result-object v3

    #@59b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59e
    move-result-object v3

    #@59f
    const/4 v5, 0x0

    #@5a0
    aput-object v3, p4, v5

    #@5a2
    .line 1663
    :goto_9
    const/16 v3, -0xc

    #@5a4
    move-object/from16 v0, p0

    #@5a6
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@5a8
    .line 1664
    const/4 v3, 0x0

    #@5a9
    return-object v3

    #@5aa
    .line 1648
    .restart local v20    # "codename":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    #@5ac
    goto :goto_8

    #@5ad
    .line 1660
    .end local v20    # "codename":Ljava/lang/String;
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@5af
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5b2
    const-string/jumbo v5, "Requires development platform "

    #@5b5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b8
    move-result-object v3

    #@5b9
    move-object/from16 v0, v53

    #@5bb
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5be
    move-result-object v3

    #@5bf
    .line 1661
    const-string/jumbo v5, " but this is a release platform."

    #@5c2
    .line 1660
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c5
    move-result-object v3

    #@5c6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c9
    move-result-object v3

    #@5ca
    const/4 v5, 0x0

    #@5cb
    aput-object v3, p4, v5

    #@5cd
    goto :goto_9

    #@5ce
    .line 1667
    :cond_2e
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5d0
    .line 1668
    const/16 v5, 0x2710

    #@5d2
    .line 1667
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@5d4
    .line 1674
    .end local v17    # "allowedCodename":Z
    .end local v34    # "minVers":I
    .end local v54    # "targetVers":I
    .end local v57    # "val":Landroid/util/TypedValue;
    :cond_2f
    :goto_a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5d7
    goto/16 :goto_1

    #@5d9
    .line 1670
    .restart local v34    # "minVers":I
    .restart local v54    # "targetVers":I
    .restart local v57    # "val":Landroid/util/TypedValue;
    :cond_30
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5db
    move/from16 v0, v54

    #@5dd
    iput v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@5df
    goto :goto_a

    #@5e0
    .line 1676
    .end local v34    # "minVers":I
    .end local v54    # "targetVers":I
    .end local v57    # "val":Landroid/util/TypedValue;
    :cond_31
    const-string/jumbo v3, "supports-screens"

    #@5e3
    move-object/from16 v0, v52

    #@5e5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e8
    move-result v3

    #@5e9
    if-eqz v3, :cond_32

    #@5eb
    .line 1678
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    #@5ed
    .line 1677
    move-object/from16 v0, p1

    #@5ef
    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5f2
    move-result-object v44

    #@5f3
    .line 1680
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5f5
    .line 1681
    const/4 v5, 0x6

    #@5f6
    .line 1682
    const/4 v6, 0x0

    #@5f7
    .line 1680
    move-object/from16 v0, v44

    #@5f9
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@5fc
    move-result v5

    #@5fd
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@5ff
    .line 1683
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@601
    .line 1684
    const/4 v5, 0x7

    #@602
    .line 1685
    const/4 v6, 0x0

    #@603
    .line 1683
    move-object/from16 v0, v44

    #@605
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@608
    move-result v5

    #@609
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@60b
    .line 1686
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@60d
    .line 1687
    const/16 v5, 0x8

    #@60f
    .line 1688
    const/4 v6, 0x0

    #@610
    .line 1686
    move-object/from16 v0, v44

    #@612
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@615
    move-result v5

    #@616
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@618
    .line 1693
    const/4 v3, 0x1

    #@619
    .line 1692
    move-object/from16 v0, v44

    #@61b
    move/from16 v1, v50

    #@61d
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@620
    move-result v50

    #@621
    .line 1696
    const/4 v3, 0x2

    #@622
    .line 1695
    move-object/from16 v0, v44

    #@624
    move/from16 v1, v49

    #@626
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@629
    move-result v49

    #@62a
    .line 1699
    const/4 v3, 0x3

    #@62b
    .line 1698
    move-object/from16 v0, v44

    #@62d
    move/from16 v1, v48

    #@62f
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@632
    move-result v48

    #@633
    .line 1702
    const/4 v3, 0x5

    #@634
    .line 1701
    move-object/from16 v0, v44

    #@636
    move/from16 v1, v51

    #@638
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@63b
    move-result v51

    #@63c
    .line 1705
    const/4 v3, 0x4

    #@63d
    .line 1704
    move-object/from16 v0, v44

    #@63f
    move/from16 v1, v43

    #@641
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@644
    move-result v43

    #@645
    .line 1708
    const/4 v3, 0x0

    #@646
    .line 1707
    move-object/from16 v0, v44

    #@648
    move/from16 v1, v18

    #@64a
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@64d
    move-result v18

    #@64e
    .line 1711
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    #@651
    .line 1713
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@654
    goto/16 :goto_1

    #@656
    .line 1715
    :cond_32
    const-string/jumbo v3, "protected-broadcast"

    #@659
    move-object/from16 v0, v52

    #@65b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65e
    move-result v3

    #@65f
    if-eqz v3, :cond_35

    #@661
    .line 1717
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    #@663
    .line 1716
    move-object/from16 v0, p1

    #@665
    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@668
    move-result-object v44

    #@669
    .line 1722
    const/4 v3, 0x0

    #@66a
    .line 1721
    move-object/from16 v0, v44

    #@66c
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@66f
    move-result-object v35

    #@670
    .line 1724
    .local v35, "name":Ljava/lang/String;
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    #@673
    .line 1726
    if-eqz v35, :cond_34

    #@675
    and-int/lit8 v3, p3, 0x1

    #@677
    if-eqz v3, :cond_34

    #@679
    .line 1727
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    #@67b
    if-nez v3, :cond_33

    #@67d
    .line 1728
    new-instance v3, Ljava/util/ArrayList;

    #@67f
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@682
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    #@684
    .line 1730
    :cond_33
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    #@686
    move-object/from16 v0, v35

    #@688
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@68b
    move-result v3

    #@68c
    if-nez v3, :cond_34

    #@68e
    .line 1731
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    #@690
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@693
    move-result-object v5

    #@694
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@697
    .line 1735
    :cond_34
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@69a
    goto/16 :goto_1

    #@69c
    .line 1737
    .end local v35    # "name":Ljava/lang/String;
    :cond_35
    const-string/jumbo v3, "instrumentation"

    #@69f
    move-object/from16 v0, v52

    #@6a1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a4
    move-result v3

    #@6a5
    if-eqz v3, :cond_36

    #@6a7
    move-object/from16 v3, p0

    #@6a9
    move-object/from16 v5, p1

    #@6ab
    move-object/from16 v6, p2

    #@6ad
    move-object/from16 v8, p4

    #@6af
    .line 1738
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    #@6b2
    move-result-object v3

    #@6b3
    if-nez v3, :cond_7

    #@6b5
    .line 1739
    const/4 v3, 0x0

    #@6b6
    return-object v3

    #@6b7
    .line 1742
    :cond_36
    const-string/jumbo v3, "original-package"

    #@6ba
    move-object/from16 v0, v52

    #@6bc
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6bf
    move-result v3

    #@6c0
    if-eqz v3, :cond_39

    #@6c2
    .line 1744
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    #@6c4
    .line 1743
    move-object/from16 v0, p1

    #@6c6
    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6c9
    move-result-object v44

    #@6ca
    .line 1747
    const/4 v3, 0x0

    #@6cb
    const/4 v5, 0x0

    #@6cc
    .line 1746
    move-object/from16 v0, v44

    #@6ce
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@6d1
    move-result-object v38

    #@6d2
    .line 1748
    .local v38, "orig":Ljava/lang/String;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@6d4
    move-object/from16 v0, v38

    #@6d6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d9
    move-result v3

    #@6da
    if-nez v3, :cond_38

    #@6dc
    .line 1749
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    #@6de
    if-nez v3, :cond_37

    #@6e0
    .line 1750
    new-instance v3, Ljava/util/ArrayList;

    #@6e2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@6e5
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    #@6e7
    .line 1751
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@6e9
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    #@6eb
    .line 1753
    :cond_37
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    #@6ed
    move-object/from16 v0, v38

    #@6ef
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6f2
    .line 1756
    :cond_38
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    #@6f5
    .line 1758
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@6f8
    goto/16 :goto_1

    #@6fa
    .line 1760
    .end local v38    # "orig":Ljava/lang/String;
    :cond_39
    const-string/jumbo v3, "adopt-permissions"

    #@6fd
    move-object/from16 v0, v52

    #@6ff
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@702
    move-result v3

    #@703
    if-eqz v3, :cond_3c

    #@705
    .line 1762
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    #@707
    .line 1761
    move-object/from16 v0, p1

    #@709
    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@70c
    move-result-object v44

    #@70d
    .line 1765
    const/4 v3, 0x0

    #@70e
    const/4 v5, 0x0

    #@70f
    .line 1764
    move-object/from16 v0, v44

    #@711
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@714
    move-result-object v35

    #@715
    .line 1767
    .restart local v35    # "name":Ljava/lang/String;
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    #@718
    .line 1769
    if-eqz v35, :cond_3b

    #@71a
    .line 1770
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    #@71c
    if-nez v3, :cond_3a

    #@71e
    .line 1771
    new-instance v3, Ljava/util/ArrayList;

    #@720
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@723
    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    #@725
    .line 1773
    :cond_3a
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    #@727
    move-object/from16 v0, v35

    #@729
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@72c
    .line 1776
    :cond_3b
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@72f
    goto/16 :goto_1

    #@731
    .line 1778
    .end local v35    # "name":Ljava/lang/String;
    :cond_3c
    const-string/jumbo v3, "uses-gl-texture"

    #@734
    move-object/from16 v0, v52

    #@736
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@739
    move-result v3

    #@73a
    if-eqz v3, :cond_3d

    #@73c
    .line 1780
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@73f
    goto/16 :goto_1

    #@741
    .line 1783
    :cond_3d
    const-string/jumbo v3, "compatible-screens"

    #@744
    move-object/from16 v0, v52

    #@746
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@749
    move-result v3

    #@74a
    if-eqz v3, :cond_3e

    #@74c
    .line 1785
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@74f
    goto/16 :goto_1

    #@751
    .line 1787
    :cond_3e
    const-string/jumbo v3, "supports-input"

    #@754
    move-object/from16 v0, v52

    #@756
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@759
    move-result v3

    #@75a
    if-eqz v3, :cond_3f

    #@75c
    .line 1788
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@75f
    goto/16 :goto_1

    #@761
    .line 1791
    :cond_3f
    const-string/jumbo v3, "eat-comment"

    #@764
    move-object/from16 v0, v52

    #@766
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@769
    move-result v3

    #@76a
    if-eqz v3, :cond_40

    #@76c
    .line 1793
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@76f
    goto/16 :goto_1

    #@771
    .line 1803
    :cond_40
    const-string/jumbo v3, "PackageParser"

    #@774
    new-instance v5, Ljava/lang/StringBuilder;

    #@776
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@779
    const-string/jumbo v6, "Unknown element under <manifest>: "

    #@77c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77f
    move-result-object v5

    #@780
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@783
    move-result-object v6

    #@784
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@787
    move-result-object v5

    #@788
    .line 1804
    const-string/jumbo v6, " at "

    #@78b
    .line 1803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78e
    move-result-object v5

    #@78f
    .line 1804
    move-object/from16 v0, p0

    #@791
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@793
    .line 1803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@796
    move-result-object v5

    #@797
    .line 1804
    const-string/jumbo v6, " "

    #@79a
    .line 1803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79d
    move-result-object v5

    #@79e
    .line 1805
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@7a1
    move-result-object v6

    #@7a2
    .line 1803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a5
    move-result-object v5

    #@7a6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a9
    move-result-object v5

    #@7aa
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7ad
    .line 1806
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7b0
    goto/16 :goto_1

    #@7b2
    .line 1811
    .end local v52    # "tagName":Ljava/lang/String;
    :cond_41
    if-nez v25, :cond_42

    #@7b4
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@7b6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7b9
    move-result v3

    #@7ba
    if-nez v3, :cond_42

    #@7bc
    .line 1812
    const-string/jumbo v3, "<manifest> does not contain an <application> or <instrumentation>"

    #@7bf
    const/4 v5, 0x0

    #@7c0
    aput-object v3, p4, v5

    #@7c2
    .line 1813
    const/16 v3, -0x6d

    #@7c4
    move-object/from16 v0, p0

    #@7c6
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@7c8
    .line 1816
    :cond_42
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@7ca
    array-length v15, v3

    #@7cb
    .line 1817
    .local v15, "NP":I
    const/16 v27, 0x0

    #@7cd
    .line 1818
    .local v27, "implicitPerms":Ljava/lang/StringBuilder;
    const/16 v31, 0x0

    #@7cf
    .end local v27    # "implicitPerms":Ljava/lang/StringBuilder;
    .local v31, "ip":I
    :goto_b
    move/from16 v0, v31

    #@7d1
    if-ge v0, v15, :cond_43

    #@7d3
    .line 1820
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    #@7d5
    .line 1819
    aget-object v37, v3, v31

    #@7d7
    .line 1821
    .local v37, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7d9
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@7db
    move-object/from16 v0, v37

    #@7dd
    iget v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    #@7df
    if-lt v3, v5, :cond_46

    #@7e1
    .line 1836
    .end local v37    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_43
    if-eqz v27, :cond_44

    #@7e3
    .line 1837
    const-string/jumbo v3, "PackageParser"

    #@7e6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e9
    move-result-object v5

    #@7ea
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7ed
    .line 1840
    :cond_44
    sget-object v3, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@7ef
    array-length v0, v3

    #@7f0
    move/from16 v16, v0

    #@7f2
    .line 1841
    .local v16, "NS":I
    const/16 v32, 0x0

    #@7f4
    .local v32, "is":I
    :goto_c
    move/from16 v0, v32

    #@7f6
    move/from16 v1, v16

    #@7f8
    if-ge v0, v1, :cond_4a

    #@7fa
    .line 1843
    sget-object v3, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    #@7fc
    .line 1842
    aget-object v45, v3, v32

    #@7fe
    .line 1844
    .local v45, "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@800
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@802
    move-object/from16 v0, v45

    #@804
    iget v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    #@806
    if-ge v3, v5, :cond_49

    #@808
    .line 1845
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@80a
    move-object/from16 v0, v45

    #@80c
    iget-object v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    #@80e
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@811
    move-result v3

    #@812
    if-eqz v3, :cond_49

    #@814
    .line 1848
    const/16 v28, 0x0

    #@816
    .local v28, "in":I
    :goto_d
    move-object/from16 v0, v45

    #@818
    iget-object v3, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    #@81a
    array-length v3, v3

    #@81b
    move/from16 v0, v28

    #@81d
    if-ge v0, v3, :cond_49

    #@81f
    .line 1849
    move-object/from16 v0, v45

    #@821
    iget-object v3, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    #@823
    aget-object v41, v3, v28

    #@825
    .line 1850
    .local v41, "perm":Ljava/lang/String;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@827
    move-object/from16 v0, v41

    #@829
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@82c
    move-result v3

    #@82d
    if-nez v3, :cond_45

    #@82f
    .line 1851
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@831
    move-object/from16 v0, v41

    #@833
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@836
    .line 1848
    :cond_45
    add-int/lit8 v28, v28, 0x1

    #@838
    goto :goto_d

    #@839
    .line 1824
    .end local v16    # "NS":I
    .end local v28    # "in":I
    .end local v32    # "is":I
    .end local v41    # "perm":Ljava/lang/String;
    .end local v45    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    .restart local v37    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_46
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@83b
    move-object/from16 v0, v37

    #@83d
    iget-object v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    #@83f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@842
    move-result v3

    #@843
    if-nez v3, :cond_47

    #@845
    .line 1825
    if-nez v27, :cond_48

    #@847
    .line 1826
    new-instance v27, Ljava/lang/StringBuilder;

    #@849
    const/16 v3, 0x80

    #@84b
    move-object/from16 v0, v27

    #@84d
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@850
    .line 1827
    .local v27, "implicitPerms":Ljava/lang/StringBuilder;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@852
    move-object/from16 v0, v27

    #@854
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@857
    .line 1828
    const-string/jumbo v3, ": compat added "

    #@85a
    move-object/from16 v0, v27

    #@85c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85f
    .line 1832
    .end local v27    # "implicitPerms":Ljava/lang/StringBuilder;
    :goto_e
    move-object/from16 v0, v37

    #@861
    iget-object v3, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    #@863
    move-object/from16 v0, v27

    #@865
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@868
    .line 1833
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@86a
    move-object/from16 v0, v37

    #@86c
    iget-object v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    #@86e
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@871
    .line 1818
    :cond_47
    add-int/lit8 v31, v31, 0x1

    #@873
    goto/16 :goto_b

    #@875
    .line 1830
    :cond_48
    const/16 v3, 0x20

    #@877
    move-object/from16 v0, v27

    #@879
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@87c
    goto :goto_e

    #@87d
    .line 1841
    .end local v37    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    .restart local v16    # "NS":I
    .restart local v32    # "is":I
    .restart local v45    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_49
    add-int/lit8 v32, v32, 0x1

    #@87f
    goto/16 :goto_c

    #@881
    .line 1856
    .end local v45    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_4a
    if-ltz v50, :cond_4b

    #@883
    if-lez v50, :cond_4c

    #@885
    .line 1857
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@887
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@889
    .line 1858
    const/4 v5, 0x4

    #@88a
    .line 1857
    if-lt v3, v5, :cond_4c

    #@88c
    .line 1859
    :cond_4b
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@88e
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@890
    or-int/lit16 v5, v5, 0x200

    #@892
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@894
    .line 1861
    :cond_4c
    if-eqz v49, :cond_4d

    #@896
    .line 1862
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@898
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@89a
    or-int/lit16 v5, v5, 0x400

    #@89c
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@89e
    .line 1864
    :cond_4d
    if-ltz v48, :cond_4e

    #@8a0
    if-lez v48, :cond_4f

    #@8a2
    .line 1865
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8a4
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8a6
    .line 1866
    const/4 v5, 0x4

    #@8a7
    .line 1865
    if-lt v3, v5, :cond_4f

    #@8a9
    .line 1867
    :cond_4e
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8ab
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8ad
    or-int/lit16 v5, v5, 0x800

    #@8af
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8b1
    .line 1869
    :cond_4f
    if-ltz v51, :cond_50

    #@8b3
    if-lez v51, :cond_51

    #@8b5
    .line 1870
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8b7
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8b9
    .line 1871
    const/16 v5, 0x9

    #@8bb
    .line 1870
    if-lt v3, v5, :cond_51

    #@8bd
    .line 1872
    :cond_50
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8bf
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8c1
    const/high16 v6, 0x80000

    #@8c3
    or-int/2addr v5, v6

    #@8c4
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8c6
    .line 1874
    :cond_51
    if-ltz v43, :cond_52

    #@8c8
    if-lez v43, :cond_53

    #@8ca
    .line 1875
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8cc
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8ce
    .line 1876
    const/4 v5, 0x4

    #@8cf
    .line 1875
    if-lt v3, v5, :cond_53

    #@8d1
    .line 1877
    :cond_52
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8d3
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8d5
    or-int/lit16 v5, v5, 0x1000

    #@8d7
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8d9
    .line 1879
    :cond_53
    if-ltz v18, :cond_54

    #@8db
    if-lez v18, :cond_55

    #@8dd
    .line 1880
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8df
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8e1
    .line 1881
    const/4 v5, 0x4

    #@8e2
    .line 1880
    if-lt v3, v5, :cond_55

    #@8e4
    .line 1882
    :cond_54
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8e6
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8e8
    or-int/lit16 v5, v5, 0x2000

    #@8ea
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8ec
    .line 1885
    :cond_55
    return-object v4
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
    .line 866
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v23

    #@4
    .line 868
    .local v23, "apkPath":Ljava/lang/String;
    const/16 v33, 0x0

    #@6
    .line 869
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
    .line 870
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
    .line 871
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
    .line 874
    .end local v27    # "end":I
    .end local v33    # "volumeUuid":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    #@30
    move-object/from16 v0, p0

    #@32
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@34
    .line 875
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    move-object/from16 v0, p0

    #@3a
    iput-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@3c
    .line 879
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
    .line 881
    .local v24, "cookie":I
    const/16 v31, 0x0

    #@48
    .line 882
    .local v31, "res":Landroid/content/res/Resources;
    const/16 v29, 0x0

    #@4a
    .line 884
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
    .line 886
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v32, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v22, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@5a
    .line 885
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
    .line 887
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
    .line 889
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x1

    #@81
    new-array v0, v5, [Ljava/lang/String;

    #@83
    move-object/from16 v28, v0

    #@85
    .line 890
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
    .line 891
    .local v30, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v30, :cond_1

    #@95
    .line 892
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    #@97
    move-object/from16 v0, p0

    #@99
    iget v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@9b
    .line 893
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
    .line 892
    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@ca
    throw v5
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@cb
    .line 902
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v25

    #@cc
    .local v25, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v31, v32

    #@ce
    .line 903
    .end local v32    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_2
    throw v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cf
    .line 907
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v5

    #@d0
    .line 908
    :goto_1
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d3
    .line 907
    throw v5

    #@d4
    .line 896
    .restart local v28    # "outError":[Ljava/lang/String;
    .restart local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :cond_1
    :try_start_3
    move-object/from16 v0, v33

    #@d6
    move-object/from16 v1, v30

    #@d8
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    #@da
    .line 897
    move-object/from16 v0, v23

    #@dc
    move-object/from16 v1, v30

    #@de
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@e0
    .line 898
    const/4 v5, 0x0

    #@e1
    move-object/from16 v0, v30

    #@e3
    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@e5
    .line 908
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e8
    .line 900
    return-object v30

    #@e9
    .line 904
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v32    # "res":Landroid/content/res/Resources;
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v31    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v26

    #@ea
    .line 905
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v26, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    #@ec
    .line 906
    new-instance v6, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string/jumbo v7, "Failed to read manifest from "

    #@f4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v6

    #@f8
    move-object/from16 v0, v23

    #@fa
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v6

    #@fe
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v6

    #@102
    .line 905
    const/16 v7, -0x66

    #@104
    move-object/from16 v0, v26

    #@106
    invoke-direct {v5, v7, v6, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@109
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@10a
    .line 907
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v5

    #@10b
    move-object/from16 v31, v32

    #@10d
    .end local v32    # "res":Landroid/content/res/Resources;
    .local v31, "res":Landroid/content/res/Resources;
    goto :goto_1

    #@10e
    .line 902
    .restart local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .local v31, "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v25

    #@10f
    .restart local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    goto :goto_0

    #@110
    .line 904
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "res":Landroid/content/res/Resources;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v26

    #@111
    .restart local v26    # "e":Ljava/lang/Exception;
    move-object/from16 v31, v32

    #@113
    .end local v32    # "res":Landroid/content/res/Resources;
    .local v31, "res":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z
    .locals 34
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2408
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    move-object/from16 v16, v0

    #@6
    .line 2409
    .local v16, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    #@8
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@c
    move-object/from16 v24, v0

    #@e
    .line 2412
    .local v24, "pkgName":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    #@10
    .line 2411
    move-object/from16 v0, p2

    #@12
    move-object/from16 v1, p4

    #@14
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@17
    move-result-object v29

    #@18
    .line 2415
    .local v29, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    #@19
    const/4 v4, 0x0

    #@1a
    .line 2414
    move-object/from16 v0, v29

    #@1c
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1f
    move-result-object v22

    #@20
    .line 2416
    .local v22, "name":Ljava/lang/String;
    if-eqz v22, :cond_0

    #@22
    .line 2417
    move-object/from16 v0, v24

    #@24
    move-object/from16 v1, v22

    #@26
    move-object/from16 v2, p6

    #@28
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    move-object/from16 v0, v16

    #@2e
    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@30
    .line 2418
    move-object/from16 v0, v16

    #@32
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@34
    if-nez v3, :cond_0

    #@36
    .line 2419
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    #@39
    .line 2420
    const/16 v3, -0x6c

    #@3b
    move-object/from16 v0, p0

    #@3d
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@3f
    .line 2421
    const/4 v3, 0x0

    #@40
    return v3

    #@41
    .line 2426
    :cond_0
    const/4 v3, 0x4

    #@42
    .line 2427
    const/16 v4, 0x400

    #@44
    .line 2425
    move-object/from16 v0, v29

    #@46
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@49
    move-result-object v21

    #@4a
    .line 2428
    .local v21, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v21, :cond_1

    #@4c
    .line 2429
    move-object/from16 v0, v24

    #@4e
    move-object/from16 v1, v21

    #@50
    move-object/from16 v2, p6

    #@52
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    move-object/from16 v0, v16

    #@58
    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@5a
    .line 2434
    :cond_1
    const/16 v3, 0x11

    #@5c
    const/4 v4, 0x1

    #@5d
    .line 2433
    move-object/from16 v0, v29

    #@5f
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@62
    move-result v17

    #@63
    .line 2435
    .local v17, "allowBackup":Z
    if-eqz v17, :cond_5

    #@65
    .line 2436
    move-object/from16 v0, v16

    #@67
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@69
    const v4, 0x8000

    #@6c
    or-int/2addr v3, v4

    #@6d
    move-object/from16 v0, v16

    #@6f
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@71
    .line 2441
    const/16 v3, 0x10

    #@73
    .line 2442
    const/16 v4, 0x400

    #@75
    .line 2440
    move-object/from16 v0, v29

    #@77
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@7a
    move-result-object v18

    #@7b
    .line 2443
    .local v18, "backupAgent":Ljava/lang/String;
    if-eqz v18, :cond_4

    #@7d
    .line 2444
    move-object/from16 v0, v24

    #@7f
    move-object/from16 v1, v18

    #@81
    move-object/from16 v2, p6

    #@83
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    move-object/from16 v0, v16

    #@89
    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@8b
    .line 2451
    const/16 v3, 0x12

    #@8d
    .line 2452
    const/4 v4, 0x1

    #@8e
    .line 2450
    move-object/from16 v0, v29

    #@90
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@93
    move-result v3

    #@94
    if-eqz v3, :cond_2

    #@96
    .line 2453
    move-object/from16 v0, v16

    #@98
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9a
    const/high16 v4, 0x10000

    #@9c
    or-int/2addr v3, v4

    #@9d
    move-object/from16 v0, v16

    #@9f
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a1
    .line 2456
    :cond_2
    const/16 v3, 0x15

    #@a3
    .line 2457
    const/4 v4, 0x0

    #@a4
    .line 2455
    move-object/from16 v0, v29

    #@a6
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a9
    move-result v3

    #@aa
    if-eqz v3, :cond_3

    #@ac
    .line 2458
    move-object/from16 v0, v16

    #@ae
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@b0
    const/high16 v4, 0x20000

    #@b2
    or-int/2addr v3, v4

    #@b3
    move-object/from16 v0, v16

    #@b5
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@b7
    .line 2461
    :cond_3
    const/16 v3, 0x20

    #@b9
    .line 2462
    const/4 v4, 0x0

    #@ba
    .line 2460
    move-object/from16 v0, v29

    #@bc
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@bf
    move-result v3

    #@c0
    if-eqz v3, :cond_4

    #@c2
    .line 2463
    move-object/from16 v0, v16

    #@c4
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@c6
    const/high16 v4, 0x4000000

    #@c8
    or-int/2addr v3, v4

    #@c9
    move-object/from16 v0, v16

    #@cb
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@cd
    .line 2468
    :cond_4
    const/16 v3, 0x23

    #@cf
    .line 2467
    move-object/from16 v0, v29

    #@d1
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@d4
    move-result-object v33

    #@d5
    .line 2469
    .local v33, "v":Landroid/util/TypedValue;
    if-eqz v33, :cond_5

    #@d7
    move-object/from16 v0, v33

    #@d9
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    #@db
    move-object/from16 v0, v16

    #@dd
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@df
    if-nez v3, :cond_5

    #@e1
    .line 2475
    move-object/from16 v0, v33

    #@e3
    iget v3, v0, Landroid/util/TypedValue;->data:I

    #@e5
    if-nez v3, :cond_18

    #@e7
    const/4 v3, -0x1

    #@e8
    :goto_0
    move-object/from16 v0, v16

    #@ea
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@ec
    .line 2483
    .end local v18    # "backupAgent":Ljava/lang/String;
    .end local v33    # "v":Landroid/util/TypedValue;
    :cond_5
    const/4 v3, 0x1

    #@ed
    .line 2482
    move-object/from16 v0, v29

    #@ef
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@f2
    move-result-object v33

    #@f3
    .line 2484
    .restart local v33    # "v":Landroid/util/TypedValue;
    if-eqz v33, :cond_6

    #@f5
    move-object/from16 v0, v33

    #@f7
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    #@f9
    move-object/from16 v0, v16

    #@fb
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    #@fd
    if-nez v3, :cond_6

    #@ff
    .line 2485
    invoke-virtual/range {v33 .. v33}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@102
    move-result-object v3

    #@103
    move-object/from16 v0, v16

    #@105
    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@107
    .line 2489
    :cond_6
    const/4 v3, 0x2

    #@108
    const/4 v4, 0x0

    #@109
    .line 2488
    move-object/from16 v0, v29

    #@10b
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@10e
    move-result v3

    #@10f
    move-object/from16 v0, v16

    #@111
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    #@113
    .line 2491
    const/16 v3, 0x16

    #@115
    const/4 v4, 0x0

    #@116
    .line 2490
    move-object/from16 v0, v29

    #@118
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@11b
    move-result v3

    #@11c
    move-object/from16 v0, v16

    #@11e
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    #@120
    .line 2493
    const/16 v3, 0x1e

    #@122
    const/4 v4, 0x0

    #@123
    .line 2492
    move-object/from16 v0, v29

    #@125
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@128
    move-result v3

    #@129
    move-object/from16 v0, v16

    #@12b
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    #@12d
    .line 2495
    const/4 v3, 0x0

    #@12e
    const/4 v4, 0x0

    #@12f
    .line 2494
    move-object/from16 v0, v29

    #@131
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@134
    move-result v3

    #@135
    move-object/from16 v0, v16

    #@137
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    #@139
    .line 2497
    const/16 v3, 0xd

    #@13b
    const/4 v4, 0x0

    #@13c
    .line 2496
    move-object/from16 v0, v29

    #@13e
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@141
    move-result v3

    #@142
    move-object/from16 v0, v16

    #@144
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@146
    .line 2499
    and-int/lit8 v3, p5, 0x1

    #@148
    if-eqz v3, :cond_7

    #@14a
    .line 2501
    const/16 v3, 0x8

    #@14c
    .line 2502
    const/4 v4, 0x0

    #@14d
    .line 2500
    move-object/from16 v0, v29

    #@14f
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@152
    move-result v3

    #@153
    if-eqz v3, :cond_7

    #@155
    .line 2503
    move-object/from16 v0, v16

    #@157
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@159
    or-int/lit8 v3, v3, 0x8

    #@15b
    move-object/from16 v0, v16

    #@15d
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@15f
    .line 2508
    :cond_7
    const/16 v3, 0x1b

    #@161
    .line 2509
    const/4 v4, 0x0

    #@162
    .line 2507
    move-object/from16 v0, v29

    #@164
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@167
    move-result v3

    #@168
    if-eqz v3, :cond_8

    #@16a
    .line 2510
    const/4 v3, 0x1

    #@16b
    move-object/from16 v0, p1

    #@16d
    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    #@16f
    .line 2513
    :cond_8
    const/16 v3, 0x1c

    #@171
    move-object/from16 v0, v29

    #@173
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@176
    move-result-object v27

    #@177
    .line 2515
    .local v27, "restrictedAccountType":Ljava/lang/String;
    if-eqz v27, :cond_9

    #@179
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    #@17c
    move-result v3

    #@17d
    if-lez v3, :cond_9

    #@17f
    .line 2516
    move-object/from16 v0, v27

    #@181
    move-object/from16 v1, p1

    #@183
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    #@185
    .line 2519
    :cond_9
    const/16 v3, 0x1d

    #@187
    move-object/from16 v0, v29

    #@189
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@18c
    move-result-object v26

    #@18d
    .line 2521
    .local v26, "requiredAccountType":Ljava/lang/String;
    if-eqz v26, :cond_a

    #@18f
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    #@192
    move-result v3

    #@193
    if-lez v3, :cond_a

    #@195
    .line 2522
    move-object/from16 v0, v26

    #@197
    move-object/from16 v1, p1

    #@199
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    #@19b
    .line 2526
    :cond_a
    const/16 v3, 0xa

    #@19d
    .line 2527
    const/4 v4, 0x0

    #@19e
    .line 2525
    move-object/from16 v0, v29

    #@1a0
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1a3
    move-result v3

    #@1a4
    if-eqz v3, :cond_b

    #@1a6
    .line 2528
    move-object/from16 v0, v16

    #@1a8
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1aa
    or-int/lit8 v3, v3, 0x2

    #@1ac
    move-object/from16 v0, v16

    #@1ae
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1b0
    .line 2532
    :cond_b
    const/16 v3, 0x14

    #@1b2
    .line 2533
    const/4 v4, 0x0

    #@1b3
    .line 2531
    move-object/from16 v0, v29

    #@1b5
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b8
    move-result v3

    #@1b9
    if-eqz v3, :cond_c

    #@1bb
    .line 2534
    move-object/from16 v0, v16

    #@1bd
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1bf
    or-int/lit16 v3, v3, 0x4000

    #@1c1
    move-object/from16 v0, v16

    #@1c3
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1c5
    .line 2539
    :cond_c
    move-object/from16 v0, p1

    #@1c7
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1c9
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@1cb
    const/16 v4, 0xe

    #@1cd
    if-lt v3, v4, :cond_19

    #@1cf
    const/4 v3, 0x1

    #@1d0
    .line 2538
    :goto_1
    const/16 v4, 0x17

    #@1d2
    .line 2537
    move-object/from16 v0, v29

    #@1d4
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d7
    move-result v3

    #@1d8
    move-object/from16 v0, p1

    #@1da
    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@1dc
    .line 2540
    move-object/from16 v0, p1

    #@1de
    iget-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@1e0
    if-eqz v3, :cond_d

    #@1e2
    .line 2541
    move-object/from16 v0, v16

    #@1e4
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1e6
    const/high16 v4, 0x20000000

    #@1e8
    or-int/2addr v3, v4

    #@1e9
    move-object/from16 v0, v16

    #@1eb
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1ed
    .line 2545
    :cond_d
    const/4 v3, 0x7

    #@1ee
    .line 2546
    const/4 v4, 0x1

    #@1ef
    .line 2544
    move-object/from16 v0, v29

    #@1f1
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1f4
    move-result v3

    #@1f5
    if-eqz v3, :cond_e

    #@1f7
    .line 2547
    move-object/from16 v0, v16

    #@1f9
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1fb
    or-int/lit8 v3, v3, 0x4

    #@1fd
    move-object/from16 v0, v16

    #@1ff
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@201
    .line 2551
    :cond_e
    const/16 v3, 0xe

    #@203
    .line 2552
    const/4 v4, 0x0

    #@204
    .line 2550
    move-object/from16 v0, v29

    #@206
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@209
    move-result v3

    #@20a
    if-eqz v3, :cond_f

    #@20c
    .line 2553
    move-object/from16 v0, v16

    #@20e
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@210
    or-int/lit8 v3, v3, 0x20

    #@212
    move-object/from16 v0, v16

    #@214
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@216
    .line 2557
    :cond_f
    const/4 v3, 0x5

    #@217
    .line 2558
    const/4 v4, 0x1

    #@218
    .line 2556
    move-object/from16 v0, v29

    #@21a
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@21d
    move-result v3

    #@21e
    if-eqz v3, :cond_10

    #@220
    .line 2559
    move-object/from16 v0, v16

    #@222
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@224
    or-int/lit8 v3, v3, 0x40

    #@226
    move-object/from16 v0, v16

    #@228
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@22a
    .line 2563
    :cond_10
    const/16 v3, 0xf

    #@22c
    .line 2564
    const/4 v4, 0x0

    #@22d
    .line 2562
    move-object/from16 v0, v29

    #@22f
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@232
    move-result v3

    #@233
    if-eqz v3, :cond_11

    #@235
    .line 2565
    move-object/from16 v0, v16

    #@237
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@239
    or-int/lit16 v3, v3, 0x100

    #@23b
    move-object/from16 v0, v16

    #@23d
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@23f
    .line 2569
    :cond_11
    const/16 v3, 0x18

    #@241
    .line 2570
    const/4 v4, 0x0

    #@242
    .line 2568
    move-object/from16 v0, v29

    #@244
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@247
    move-result v3

    #@248
    if-eqz v3, :cond_12

    #@24a
    .line 2571
    move-object/from16 v0, v16

    #@24c
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@24e
    const/high16 v4, 0x100000

    #@250
    or-int/2addr v3, v4

    #@251
    move-object/from16 v0, v16

    #@253
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@255
    .line 2575
    :cond_12
    const/16 v3, 0x24

    #@257
    .line 2576
    const/4 v4, 0x1

    #@258
    .line 2574
    move-object/from16 v0, v29

    #@25a
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@25d
    move-result v3

    #@25e
    if-eqz v3, :cond_13

    #@260
    .line 2577
    move-object/from16 v0, v16

    #@262
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@264
    const/high16 v4, 0x8000000

    #@266
    or-int/2addr v3, v4

    #@267
    move-object/from16 v0, v16

    #@269
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@26b
    .line 2581
    :cond_13
    const/16 v3, 0x1a

    #@26d
    .line 2582
    const/4 v4, 0x0

    #@26e
    .line 2580
    move-object/from16 v0, v29

    #@270
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@273
    move-result v3

    #@274
    if-eqz v3, :cond_14

    #@276
    .line 2583
    move-object/from16 v0, v16

    #@278
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@27a
    const/high16 v4, 0x400000

    #@27c
    or-int/2addr v3, v4

    #@27d
    move-object/from16 v0, v16

    #@27f
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@281
    .line 2587
    :cond_14
    const/16 v3, 0x21

    #@283
    .line 2588
    const/4 v4, 0x0

    #@284
    .line 2586
    move-object/from16 v0, v29

    #@286
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@289
    move-result v3

    #@28a
    if-eqz v3, :cond_15

    #@28c
    .line 2589
    move-object/from16 v0, v16

    #@28e
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@290
    const/high16 v4, -0x80000000

    #@292
    or-int/2addr v3, v4

    #@293
    move-object/from16 v0, v16

    #@295
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@297
    .line 2593
    :cond_15
    const/16 v3, 0x22

    #@299
    .line 2594
    const/4 v4, 0x1

    #@29a
    .line 2592
    move-object/from16 v0, v29

    #@29c
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@29f
    move-result v3

    #@2a0
    if-eqz v3, :cond_16

    #@2a2
    .line 2595
    move-object/from16 v0, v16

    #@2a4
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2a6
    const/high16 v4, 0x10000000

    #@2a8
    or-int/2addr v3, v4

    #@2a9
    move-object/from16 v0, v16

    #@2ab
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2ad
    .line 2600
    :cond_16
    const/4 v3, 0x6

    #@2ae
    const/4 v4, 0x0

    #@2af
    .line 2599
    move-object/from16 v0, v29

    #@2b1
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@2b4
    move-result-object v30

    #@2b5
    .line 2601
    .local v30, "str":Ljava/lang/String;
    if-eqz v30, :cond_1a

    #@2b7
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    #@2ba
    move-result v3

    #@2bb
    if-lez v3, :cond_1a

    #@2bd
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@2c0
    move-result-object v3

    #@2c1
    :goto_2
    move-object/from16 v0, v16

    #@2c3
    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@2c5
    .line 2603
    move-object/from16 v0, p1

    #@2c7
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2c9
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2cb
    const/16 v4, 0x8

    #@2cd
    if-lt v3, v4, :cond_1b

    #@2cf
    .line 2605
    const/16 v3, 0xc

    #@2d1
    .line 2606
    const/16 v4, 0x400

    #@2d3
    .line 2604
    move-object/from16 v0, v29

    #@2d5
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@2d8
    move-result-object v30

    #@2d9
    .line 2614
    :goto_3
    move-object/from16 v0, v16

    #@2db
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2dd
    move-object/from16 v0, v16

    #@2df
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2e1
    move-object/from16 v0, v30

    #@2e3
    move-object/from16 v1, p6

    #@2e5
    invoke-static {v3, v4, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@2e8
    move-result-object v3

    #@2e9
    move-object/from16 v0, v16

    #@2eb
    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@2ed
    .line 2617
    const/4 v3, 0x0

    #@2ee
    aget-object v3, p6, v3

    #@2f0
    if-nez v3, :cond_17

    #@2f2
    .line 2619
    move-object/from16 v0, p1

    #@2f4
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2f6
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2f8
    const/16 v4, 0x8

    #@2fa
    if-lt v3, v4, :cond_1c

    #@2fc
    .line 2621
    const/16 v3, 0xb

    #@2fe
    .line 2622
    const/16 v4, 0x400

    #@300
    .line 2620
    move-object/from16 v0, v29

    #@302
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@305
    move-result-object v5

    #@306
    .line 2630
    .local v5, "pname":Ljava/lang/CharSequence;
    :goto_4
    move-object/from16 v0, v16

    #@308
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@30a
    .line 2631
    move-object/from16 v0, p0

    #@30c
    iget-object v7, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@30e
    .line 2630
    const/4 v4, 0x0

    #@30f
    move/from16 v6, p5

    #@311
    move-object/from16 v8, p6

    #@313
    invoke-static/range {v3 .. v8}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@316
    move-result-object v3

    #@317
    move-object/from16 v0, v16

    #@319
    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@31b
    .line 2634
    const/16 v3, 0x9

    #@31d
    const/4 v4, 0x1

    #@31e
    .line 2633
    move-object/from16 v0, v29

    #@320
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@323
    move-result v3

    #@324
    move-object/from16 v0, v16

    #@326
    iput-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@328
    .line 2637
    const/16 v3, 0x1f

    #@32a
    const/4 v4, 0x0

    #@32b
    .line 2636
    move-object/from16 v0, v29

    #@32d
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@330
    move-result v3

    #@331
    if-eqz v3, :cond_17

    #@333
    .line 2638
    move-object/from16 v0, v16

    #@335
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@337
    const/high16 v4, 0x2000000

    #@339
    or-int/2addr v3, v4

    #@33a
    move-object/from16 v0, v16

    #@33c
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@33e
    .line 2657
    .end local v5    # "pname":Ljava/lang/CharSequence;
    :cond_17
    const/16 v3, 0x19

    #@340
    const/4 v4, 0x0

    #@341
    .line 2656
    move-object/from16 v0, v29

    #@343
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@346
    move-result v3

    #@347
    move-object/from16 v0, v16

    #@349
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@34b
    .line 2659
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    #@34e
    .line 2661
    const/4 v3, 0x0

    #@34f
    aget-object v3, p6, v3

    #@351
    if-eqz v3, :cond_1d

    #@353
    .line 2662
    const/16 v3, -0x6c

    #@355
    move-object/from16 v0, p0

    #@357
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@359
    .line 2663
    const/4 v3, 0x0

    #@35a
    return v3

    #@35b
    .line 2475
    .end local v26    # "requiredAccountType":Ljava/lang/String;
    .end local v27    # "restrictedAccountType":Ljava/lang/String;
    .end local v30    # "str":Ljava/lang/String;
    .restart local v18    # "backupAgent":Ljava/lang/String;
    :cond_18
    const/4 v3, 0x0

    #@35c
    goto/16 :goto_0

    #@35e
    .line 2539
    .end local v18    # "backupAgent":Ljava/lang/String;
    .restart local v26    # "requiredAccountType":Ljava/lang/String;
    .restart local v27    # "restrictedAccountType":Ljava/lang/String;
    :cond_19
    const/4 v3, 0x0

    #@35f
    goto/16 :goto_1

    #@361
    .line 2601
    .restart local v30    # "str":Ljava/lang/String;
    :cond_1a
    const/4 v3, 0x0

    #@362
    goto/16 :goto_2

    #@364
    .line 2612
    :cond_1b
    const/16 v3, 0xc

    #@366
    .line 2611
    move-object/from16 v0, v29

    #@368
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@36b
    move-result-object v30

    #@36c
    goto/16 :goto_3

    #@36e
    .line 2628
    :cond_1c
    const/16 v3, 0xb

    #@370
    .line 2627
    move-object/from16 v0, v29

    #@372
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@375
    move-result-object v5

    #@376
    .restart local v5    # "pname":Ljava/lang/CharSequence;
    goto :goto_4

    #@377
    .line 2666
    .end local v5    # "pname":Ljava/lang/CharSequence;
    :cond_1d
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@37a
    move-result v19

    #@37b
    .line 2668
    .local v19, "innerDepth":I
    :cond_1e
    :goto_5
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@37e
    move-result v32

    #@37f
    .local v32, "type":I
    const/4 v3, 0x1

    #@380
    move/from16 v0, v32

    #@382
    if-eq v0, v3, :cond_31

    #@384
    .line 2669
    const/4 v3, 0x3

    #@385
    move/from16 v0, v32

    #@387
    if-ne v0, v3, :cond_1f

    #@389
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@38c
    move-result v3

    #@38d
    move/from16 v0, v19

    #@38f
    if-le v3, v0, :cond_31

    #@391
    .line 2670
    :cond_1f
    const/4 v3, 0x3

    #@392
    move/from16 v0, v32

    #@394
    if-eq v0, v3, :cond_1e

    #@396
    const/4 v3, 0x4

    #@397
    move/from16 v0, v32

    #@399
    if-eq v0, v3, :cond_1e

    #@39b
    .line 2674
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@39e
    move-result-object v31

    #@39f
    .line 2675
    .local v31, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "activity"

    #@3a2
    move-object/from16 v0, v31

    #@3a4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a7
    move-result v3

    #@3a8
    if-eqz v3, :cond_21

    #@3aa
    .line 2677
    move-object/from16 v0, p1

    #@3ac
    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@3ae
    .line 2676
    const/4 v13, 0x0

    #@3af
    move-object/from16 v6, p0

    #@3b1
    move-object/from16 v7, p1

    #@3b3
    move-object/from16 v8, p2

    #@3b5
    move-object/from16 v9, p3

    #@3b7
    move-object/from16 v10, p4

    #@3b9
    move/from16 v11, p5

    #@3bb
    move-object/from16 v12, p6

    #@3bd
    invoke-direct/range {v6 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    #@3c0
    move-result-object v15

    #@3c1
    .line 2678
    .local v15, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_20

    #@3c3
    .line 2679
    const/16 v3, -0x6c

    #@3c5
    move-object/from16 v0, p0

    #@3c7
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@3c9
    .line 2680
    const/4 v3, 0x0

    #@3ca
    return v3

    #@3cb
    .line 2683
    :cond_20
    move-object/from16 v0, p1

    #@3cd
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@3cf
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d2
    goto :goto_5

    #@3d3
    .line 2685
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_21
    const-string/jumbo v3, "receiver"

    #@3d6
    move-object/from16 v0, v31

    #@3d8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3db
    move-result v3

    #@3dc
    if-eqz v3, :cond_23

    #@3de
    .line 2686
    const/4 v13, 0x1

    #@3df
    const/4 v14, 0x0

    #@3e0
    move-object/from16 v6, p0

    #@3e2
    move-object/from16 v7, p1

    #@3e4
    move-object/from16 v8, p2

    #@3e6
    move-object/from16 v9, p3

    #@3e8
    move-object/from16 v10, p4

    #@3ea
    move/from16 v11, p5

    #@3ec
    move-object/from16 v12, p6

    #@3ee
    invoke-direct/range {v6 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    #@3f1
    move-result-object v15

    #@3f2
    .line 2687
    .restart local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_22

    #@3f4
    .line 2688
    const/16 v3, -0x6c

    #@3f6
    move-object/from16 v0, p0

    #@3f8
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@3fa
    .line 2689
    const/4 v3, 0x0

    #@3fb
    return v3

    #@3fc
    .line 2692
    :cond_22
    move-object/from16 v0, p1

    #@3fe
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@400
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@403
    goto/16 :goto_5

    #@405
    .line 2694
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_23
    const-string/jumbo v3, "service"

    #@408
    move-object/from16 v0, v31

    #@40a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40d
    move-result v3

    #@40e
    if-eqz v3, :cond_25

    #@410
    .line 2695
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    #@413
    move-result-object v28

    #@414
    .line 2696
    .local v28, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v28, :cond_24

    #@416
    .line 2697
    const/16 v3, -0x6c

    #@418
    move-object/from16 v0, p0

    #@41a
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@41c
    .line 2698
    const/4 v3, 0x0

    #@41d
    return v3

    #@41e
    .line 2701
    :cond_24
    move-object/from16 v0, p1

    #@420
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@422
    move-object/from16 v0, v28

    #@424
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@427
    goto/16 :goto_5

    #@429
    .line 2703
    .end local v28    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_25
    const-string/jumbo v3, "provider"

    #@42c
    move-object/from16 v0, v31

    #@42e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@431
    move-result v3

    #@432
    if-eqz v3, :cond_27

    #@434
    .line 2704
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    #@437
    move-result-object v23

    #@438
    .line 2705
    .local v23, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v23, :cond_26

    #@43a
    .line 2706
    const/16 v3, -0x6c

    #@43c
    move-object/from16 v0, p0

    #@43e
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@440
    .line 2707
    const/4 v3, 0x0

    #@441
    return v3

    #@442
    .line 2710
    :cond_26
    move-object/from16 v0, p1

    #@444
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@446
    move-object/from16 v0, v23

    #@448
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@44b
    goto/16 :goto_5

    #@44d
    .line 2712
    .end local v23    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_27
    const-string/jumbo v3, "activity-alias"

    #@450
    move-object/from16 v0, v31

    #@452
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@455
    move-result v3

    #@456
    if-eqz v3, :cond_29

    #@458
    .line 2713
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    #@45b
    move-result-object v15

    #@45c
    .line 2714
    .restart local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_28

    #@45e
    .line 2715
    const/16 v3, -0x6c

    #@460
    move-object/from16 v0, p0

    #@462
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@464
    .line 2716
    const/4 v3, 0x0

    #@465
    return v3

    #@466
    .line 2719
    :cond_28
    move-object/from16 v0, p1

    #@468
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@46a
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46d
    goto/16 :goto_5

    #@46f
    .line 2721
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_29
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@472
    move-result-object v3

    #@473
    const-string/jumbo v4, "meta-data"

    #@476
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@479
    move-result v3

    #@47a
    if-eqz v3, :cond_2a

    #@47c
    .line 2725
    move-object/from16 v0, p1

    #@47e
    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@480
    move-object/from16 v6, p0

    #@482
    move-object/from16 v7, p2

    #@484
    move-object/from16 v8, p3

    #@486
    move-object/from16 v9, p4

    #@488
    move-object/from16 v11, p6

    #@48a
    invoke-direct/range {v6 .. v11}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@48d
    move-result-object v3

    #@48e
    move-object/from16 v0, p1

    #@490
    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@492
    if-nez v3, :cond_1e

    #@494
    .line 2727
    const/16 v3, -0x6c

    #@496
    move-object/from16 v0, p0

    #@498
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@49a
    .line 2728
    const/4 v3, 0x0

    #@49b
    return v3

    #@49c
    .line 2731
    :cond_2a
    const-string/jumbo v3, "library"

    #@49f
    move-object/from16 v0, v31

    #@4a1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a4
    move-result v3

    #@4a5
    if-eqz v3, :cond_2c

    #@4a7
    .line 2733
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    #@4a9
    .line 2732
    move-object/from16 v0, p2

    #@4ab
    move-object/from16 v1, p4

    #@4ad
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@4b0
    move-result-object v29

    #@4b1
    .line 2738
    const/4 v3, 0x0

    #@4b2
    .line 2737
    move-object/from16 v0, v29

    #@4b4
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@4b7
    move-result-object v20

    #@4b8
    .line 2740
    .local v20, "lname":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    #@4bb
    .line 2742
    if-eqz v20, :cond_2b

    #@4bd
    .line 2743
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@4c0
    move-result-object v20

    #@4c1
    .line 2744
    move-object/from16 v0, p1

    #@4c3
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@4c5
    move-object/from16 v0, v20

    #@4c7
    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    #@4ca
    move-result v3

    #@4cb
    if-nez v3, :cond_2b

    #@4cd
    .line 2745
    move-object/from16 v0, p1

    #@4cf
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@4d1
    move-object/from16 v0, v20

    #@4d3
    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@4d6
    move-result-object v3

    #@4d7
    move-object/from16 v0, p1

    #@4d9
    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@4db
    .line 2749
    :cond_2b
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4de
    goto/16 :goto_5

    #@4e0
    .line 2751
    .end local v20    # "lname":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v3, "uses-library"

    #@4e3
    move-object/from16 v0, v31

    #@4e5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e8
    move-result v3

    #@4e9
    if-eqz v3, :cond_2f

    #@4eb
    .line 2753
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    #@4ed
    .line 2752
    move-object/from16 v0, p2

    #@4ef
    move-object/from16 v1, p4

    #@4f1
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@4f4
    move-result-object v29

    #@4f5
    .line 2758
    const/4 v3, 0x0

    #@4f6
    .line 2757
    move-object/from16 v0, v29

    #@4f8
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@4fb
    move-result-object v20

    #@4fc
    .line 2760
    .restart local v20    # "lname":Ljava/lang/String;
    const/4 v3, 0x1

    #@4fd
    .line 2761
    const/4 v4, 0x1

    #@4fe
    .line 2759
    move-object/from16 v0, v29

    #@500
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@503
    move-result v25

    #@504
    .line 2763
    .local v25, "req":Z
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    #@507
    .line 2765
    if-eqz v20, :cond_2d

    #@509
    .line 2766
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@50c
    move-result-object v20

    #@50d
    .line 2767
    if-eqz v25, :cond_2e

    #@50f
    .line 2768
    move-object/from16 v0, p1

    #@511
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@513
    move-object/from16 v0, v20

    #@515
    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@518
    move-result-object v3

    #@519
    move-object/from16 v0, p1

    #@51b
    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@51d
    .line 2775
    :cond_2d
    :goto_6
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@520
    goto/16 :goto_5

    #@522
    .line 2771
    :cond_2e
    move-object/from16 v0, p1

    #@524
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@526
    .line 2770
    move-object/from16 v0, v20

    #@528
    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@52b
    move-result-object v3

    #@52c
    move-object/from16 v0, p1

    #@52e
    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@530
    goto :goto_6

    #@531
    .line 2777
    .end local v20    # "lname":Ljava/lang/String;
    .end local v25    # "req":Z
    :cond_2f
    const-string/jumbo v3, "uses-package"

    #@534
    move-object/from16 v0, v31

    #@536
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@539
    move-result v3

    #@53a
    if-eqz v3, :cond_30

    #@53c
    .line 2780
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@53f
    goto/16 :goto_5

    #@541
    .line 2784
    :cond_30
    const-string/jumbo v3, "PackageParser"

    #@544
    new-instance v4, Ljava/lang/StringBuilder;

    #@546
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@549
    const-string/jumbo v6, "Unknown element under <application>: "

    #@54c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54f
    move-result-object v4

    #@550
    move-object/from16 v0, v31

    #@552
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@555
    move-result-object v4

    #@556
    .line 2785
    const-string/jumbo v6, " at "

    #@559
    .line 2784
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55c
    move-result-object v4

    #@55d
    .line 2785
    move-object/from16 v0, p0

    #@55f
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@561
    .line 2784
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@564
    move-result-object v4

    #@565
    .line 2785
    const-string/jumbo v6, " "

    #@568
    .line 2784
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56b
    move-result-object v4

    #@56c
    .line 2786
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@56f
    move-result-object v6

    #@570
    .line 2784
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@573
    move-result-object v4

    #@574
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@577
    move-result-object v4

    #@578
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57b
    .line 2787
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@57e
    goto/16 :goto_5

    #@580
    .line 2797
    .end local v31    # "tagName":Ljava/lang/String;
    :cond_31
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V

    #@583
    .line 2799
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    #@586
    move-result v3

    #@587
    if-eqz v3, :cond_32

    #@589
    .line 2800
    move-object/from16 v0, p1

    #@58b
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@58d
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@58f
    or-int/lit8 v4, v4, 0x10

    #@591
    iput v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@593
    .line 2805
    :goto_7
    const/4 v3, 0x1

    #@594
    return v3

    #@595
    .line 2802
    :cond_32
    move-object/from16 v0, p1

    #@597
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@599
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@59b
    and-int/lit8 v4, v4, -0x11

    #@59d
    iput v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@59f
    goto :goto_7
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
    .line 770
    invoke-static {p1, v7}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@4
    move-result-object v3

    #@5
    .line 772
    .local v3, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v8, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    #@7
    if-eqz v8, :cond_0

    #@9
    iget-boolean v8, v3, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    #@b
    if-eqz v8, :cond_1

    #@d
    .line 777
    :cond_0
    new-instance v0, Landroid/content/res/AssetManager;

    #@f
    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    #@12
    .line 781
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    #@14
    invoke-static {v0, v8, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    #@17
    .line 783
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@19
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@1c
    move-result v8

    #@1d
    if-nez v8, :cond_2

    #@1f
    .line 784
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@21
    array-length v9, v8

    #@22
    :goto_0
    if-ge v7, v9, :cond_2

    #@24
    aget-object v5, v8, v7

    #@26
    .line 785
    .local v5, "path":Ljava/lang/String;
    invoke-static {v0, v5, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 784
    add-int/lit8 v7, v7, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 773
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "path":Ljava/lang/String;
    :cond_1
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    #@2e
    .line 774
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
    .line 773
    const/16 v9, -0x6c

    #@44
    invoke-direct {v7, v9, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@47
    throw v7

    #@48
    .line 789
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@4a
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    #@4c
    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@4f
    .line 790
    .local v1, "baseApk":Ljava/io/File;
    invoke-direct {p0, v1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    #@52
    move-result-object v6

    #@53
    .line 791
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v6, :cond_3

    #@55
    .line 792
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    #@57
    .line 793
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
    .line 792
    const/16 v9, -0x64

    #@6d
    invoke-direct {v7, v9, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@70
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    .line 811
    .end local v1    # "baseApk":Ljava/io/File;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v7

    #@72
    .line 812
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@75
    .line 811
    throw v7

    #@76
    .line 796
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
    .line 797
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@80
    array-length v4, v7

    #@81
    .line 798
    .local v4, "num":I
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@83
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@85
    .line 799
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@87
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@89
    .line 800
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    #@8b
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    #@8d
    .line 801
    new-array v7, v4, [I

    #@8f
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    #@91
    .line 802
    new-array v7, v4, [I

    #@93
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    #@95
    .line 804
    const/4 v2, 0x0

    #@96
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    #@98
    .line 805
    invoke-direct {p0, v6, v2, v0, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    #@9b
    .line 804
    add-int/lit8 v2, v2, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 809
    .end local v2    # "i":I
    .end local v4    # "num":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@a1
    move-result-object v7

    #@a2
    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a4
    .line 812
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a7
    .line 810
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
    .line 666
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v9

    #@4
    .line 667
    .local v9, "files":[Ljava/io/File;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 668
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@c
    .line 669
    const-string/jumbo v15, "No packages found in split"

    #@f
    .line 668
    const/16 v16, -0x64

    #@11
    move/from16 v0, v16

    #@13
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 672
    :cond_0
    const/4 v12, 0x0

    #@18
    .line 673
    .local v12, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    #@19
    .line 675
    .local v14, "versionCode":I
    new-instance v7, Landroid/util/ArrayMap;

    #@1b
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    #@1e
    .line 676
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
    .line 677
    .local v8, "file":Ljava/io/File;
    invoke-static {v8}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    #@27
    move-result v16

    #@28
    if-eqz v16, :cond_4

    #@2a
    .line 678
    move/from16 v0, p1

    #@2c
    invoke-static {v8, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    #@2f
    move-result-object v11

    #@30
    .line 682
    .local v11, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v12, :cond_2

    #@32
    .line 683
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@34
    .line 684
    .local v12, "packageName":Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@36
    .line 699
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
    .line 700
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@44
    .line 701
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
    .line 702
    const-string/jumbo v16, " defined more than once; most recent was "

    #@5b
    .line 701
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
    .line 700
    const/16 v16, -0x65

    #@69
    move/from16 v0, v16

    #@6b
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@6e
    throw v1

    #@6f
    .line 686
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
    .line 687
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@7d
    .line 688
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
    .line 689
    const-string/jumbo v16, "; expected "

    #@9f
    .line 688
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
    .line 687
    const/16 v16, -0x65

    #@ad
    move/from16 v0, v16

    #@af
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@b2
    throw v1

    #@b3
    .line 691
    :cond_3
    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@b5
    move/from16 v16, v0

    #@b7
    move/from16 v0, v16

    #@b9
    if-eq v14, v0, :cond_1

    #@bb
    .line 692
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@bd
    .line 693
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
    .line 694
    const-string/jumbo v16, "; expected "

    #@df
    .line 693
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
    .line 692
    const/16 v16, -0x65

    #@ed
    move/from16 v0, v16

    #@ef
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@f2
    throw v1

    #@f3
    .line 676
    .end local v11    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@f5
    goto/16 :goto_0

    #@f7
    .line 707
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
    .line 708
    .local v3, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v3, :cond_6

    #@100
    .line 709
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    #@102
    .line 710
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
    .line 709
    const/16 v16, -0x65

    #@11a
    move/from16 v0, v16

    #@11c
    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@11f
    throw v1

    #@120
    .line 714
    :cond_6
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@123
    move-result v13

    #@124
    .line 716
    .local v13, "size":I
    const/4 v4, 0x0

    #@125
    .line 717
    .local v4, "splitNames":[Ljava/lang/String;
    const/4 v5, 0x0

    #@126
    .line 718
    .local v5, "splitCodePaths":[Ljava/lang/String;
    const/4 v6, 0x0

    #@127
    .line 719
    .local v6, "splitRevisionCodes":[I
    if-lez v13, :cond_7

    #@129
    .line 720
    new-array v4, v13, [Ljava/lang/String;

    #@12b
    .line 721
    .local v4, "splitNames":[Ljava/lang/String;
    new-array v5, v13, [Ljava/lang/String;

    #@12d
    .line 722
    .local v5, "splitCodePaths":[Ljava/lang/String;
    new-array v6, v13, [I

    #@12f
    .line 724
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
    .line 725
    .restart local v4    # "splitNames":[Ljava/lang/String;
    sget-object v1, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    #@13b
    invoke-static {v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@13e
    .line 727
    const/4 v10, 0x0

    #@13f
    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_7

    #@141
    .line 728
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
    .line 729
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
    .line 727
    add-int/lit8 v10, v10, 0x1

    #@15b
    goto :goto_1

    #@15c
    .line 733
    .end local v4    # "splitNames":[Ljava/lang/String;
    .end local v5    # "splitCodePaths":[Ljava/lang/String;
    .end local v6    # "splitRevisionCodes":[I
    .end local v10    # "i":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@15f
    move-result-object v2

    #@160
    .line 734
    .local v2, "codePath":Ljava/lang/String;
    new-instance v1, Landroid/content/pm/PackageParser$PackageLite;

    #@162
    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    #@165
    return-object v1
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 10
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2342
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    #@2
    .line 2341
    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v8

    #@6
    .line 2344
    .local v8, "sa":Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 2345
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@c
    .line 2346
    const/4 v3, 0x2

    #@d
    .line 2347
    const/4 v4, 0x0

    #@e
    .line 2348
    const/4 v5, 0x1

    #@f
    .line 2349
    const/4 v6, 0x6

    #@10
    .line 2350
    const/4 v7, 0x7

    #@11
    move-object v1, p1

    #@12
    move-object v2, p5

    #@13
    .line 2345
    invoke-direct/range {v0 .. v7}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII)V

    #@16
    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@18
    .line 2351
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@1a
    const-string/jumbo v1, "<instrumentation>"

    #@1d
    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    #@1f
    .line 2354
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@21
    iput-object v8, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    #@23
    .line 2356
    new-instance v5, Landroid/content/pm/PackageParser$Instrumentation;

    #@25
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@27
    .line 2357
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    #@29
    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    #@2c
    .line 2356
    invoke-direct {v5, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    #@2f
    .line 2358
    .local v5, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    #@30
    aget-object v0, p5, v0

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 2359
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@37
    .line 2360
    const/16 v0, -0x6c

    #@39
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@3b
    .line 2361
    const/4 v0, 0x0

    #@3c
    return-object v0

    #@3d
    .line 2368
    :cond_1
    const/4 v0, 0x3

    #@3e
    .line 2367
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    .line 2369
    .local v9, "str":Ljava/lang/String;
    iget-object v1, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

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
    .line 2371
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@4e
    .line 2372
    const/4 v1, 0x4

    #@4f
    .line 2373
    const/4 v2, 0x0

    #@50
    .line 2371
    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@53
    move-result v1

    #@54
    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    #@56
    .line 2375
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@58
    .line 2376
    const/4 v1, 0x5

    #@59
    .line 2377
    const/4 v2, 0x0

    #@5a
    .line 2375
    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5d
    move-result v1

    #@5e
    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    #@60
    .line 2379
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@63
    .line 2381
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    #@65
    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@67
    if-nez v0, :cond_3

    #@69
    .line 2382
    const-string/jumbo v0, "<instrumentation> does not specify targetPackage"

    #@6c
    const/4 v1, 0x0

    #@6d
    aput-object v0, p5, v1

    #@6f
    .line 2383
    const/16 v0, -0x6c

    #@71
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@73
    .line 2384
    const/4 v0, 0x0

    #@74
    return-object v0

    #@75
    .line 2369
    :cond_2
    const/4 v0, 0x0

    #@76
    goto :goto_0

    #@77
    .line 2387
    :cond_3
    const-string/jumbo v4, "<instrumentation>"

    #@7a
    move-object v0, p0

    #@7b
    move-object v1, p2

    #@7c
    move-object v2, p3

    #@7d
    move-object v3, p4

    #@7e
    move-object v6, p5

    #@7f
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@82
    move-result v0

    #@83
    if-nez v0, :cond_4

    #@85
    .line 2389
    const/16 v0, -0x6c

    #@87
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@89
    .line 2390
    const/4 v0, 0x0

    #@8a
    return-object v0

    #@8b
    .line 2393
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@8d
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@90
    .line 2395
    return-object v5
.end method

.method private parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "allowGlobs"    # Z
    .param p5, "allowAutoVerify"    # Z
    .param p6, "outInfo"    # Landroid/content/pm/PackageParser$IntentInfo;
    .param p7, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 4083
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    #@2
    .line 4082
    move-object/from16 v0, p1

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v8

    #@a
    .line 4086
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v13, 0x2

    #@b
    const/4 v14, 0x0

    #@c
    .line 4085
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f
    move-result v7

    #@10
    .line 4087
    .local v7, "priority":I
    move-object/from16 v0, p6

    #@12
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    #@15
    .line 4090
    const/4 v13, 0x0

    #@16
    .line 4089
    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@19
    move-result-object v11

    #@1a
    .line 4091
    .local v11, "v":Landroid/util/TypedValue;
    if-eqz v11, :cond_0

    #@1c
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    #@1e
    move-object/from16 v0, p6

    #@20
    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    #@22
    if-nez v13, :cond_0

    #@24
    .line 4092
    invoke-virtual {v11}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@27
    move-result-object v13

    #@28
    move-object/from16 v0, p6

    #@2a
    iput-object v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@2c
    .line 4096
    :cond_0
    const/4 v13, 0x1

    #@2d
    const/4 v14, 0x0

    #@2e
    .line 4095
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@31
    move-result v13

    #@32
    move-object/from16 v0, p6

    #@34
    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    #@36
    .line 4099
    const/4 v13, 0x3

    #@37
    const/4 v14, 0x0

    #@38
    .line 4098
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3b
    move-result v13

    #@3c
    move-object/from16 v0, p6

    #@3e
    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    #@40
    .line 4102
    const/4 v13, 0x4

    #@41
    const/4 v14, 0x0

    #@42
    .line 4101
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@45
    move-result v13

    #@46
    move-object/from16 v0, p6

    #@48
    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    #@4a
    .line 4104
    if-eqz p5, :cond_1

    #@4c
    .line 4106
    const/4 v13, 0x5

    #@4d
    .line 4107
    const/4 v14, 0x0

    #@4e
    .line 4105
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@51
    move-result v13

    #@52
    move-object/from16 v0, p6

    #@54
    invoke-virtual {v0, v13}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    #@57
    .line 4110
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@5a
    .line 4112
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5d
    move-result v5

    #@5e
    .line 4114
    .local v5, "outerDepth":I
    :cond_2
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@61
    move-result v10

    #@62
    .local v10, "type":I
    const/4 v13, 0x1

    #@63
    if-eq v10, v13, :cond_16

    #@65
    .line 4115
    const/4 v13, 0x3

    #@66
    if-ne v10, v13, :cond_3

    #@68
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6b
    move-result v13

    #@6c
    if-le v13, v5, :cond_16

    #@6e
    .line 4116
    :cond_3
    const/4 v13, 0x3

    #@6f
    if-eq v10, v13, :cond_2

    #@71
    const/4 v13, 0x4

    #@72
    if-eq v10, v13, :cond_2

    #@74
    .line 4120
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    .line 4121
    .local v4, "nodeName":Ljava/lang/String;
    const-string/jumbo v13, "action"

    #@7b
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v13

    #@7f
    if-eqz v13, :cond_6

    #@81
    .line 4123
    const-string/jumbo v13, "http://schemas.android.com/apk/res/android"

    #@84
    const-string/jumbo v14, "name"

    #@87
    .line 4122
    move-object/from16 v0, p3

    #@89
    invoke-interface {v0, v13, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v12

    #@8d
    .line 4124
    .local v12, "value":Ljava/lang/String;
    if-eqz v12, :cond_4

    #@8f
    const-string/jumbo v13, ""

    #@92
    if-ne v12, v13, :cond_5

    #@94
    .line 4125
    :cond_4
    const-string/jumbo v13, "No value supplied for <android:name>"

    #@97
    const/4 v14, 0x0

    #@98
    aput-object v13, p7, v14

    #@9a
    .line 4126
    const/4 v13, 0x0

    #@9b
    return v13

    #@9c
    .line 4128
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@9f
    .line 4130
    move-object/from16 v0, p6

    #@a1
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    #@a4
    goto :goto_0

    #@a5
    .line 4131
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
    .line 4133
    const-string/jumbo v13, "http://schemas.android.com/apk/res/android"

    #@b1
    const-string/jumbo v14, "name"

    #@b4
    .line 4132
    move-object/from16 v0, p3

    #@b6
    invoke-interface {v0, v13, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b9
    move-result-object v12

    #@ba
    .line 4134
    .restart local v12    # "value":Ljava/lang/String;
    if-eqz v12, :cond_7

    #@bc
    const-string/jumbo v13, ""

    #@bf
    if-ne v12, v13, :cond_8

    #@c1
    .line 4135
    :cond_7
    const-string/jumbo v13, "No value supplied for <android:name>"

    #@c4
    const/4 v14, 0x0

    #@c5
    aput-object v13, p7, v14

    #@c7
    .line 4136
    const/4 v13, 0x0

    #@c8
    return v13

    #@c9
    .line 4138
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@cc
    .line 4140
    move-object/from16 v0, p6

    #@ce
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    #@d1
    goto :goto_0

    #@d2
    .line 4142
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
    .line 4144
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    #@dd
    .line 4143
    move-object/from16 v0, p1

    #@df
    move-object/from16 v1, p3

    #@e1
    invoke-virtual {v0, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@e4
    move-result-object v8

    #@e5
    .line 4147
    const/4 v13, 0x0

    #@e6
    const/4 v14, 0x0

    #@e7
    .line 4146
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@ea
    move-result-object v9

    #@eb
    .line 4148
    .local v9, "str":Ljava/lang/String;
    if-eqz v9, :cond_a

    #@ed
    .line 4150
    :try_start_0
    move-object/from16 v0, p6

    #@ef
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    #@f2
    .line 4159
    :cond_a
    const/4 v13, 0x1

    #@f3
    const/4 v14, 0x0

    #@f4
    .line 4158
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@f7
    move-result-object v9

    #@f8
    .line 4160
    if-eqz v9, :cond_b

    #@fa
    .line 4161
    move-object/from16 v0, p6

    #@fc
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    #@ff
    .line 4165
    :cond_b
    const/4 v13, 0x7

    #@100
    const/4 v14, 0x0

    #@101
    .line 4164
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@104
    move-result-object v9

    #@105
    .line 4166
    if-eqz v9, :cond_c

    #@107
    .line 4167
    const/4 v13, 0x0

    #@108
    move-object/from16 v0, p6

    #@10a
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@10d
    .line 4171
    :cond_c
    const/16 v13, 0x8

    #@10f
    const/4 v14, 0x0

    #@110
    .line 4170
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@113
    move-result-object v9

    #@114
    .line 4172
    if-eqz v9, :cond_d

    #@116
    .line 4173
    const/4 v13, 0x1

    #@117
    move-object/from16 v0, p6

    #@119
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@11c
    .line 4177
    :cond_d
    const/16 v13, 0x9

    #@11e
    const/4 v14, 0x0

    #@11f
    .line 4176
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@122
    move-result-object v9

    #@123
    .line 4178
    if-eqz v9, :cond_f

    #@125
    .line 4179
    if-nez p4, :cond_e

    #@127
    .line 4180
    const-string/jumbo v13, "sspPattern not allowed here; ssp must be literal"

    #@12a
    const/4 v14, 0x0

    #@12b
    aput-object v13, p7, v14

    #@12d
    .line 4181
    const/4 v13, 0x0

    #@12e
    return v13

    #@12f
    .line 4151
    :catch_0
    move-exception v2

    #@130
    .line 4152
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    #@133
    move-result-object v13

    #@134
    const/4 v14, 0x0

    #@135
    aput-object v13, p7, v14

    #@137
    .line 4153
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@13a
    .line 4154
    const/4 v13, 0x0

    #@13b
    return v13

    #@13c
    .line 4183
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_e
    const/4 v13, 0x2

    #@13d
    move-object/from16 v0, p6

    #@13f
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@142
    .line 4187
    :cond_f
    const/4 v13, 0x2

    #@143
    const/4 v14, 0x0

    #@144
    .line 4186
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@147
    move-result-object v3

    #@148
    .line 4189
    .local v3, "host":Ljava/lang/String;
    const/4 v13, 0x3

    #@149
    const/4 v14, 0x0

    #@14a
    .line 4188
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@14d
    move-result-object v6

    #@14e
    .line 4190
    .local v6, "port":Ljava/lang/String;
    if-eqz v3, :cond_10

    #@150
    .line 4191
    move-object/from16 v0, p6

    #@152
    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    #@155
    .line 4195
    :cond_10
    const/4 v13, 0x4

    #@156
    const/4 v14, 0x0

    #@157
    .line 4194
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@15a
    move-result-object v9

    #@15b
    .line 4196
    if-eqz v9, :cond_11

    #@15d
    .line 4197
    const/4 v13, 0x0

    #@15e
    move-object/from16 v0, p6

    #@160
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    #@163
    .line 4201
    :cond_11
    const/4 v13, 0x5

    #@164
    const/4 v14, 0x0

    #@165
    .line 4200
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@168
    move-result-object v9

    #@169
    .line 4202
    if-eqz v9, :cond_12

    #@16b
    .line 4203
    const/4 v13, 0x1

    #@16c
    move-object/from16 v0, p6

    #@16e
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    #@171
    .line 4207
    :cond_12
    const/4 v13, 0x6

    #@172
    const/4 v14, 0x0

    #@173
    .line 4206
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@176
    move-result-object v9

    #@177
    .line 4208
    if-eqz v9, :cond_14

    #@179
    .line 4209
    if-nez p4, :cond_13

    #@17b
    .line 4210
    const-string/jumbo v13, "pathPattern not allowed here; path must be literal"

    #@17e
    const/4 v14, 0x0

    #@17f
    aput-object v13, p7, v14

    #@181
    .line 4211
    const/4 v13, 0x0

    #@182
    return v13

    #@183
    .line 4213
    :cond_13
    const/4 v13, 0x2

    #@184
    move-object/from16 v0, p6

    #@186
    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    #@189
    .line 4216
    :cond_14
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@18c
    .line 4217
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@18f
    goto/16 :goto_0

    #@191
    .line 4219
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
    .line 4220
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a3
    move-result-object v15

    #@1a4
    .line 4219
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v14

    #@1a8
    .line 4220
    const-string/jumbo v15, " at "

    #@1ab
    .line 4219
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v14

    #@1af
    .line 4220
    move-object/from16 v0, p0

    #@1b1
    iget-object v15, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@1b3
    .line 4219
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v14

    #@1b7
    .line 4220
    const-string/jumbo v15, " "

    #@1ba
    .line 4219
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v14

    #@1be
    .line 4221
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@1c1
    move-result-object v15

    #@1c2
    .line 4219
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
    .line 4222
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1d0
    goto/16 :goto_0

    #@1d2
    .line 4229
    .end local v4    # "nodeName":Ljava/lang/String;
    :cond_16
    const-string/jumbo v13, "android.intent.category.DEFAULT"

    #@1d5
    move-object/from16 v0, p6

    #@1d7
    invoke-virtual {v0, v13}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    #@1da
    move-result v13

    #@1db
    move-object/from16 v0, p6

    #@1dd
    iput-boolean v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    #@1df
    .line 4246
    const/4 v13, 0x1

    #@1e0
    return v13
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z
    .locals 27
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2037
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v14

    #@4
    .line 2038
    .local v14, "outerDepth":I
    const/4 v5, -0x1

    #@5
    .line 2040
    .local v5, "currentKeySetDepth":I
    const/4 v4, 0x0

    #@6
    .line 2041
    .local v4, "currentKeySet":Ljava/lang/String;
    new-instance v17, Landroid/util/ArrayMap;

    #@8
    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    #@b
    .line 2042
    .local v17, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v23, Landroid/util/ArraySet;

    #@d
    invoke-direct/range {v23 .. v23}, Landroid/util/ArraySet;-><init>()V

    #@10
    .line 2043
    .local v23, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/ArrayMap;

    #@12
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    #@15
    .line 2044
    .local v6, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    #@17
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    #@1a
    .line 2045
    .end local v4    # "currentKeySet":Ljava/lang/String;
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

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
    .line 2046
    const/16 v24, 0x3

    #@28
    move/from16 v0, v22

    #@2a
    move/from16 v1, v24

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@31
    move-result v24

    #@32
    move/from16 v0, v24

    #@34
    if-le v0, v14, :cond_d

    #@36
    .line 2047
    :cond_1
    const/16 v24, 0x3

    #@38
    move/from16 v0, v22

    #@3a
    move/from16 v1, v24

    #@3c
    if-ne v0, v1, :cond_2

    #@3e
    .line 2048
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@41
    move-result v24

    #@42
    move/from16 v0, v24

    #@44
    if-ne v0, v5, :cond_0

    #@46
    .line 2049
    const/4 v4, 0x0

    #@47
    .line 2050
    .restart local v4    # "currentKeySet":Ljava/lang/String;
    const/4 v5, -0x1

    #@48
    goto :goto_0

    #@49
    .line 2054
    .end local v4    # "currentKeySet":Ljava/lang/String;
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4c
    move-result-object v21

    #@4d
    .line 2055
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
    .line 2056
    if-eqz v4, :cond_3

    #@5c
    .line 2057
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
    .line 2058
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@6b
    move-result-object v25

    #@6c
    .line 2057
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
    aput-object v24, p5, v25

    #@78
    .line 2059
    const/16 v24, -0x6c

    #@7a
    move/from16 v0, v24

    #@7c
    move-object/from16 v1, p0

    #@7e
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@80
    .line 2060
    const/16 v24, 0x0

    #@82
    return v24

    #@83
    .line 2063
    :cond_3
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    #@85
    .line 2062
    move-object/from16 v0, p2

    #@87
    move-object/from16 v1, p4

    #@89
    move-object/from16 v2, v24

    #@8b
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8e
    move-result-object v20

    #@8f
    .line 2065
    .local v20, "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    #@91
    .line 2064
    move-object/from16 v0, v20

    #@93
    move/from16 v1, v24

    #@95
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@98
    move-result-object v12

    #@99
    .line 2066
    .local v12, "keysetName":Ljava/lang/String;
    new-instance v24, Landroid/util/ArraySet;

    #@9b
    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    #@9e
    move-object/from16 v0, v24

    #@a0
    invoke-virtual {v6, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a3
    .line 2067
    move-object v4, v12

    #@a4
    .line 2068
    .local v4, "currentKeySet":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@a7
    move-result v5

    #@a8
    .line 2069
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@ab
    goto/16 :goto_0

    #@ad
    .line 2070
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
    .line 2071
    if-nez v4, :cond_5

    #@bc
    .line 2072
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
    .line 2073
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@cb
    move-result-object v25

    #@cc
    .line 2072
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
    aput-object v24, p5, v25

    #@d8
    .line 2074
    const/16 v24, -0x6c

    #@da
    move/from16 v0, v24

    #@dc
    move-object/from16 v1, p0

    #@de
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@e0
    .line 2075
    const/16 v24, 0x0

    #@e2
    return v24

    #@e3
    .line 2078
    :cond_5
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    #@e5
    .line 2077
    move-object/from16 v0, p2

    #@e7
    move-object/from16 v1, p4

    #@e9
    move-object/from16 v2, v24

    #@eb
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@ee
    move-result-object v20

    #@ef
    .line 2080
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    #@f1
    .line 2079
    move-object/from16 v0, v20

    #@f3
    move/from16 v1, v24

    #@f5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@f8
    move-result-object v15

    #@f9
    .line 2082
    .local v15, "publicKeyName":Ljava/lang/String;
    const/16 v24, 0x1

    #@fb
    .line 2081
    move-object/from16 v0, v20

    #@fd
    move/from16 v1, v24

    #@ff
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@102
    move-result-object v9

    #@103
    .line 2083
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
    .line 2084
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
    .line 2085
    const-string/jumbo v25, " on first use at "

    #@129
    .line 2084
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v24

    #@12d
    .line 2085
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@130
    move-result-object v25

    #@131
    .line 2084
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
    aput-object v24, p5, v25

    #@13d
    .line 2086
    const/16 v24, -0x6c

    #@13f
    move/from16 v0, v24

    #@141
    move-object/from16 v1, p0

    #@143
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@145
    .line 2087
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@148
    .line 2088
    const/16 v24, 0x0

    #@14a
    return v24

    #@14b
    .line 2089
    :cond_6
    if-eqz v9, :cond_9

    #@14d
    .line 2090
    invoke-static {v9}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@150
    move-result-object v3

    #@151
    .line 2091
    .local v3, "currentKey":Ljava/security/PublicKey;
    if-nez v3, :cond_7

    #@153
    .line 2092
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
    .line 2093
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@165
    move-result-object v26

    #@166
    .line 2092
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v25

    #@16a
    .line 2093
    const-string/jumbo v26, " key-set "

    #@16d
    .line 2092
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
    .line 2094
    const-string/jumbo v26, " will not be added to the package\'s defined key-sets."

    #@17a
    .line 2092
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
    .line 2095
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@188
    .line 2096
    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@18b
    .line 2097
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@18e
    goto/16 :goto_0

    #@190
    .line 2100
    :cond_7
    move-object/from16 v0, v17

    #@192
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@195
    move-result-object v24

    #@196
    if-eqz v24, :cond_8

    #@198
    .line 2101
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
    .line 2100
    if-eqz v24, :cond_a

    #@1a8
    .line 2104
    :cond_8
    move-object/from16 v0, v17

    #@1aa
    invoke-virtual {v0, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ad
    .line 2114
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
    .line 2115
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@1bb
    .line 2116
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 2106
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
    .line 2107
    const-string/jumbo v25, " conflicts with previously defined value at "

    #@1d5
    .line 2106
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v24

    #@1d9
    .line 2108
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@1dc
    move-result-object v25

    #@1dd
    .line 2106
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
    aput-object v24, p5, v25

    #@1e9
    .line 2109
    const/16 v24, -0x6c

    #@1eb
    move/from16 v0, v24

    #@1ed
    move-object/from16 v1, p0

    #@1ef
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@1f1
    .line 2110
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@1f4
    .line 2111
    const/16 v24, 0x0

    #@1f6
    return v24

    #@1f7
    .line 2117
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
    .line 2119
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    #@206
    .line 2118
    move-object/from16 v0, p2

    #@208
    move-object/from16 v1, p4

    #@20a
    move-object/from16 v2, v24

    #@20c
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@20f
    move-result-object v20

    #@210
    .line 2121
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    #@212
    .line 2120
    move-object/from16 v0, v20

    #@214
    move/from16 v1, v24

    #@216
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@219
    move-result-object v13

    #@21a
    .line 2122
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, v23

    #@21c
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@21f
    .line 2123
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@222
    .line 2124
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@225
    goto/16 :goto_0

    #@227
    .line 2132
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
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@239
    move-result-object v26

    #@23a
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v25

    #@23e
    .line 2133
    const-string/jumbo v26, " at "

    #@241
    .line 2132
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v25

    #@245
    .line 2133
    move-object/from16 v0, p0

    #@247
    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@249
    move-object/from16 v26, v0

    #@24b
    .line 2132
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v25

    #@24f
    .line 2133
    const-string/jumbo v26, " "

    #@252
    .line 2132
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v25

    #@256
    .line 2134
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@259
    move-result-object v26

    #@25a
    .line 2132
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
    .line 2135
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@268
    goto/16 :goto_0

    #@26a
    .line 2139
    .end local v21    # "tagName":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@26d
    move-result-object v16

    #@26e
    .line 2140
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
    .line 2141
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
    .line 2142
    const-string/jumbo v25, "\'key-set\' and \'public-key\' names must be distinct."

    #@29c
    .line 2141
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
    aput-object v24, p5, v25

    #@2a8
    .line 2143
    const/16 v24, -0x6c

    #@2aa
    move/from16 v0, v24

    #@2ac
    move-object/from16 v1, p0

    #@2ae
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@2b0
    .line 2144
    const/16 v24, 0x0

    #@2b2
    return v24

    #@2b3
    .line 2146
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
    .line 2147
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
    .line 2148
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d5
    move-result-object v11

    #@2d6
    check-cast v11, Ljava/lang/String;

    #@2d8
    .line 2149
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
    .line 2150
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
    .line 2151
    const-string/jumbo v26, "\'key-set\' "

    #@307
    .line 2150
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
    .line 2151
    const-string/jumbo v26, " has no valid associated \'public-key\'."

    #@314
    .line 2150
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v25

    #@318
    .line 2152
    const-string/jumbo v26, " Not including in package\'s defined key-sets."

    #@31b
    .line 2150
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
    .line 2154
    :cond_10
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@32a
    move-result v24

    #@32b
    if-eqz v24, :cond_11

    #@32d
    .line 2155
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
    .line 2156
    const-string/jumbo v26, "\'key-set\' "

    #@350
    .line 2155
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
    .line 2156
    const-string/jumbo v26, " contained improper \'public-key\'"

    #@35d
    .line 2155
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@360
    move-result-object v25

    #@361
    .line 2157
    const-string/jumbo v26, " tags. Not including in package\'s defined key-sets."

    #@364
    .line 2155
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
    .line 2160
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
    .line 2161
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
    .line 2162
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
    .line 2165
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
    .line 2166
    move-object/from16 v0, v23

    #@3c7
    move-object/from16 v1, p1

    #@3c9
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    #@3cb
    .line 2173
    const/16 v24, 0x1

    #@3cd
    return v24

    #@3ce
    .line 2168
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
    .line 2169
    const-string/jumbo v25, "does not define all \'upgrade-key-set\'s ."

    #@3ee
    .line 2168
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
    aput-object v24, p5, v25

    #@3fa
    .line 2170
    const/16 v24, -0x6c

    #@3fc
    move/from16 v0, v24

    #@3fe
    move-object/from16 v1, p0

    #@400
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    #@402
    .line 2171
    const/16 v24, 0x0

    #@404
    return v24
.end method

.method private parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "data"    # Landroid/os/Bundle;
    .param p5, "outError"    # [Ljava/lang/String;
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
    .line 3940
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    #@5
    .line 3939
    invoke-virtual {p1, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v2

    #@9
    .line 3942
    .local v2, "sa":Landroid/content/res/TypedArray;
    if-nez p4, :cond_0

    #@b
    .line 3943
    new-instance p4, Landroid/os/Bundle;

    #@d
    .end local p4    # "data":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    #@10
    .line 3946
    .restart local p4    # "data":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 3948
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    #@16
    .line 3949
    const-string/jumbo v5, "<meta-data> requires an android:name attribute"

    #@19
    aput-object v5, p5, v6

    #@1b
    .line 3950
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 3951
    return-object v4

    #@1f
    .line 3954
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 3957
    const/4 v7, 0x2

    #@24
    .line 3956
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@27
    move-result-object v3

    #@28
    .line 3958
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_2

    #@2a
    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 3960
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    #@30
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@33
    .line 3992
    .end local p4    # "data":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@36
    .line 3994
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@39
    .line 3996
    return-object p4

    #@3a
    .line 3962
    .restart local p4    # "data":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@3d
    move-result-object v3

    #@3e
    .line 3965
    if-eqz v3, :cond_9

    #@40
    .line 3966
    iget v7, v3, Landroid/util/TypedValue;->type:I

    #@42
    const/4 v8, 0x3

    #@43
    if-ne v7, v8, :cond_4

    #@45
    .line 3967
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@48
    move-result-object v0

    #@49
    .line 3968
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
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    goto :goto_0

    #@57
    .line 3969
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@59
    const/16 v7, 0x12

    #@5b
    if-ne v4, v7, :cond_6

    #@5d
    .line 3970
    iget v4, v3, Landroid/util/TypedValue;->data:I

    #@5f
    if-eqz v4, :cond_5

    #@61
    move v4, v5

    #@62
    :goto_1
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@65
    goto :goto_0

    #@66
    :cond_5
    move v4, v6

    #@67
    goto :goto_1

    #@68
    .line 3971
    :cond_6
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@6a
    const/16 v5, 0x10

    #@6c
    if-lt v4, v5, :cond_7

    #@6e
    .line 3972
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@70
    const/16 v5, 0x1f

    #@72
    if-gt v4, v5, :cond_7

    #@74
    .line 3973
    iget v4, v3, Landroid/util/TypedValue;->data:I

    #@76
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@79
    goto :goto_0

    #@7a
    .line 3974
    :cond_7
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@7c
    const/4 v5, 0x4

    #@7d
    if-ne v4, v5, :cond_8

    #@7f
    .line 3975
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    #@82
    move-result v4

    #@83
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@86
    goto :goto_0

    #@87
    .line 3978
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
    .line 3979
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@99
    move-result-object v6

    #@9a
    .line 3978
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    .line 3979
    const-string/jumbo v6, " at "

    #@a1
    .line 3978
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    .line 3979
    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@a7
    .line 3978
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v5

    #@ab
    .line 3979
    const-string/jumbo v6, " "

    #@ae
    .line 3978
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    .line 3980
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@b5
    move-result-object v6

    #@b6
    .line 3978
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
    .line 3987
    :cond_9
    const-string/jumbo v4, "<meta-data> requires an android:value or android:resource attribute"

    #@c6
    aput-object v4, p5, v6

    #@c8
    .line 3988
    const/4 p4, 0x0

    #@c9
    .local p4, "data":Landroid/os/Bundle;
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
    .line 659
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    #@4
    move-result-object v2

    #@5
    .line 660
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 661
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
    .line 2987
    const/4 v6, 0x0

    #@1
    invoke-virtual {p5, p6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    .line 2988
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_0

    #@7
    .line 2989
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
    .line 2990
    const/4 v6, 0x0

    #@1f
    return v6

    #@20
    .line 2994
    :cond_0
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@22
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@24
    invoke-static {v6, v4, p3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    .line 2993
    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@2a
    .line 2995
    iget-object v6, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@2c
    if-nez v6, :cond_1

    #@2e
    .line 2996
    const/4 v6, 0x0

    #@2f
    return v6

    #@30
    .line 2999
    :cond_1
    const/4 v6, 0x0

    #@31
    move/from16 v0, p8

    #@33
    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@36
    move-result v2

    #@37
    .line 3000
    .local v2, "iconVal":I
    if-eqz v2, :cond_2

    #@39
    .line 3001
    iput v2, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    #@3b
    .line 3002
    const/4 v6, 0x0

    #@3c
    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@3e
    .line 3005
    :cond_2
    const/4 v6, 0x0

    #@3f
    move/from16 v0, p9

    #@41
    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@44
    move-result v3

    #@45
    .line 3006
    .local v3, "logoVal":I
    if-eqz v3, :cond_3

    #@47
    .line 3007
    iput v3, p2, Landroid/content/pm/PackageItemInfo;->logo:I

    #@49
    .line 3010
    :cond_3
    const/4 v6, 0x0

    #@4a
    move/from16 v0, p10

    #@4c
    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4f
    move-result v1

    #@50
    .line 3011
    .local v1, "bannerVal":I
    if-eqz v1, :cond_4

    #@52
    .line 3012
    iput v1, p2, Landroid/content/pm/PackageItemInfo;->banner:I

    #@54
    .line 3015
    :cond_4
    invoke-virtual {p5, p7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@57
    move-result-object v5

    #@58
    .line 3016
    .local v5, "v":Landroid/util/TypedValue;
    if-eqz v5, :cond_5

    #@5a
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    #@5c
    iput v6, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@5e
    if-nez v6, :cond_5

    #@60
    .line 3017
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@63
    move-result-object v6

    #@64
    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@66
    .line 3020
    :cond_5
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@68
    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@6a
    .line 3022
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
    .line 650
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 651
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 653
    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            "I)",
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
    .line 1234
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
    .line 1235
    if-ne v3, v8, :cond_0

    #@10
    .line 1238
    :cond_1
    const/4 v4, 0x2

    #@11
    if-eq v3, v4, :cond_2

    #@13
    .line 1239
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@15
    .line 1240
    const-string/jumbo v5, "No start tag found"

    #@18
    .line 1239
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@1b
    throw v4

    #@1c
    .line 1242
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
    .line 1243
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@2b
    .line 1244
    const-string/jumbo v5, "No <manifest> tag"

    #@2e
    .line 1243
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@31
    throw v4

    #@32
    .line 1247
    :cond_3
    const-string/jumbo v4, "package"

    #@35
    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 1248
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "android"

    #@3c
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-nez v4, :cond_4

    #@42
    .line 1249
    invoke-static {v1, v8, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 1250
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@48
    .line 1251
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@4a
    .line 1252
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
    .line 1251
    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@61
    throw v4

    #@62
    .line 1256
    .end local v0    # "error":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "split"

    #@65
    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    .line 1257
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_5

    #@6b
    .line 1258
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6e
    move-result v4

    #@6f
    if-nez v4, :cond_7

    #@71
    .line 1259
    const/4 v2, 0x0

    #@72
    .line 1269
    .end local v2    # "splitName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    .line 1270
    if-eqz v2, :cond_6

    #@78
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    .line 1269
    :cond_6
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@7f
    move-result-object v4

    #@80
    return-object v4

    #@81
    .line 1261
    .restart local v2    # "splitName":Ljava/lang/String;
    :cond_7
    invoke-static {v2, v7, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    .line 1262
    .restart local v0    # "error":Ljava/lang/String;
    if-eqz v0, :cond_5

    #@87
    .line 1263
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    #@89
    .line 1264
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
    .line 1263
    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@a0
    throw v4
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2223
    new-instance v13, Landroid/content/pm/PackageParser$Permission;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    #@7
    .line 2226
    .local v13, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    #@9
    .line 2225
    move-object/from16 v0, p2

    #@b
    move-object/from16 v1, p4

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v7

    #@11
    .line 2228
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@13
    .line 2229
    const-string/jumbo v6, "<permission>"

    #@16
    .line 2230
    const/4 v8, 0x2

    #@17
    .line 2231
    const/4 v9, 0x0

    #@18
    .line 2232
    const/4 v10, 0x1

    #@19
    .line 2233
    const/4 v11, 0x6

    #@1a
    .line 2234
    const/16 v12, 0x8

    #@1c
    move-object v2, p0

    #@1d
    move-object/from16 v3, p1

    #@1f
    move-object/from16 v5, p5

    #@21
    .line 2228
    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_0

    #@27
    .line 2235
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@2a
    .line 2236
    const/16 v2, -0x6c

    #@2c
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@2e
    .line 2237
    const/4 v2, 0x0

    #@2f
    return-object v2

    #@30
    .line 2242
    :cond_0
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@32
    .line 2243
    const/4 v3, 0x4

    #@33
    .line 2242
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@39
    .line 2244
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@3b
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@3d
    if-eqz v2, :cond_1

    #@3f
    .line 2245
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@41
    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@43
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@45
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@4b
    .line 2248
    :cond_1
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@4d
    .line 2249
    const/4 v3, 0x5

    #@4e
    .line 2250
    const/4 v4, 0x0

    #@4f
    .line 2248
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@52
    move-result v3

    #@53
    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@55
    .line 2252
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@57
    .line 2253
    const/4 v3, 0x3

    #@58
    .line 2254
    const/4 v4, 0x0

    #@59
    .line 2252
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5c
    move-result v3

    #@5d
    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@5f
    .line 2256
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@61
    .line 2257
    const/4 v3, 0x7

    #@62
    const/4 v4, 0x0

    #@63
    .line 2256
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@66
    move-result v3

    #@67
    iput v3, v2, Landroid/content/pm/PermissionInfo;->flags:I

    #@69
    .line 2259
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@6c
    .line 2261
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@6e
    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@70
    const/4 v3, -0x1

    #@71
    if-ne v2, v3, :cond_2

    #@73
    .line 2262
    const-string/jumbo v2, "<permission> does not specify protectionLevel"

    #@76
    const/4 v3, 0x0

    #@77
    aput-object v2, p5, v3

    #@79
    .line 2263
    const/16 v2, -0x6c

    #@7b
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@7d
    .line 2264
    const/4 v2, 0x0

    #@7e
    return-object v2

    #@7f
    .line 2267
    :cond_2
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@81
    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@83
    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@85
    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    #@88
    move-result v3

    #@89
    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@8b
    .line 2269
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@8d
    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@8f
    and-int/lit16 v2, v2, 0xff0

    #@91
    if-eqz v2, :cond_3

    #@93
    .line 2270
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@95
    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@97
    and-int/lit8 v2, v2, 0xf

    #@99
    .line 2271
    const/4 v3, 0x2

    #@9a
    .line 2270
    if-eq v2, v3, :cond_3

    #@9c
    .line 2272
    const-string/jumbo v2, "<permission>  protectionLevel specifies a flag but is not based on signature type"

    #@9f
    const/4 v3, 0x0

    #@a0
    aput-object v2, p5, v3

    #@a2
    .line 2274
    const/16 v2, -0x6c

    #@a4
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@a6
    .line 2275
    const/4 v2, 0x0

    #@a7
    return-object v2

    #@a8
    .line 2279
    :cond_3
    const-string/jumbo v12, "<permission>"

    #@ab
    move-object v8, p0

    #@ac
    move-object/from16 v9, p2

    #@ae
    move-object/from16 v10, p3

    #@b0
    move-object/from16 v11, p4

    #@b2
    move-object/from16 v14, p5

    #@b4
    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@b7
    move-result v2

    #@b8
    if-nez v2, :cond_4

    #@ba
    .line 2281
    const/16 v2, -0x6c

    #@bc
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@be
    .line 2282
    const/4 v2, 0x0

    #@bf
    return-object v2

    #@c0
    .line 2285
    :cond_4
    move-object/from16 v0, p1

    #@c2
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@c4
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c7
    .line 2287
    return-object v13
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2179
    new-instance v13, Landroid/content/pm/PackageParser$PermissionGroup;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    #@7
    .line 2182
    .local v13, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    #@9
    .line 2181
    move-object/from16 v0, p3

    #@b
    move-object/from16 v1, p5

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v7

    #@11
    .line 2184
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@13
    .line 2185
    const-string/jumbo v6, "<permission-group>"

    #@16
    .line 2186
    const/4 v8, 0x2

    #@17
    .line 2187
    const/4 v9, 0x0

    #@18
    .line 2188
    const/4 v10, 0x1

    #@19
    .line 2189
    const/4 v11, 0x5

    #@1a
    .line 2190
    const/4 v12, 0x7

    #@1b
    move-object v2, p0

    #@1c
    move-object/from16 v3, p1

    #@1e
    move-object/from16 v5, p6

    #@20
    .line 2184
    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_0

    #@26
    .line 2191
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 2192
    const/16 v2, -0x6c

    #@2b
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@2d
    .line 2193
    const/4 v2, 0x0

    #@2e
    return-object v2

    #@2f
    .line 2196
    :cond_0
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@31
    .line 2197
    const/4 v3, 0x4

    #@32
    .line 2198
    const/4 v4, 0x0

    #@33
    .line 2196
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@36
    move-result v3

    #@37
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    #@39
    .line 2199
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@3b
    .line 2200
    const/4 v3, 0x6

    #@3c
    const/4 v4, 0x0

    #@3d
    .line 2199
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@40
    move-result v3

    #@41
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->flags:I

    #@43
    .line 2201
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@45
    .line 2202
    const/4 v3, 0x3

    #@46
    const/4 v4, 0x0

    #@47
    .line 2201
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4a
    move-result v3

    #@4b
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@4d
    .line 2203
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@4f
    iget v2, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@51
    if-lez v2, :cond_1

    #@53
    and-int/lit8 v2, p2, 0x1

    #@55
    if-nez v2, :cond_1

    #@57
    .line 2204
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    #@59
    const/4 v3, 0x0

    #@5a
    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@5c
    .line 2207
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@5f
    .line 2209
    const-string/jumbo v12, "<permission-group>"

    #@62
    move-object v8, p0

    #@63
    move-object/from16 v9, p3

    #@65
    move-object/from16 v10, p4

    #@67
    move-object/from16 v11, p5

    #@69
    move-object/from16 v14, p6

    #@6b
    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@6e
    move-result v2

    #@6f
    if-nez v2, :cond_2

    #@71
    .line 2211
    const/16 v2, -0x6c

    #@73
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@75
    .line 2212
    const/4 v2, 0x0

    #@76
    return-object v2

    #@77
    .line 2215
    :cond_2
    move-object/from16 v0, p1

    #@79
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    #@7b
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7e
    .line 2217
    return-object v13
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 16
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2293
    new-instance v13, Landroid/content/pm/PackageParser$Permission;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    #@7
    .line 2296
    .local v13, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    #@9
    .line 2295
    move-object/from16 v0, p2

    #@b
    move-object/from16 v1, p4

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v7

    #@11
    .line 2298
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@13
    .line 2299
    const-string/jumbo v6, "<permission-tree>"

    #@16
    .line 2300
    const/4 v8, 0x2

    #@17
    .line 2301
    const/4 v9, 0x0

    #@18
    .line 2302
    const/4 v10, 0x1

    #@19
    .line 2303
    const/4 v11, 0x3

    #@1a
    .line 2304
    const/4 v12, 0x4

    #@1b
    move-object/from16 v2, p0

    #@1d
    move-object/from16 v3, p1

    #@1f
    move-object/from16 v5, p5

    #@21
    .line 2298
    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_0

    #@27
    .line 2305
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@2a
    .line 2306
    const/16 v2, -0x6c

    #@2c
    move-object/from16 v0, p0

    #@2e
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@30
    .line 2307
    const/4 v2, 0x0

    #@31
    return-object v2

    #@32
    .line 2310
    :cond_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    #@35
    .line 2312
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@37
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@39
    const/16 v3, 0x2e

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@3e
    move-result v15

    #@3f
    .line 2313
    .local v15, "index":I
    if-lez v15, :cond_1

    #@41
    .line 2314
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@43
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@45
    const/16 v3, 0x2e

    #@47
    add-int/lit8 v4, v15, 0x1

    #@49
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    #@4c
    move-result v15

    #@4d
    .line 2316
    :cond_1
    if-gez v15, :cond_2

    #@4f
    .line 2317
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
    .line 2318
    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@5d
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@5f
    .line 2317
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
    aput-object v2, p5, v3

    #@6a
    .line 2319
    const/16 v2, -0x6c

    #@6c
    move-object/from16 v0, p0

    #@6e
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@70
    .line 2320
    const/4 v2, 0x0

    #@71
    return-object v2

    #@72
    .line 2323
    :cond_2
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@74
    const/4 v3, 0x0

    #@75
    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@77
    .line 2324
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@79
    const/4 v3, 0x0

    #@7a
    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@7c
    .line 2325
    const/4 v2, 0x1

    #@7d
    iput-boolean v2, v13, Landroid/content/pm/PackageParser$Permission;->tree:Z

    #@7f
    .line 2327
    const-string/jumbo v12, "<permission-tree>"

    #@82
    move-object/from16 v8, p0

    #@84
    move-object/from16 v9, p2

    #@86
    move-object/from16 v10, p3

    #@88
    move-object/from16 v11, p4

    #@8a
    move-object/from16 v14, p5

    #@8c
    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    #@8f
    move-result v2

    #@90
    if-nez v2, :cond_3

    #@92
    .line 2329
    const/16 v2, -0x6c

    #@94
    move-object/from16 v0, p0

    #@96
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@98
    .line 2330
    const/4 v2, 0x0

    #@99
    return-object v2

    #@9a
    .line 2333
    :cond_3
    move-object/from16 v0, p1

    #@9c
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a1
    .line 2335
    return-object v13
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .locals 19
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3470
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    #@2
    .line 3469
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p4

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v17

    #@a
    .line 3472
    .local v17, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@e
    if-nez v2, :cond_0

    #@10
    .line 3473
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@12
    .line 3479
    move-object/from16 v0, p0

    #@14
    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@16
    .line 3474
    const/4 v5, 0x2

    #@17
    .line 3475
    const/4 v6, 0x0

    #@18
    .line 3476
    const/4 v7, 0x1

    #@19
    .line 3477
    const/16 v8, 0xf

    #@1b
    .line 3478
    const/16 v9, 0x11

    #@1d
    .line 3480
    const/16 v11, 0x8

    #@1f
    .line 3481
    const/16 v12, 0xe

    #@21
    .line 3482
    const/4 v13, 0x6

    #@22
    move-object/from16 v3, p1

    #@24
    move-object/from16 v4, p6

    #@26
    .line 3473
    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    #@29
    move-object/from16 v0, p0

    #@2b
    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@2d
    .line 3483
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@31
    const-string/jumbo v3, "<provider>"

    #@34
    iput-object v3, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@36
    .line 3486
    :cond_0
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@3a
    move-object/from16 v0, v17

    #@3c
    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@3e
    .line 3487
    move-object/from16 v0, p0

    #@40
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@42
    move/from16 v0, p5

    #@44
    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@46
    .line 3489
    new-instance v6, Landroid/content/pm/PackageParser$Provider;

    #@48
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@4c
    new-instance v3, Landroid/content/pm/ProviderInfo;

    #@4e
    invoke-direct {v3}, Landroid/content/pm/ProviderInfo;-><init>()V

    #@51
    invoke-direct {v6, v2, v3}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    #@54
    .line 3490
    .local v6, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v2, 0x0

    #@55
    aget-object v2, p6, v2

    #@57
    if-eqz v2, :cond_1

    #@59
    .line 3491
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    #@5c
    .line 3492
    const/4 v2, 0x0

    #@5d
    return-object v2

    #@5e
    .line 3495
    :cond_1
    const/16 v16, 0x0

    #@60
    .line 3497
    .local v16, "providerExportedDefault":Z
    move-object/from16 v0, p1

    #@62
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@64
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@66
    const/16 v3, 0x11

    #@68
    if-ge v2, v3, :cond_2

    #@6a
    .line 3501
    const/16 v16, 0x1

    #@6c
    .line 3504
    :cond_2
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@6e
    .line 3505
    const/4 v3, 0x7

    #@6f
    .line 3504
    move-object/from16 v0, v17

    #@71
    move/from16 v1, v16

    #@73
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@76
    move-result v3

    #@77
    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    #@79
    .line 3509
    const/16 v2, 0xa

    #@7b
    const/4 v3, 0x0

    #@7c
    .line 3508
    move-object/from16 v0, v17

    #@7e
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@81
    move-result-object v14

    #@82
    .line 3511
    .local v14, "cpname":Ljava/lang/String;
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@84
    .line 3512
    const/16 v3, 0xb

    #@86
    .line 3513
    const/4 v4, 0x0

    #@87
    .line 3511
    move-object/from16 v0, v17

    #@89
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@8c
    move-result v3

    #@8d
    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@8f
    .line 3516
    const/4 v2, 0x3

    #@90
    const/4 v3, 0x0

    #@91
    .line 3515
    move-object/from16 v0, v17

    #@93
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@96
    move-result-object v15

    #@97
    .line 3518
    .local v15, "permission":Ljava/lang/String;
    const/4 v2, 0x4

    #@98
    const/4 v3, 0x0

    #@99
    .line 3517
    move-object/from16 v0, v17

    #@9b
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@9e
    move-result-object v18

    #@9f
    .line 3519
    .local v18, "str":Ljava/lang/String;
    if-nez v18, :cond_3

    #@a1
    .line 3520
    move-object/from16 v18, v15

    #@a3
    .line 3522
    :cond_3
    if-nez v18, :cond_6

    #@a5
    .line 3523
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@a7
    move-object/from16 v0, p1

    #@a9
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@ab
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@ad
    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@af
    .line 3529
    :goto_0
    const/4 v2, 0x5

    #@b0
    const/4 v3, 0x0

    #@b1
    .line 3528
    move-object/from16 v0, v17

    #@b3
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@b6
    move-result-object v18

    #@b7
    .line 3530
    if-nez v18, :cond_4

    #@b9
    .line 3531
    move-object/from16 v18, v15

    #@bb
    .line 3533
    :cond_4
    if-nez v18, :cond_8

    #@bd
    .line 3534
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@bf
    move-object/from16 v0, p1

    #@c1
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c3
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@c5
    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@c7
    .line 3540
    :goto_1
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@c9
    .line 3541
    const/16 v3, 0xd

    #@cb
    .line 3542
    const/4 v4, 0x0

    #@cc
    .line 3540
    move-object/from16 v0, v17

    #@ce
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d1
    move-result v3

    #@d2
    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@d4
    .line 3544
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@d6
    .line 3545
    const/16 v3, 0x9

    #@d8
    .line 3546
    const/4 v4, 0x0

    #@d9
    .line 3544
    move-object/from16 v0, v17

    #@db
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@de
    move-result v3

    #@df
    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@e1
    .line 3548
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@e3
    .line 3549
    const/16 v3, 0xc

    #@e5
    .line 3550
    const/4 v4, 0x0

    #@e6
    .line 3548
    move-object/from16 v0, v17

    #@e8
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@eb
    move-result v3

    #@ec
    iput v3, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@ee
    .line 3552
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@f0
    const/4 v3, 0x0

    #@f1
    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    #@f3
    .line 3555
    const/16 v2, 0x10

    #@f5
    .line 3556
    const/4 v3, 0x0

    #@f6
    .line 3554
    move-object/from16 v0, v17

    #@f8
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@fb
    move-result v2

    #@fc
    if-eqz v2, :cond_5

    #@fe
    .line 3557
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@100
    iget v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    #@102
    const/high16 v4, 0x40000000    # 2.0f

    #@104
    or-int/2addr v3, v4

    #@105
    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    #@107
    .line 3558
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@109
    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    #@10b
    if-eqz v2, :cond_5

    #@10d
    move/from16 v0, p5

    #@10f
    and-int/lit16 v2, v0, 0x80

    #@111
    if-nez v2, :cond_5

    #@113
    .line 3559
    const-string/jumbo v2, "PackageParser"

    #@116
    new-instance v3, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v4, "Provider exported request ignored due to singleUser: "

    #@11e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v3

    #@122
    .line 3560
    iget-object v4, v6, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    #@124
    .line 3559
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v3

    #@128
    .line 3560
    const-string/jumbo v4, " at "

    #@12b
    .line 3559
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v3

    #@12f
    .line 3560
    move-object/from16 v0, p0

    #@131
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@133
    .line 3559
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v3

    #@137
    .line 3560
    const-string/jumbo v4, " "

    #@13a
    .line 3559
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v3

    #@13e
    .line 3561
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@141
    move-result-object v4

    #@142
    .line 3559
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v3

    #@146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v3

    #@14a
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14d
    .line 3562
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@14f
    const/4 v3, 0x0

    #@150
    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    #@152
    .line 3566
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    #@155
    .line 3568
    move-object/from16 v0, p1

    #@157
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@159
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@15b
    and-int/lit8 v2, v2, 0x2

    #@15d
    if-eqz v2, :cond_a

    #@15f
    .line 3572
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@161
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    #@163
    move-object/from16 v0, p1

    #@165
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@167
    if-ne v2, v3, :cond_a

    #@169
    .line 3573
    const-string/jumbo v2, "Heavy-weight applications can not have providers in main process"

    #@16c
    const/4 v3, 0x0

    #@16d
    aput-object v2, p6, v3

    #@16f
    .line 3574
    const/4 v2, 0x0

    #@170
    return-object v2

    #@171
    .line 3525
    :cond_6
    iget-object v3, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@173
    .line 3526
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@176
    move-result v2

    #@177
    if-lez v2, :cond_7

    #@179
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@17c
    move-result-object v2

    #@17d
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@180
    move-result-object v2

    #@181
    .line 3525
    :goto_2
    iput-object v2, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@183
    goto/16 :goto_0

    #@185
    .line 3526
    :cond_7
    const/4 v2, 0x0

    #@186
    goto :goto_2

    #@187
    .line 3536
    :cond_8
    iget-object v3, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@189
    .line 3537
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@18c
    move-result v2

    #@18d
    if-lez v2, :cond_9

    #@18f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@192
    move-result-object v2

    #@193
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@196
    move-result-object v2

    #@197
    .line 3536
    :goto_3
    iput-object v2, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@199
    goto/16 :goto_1

    #@19b
    .line 3537
    :cond_9
    const/4 v2, 0x0

    #@19c
    goto :goto_3

    #@19d
    .line 3578
    :cond_a
    if-nez v14, :cond_b

    #@19f
    .line 3579
    const-string/jumbo v2, "<provider> does not include authorities attribute"

    #@1a2
    const/4 v3, 0x0

    #@1a3
    aput-object v2, p6, v3

    #@1a5
    .line 3580
    const/4 v2, 0x0

    #@1a6
    return-object v2

    #@1a7
    .line 3582
    :cond_b
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@1aa
    move-result v2

    #@1ab
    if-gtz v2, :cond_c

    #@1ad
    .line 3583
    const-string/jumbo v2, "<provider> has empty authorities attribute"

    #@1b0
    const/4 v3, 0x0

    #@1b1
    aput-object v2, p6, v3

    #@1b3
    .line 3584
    const/4 v2, 0x0

    #@1b4
    return-object v2

    #@1b5
    .line 3586
    :cond_c
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@1b7
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1ba
    move-result-object v3

    #@1bb
    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@1bd
    move-object/from16 v2, p0

    #@1bf
    move-object/from16 v3, p2

    #@1c1
    move-object/from16 v4, p3

    #@1c3
    move-object/from16 v5, p4

    #@1c5
    move-object/from16 v7, p6

    #@1c7
    .line 3588
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    #@1ca
    move-result v2

    #@1cb
    if-nez v2, :cond_d

    #@1cd
    .line 3589
    const/4 v2, 0x0

    #@1ce
    return-object v2

    #@1cf
    .line 3592
    :cond_d
    return-object v6
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 26
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "outInfo"    # Landroid/content/pm/PackageParser$Provider;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3599
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v16

    #@4
    .line 3601
    .local v16, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v24

    #@8
    .local v24, "type":I
    const/4 v4, 0x1

    #@9
    move/from16 v0, v24

    #@b
    if-eq v0, v4, :cond_16

    #@d
    .line 3602
    const/4 v4, 0x3

    #@e
    move/from16 v0, v24

    #@10
    if-ne v0, v4, :cond_1

    #@12
    .line 3603
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@15
    move-result v4

    #@16
    move/from16 v0, v16

    #@18
    if-le v4, v0, :cond_16

    #@1a
    .line 3604
    :cond_1
    const/4 v4, 0x3

    #@1b
    move/from16 v0, v24

    #@1d
    if-eq v0, v4, :cond_0

    #@1f
    const/4 v4, 0x4

    #@20
    move/from16 v0, v24

    #@22
    if-eq v0, v4, :cond_0

    #@24
    .line 3608
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    const-string/jumbo v5, "intent-filter"

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_3

    #@31
    .line 3609
    new-instance v10, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@33
    move-object/from16 v0, p4

    #@35
    invoke-direct {v10, v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    #@38
    .line 3610
    .local v10, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    const/4 v8, 0x1

    #@39
    const/4 v9, 0x0

    #@3a
    move-object/from16 v4, p0

    #@3c
    move-object/from16 v5, p1

    #@3e
    move-object/from16 v6, p2

    #@40
    move-object/from16 v7, p3

    #@42
    move-object/from16 v11, p5

    #@44
    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@47
    move-result v4

    #@48
    if-nez v4, :cond_2

    #@4a
    .line 3611
    const/4 v4, 0x0

    #@4b
    return v4

    #@4c
    .line 3613
    :cond_2
    move-object/from16 v0, p4

    #@4e
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@53
    goto :goto_0

    #@54
    .line 3615
    .end local v10    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    const-string/jumbo v5, "meta-data"

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v4

    #@5f
    if-eqz v4, :cond_4

    #@61
    .line 3617
    move-object/from16 v0, p4

    #@63
    iget-object v8, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    #@65
    move-object/from16 v4, p0

    #@67
    move-object/from16 v5, p1

    #@69
    move-object/from16 v6, p2

    #@6b
    move-object/from16 v7, p3

    #@6d
    move-object/from16 v9, p5

    #@6f
    .line 3616
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@72
    move-result-object v4

    #@73
    move-object/from16 v0, p4

    #@75
    iput-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    #@77
    if-nez v4, :cond_0

    #@79
    .line 3618
    const/4 v4, 0x0

    #@7a
    return v4

    #@7b
    .line 3621
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    const-string/jumbo v5, "grant-uri-permission"

    #@82
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v4

    #@86
    if-eqz v4, :cond_a

    #@88
    .line 3623
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    #@8a
    .line 3622
    move-object/from16 v0, p1

    #@8c
    move-object/from16 v1, p3

    #@8e
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@91
    move-result-object v22

    #@92
    .line 3625
    .local v22, "sa":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    #@94
    .line 3628
    .local v18, "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    #@95
    const/4 v5, 0x0

    #@96
    .line 3627
    move-object/from16 v0, v22

    #@98
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@9b
    move-result-object v23

    #@9c
    .line 3629
    .local v23, "str":Ljava/lang/String;
    if-eqz v23, :cond_5

    #@9e
    .line 3630
    new-instance v18, Landroid/os/PatternMatcher;

    #@a0
    .end local v18    # "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    #@a1
    move-object/from16 v0, v18

    #@a3
    move-object/from16 v1, v23

    #@a5
    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    #@a8
    .line 3634
    :cond_5
    const/4 v4, 0x1

    #@a9
    const/4 v5, 0x0

    #@aa
    .line 3633
    move-object/from16 v0, v22

    #@ac
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@af
    move-result-object v23

    #@b0
    .line 3635
    if-eqz v23, :cond_6

    #@b2
    .line 3636
    new-instance v18, Landroid/os/PatternMatcher;

    #@b4
    const/4 v4, 0x1

    #@b5
    move-object/from16 v0, v18

    #@b7
    move-object/from16 v1, v23

    #@b9
    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    #@bc
    .line 3640
    :cond_6
    const/4 v4, 0x2

    #@bd
    const/4 v5, 0x0

    #@be
    .line 3639
    move-object/from16 v0, v22

    #@c0
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@c3
    move-result-object v23

    #@c4
    .line 3641
    if-eqz v23, :cond_7

    #@c6
    .line 3642
    new-instance v18, Landroid/os/PatternMatcher;

    #@c8
    const/4 v4, 0x2

    #@c9
    move-object/from16 v0, v18

    #@cb
    move-object/from16 v1, v23

    #@cd
    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    #@d0
    .line 3645
    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    #@d3
    .line 3647
    if-eqz v18, :cond_9

    #@d5
    .line 3648
    move-object/from16 v0, p4

    #@d7
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@d9
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@db
    if-nez v4, :cond_8

    #@dd
    .line 3649
    move-object/from16 v0, p4

    #@df
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@e1
    const/4 v5, 0x1

    #@e2
    new-array v5, v5, [Landroid/os/PatternMatcher;

    #@e4
    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@e6
    .line 3650
    move-object/from16 v0, p4

    #@e8
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@ea
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@ec
    const/4 v5, 0x0

    #@ed
    aput-object v18, v4, v5

    #@ef
    .line 3658
    :goto_1
    move-object/from16 v0, p4

    #@f1
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@f3
    const/4 v5, 0x1

    #@f4
    iput-boolean v5, v4, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@f6
    .line 3671
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@f9
    goto/16 :goto_0

    #@fb
    .line 3652
    :cond_8
    move-object/from16 v0, p4

    #@fd
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@ff
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@101
    array-length v12, v4

    #@102
    .line 3653
    .local v12, "N":I
    add-int/lit8 v4, v12, 0x1

    #@104
    new-array v15, v4, [Landroid/os/PatternMatcher;

    #@106
    .line 3654
    .local v15, "newp":[Landroid/os/PatternMatcher;
    move-object/from16 v0, p4

    #@108
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@10a
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@10c
    const/4 v5, 0x0

    #@10d
    const/4 v6, 0x0

    #@10e
    invoke-static {v4, v5, v15, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@111
    .line 3655
    aput-object v18, v15, v12

    #@113
    .line 3656
    move-object/from16 v0, p4

    #@115
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@117
    iput-object v15, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    #@119
    goto :goto_1

    #@11a
    .line 3661
    .end local v12    # "N":I
    .end local v15    # "newp":[Landroid/os/PatternMatcher;
    :cond_9
    const-string/jumbo v4, "PackageParser"

    #@11d
    new-instance v5, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    const-string/jumbo v6, "Unknown element under <path-permission>: "

    #@125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v5

    #@129
    .line 3662
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@12c
    move-result-object v6

    #@12d
    .line 3661
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v5

    #@131
    .line 3662
    const-string/jumbo v6, " at "

    #@134
    .line 3661
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v5

    #@138
    .line 3662
    move-object/from16 v0, p0

    #@13a
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@13c
    .line 3661
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v5

    #@140
    .line 3662
    const-string/jumbo v6, " "

    #@143
    .line 3661
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v5

    #@147
    .line 3663
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@14a
    move-result-object v6

    #@14b
    .line 3661
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v5

    #@14f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v5

    #@153
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@156
    .line 3664
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@159
    goto/16 :goto_0

    #@15b
    .line 3673
    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .end local v23    # "str":Ljava/lang/String;
    :cond_a
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@15e
    move-result-object v4

    #@15f
    const-string/jumbo v5, "path-permission"

    #@162
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@165
    move-result v4

    #@166
    if-eqz v4, :cond_15

    #@168
    .line 3675
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    #@16a
    .line 3674
    move-object/from16 v0, p1

    #@16c
    move-object/from16 v1, p3

    #@16e
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@171
    move-result-object v22

    #@172
    .line 3677
    .restart local v22    # "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    #@174
    .line 3680
    .local v17, "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    #@175
    const/4 v5, 0x0

    #@176
    .line 3679
    move-object/from16 v0, v22

    #@178
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@17b
    move-result-object v20

    #@17c
    .line 3682
    .local v20, "permission":Ljava/lang/String;
    const/4 v4, 0x1

    #@17d
    const/4 v5, 0x0

    #@17e
    .line 3681
    move-object/from16 v0, v22

    #@180
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@183
    move-result-object v21

    #@184
    .line 3683
    .local v21, "readPermission":Ljava/lang/String;
    if-nez v21, :cond_b

    #@186
    .line 3684
    move-object/from16 v21, v20

    #@188
    .line 3687
    :cond_b
    const/4 v4, 0x2

    #@189
    const/4 v5, 0x0

    #@18a
    .line 3686
    move-object/from16 v0, v22

    #@18c
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@18f
    move-result-object v25

    #@190
    .line 3688
    .local v25, "writePermission":Ljava/lang/String;
    if-nez v25, :cond_c

    #@192
    .line 3689
    move-object/from16 v25, v20

    #@194
    .line 3692
    :cond_c
    const/4 v13, 0x0

    #@195
    .line 3693
    .local v13, "havePerm":Z
    if-eqz v21, :cond_d

    #@197
    .line 3694
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@19a
    move-result-object v21

    #@19b
    .line 3695
    const/4 v13, 0x1

    #@19c
    .line 3697
    :cond_d
    if-eqz v25, :cond_e

    #@19e
    .line 3698
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1a1
    move-result-object v25

    #@1a2
    .line 3699
    const/4 v13, 0x1

    #@1a3
    .line 3702
    :cond_e
    if-nez v13, :cond_f

    #@1a5
    .line 3704
    const-string/jumbo v4, "PackageParser"

    #@1a8
    new-instance v5, Ljava/lang/StringBuilder;

    #@1aa
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1ad
    const-string/jumbo v6, "No readPermission or writePermssion for <path-permission>: "

    #@1b0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v5

    #@1b4
    .line 3705
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1b7
    move-result-object v6

    #@1b8
    .line 3704
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v5

    #@1bc
    .line 3705
    const-string/jumbo v6, " at "

    #@1bf
    .line 3704
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v5

    #@1c3
    .line 3705
    move-object/from16 v0, p0

    #@1c5
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@1c7
    .line 3704
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v5

    #@1cb
    .line 3705
    const-string/jumbo v6, " "

    #@1ce
    .line 3704
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v5

    #@1d2
    .line 3706
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@1d5
    move-result-object v6

    #@1d6
    .line 3704
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v5

    #@1da
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dd
    move-result-object v5

    #@1de
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e1
    .line 3707
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1e4
    goto/16 :goto_0

    #@1e6
    .line 3716
    :cond_f
    const/4 v4, 0x3

    #@1e7
    const/4 v5, 0x0

    #@1e8
    .line 3715
    move-object/from16 v0, v22

    #@1ea
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@1ed
    move-result-object v19

    #@1ee
    .line 3717
    .local v19, "path":Ljava/lang/String;
    if-eqz v19, :cond_10

    #@1f0
    .line 3718
    new-instance v17, Landroid/content/pm/PathPermission;

    #@1f2
    .line 3719
    .end local v17    # "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    #@1f3
    .line 3718
    move-object/from16 v0, v17

    #@1f5
    move-object/from16 v1, v19

    #@1f7
    move-object/from16 v2, v21

    #@1f9
    move-object/from16 v3, v25

    #@1fb
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@1fe
    .line 3723
    :cond_10
    const/4 v4, 0x4

    #@1ff
    const/4 v5, 0x0

    #@200
    .line 3722
    move-object/from16 v0, v22

    #@202
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@205
    move-result-object v19

    #@206
    .line 3724
    if-eqz v19, :cond_11

    #@208
    .line 3725
    new-instance v17, Landroid/content/pm/PathPermission;

    #@20a
    .line 3726
    const/4 v4, 0x1

    #@20b
    .line 3725
    move-object/from16 v0, v17

    #@20d
    move-object/from16 v1, v19

    #@20f
    move-object/from16 v2, v21

    #@211
    move-object/from16 v3, v25

    #@213
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@216
    .line 3730
    :cond_11
    const/4 v4, 0x5

    #@217
    const/4 v5, 0x0

    #@218
    .line 3729
    move-object/from16 v0, v22

    #@21a
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@21d
    move-result-object v19

    #@21e
    .line 3731
    if-eqz v19, :cond_12

    #@220
    .line 3732
    new-instance v17, Landroid/content/pm/PathPermission;

    #@222
    .line 3733
    const/4 v4, 0x2

    #@223
    .line 3732
    move-object/from16 v0, v17

    #@225
    move-object/from16 v1, v19

    #@227
    move-object/from16 v2, v21

    #@229
    move-object/from16 v3, v25

    #@22b
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@22e
    .line 3736
    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    #@231
    .line 3738
    if-eqz v17, :cond_14

    #@233
    .line 3739
    move-object/from16 v0, p4

    #@235
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@237
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@239
    if-nez v4, :cond_13

    #@23b
    .line 3740
    move-object/from16 v0, p4

    #@23d
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@23f
    const/4 v5, 0x1

    #@240
    new-array v5, v5, [Landroid/content/pm/PathPermission;

    #@242
    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@244
    .line 3741
    move-object/from16 v0, p4

    #@246
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@248
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@24a
    const/4 v5, 0x0

    #@24b
    aput-object v17, v4, v5

    #@24d
    .line 3760
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@250
    goto/16 :goto_0

    #@252
    .line 3743
    :cond_13
    move-object/from16 v0, p4

    #@254
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@256
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@258
    array-length v12, v4

    #@259
    .line 3744
    .restart local v12    # "N":I
    add-int/lit8 v4, v12, 0x1

    #@25b
    new-array v14, v4, [Landroid/content/pm/PathPermission;

    #@25d
    .line 3745
    .local v14, "newp":[Landroid/content/pm/PathPermission;
    move-object/from16 v0, p4

    #@25f
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@261
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@263
    const/4 v5, 0x0

    #@264
    const/4 v6, 0x0

    #@265
    invoke-static {v4, v5, v14, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@268
    .line 3746
    aput-object v17, v14, v12

    #@26a
    .line 3747
    move-object/from16 v0, p4

    #@26c
    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@26e
    iput-object v14, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    #@270
    goto :goto_2

    #@271
    .line 3751
    .end local v12    # "N":I
    .end local v14    # "newp":[Landroid/content/pm/PathPermission;
    :cond_14
    const-string/jumbo v4, "PackageParser"

    #@274
    new-instance v5, Ljava/lang/StringBuilder;

    #@276
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@279
    const-string/jumbo v6, "No path, pathPrefix, or pathPattern for <path-permission>: "

    #@27c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v5

    #@280
    .line 3752
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@283
    move-result-object v6

    #@284
    .line 3751
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v5

    #@288
    .line 3752
    const-string/jumbo v6, " at "

    #@28b
    .line 3751
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v5

    #@28f
    .line 3752
    move-object/from16 v0, p0

    #@291
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@293
    .line 3751
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v5

    #@297
    .line 3752
    const-string/jumbo v6, " "

    #@29a
    .line 3751
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29d
    move-result-object v5

    #@29e
    .line 3753
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2a1
    move-result-object v6

    #@2a2
    .line 3751
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a5
    move-result-object v5

    #@2a6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a9
    move-result-object v5

    #@2aa
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2ad
    .line 3754
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b0
    goto/16 :goto_0

    #@2b2
    .line 3764
    .end local v13    # "havePerm":Z
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "permission":Ljava/lang/String;
    .end local v21    # "readPermission":Ljava/lang/String;
    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "writePermission":Ljava/lang/String;
    :cond_15
    const-string/jumbo v4, "PackageParser"

    #@2b5
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2ba
    const-string/jumbo v6, "Unknown element under <provider>: "

    #@2bd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v5

    #@2c1
    .line 3765
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2c4
    move-result-object v6

    #@2c5
    .line 3764
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v5

    #@2c9
    .line 3765
    const-string/jumbo v6, " at "

    #@2cc
    .line 3764
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v5

    #@2d0
    .line 3765
    move-object/from16 v0, p0

    #@2d2
    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@2d4
    .line 3764
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d7
    move-result-object v5

    #@2d8
    .line 3765
    const-string/jumbo v6, " "

    #@2db
    .line 3764
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v5

    #@2df
    .line 3766
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2e2
    move-result-object v6

    #@2e3
    .line 3764
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e6
    move-result-object v5

    #@2e7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ea
    move-result-object v5

    #@2eb
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2ee
    .line 3767
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2f1
    goto/16 :goto_0

    #@2f3
    .line 3775
    :cond_16
    const/4 v4, 0x1

    #@2f4
    return v4
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 9
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 4027
    if-nez p0, :cond_0

    #@3
    .line 4028
    const-string/jumbo v6, "PackageParser"

    #@6
    const-string/jumbo v7, "Could not parse null public key"

    #@9
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 4029
    return-object v8

    #@d
    .line 4034
    :cond_0
    const/4 v6, 0x0

    #@e
    :try_start_0
    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@11
    move-result-object v3

    #@12
    .line 4035
    .local v3, "encoded":[B
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    #@14
    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 4043
    .local v5, "keySpec":Ljava/security/spec/EncodedKeySpec;
    :try_start_1
    const-string/jumbo v6, "RSA"

    #@1a
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@1d
    move-result-object v4

    #@1e
    .line 4044
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
    .line 4036
    .end local v3    # "encoded":[B
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_0
    move-exception v0

    #@24
    .line 4037
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "PackageParser"

    #@27
    const-string/jumbo v7, "Could not parse verifier public key; invalid Base64"

    #@2a
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 4038
    return-object v8

    #@2e
    .line 4045
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "encoded":[B
    .restart local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_1
    move-exception v1

    #@2f
    .line 4046
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    #@32
    const-string/jumbo v7, "Could not parse public key: RSA KeyFactory not included in build"

    #@35
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 4053
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    :try_start_2
    const-string/jumbo v6, "EC"

    #@3b
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@3e
    move-result-object v4

    #@3f
    .line 4054
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
    .line 4055
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_2
    move-exception v1

    #@45
    .line 4056
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    #@48
    const-string/jumbo v7, "Could not parse public key: EC KeyFactory not included in build"

    #@4b
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 4063
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "DSA"

    #@51
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@54
    move-result-object v4

    #@55
    .line 4064
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
    .line 4065
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_3
    move-exception v1

    #@5b
    .line 4066
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    #@5e
    const-string/jumbo v7, "Could not parse public key: DSA KeyFactory not included in build"

    #@61
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 4072
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v8

    #@65
    .line 4067
    :catch_4
    move-exception v2

    #@66
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_2

    #@67
    .line 4057
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_5
    move-exception v2

    #@68
    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_1

    #@69
    .line 4047
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_6
    move-exception v2

    #@6a
    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .locals 20
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3782
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    #@2
    .line 3781
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p4

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v16

    #@a
    .line 3784
    .local v16, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@e
    if-nez v2, :cond_0

    #@10
    .line 3785
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@12
    .line 3791
    move-object/from16 v0, p0

    #@14
    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@16
    .line 3786
    const/4 v5, 0x2

    #@17
    .line 3787
    const/4 v6, 0x0

    #@18
    .line 3788
    const/4 v7, 0x1

    #@19
    .line 3789
    const/16 v8, 0x8

    #@1b
    .line 3790
    const/16 v9, 0xc

    #@1d
    .line 3792
    const/4 v11, 0x6

    #@1e
    .line 3793
    const/4 v12, 0x7

    #@1f
    .line 3794
    const/4 v13, 0x4

    #@20
    move-object/from16 v3, p1

    #@22
    move-object/from16 v4, p6

    #@24
    .line 3785
    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    #@27
    move-object/from16 v0, p0

    #@29
    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@2b
    .line 3795
    move-object/from16 v0, p0

    #@2d
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@2f
    const-string/jumbo v3, "<service>"

    #@32
    iput-object v3, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    #@34
    .line 3798
    :cond_0
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@38
    move-object/from16 v0, v16

    #@3a
    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@3c
    .line 3799
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@40
    move/from16 v0, p5

    #@42
    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@44
    .line 3801
    new-instance v15, Landroid/content/pm/PackageParser$Service;

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@4a
    new-instance v3, Landroid/content/pm/ServiceInfo;

    #@4c
    invoke-direct {v3}, Landroid/content/pm/ServiceInfo;-><init>()V

    #@4f
    invoke-direct {v15, v2, v3}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    #@52
    .line 3802
    .local v15, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v2, 0x0

    #@53
    aget-object v2, p6, v2

    #@55
    if-eqz v2, :cond_1

    #@57
    .line 3803
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    #@5a
    .line 3804
    const/4 v2, 0x0

    #@5b
    return-object v2

    #@5c
    .line 3808
    :cond_1
    const/4 v2, 0x5

    #@5d
    .line 3807
    move-object/from16 v0, v16

    #@5f
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@62
    move-result v17

    #@63
    .line 3809
    .local v17, "setExported":Z
    if-eqz v17, :cond_2

    #@65
    .line 3810
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@67
    .line 3811
    const/4 v3, 0x5

    #@68
    const/4 v4, 0x0

    #@69
    .line 3810
    move-object/from16 v0, v16

    #@6b
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6e
    move-result v3

    #@6f
    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    #@71
    .line 3815
    :cond_2
    const/4 v2, 0x3

    #@72
    const/4 v3, 0x0

    #@73
    .line 3814
    move-object/from16 v0, v16

    #@75
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@78
    move-result-object v18

    #@79
    .line 3816
    .local v18, "str":Ljava/lang/String;
    if-nez v18, :cond_6

    #@7b
    .line 3817
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@7d
    move-object/from16 v0, p1

    #@7f
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@81
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@83
    iput-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@85
    .line 3822
    :goto_0
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@87
    const/4 v3, 0x0

    #@88
    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    #@8a
    .line 3824
    const/16 v2, 0x9

    #@8c
    .line 3825
    const/4 v3, 0x0

    #@8d
    .line 3823
    move-object/from16 v0, v16

    #@8f
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@92
    move-result v2

    #@93
    if-eqz v2, :cond_3

    #@95
    .line 3826
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@97
    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    #@99
    or-int/lit8 v3, v3, 0x1

    #@9b
    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    #@9d
    .line 3829
    :cond_3
    const/16 v2, 0xa

    #@9f
    .line 3830
    const/4 v3, 0x0

    #@a0
    .line 3828
    move-object/from16 v0, v16

    #@a2
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a5
    move-result v2

    #@a6
    if-eqz v2, :cond_4

    #@a8
    .line 3831
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@aa
    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    #@ac
    or-int/lit8 v3, v3, 0x2

    #@ae
    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    #@b0
    .line 3834
    :cond_4
    const/16 v2, 0xb

    #@b2
    .line 3835
    const/4 v3, 0x0

    #@b3
    .line 3833
    move-object/from16 v0, v16

    #@b5
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@b8
    move-result v2

    #@b9
    if-eqz v2, :cond_5

    #@bb
    .line 3836
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@bd
    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    #@bf
    const/high16 v4, 0x40000000    # 2.0f

    #@c1
    or-int/2addr v3, v4

    #@c2
    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    #@c4
    .line 3837
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@c6
    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    #@c8
    if-eqz v2, :cond_5

    #@ca
    move/from16 v0, p5

    #@cc
    and-int/lit16 v2, v0, 0x80

    #@ce
    if-nez v2, :cond_5

    #@d0
    .line 3838
    const-string/jumbo v2, "PackageParser"

    #@d3
    new-instance v3, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v4, "Service exported request ignored due to singleUser: "

    #@db
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v3

    #@df
    .line 3839
    iget-object v4, v15, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    #@e1
    .line 3838
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v3

    #@e5
    .line 3839
    const-string/jumbo v4, " at "

    #@e8
    .line 3838
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v3

    #@ec
    .line 3839
    move-object/from16 v0, p0

    #@ee
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@f0
    .line 3838
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v3

    #@f4
    .line 3839
    const-string/jumbo v4, " "

    #@f7
    .line 3838
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v3

    #@fb
    .line 3840
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@fe
    move-result-object v4

    #@ff
    .line 3838
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v3

    #@103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v3

    #@107
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10a
    .line 3841
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@10c
    const/4 v3, 0x0

    #@10d
    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    #@10f
    .line 3842
    const/16 v17, 0x1

    #@111
    .line 3846
    .end local v17    # "setExported":Z
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    #@114
    .line 3848
    move-object/from16 v0, p1

    #@116
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@118
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@11a
    and-int/lit8 v2, v2, 0x2

    #@11c
    if-eqz v2, :cond_8

    #@11e
    .line 3852
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@120
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    #@122
    move-object/from16 v0, p1

    #@124
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@126
    if-ne v2, v3, :cond_8

    #@128
    .line 3853
    const-string/jumbo v2, "Heavy-weight applications can not have services in main process"

    #@12b
    const/4 v3, 0x0

    #@12c
    aput-object v2, p6, v3

    #@12e
    .line 3854
    const/4 v2, 0x0

    #@12f
    return-object v2

    #@130
    .line 3819
    .restart local v17    # "setExported":Z
    :cond_6
    iget-object v3, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@132
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@135
    move-result v2

    #@136
    if-lez v2, :cond_7

    #@138
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@13b
    move-result-object v2

    #@13c
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@13f
    move-result-object v2

    #@140
    :goto_1
    iput-object v2, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@142
    goto/16 :goto_0

    #@144
    :cond_7
    const/4 v2, 0x0

    #@145
    goto :goto_1

    #@146
    .line 3858
    .end local v17    # "setExported":Z
    :cond_8
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@149
    move-result v14

    #@14a
    .line 3860
    .local v14, "outerDepth":I
    :cond_9
    :goto_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@14d
    move-result v19

    #@14e
    .local v19, "type":I
    const/4 v2, 0x1

    #@14f
    move/from16 v0, v19

    #@151
    if-eq v0, v2, :cond_e

    #@153
    .line 3861
    const/4 v2, 0x3

    #@154
    move/from16 v0, v19

    #@156
    if-ne v0, v2, :cond_a

    #@158
    .line 3862
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@15b
    move-result v2

    #@15c
    if-le v2, v14, :cond_e

    #@15e
    .line 3863
    :cond_a
    const/4 v2, 0x3

    #@15f
    move/from16 v0, v19

    #@161
    if-eq v0, v2, :cond_9

    #@163
    const/4 v2, 0x4

    #@164
    move/from16 v0, v19

    #@166
    if-eq v0, v2, :cond_9

    #@168
    .line 3867
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@16b
    move-result-object v2

    #@16c
    const-string/jumbo v3, "intent-filter"

    #@16f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@172
    move-result v2

    #@173
    if-eqz v2, :cond_c

    #@175
    .line 3868
    new-instance v8, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@177
    invoke-direct {v8, v15}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    #@17a
    .line 3869
    .local v8, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v6, 0x1

    #@17b
    const/4 v7, 0x0

    #@17c
    move-object/from16 v2, p0

    #@17e
    move-object/from16 v3, p2

    #@180
    move-object/from16 v4, p3

    #@182
    move-object/from16 v5, p4

    #@184
    move-object/from16 v9, p6

    #@186
    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    #@189
    move-result v2

    #@18a
    if-nez v2, :cond_b

    #@18c
    .line 3870
    const/4 v2, 0x0

    #@18d
    return-object v2

    #@18e
    .line 3873
    :cond_b
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    #@190
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@193
    goto :goto_2

    #@194
    .line 3874
    .end local v8    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_c
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@197
    move-result-object v2

    #@198
    const-string/jumbo v3, "meta-data"

    #@19b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19e
    move-result v2

    #@19f
    if-eqz v2, :cond_d

    #@1a1
    .line 3875
    iget-object v6, v15, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    #@1a3
    move-object/from16 v2, p0

    #@1a5
    move-object/from16 v3, p2

    #@1a7
    move-object/from16 v4, p3

    #@1a9
    move-object/from16 v5, p4

    #@1ab
    move-object/from16 v7, p6

    #@1ad
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@1b0
    move-result-object v2

    #@1b1
    iput-object v2, v15, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    #@1b3
    if-nez v2, :cond_9

    #@1b5
    .line 3877
    const/4 v2, 0x0

    #@1b6
    return-object v2

    #@1b7
    .line 3881
    :cond_d
    const-string/jumbo v2, "PackageParser"

    #@1ba
    new-instance v3, Ljava/lang/StringBuilder;

    #@1bc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1bf
    const-string/jumbo v4, "Unknown element under <service>: "

    #@1c2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v3

    #@1c6
    .line 3882
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c9
    move-result-object v4

    #@1ca
    .line 3881
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v3

    #@1ce
    .line 3882
    const-string/jumbo v4, " at "

    #@1d1
    .line 3881
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v3

    #@1d5
    .line 3882
    move-object/from16 v0, p0

    #@1d7
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@1d9
    .line 3881
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v3

    #@1dd
    .line 3882
    const-string/jumbo v4, " "

    #@1e0
    .line 3881
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v3

    #@1e4
    .line 3883
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@1e7
    move-result-object v4

    #@1e8
    .line 3881
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v3

    #@1ec
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ef
    move-result-object v3

    #@1f0
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f3
    .line 3884
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1f6
    goto/16 :goto_2

    #@1f8
    .line 3893
    :cond_e
    if-nez v17, :cond_f

    #@1fa
    .line 3894
    iget-object v3, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@1fc
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    #@1fe
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@201
    move-result v2

    #@202
    if-lez v2, :cond_10

    #@204
    const/4 v2, 0x1

    #@205
    :goto_3
    iput-boolean v2, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    #@207
    .line 3897
    :cond_f
    return-object v15

    #@208
    .line 3894
    :cond_10
    const/4 v2, 0x0

    #@209
    goto :goto_3
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 14
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
    .line 959
    move-object/from16 v6, p3

    #@2
    .line 962
    .local v6, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p3

    #@4
    move/from16 v1, p4

    #@6
    invoke-static {v0, v6, v1}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;

    #@9
    .line 964
    const/4 v2, 0x0

    #@a
    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    #@c
    .line 965
    const/4 v2, 0x0

    #@d
    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@f
    .line 966
    const/4 v2, 0x0

    #@10
    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@12
    .line 967
    const/4 v2, 0x0

    #@13
    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    #@15
    .line 971
    const/4 v10, 0x0

    #@16
    .line 973
    .local v10, "foundApp":Z
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@19
    move-result v11

    #@1a
    .line 974
    .local v11, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    #@1d
    move-result v13

    #@1e
    .local v13, "type":I
    const/4 v2, 0x1

    #@1f
    if-eq v13, v2, :cond_4

    #@21
    .line 975
    const/4 v2, 0x3

    #@22
    if-ne v13, v2, :cond_1

    #@24
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@27
    move-result v2

    #@28
    if-le v2, v11, :cond_4

    #@2a
    .line 976
    :cond_1
    const/4 v2, 0x3

    #@2b
    if-eq v13, v2, :cond_0

    #@2d
    const/4 v2, 0x4

    #@2e
    if-eq v13, v2, :cond_0

    #@30
    .line 980
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@33
    move-result-object v12

    #@34
    .line 981
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "application"

    #@37
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_3

    #@3d
    .line 982
    if-eqz v10, :cond_2

    #@3f
    .line 988
    const-string/jumbo v2, "PackageParser"

    #@42
    const-string/jumbo v3, "<manifest> has more than one <application>"

    #@45
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 989
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4b
    goto :goto_0

    #@4c
    .line 994
    :cond_2
    const/4 v10, 0x1

    #@4d
    move-object v2, p0

    #@4e
    move-object v3, p1

    #@4f
    move-object/from16 v4, p2

    #@51
    move-object/from16 v5, p3

    #@53
    move/from16 v7, p4

    #@55
    move/from16 v8, p5

    #@57
    move-object/from16 v9, p6

    #@59
    .line 995
    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;II[Ljava/lang/String;)Z

    #@5c
    move-result v2

    #@5d
    if-nez v2, :cond_0

    #@5f
    .line 996
    const/4 v2, 0x0

    #@60
    return-object v2

    #@61
    .line 1006
    :cond_3
    const-string/jumbo v2, "PackageParser"

    #@64
    new-instance v3, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v4, "Unknown element under <manifest>: "

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    .line 1007
    const-string/jumbo v4, " at "

    #@7b
    .line 1006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    .line 1007
    iget-object v4, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@81
    .line 1006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    .line 1007
    const-string/jumbo v4, " "

    #@88
    .line 1006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    .line 1008
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@8f
    move-result-object v4

    #@90
    .line 1006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v3

    #@98
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9b
    .line 1009
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@9e
    goto/16 :goto_0

    #@a0
    .line 1014
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_4
    if-nez v10, :cond_5

    #@a2
    .line 1015
    const-string/jumbo v2, "<manifest> does not contain an <application>"

    #@a5
    const/4 v3, 0x0

    #@a6
    aput-object v2, p6, v3

    #@a8
    .line 1016
    const/16 v2, -0x6d

    #@aa
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    #@ac
    .line 1019
    :cond_5
    return-object p1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 29
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
    .line 914
    move-object/from16 v0, p1

    #@2
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@4
    aget-object v22, v3, p2

    #@6
    .line 915
    .local v22, "apkPath":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    #@8
    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b
    .line 917
    .local v21, "apkFile":Ljava/io/File;
    const/4 v3, 0x1

    #@c
    move-object/from16 v0, p0

    #@e
    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@10
    .line 918
    move-object/from16 v0, v22

    #@12
    move-object/from16 v1, p0

    #@14
    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@16
    .line 922
    move-object/from16 v0, p3

    #@18
    move-object/from16 v1, v22

    #@1a
    move/from16 v2, p4

    #@1c
    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    #@1f
    move-result v23

    #@20
    .line 924
    .local v23, "cookie":I
    const/16 v27, 0x0

    #@22
    .line 925
    .local v27, "res":Landroid/content/res/Resources;
    const/16 v26, 0x0

    #@24
    .line 927
    .local v26, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v28, Landroid/content/res/Resources;

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v3, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@2a
    const/4 v4, 0x0

    #@2b
    move-object/from16 v0, v28

    #@2d
    move-object/from16 v1, p3

    #@2f
    invoke-direct {v0, v1, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@32
    .line 929
    .end local v27    # "res":Landroid/content/res/Resources;
    .local v28, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@34
    .line 928
    const/4 v4, 0x0

    #@35
    const/4 v5, 0x0

    #@36
    const/4 v6, 0x0

    #@37
    const/4 v7, 0x0

    #@38
    const/4 v8, 0x0

    #@39
    const/4 v9, 0x0

    #@3a
    const/4 v10, 0x0

    #@3b
    const/4 v11, 0x0

    #@3c
    const/4 v12, 0x0

    #@3d
    const/4 v13, 0x0

    #@3e
    const/4 v14, 0x0

    #@3f
    const/4 v15, 0x0

    #@40
    const/16 v16, 0x0

    #@42
    const/16 v17, 0x0

    #@44
    const/16 v18, 0x0

    #@46
    const/16 v19, 0x0

    #@48
    move-object/from16 v3, p3

    #@4a
    invoke-virtual/range {v3 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    #@4d
    .line 930
    const-string/jumbo v3, "AndroidManifest.xml"

    #@50
    move-object/from16 v0, p3

    #@52
    move/from16 v1, v23

    #@54
    invoke-virtual {v0, v1, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@57
    move-result-object v6

    #@58
    .line 932
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x1

    #@59
    :try_start_2
    new-array v9, v3, [Ljava/lang/String;

    #@5b
    .local v9, "outError":[Ljava/lang/String;
    move-object/from16 v3, p0

    #@5d
    move-object/from16 v4, p1

    #@5f
    move-object/from16 v5, v28

    #@61
    move/from16 v7, p4

    #@63
    move/from16 v8, p2

    #@65
    .line 933
    invoke-direct/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@68
    move-result-object p1

    #@69
    .line 934
    if-nez p1, :cond_0

    #@6b
    .line 935
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@71
    .line 936
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    move-object/from16 v0, v22

    #@78
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    const-string/jumbo v7, " (at "

    #@7f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    const-string/jumbo v7, "): "

    #@8e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    const/4 v7, 0x0

    #@93
    aget-object v7, v9, v7

    #@95
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    .line 935
    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@a0
    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@a1
    .line 939
    .end local v9    # "outError":[Ljava/lang/String;
    :catch_0
    move-exception v24

    #@a2
    .local v24, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v27, v28

    #@a4
    .line 940
    .end local v28    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_3
    throw v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a5
    .line 944
    .end local v24    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v3

    #@a6
    .line 945
    :goto_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a9
    .line 944
    throw v3

    #@aa
    .line 945
    .restart local v9    # "outError":[Ljava/lang/String;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ad
    .line 913
    return-void

    #@ae
    .line 941
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "outError":[Ljava/lang/String;
    .end local v28    # "res":Landroid/content/res/Resources;
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v25

    #@af
    .local v25, "e":Ljava/lang/Exception;
    move-object/from16 v6, v26

    #@b1
    .line 942
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_2
    :try_start_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@b3
    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v5, "Failed to read manifest from "

    #@bb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v4

    #@bf
    move-object/from16 v0, v22

    #@c1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v4

    #@c5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v4

    #@c9
    .line 942
    const/16 v5, -0x66

    #@cb
    move-object/from16 v0, v25

    #@cd
    invoke-direct {v3, v5, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@d0
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d1
    .line 944
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v3

    #@d2
    move-object/from16 v6, v26

    #@d4
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1

    #@d5
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :catchall_2
    move-exception v3

    #@d6
    move-object/from16 v6, v26

    #@d8
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v27, v28

    #@da
    .end local v28    # "res":Landroid/content/res/Resources;
    .local v27, "res":Landroid/content/res/Resources;
    goto :goto_1

    #@db
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :catchall_3
    move-exception v3

    #@dc
    move-object/from16 v27, v28

    #@de
    .end local v28    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    goto :goto_1

    #@df
    .line 939
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .local v27, "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v24

    #@e0
    .restart local v24    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v6, v26

    #@e2
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    #@e3
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v24

    #@e4
    .restart local v24    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v6, v26

    #@e6
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v27, v28

    #@e8
    .end local v28    # "res":Landroid/content/res/Resources;
    .local v27, "res":Landroid/content/res/Resources;
    goto :goto_0

    #@e9
    .line 941
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :catch_4
    move-exception v25

    #@ea
    .restart local v25    # "e":Ljava/lang/Exception;
    move-object/from16 v6, v26

    #@ec
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v27, v28

    #@ee
    .end local v28    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    goto :goto_2

    #@ef
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :catch_5
    move-exception v25

    #@f0
    .restart local v25    # "e":Ljava/lang/Exception;
    move-object/from16 v27, v28

    #@f2
    .end local v28    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;II[Ljava/lang/String;)Z
    .locals 20
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "splitIndex"    # I
    .param p7, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2857
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    #@2
    .line 2856
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p4

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v17

    #@a
    .line 2860
    .local v17, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x7

    #@b
    const/4 v3, 0x1

    #@c
    .line 2859
    move-object/from16 v0, v17

    #@e
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 2861
    move-object/from16 v0, p1

    #@16
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    #@18
    aget v3, v2, p6

    #@1a
    or-int/lit8 v3, v3, 0x4

    #@1c
    aput v3, v2, p6

    #@1e
    .line 2864
    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@21
    move-result v12

    #@22
    .line 2866
    .local v12, "innerDepth":I
    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@25
    move-result v19

    #@26
    .local v19, "type":I
    const/4 v2, 0x1

    #@27
    move/from16 v0, v19

    #@29
    if-eq v0, v2, :cond_12

    #@2b
    .line 2867
    const/4 v2, 0x3

    #@2c
    move/from16 v0, v19

    #@2e
    if-ne v0, v2, :cond_2

    #@30
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@33
    move-result v2

    #@34
    if-le v2, v12, :cond_12

    #@36
    .line 2868
    :cond_2
    const/4 v2, 0x3

    #@37
    move/from16 v0, v19

    #@39
    if-eq v0, v2, :cond_1

    #@3b
    const/4 v2, 0x4

    #@3c
    move/from16 v0, v19

    #@3e
    if-eq v0, v2, :cond_1

    #@40
    .line 2872
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@43
    move-result-object v18

    #@44
    .line 2873
    .local v18, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "activity"

    #@47
    move-object/from16 v0, v18

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_4

    #@4f
    .line 2875
    move-object/from16 v0, p1

    #@51
    iget-boolean v10, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    #@53
    .line 2874
    const/4 v9, 0x0

    #@54
    move-object/from16 v2, p0

    #@56
    move-object/from16 v3, p1

    #@58
    move-object/from16 v4, p2

    #@5a
    move-object/from16 v5, p3

    #@5c
    move-object/from16 v6, p4

    #@5e
    move/from16 v7, p5

    #@60
    move-object/from16 v8, p7

    #@62
    invoke-direct/range {v2 .. v10}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    #@65
    move-result-object v11

    #@66
    .line 2876
    .local v11, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v11, :cond_3

    #@68
    .line 2877
    const/16 v2, -0x6c

    #@6a
    move-object/from16 v0, p0

    #@6c
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@6e
    .line 2878
    const/4 v2, 0x0

    #@6f
    return v2

    #@70
    .line 2881
    :cond_3
    move-object/from16 v0, p1

    #@72
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@77
    goto :goto_0

    #@78
    .line 2883
    .end local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    const-string/jumbo v2, "receiver"

    #@7b
    move-object/from16 v0, v18

    #@7d
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v2

    #@81
    if-eqz v2, :cond_6

    #@83
    .line 2884
    const/4 v9, 0x1

    #@84
    const/4 v10, 0x0

    #@85
    move-object/from16 v2, p0

    #@87
    move-object/from16 v3, p1

    #@89
    move-object/from16 v4, p2

    #@8b
    move-object/from16 v5, p3

    #@8d
    move-object/from16 v6, p4

    #@8f
    move/from16 v7, p5

    #@91
    move-object/from16 v8, p7

    #@93
    invoke-direct/range {v2 .. v10}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    #@96
    move-result-object v11

    #@97
    .line 2885
    .restart local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v11, :cond_5

    #@99
    .line 2886
    const/16 v2, -0x6c

    #@9b
    move-object/from16 v0, p0

    #@9d
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@9f
    .line 2887
    const/4 v2, 0x0

    #@a0
    return v2

    #@a1
    .line 2890
    :cond_5
    move-object/from16 v0, p1

    #@a3
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@a5
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a8
    goto/16 :goto_0

    #@aa
    .line 2892
    .end local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_6
    const-string/jumbo v2, "service"

    #@ad
    move-object/from16 v0, v18

    #@af
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v2

    #@b3
    if-eqz v2, :cond_8

    #@b5
    move-object/from16 v2, p0

    #@b7
    move-object/from16 v3, p1

    #@b9
    move-object/from16 v4, p2

    #@bb
    move-object/from16 v5, p3

    #@bd
    move-object/from16 v6, p4

    #@bf
    move/from16 v7, p5

    #@c1
    move-object/from16 v8, p7

    #@c3
    .line 2893
    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    #@c6
    move-result-object v16

    #@c7
    .line 2894
    .local v16, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v16, :cond_7

    #@c9
    .line 2895
    const/16 v2, -0x6c

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@cf
    .line 2896
    const/4 v2, 0x0

    #@d0
    return v2

    #@d1
    .line 2899
    :cond_7
    move-object/from16 v0, p1

    #@d3
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@d5
    move-object/from16 v0, v16

    #@d7
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@da
    goto/16 :goto_0

    #@dc
    .line 2901
    .end local v16    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_8
    const-string/jumbo v2, "provider"

    #@df
    move-object/from16 v0, v18

    #@e1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e4
    move-result v2

    #@e5
    if-eqz v2, :cond_a

    #@e7
    move-object/from16 v2, p0

    #@e9
    move-object/from16 v3, p1

    #@eb
    move-object/from16 v4, p2

    #@ed
    move-object/from16 v5, p3

    #@ef
    move-object/from16 v6, p4

    #@f1
    move/from16 v7, p5

    #@f3
    move-object/from16 v8, p7

    #@f5
    .line 2902
    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    #@f8
    move-result-object v14

    #@f9
    .line 2903
    .local v14, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v14, :cond_9

    #@fb
    .line 2904
    const/16 v2, -0x6c

    #@fd
    move-object/from16 v0, p0

    #@ff
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@101
    .line 2905
    const/4 v2, 0x0

    #@102
    return v2

    #@103
    .line 2908
    :cond_9
    move-object/from16 v0, p1

    #@105
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@107
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10a
    goto/16 :goto_0

    #@10c
    .line 2910
    .end local v14    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_a
    const-string/jumbo v2, "activity-alias"

    #@10f
    move-object/from16 v0, v18

    #@111
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@114
    move-result v2

    #@115
    if-eqz v2, :cond_c

    #@117
    move-object/from16 v2, p0

    #@119
    move-object/from16 v3, p1

    #@11b
    move-object/from16 v4, p2

    #@11d
    move-object/from16 v5, p3

    #@11f
    move-object/from16 v6, p4

    #@121
    move/from16 v7, p5

    #@123
    move-object/from16 v8, p7

    #@125
    .line 2911
    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    #@128
    move-result-object v11

    #@129
    .line 2912
    .restart local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v11, :cond_b

    #@12b
    .line 2913
    const/16 v2, -0x6c

    #@12d
    move-object/from16 v0, p0

    #@12f
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@131
    .line 2914
    const/4 v2, 0x0

    #@132
    return v2

    #@133
    .line 2917
    :cond_b
    move-object/from16 v0, p1

    #@135
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@137
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13a
    goto/16 :goto_0

    #@13c
    .line 2919
    .end local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_c
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@13f
    move-result-object v2

    #@140
    const-string/jumbo v3, "meta-data"

    #@143
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@146
    move-result v2

    #@147
    if-eqz v2, :cond_d

    #@149
    .line 2923
    move-object/from16 v0, p1

    #@14b
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@14d
    move-object/from16 v2, p0

    #@14f
    move-object/from16 v3, p2

    #@151
    move-object/from16 v4, p3

    #@153
    move-object/from16 v5, p4

    #@155
    move-object/from16 v7, p7

    #@157
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    #@15a
    move-result-object v2

    #@15b
    move-object/from16 v0, p1

    #@15d
    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@15f
    if-nez v2, :cond_1

    #@161
    .line 2925
    const/16 v2, -0x6c

    #@163
    move-object/from16 v0, p0

    #@165
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    #@167
    .line 2926
    const/4 v2, 0x0

    #@168
    return v2

    #@169
    .line 2929
    :cond_d
    const-string/jumbo v2, "uses-library"

    #@16c
    move-object/from16 v0, v18

    #@16e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@171
    move-result v2

    #@172
    if-eqz v2, :cond_10

    #@174
    .line 2931
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    #@176
    .line 2930
    move-object/from16 v0, p2

    #@178
    move-object/from16 v1, p4

    #@17a
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@17d
    move-result-object v17

    #@17e
    .line 2936
    const/4 v2, 0x0

    #@17f
    .line 2935
    move-object/from16 v0, v17

    #@181
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@184
    move-result-object v13

    #@185
    .line 2938
    .local v13, "lname":Ljava/lang/String;
    const/4 v2, 0x1

    #@186
    .line 2939
    const/4 v3, 0x1

    #@187
    .line 2937
    move-object/from16 v0, v17

    #@189
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@18c
    move-result v15

    #@18d
    .line 2941
    .local v15, "req":Z
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    #@190
    .line 2943
    if-eqz v13, :cond_e

    #@192
    .line 2944
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@195
    move-result-object v13

    #@196
    .line 2945
    if-eqz v15, :cond_f

    #@198
    .line 2947
    move-object/from16 v0, p1

    #@19a
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@19c
    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@19f
    move-result-object v2

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@1a4
    .line 2949
    move-object/from16 v0, p1

    #@1a6
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@1a8
    .line 2948
    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@1ab
    move-result-object v2

    #@1ac
    move-object/from16 v0, p1

    #@1ae
    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@1b0
    .line 2959
    :cond_e
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1b3
    goto/16 :goto_0

    #@1b5
    .line 2952
    :cond_f
    move-object/from16 v0, p1

    #@1b7
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@1b9
    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    #@1bc
    move-result v2

    #@1bd
    if-nez v2, :cond_e

    #@1bf
    .line 2954
    move-object/from16 v0, p1

    #@1c1
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@1c3
    .line 2953
    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@1c6
    move-result-object v2

    #@1c7
    move-object/from16 v0, p1

    #@1c9
    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@1cb
    goto :goto_1

    #@1cc
    .line 2961
    .end local v13    # "lname":Ljava/lang/String;
    .end local v15    # "req":Z
    :cond_10
    const-string/jumbo v2, "uses-package"

    #@1cf
    move-object/from16 v0, v18

    #@1d1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d4
    move-result v2

    #@1d5
    if-eqz v2, :cond_11

    #@1d7
    .line 2964
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1da
    goto/16 :goto_0

    #@1dc
    .line 2968
    :cond_11
    const-string/jumbo v2, "PackageParser"

    #@1df
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e4
    const-string/jumbo v4, "Unknown element under <application>: "

    #@1e7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v3

    #@1eb
    move-object/from16 v0, v18

    #@1ed
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v3

    #@1f1
    .line 2969
    const-string/jumbo v4, " at "

    #@1f4
    .line 2968
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v3

    #@1f8
    .line 2969
    move-object/from16 v0, p0

    #@1fa
    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    #@1fc
    .line 2968
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v3

    #@200
    .line 2969
    const-string/jumbo v4, " "

    #@203
    .line 2968
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@206
    move-result-object v3

    #@207
    .line 2970
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@20a
    move-result-object v4

    #@20b
    .line 2968
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v3

    #@20f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@212
    move-result-object v3

    #@213
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@216
    .line 2971
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@219
    goto/16 :goto_0

    #@21b
    .line 2981
    .end local v18    # "tagName":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x1

    #@21c
    return v2
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1890
    new-instance v0, Landroid/content/pm/FeatureInfo;

    #@4
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    #@7
    .line 1892
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    #@9
    .line 1891
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v1

    #@d
    .line 1895
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iput-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@13
    .line 1897
    iget-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@15
    if-nez v2, :cond_0

    #@17
    .line 1898
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1a
    move-result v2

    #@1b
    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@1d
    .line 1903
    :cond_0
    const/4 v2, 0x2

    #@1e
    .line 1902
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 1904
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    #@26
    or-int/lit8 v2, v2, 0x1

    #@28
    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    #@2a
    .line 1906
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@2d
    .line 1907
    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
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
    .line 1913
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    #@4
    .line 1912
    invoke-virtual {p2, p4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v3

    #@8
    .line 1917
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 1920
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    #@d
    .line 1921
    .local v1, "maxSdkVersion":I
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@10
    move-result-object v4

    #@11
    .line 1923
    .local v4, "val":Landroid/util/TypedValue;
    if-eqz v4, :cond_0

    #@13
    .line 1924
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
    .line 1925
    iget v1, v4, Landroid/util/TypedValue;->data:I

    #@21
    .line 1929
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@24
    .line 1931
    if-eqz v1, :cond_1

    #@26
    sget v5, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@28
    if-lt v1, v5, :cond_2

    #@2a
    .line 1932
    :cond_1
    if-eqz v2, :cond_2

    #@2c
    .line 1933
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    .line 1934
    .local v0, "index":I
    const/4 v5, -0x1

    #@33
    if-ne v0, v5, :cond_3

    #@35
    .line 1935
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    .line 1944
    .end local v0    # "index":I
    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@41
    .line 1945
    return v8

    #@42
    .line 1937
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
    .line 1938
    const-string/jumbo v7, " in package: "

    #@58
    .line 1937
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    .line 1938
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@5e
    .line 1937
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    .line 1938
    const-string/jumbo v7, " at: "

    #@65
    .line 1937
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    .line 1939
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    .line 1937
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
    .line 4002
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPackageVerifier:[I

    #@4
    .line 4001
    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v3

    #@8
    .line 4004
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 4008
    .local v1, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    #@d
    .line 4007
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 4010
    .local v0, "encodedPublicKey":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@14
    .line 4012
    if-eqz v1, :cond_0

    #@16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 4013
    :cond_0
    const-string/jumbo v4, "PackageParser"

    #@1f
    const-string/jumbo v5, "verifier package name was null; skipping"

    #@22
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 4014
    return-object v7

    #@26
    .line 4017
    :cond_1
    invoke-static {v0}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@29
    move-result-object v2

    #@2a
    .line 4018
    .local v2, "publicKey":Ljava/security/PublicKey;
    if-nez v2, :cond_2

    #@2c
    .line 4019
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
    .line 4020
    return-object v7

    #@47
    .line 4023
    :cond_2
    new-instance v4, Landroid/content/pm/VerifierInfo;

    #@49
    invoke-direct {v4, v1, v2}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    #@4c
    return-object v4
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
    .line 5106
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    .line 5107
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    #@b
    .line 5108
    const/16 v3, 0x1000

    #@d
    new-array v0, v3, [B

    #@f
    .line 5111
    :cond_0
    const/4 v2, 0x0

    #@10
    .line 5112
    .local v2, "n":I
    const/4 v1, 0x0

    #@11
    .line 5113
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
    .line 5114
    add-int/2addr v1, v2

    #@1b
    goto :goto_0

    #@1c
    .line 5117
    :cond_1
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@21
    .line 5118
    int-to-long v4, v1

    #@22
    return-wide v4
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0
    .param p0, "compatibilityModeEnabled"    # Z

    #@0
    .prologue
    .line 5100
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    #@2
    .line 5099
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1339
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 1340
    .local v0, "N":I
    new-array v2, v0, [B

    #@6
    .line 1341
    .local v2, "sig":[B
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 1342
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v3

    #@d
    int-to-byte v3, v3

    #@e
    aput-byte v3, v2, v1

    #@10
    .line 1341
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1344
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
    .line 4741
    sget-boolean v2, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 4742
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    #@9
    .line 4744
    :cond_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 4745
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@f
    const/high16 v3, 0x800000

    #@11
    or-int/2addr v2, v3

    #@12
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@14
    .line 4749
    :goto_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 4750
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@1a
    or-int/lit8 v2, v2, 0x1

    #@1c
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@1e
    .line 4754
    :goto_1
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@20
    if-ne v2, v0, :cond_4

    #@22
    .line 4755
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@24
    .line 4762
    :cond_1
    :goto_2
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@26
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@28
    .line 4739
    return-void

    #@29
    .line 4747
    :cond_2
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2b
    const v3, -0x800001

    #@2e
    and-int/2addr v2, v3

    #@2f
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@31
    goto :goto_0

    #@32
    .line 4752
    :cond_3
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@34
    and-int/lit8 v2, v2, -0x2

    #@36
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@38
    goto :goto_1

    #@39
    .line 4756
    :cond_4
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@3b
    const/4 v3, 0x4

    #@3c
    if-ne v2, v3, :cond_6

    #@3e
    .line 4757
    const v2, 0x8000

    #@41
    and-int/2addr v2, p1

    #@42
    if-eqz v2, :cond_5

    #@44
    :goto_3
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@46
    goto :goto_2

    #@47
    :cond_5
    move v0, v1

    #@48
    goto :goto_3

    #@49
    .line 4758
    :cond_6
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@4b
    const/4 v2, 0x2

    #@4c
    if-eq v0, v2, :cond_7

    #@4e
    .line 4759
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    #@50
    const/4 v2, 0x3

    #@51
    if-ne v0, v2, :cond_1

    #@53
    .line 4760
    :cond_7
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@55
    goto :goto_2
.end method

.method private static validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requireSeparator"    # Z
    .param p2, "requireFilename"    # Z

    #@0
    .prologue
    .line 1201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 1202
    .local v0, "N":I
    const/4 v3, 0x0

    #@5
    .line 1203
    .local v3, "hasSep":Z
    const/4 v2, 0x1

    #@6
    .line 1204
    .local v2, "front":Z
    const/4 v4, 0x0

    #@7
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_7

    #@9
    .line 1205
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v1

    #@d
    .line 1206
    .local v1, "c":C
    const/16 v5, 0x61

    #@f
    if-lt v1, v5, :cond_2

    #@11
    const/16 v5, 0x7a

    #@13
    if-gt v1, v5, :cond_2

    #@15
    .line 1207
    :cond_0
    const/4 v2, 0x0

    #@16
    .line 1204
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1206
    :cond_2
    const/16 v5, 0x41

    #@1b
    if-lt v1, v5, :cond_3

    #@1d
    const/16 v5, 0x5a

    #@1f
    if-le v1, v5, :cond_0

    #@21
    .line 1210
    :cond_3
    if-nez v2, :cond_5

    #@23
    .line 1211
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
    .line 1215
    :cond_5
    const/16 v5, 0x2e

    #@31
    if-ne v1, v5, :cond_6

    #@33
    .line 1216
    const/4 v3, 0x1

    #@34
    .line 1217
    const/4 v2, 0x1

    #@35
    .line 1218
    goto :goto_1

    #@36
    .line 1220
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
    .line 1222
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
    .line 1225
    :cond_8
    if-nez v3, :cond_a

    #@5c
    if-eqz p1, :cond_a

    #@5e
    .line 1226
    const-string/jumbo v5, "must have at least one \'.\' separator"

    #@61
    .line 1225
    :goto_2
    return-object v5

    #@62
    .line 1223
    :cond_9
    const-string/jumbo v5, "Invalid filename"

    #@65
    return-object v5

    #@66
    .line 1226
    :cond_a
    const/4 v5, 0x0

    #@67
    goto :goto_2
.end method


# virtual methods
.method public collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1053
    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    #@3
    .line 1054
    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@5
    .line 1055
    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@7
    .line 1057
    new-instance v1, Ljava/io/File;

    #@9
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@b
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@e
    invoke-static {p1, v1, p2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    #@11
    .line 1059
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@13
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 1060
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@1b
    const/4 v1, 0x0

    #@1c
    array-length v3, v2

    #@1d
    :goto_0
    if-ge v1, v3, :cond_0

    #@1f
    aget-object v0, v2, v1

    #@21
    .line 1061
    .local v0, "splitCodePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    #@23
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@26
    invoke-static {p1, v4, p2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    #@29
    .line 1060
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1052
    .end local v0    # "splitCodePath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public collectManifestDigest(Landroid/content/pm/PackageParser$Package;)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1028
    iput-object v3, p1, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;

    #@3
    .line 1032
    :try_start_0
    new-instance v1, Ljava/util/jar/StrictJarFile;

    #@5
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@7
    invoke-direct {v1, v3}, Ljava/util/jar/StrictJarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1034
    .local v1, "jarFile":Ljava/util/jar/StrictJarFile;
    :try_start_1
    const-string/jumbo v3, "AndroidManifest.xml"

    #@d
    invoke-virtual {v1, v3}, Ljava/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@10
    move-result-object v2

    #@11
    .line 1035
    .local v2, "je":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_0

    #@13
    .line 1036
    invoke-virtual {v1, v2}, Ljava/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@16
    move-result-object v3

    #@17
    invoke-static {v3}, Landroid/content/pm/ManifestDigest;->fromInputStream(Ljava/io/InputStream;)Landroid/content/pm/ManifestDigest;

    #@1a
    move-result-object v3

    #@1b
    iput-object v3, p1, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 1039
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/StrictJarFile;->close()V

    #@20
    .line 1027
    return-void

    #@21
    .line 1038
    .end local v2    # "je":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v3

    #@22
    .line 1039
    invoke-virtual {v1}, Ljava/util/jar/StrictJarFile;->close()V

    #@25
    .line 1038
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@26
    .line 1041
    .end local v1    # "jarFile":Ljava/util/jar/StrictJarFile;
    :catch_0
    move-exception v0

    #@27
    .line 1042
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@29
    .line 1043
    const-string/jumbo v4, "Failed to collect manifest digest"

    #@2c
    .line 1042
    const/16 v5, -0x6c

    #@2e
    invoke-direct {v3, v5, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@31
    throw v3
.end method

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
    .line 828
    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 829
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@7
    move-result-object v1

    #@8
    .line 830
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    #@a
    if-nez v3, :cond_0

    #@c
    .line 831
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    #@e
    .line 832
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
    .line 831
    const/16 v5, -0x6c

    #@24
    invoke-direct {v3, v5, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 836
    .end local v1    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    :cond_0
    new-instance v0, Landroid/content/res/AssetManager;

    #@2a
    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    #@2d
    .line 838
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    #@30
    move-result-object v2

    #@31
    .line 839
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 842
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3a
    .line 840
    return-object v2

    #@3b
    .line 841
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    #@3c
    .line 842
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3f
    .line 841
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
    .line 753
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 754
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 756
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
    .line 373
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    #@2
    .line 372
    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0
    .param p1, "onlyCoreApps"    # Z

    #@0
    .prologue
    .line 369
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    #@2
    .line 368
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0
    .param p1, "procs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 360
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    #@2
    .line 359
    return-void
.end method
