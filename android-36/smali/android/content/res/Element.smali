.class public Landroid/content/res/Element;
.super Ljava/lang/Object;
.source "Element.java"


# static fields
.field private static final blacklist BAD_COMPONENT_NAME_CHARS:Ljava/lang/String; = ";,[](){}:?%^*|/\\"

.field private static final blacklist DEFAULT_MAX_STRING_ATTR_LENGTH:I = 0x8000

.field private static final blacklist MAX_ATTR_LEN_MIMETYPE:I = 0xff

.field private static final blacklist MAX_ATTR_LEN_NAME:I = 0x400

.field private static final blacklist MAX_ATTR_LEN_PACKAGE:I = 0x100

.field private static final blacklist MAX_ATTR_LEN_PATH:I = 0xfa0

.field private static final blacklist MAX_ATTR_LEN_PERMISSION_GROUP:I = 0x100

.field private static final blacklist MAX_ATTR_LEN_URL_COMPONENT:I = 0x100

.field private static final blacklist MAX_ATTR_LEN_VALUE:I = 0x8000

.field private static final blacklist MAX_POOL_SIZE:I = 0x80

.field private static final blacklist MAX_TOTAL_META_DATA_SIZE:I = 0x40000

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"

.field protected static final blacklist TAG_ACTION:Ljava/lang/String; = "action"

.field protected static final blacklist TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field protected static final blacklist TAG_ACTIVITY_ALIAS:Ljava/lang/String; = "activity-alias"

.field protected static final blacklist TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field protected static final blacklist TAG_APPLICATION:Ljava/lang/String; = "application"

.field protected static final blacklist TAG_ATTRIBUTION:Ljava/lang/String; = "attribution"

.field protected static final blacklist TAG_ATTR_BACKUP_AGENT:Ljava/lang/String; = "backupAgent"

.field protected static final blacklist TAG_ATTR_CATEGORY:Ljava/lang/String; = "category"

.field protected static final blacklist TAG_ATTR_FRAGMENT:Ljava/lang/String; = "fragment"

.field protected static final blacklist TAG_ATTR_FRAGMENT_ADVANCED_PATTERN:Ljava/lang/String; = "fragmentAdvancedPattern"

.field protected static final blacklist TAG_ATTR_FRAGMENT_PATTERN:Ljava/lang/String; = "fragmentPattern"

.field protected static final blacklist TAG_ATTR_FRAGMENT_PREFIX:Ljava/lang/String; = "fragmentPrefix"

.field protected static final blacklist TAG_ATTR_FRAGMENT_SUFFIX:Ljava/lang/String; = "fragmentSuffix"

.field protected static final blacklist TAG_ATTR_HOST:Ljava/lang/String; = "host"

.field protected static final blacklist TAG_ATTR_MANAGE_SPACE_ACTIVITY:Ljava/lang/String; = "manageSpaceActivity"

.field protected static final blacklist TAG_ATTR_MIMEGROUP:Ljava/lang/String; = "mimeGroup"

.field protected static final blacklist TAG_ATTR_MIMETYPE:Ljava/lang/String; = "mimeType"

.field protected static final blacklist TAG_ATTR_NAME:Ljava/lang/String; = "name"

.field protected static final blacklist TAG_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field protected static final blacklist TAG_ATTR_PARENT_ACTIVITY_NAME:Ljava/lang/String; = "parentActivityName"

.field protected static final blacklist TAG_ATTR_PATH:Ljava/lang/String; = "path"

.field protected static final blacklist TAG_ATTR_PATH_ADVANCED_PATTERN:Ljava/lang/String; = "pathAdvancedPattern"

.field protected static final blacklist TAG_ATTR_PATH_PATTERN:Ljava/lang/String; = "pathPattern"

.field protected static final blacklist TAG_ATTR_PATH_PREFIX:Ljava/lang/String; = "pathPrefix"

.field protected static final blacklist TAG_ATTR_PATH_SUFFIX:Ljava/lang/String; = "pathSuffix"

.field protected static final blacklist TAG_ATTR_PERMISSION:Ljava/lang/String; = "permission"

.field protected static final blacklist TAG_ATTR_PERMISSION_GROUP:Ljava/lang/String; = "permissionGroup"

.field protected static final blacklist TAG_ATTR_PORT:Ljava/lang/String; = "port"

.field protected static final blacklist TAG_ATTR_PROCESS:Ljava/lang/String; = "process"

.field protected static final blacklist TAG_ATTR_QUERY:Ljava/lang/String; = "query"

.field protected static final blacklist TAG_ATTR_QUERY_ADVANCED_PATTERN:Ljava/lang/String; = "queryAdvancedPattern"

.field protected static final blacklist TAG_ATTR_QUERY_PATTERN:Ljava/lang/String; = "queryPattern"

.field protected static final blacklist TAG_ATTR_QUERY_PREFIX:Ljava/lang/String; = "queryPrefix"

.field protected static final blacklist TAG_ATTR_QUERY_SUFFIX:Ljava/lang/String; = "querySuffix"

.field protected static final blacklist TAG_ATTR_READ_PERMISSION:Ljava/lang/String; = "readPermission"

.field protected static final blacklist TAG_ATTR_REQUIRED_ACCOUNT_TYPE:Ljava/lang/String; = "requiredAccountType"

.field protected static final blacklist TAG_ATTR_REQUIRED_SYSTEM_PROPERTY_NAME:Ljava/lang/String; = "requiredSystemPropertyName"

.field protected static final blacklist TAG_ATTR_REQUIRED_SYSTEM_PROPERTY_VALUE:Ljava/lang/String; = "requiredSystemPropertyValue"

.field protected static final blacklist TAG_ATTR_RESTRICTED_ACCOUNT_TYPE:Ljava/lang/String; = "restrictedAccountType"

.field protected static final blacklist TAG_ATTR_SCHEME:Ljava/lang/String; = "scheme"

.field protected static final blacklist TAG_ATTR_SHARED_USER_ID:Ljava/lang/String; = "sharedUserId"

.field protected static final blacklist TAG_ATTR_TARGET_ACTIVITY:Ljava/lang/String; = "targetActivity"

.field protected static final blacklist TAG_ATTR_TARGET_NAME:Ljava/lang/String; = "targetName"

.field protected static final blacklist TAG_ATTR_TARGET_PACKAGE:Ljava/lang/String; = "targetPackage"

.field protected static final blacklist TAG_ATTR_TARGET_PROCESSES:Ljava/lang/String; = "targetProcesses"

.field protected static final blacklist TAG_ATTR_TASK_AFFINITY:Ljava/lang/String; = "taskAffinity"

.field protected static final blacklist TAG_ATTR_VALUE:Ljava/lang/String; = "value"

.field protected static final blacklist TAG_ATTR_VERSION_NAME:Ljava/lang/String; = "versionName"

.field protected static final blacklist TAG_ATTR_WRITE_PERMISSION:Ljava/lang/String; = "writePermission"

.field protected static final blacklist TAG_ATTR_ZYGOTE_PRELOAD_NAME:Ljava/lang/String; = "zygotePreloadName"

.field protected static final blacklist TAG_CATEGORY:Ljava/lang/String; = "category"

.field protected static final blacklist TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field protected static final blacklist TAG_DATA:Ljava/lang/String; = "data"

.field protected static final blacklist TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field protected static final blacklist TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field protected static final blacklist TAG_GRANT_URI_PERMISSION:Ljava/lang/String; = "grant-uri-permission"

.field protected static final blacklist TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field protected static final blacklist TAG_INTENT:Ljava/lang/String; = "intent"

.field protected static final blacklist TAG_INTENT_FILTER:Ljava/lang/String; = "intent-filter"

.field protected static final blacklist TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field protected static final blacklist TAG_LAYOUT:Ljava/lang/String; = "layout"

.field protected static final blacklist TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field protected static final blacklist TAG_META_DATA:Ljava/lang/String; = "meta-data"

.field protected static final blacklist TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field protected static final blacklist TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field protected static final blacklist TAG_PACKAGE:Ljava/lang/String; = "package"

.field protected static final blacklist TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field protected static final blacklist TAG_PATH_PERMISSION:Ljava/lang/String; = "path-permission"

.field protected static final blacklist TAG_PERMISSION:Ljava/lang/String; = "permission"

.field protected static final blacklist TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field protected static final blacklist TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field protected static final blacklist TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field protected static final blacklist TAG_PROPERTY:Ljava/lang/String; = "property"

.field protected static final blacklist TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field protected static final blacklist TAG_PROVIDER:Ljava/lang/String; = "provider"

.field protected static final blacklist TAG_QUERIES:Ljava/lang/String; = "queries"

.field protected static final blacklist TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field protected static final blacklist TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field protected static final blacklist TAG_SCREEN:Ljava/lang/String; = "screen"

.field protected static final blacklist TAG_SERVICE:Ljava/lang/String; = "service"

.field protected static final blacklist TAG_SUPPORTS_GL_TEXTURE:Ljava/lang/String; = "supports-gl-texture"

.field protected static final blacklist TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field protected static final blacklist TAG_SUPPORTS_SCREENS:Ljava/lang/String; = "supports-screens"

.field protected static final blacklist TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field protected static final blacklist TAG_URI_RELATIVE_FILTER_GROUP:Ljava/lang/String; = "uri-relative-filter-group"

.field protected static final blacklist TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field protected static final blacklist TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field protected static final blacklist TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field protected static final blacklist TAG_USES_LIBRARY:Ljava/lang/String; = "uses-library"

.field protected static final blacklist TAG_USES_NATIVE_LIBRARY:Ljava/lang/String; = "uses-native-library"

.field protected static final blacklist TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field protected static final blacklist TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field protected static final blacklist TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field protected static final blacklist TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field protected static final blacklist TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field private static final blacklist sPool:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/Pools$SimplePool<",
            "Landroid/content/res/Element;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mChildTagMask:J

.field blacklist mTag:Ljava/lang/String;

.field private final blacklist mTagCounters:[Landroid/content/res/TagCounter;

.field private blacklist mTotalComponentMetadataSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 163
    new-instance v0, Landroid/content/res/Element$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/content/res/Element$$ExternalSyntheticLambda0;-><init>()V

    .line 164
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/content/res/Element;->sPool:Ljava/lang/ThreadLocal;

    .line 163
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/16 v0, 0x23

    new-array v0, v0, [Landroid/content/res/TagCounter;

    iput-object v0, p0, Landroid/content/res/Element;->mTagCounters:[Landroid/content/res/TagCounter;

    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/Element;->mChildTagMask:J

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Element;->mTotalComponentMetadataSize:I

    return-void
.end method

.method private static blacklist getActionResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 495
    packed-switch p0, :pswitch_data_a

    .line 499
    const v0, 0x8000

    return v0

    .line 497
    :pswitch_7
    const/16 v0, 0x400

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getActivityAliasResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 517
    sparse-switch p0, :sswitch_data_a

    .line 523
    const v0, 0x8000

    return v0

    .line 521
    :sswitch_7
    const/16 v0, 0x400

    return v0

    :sswitch_data_a
    .sparse-switch
        0x2 -> :sswitch_7
        0x3 -> :sswitch_7
        0x7 -> :sswitch_7
    .end sparse-switch
.end method

.method private static blacklist getActivityResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 504
    sparse-switch p0, :sswitch_data_a

    .line 512
    const v0, 0x8000

    return v0

    .line 510
    :sswitch_7
    const/16 v0, 0x400

    return v0

    :sswitch_data_a
    .sparse-switch
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x1b -> :sswitch_7
    .end sparse-switch
.end method

.method private static blacklist getApplicationResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 528
    sparse-switch p0, :sswitch_data_a

    .line 540
    const v0, 0x8000

    return v0

    .line 538
    :sswitch_7
    const/16 v0, 0x400

    return v0

    :sswitch_data_a
    .sparse-switch
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0x6 -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0x10 -> :sswitch_7
        0x1c -> :sswitch_7
        0x1d -> :sswitch_7
        0x34 -> :sswitch_7
    .end sparse-switch
.end method

.method private static blacklist getAttrStrMaxLen(Ljava/lang/String;)I
    .registers 4
    .param p0, "attrName"    # Ljava/lang/String;

    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_248

    :cond_7
    goto/16 :goto_22d

    :sswitch_9
    const-string/jumbo v0, "zygotePreloadName"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1a

    goto/16 :goto_22e

    :sswitch_16
    const-string/jumbo v0, "targetPackage"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_22e

    :sswitch_22
    const-string/jumbo v0, "pathPattern"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x22

    goto/16 :goto_22e

    :sswitch_2f
    const-string/jumbo v0, "pathAdvancedPattern"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x21

    goto/16 :goto_22e

    :sswitch_3c
    const-string v0, "backupAgent"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto/16 :goto_22e

    :sswitch_48
    const-string/jumbo v0, "targetProcesses"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    goto/16 :goto_22e

    :sswitch_55
    const-string/jumbo v0, "targetActivity"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x14

    goto/16 :goto_22e

    :sswitch_62
    const-string/jumbo v0, "pathSuffix"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x24

    goto/16 :goto_22e

    :sswitch_6f
    const-string/jumbo v0, "pathPrefix"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x23

    goto/16 :goto_22e

    :sswitch_7c
    const-string/jumbo v0, "requiredSystemPropertyValue"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2b

    goto/16 :goto_22e

    :sswitch_89
    const-string/jumbo v0, "versionName"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x19

    goto/16 :goto_22e

    :sswitch_96
    const-string/jumbo v0, "manageSpaceActivity"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_22e

    :sswitch_a3
    const-string/jumbo v0, "queryPattern"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x27

    goto/16 :goto_22e

    :sswitch_b0
    const-string/jumbo v0, "targetName"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x15

    goto/16 :goto_22e

    :sswitch_bd
    const-string/jumbo v0, "readPermission"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    goto/16 :goto_22e

    :sswitch_ca
    const-string v0, "fragmentAdvancedPattern"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1c

    goto/16 :goto_22e

    :sswitch_d6
    const-string/jumbo v0, "requiredSystemPropertyName"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x12

    goto/16 :goto_22e

    :sswitch_e3
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2a

    goto/16 :goto_22e

    :sswitch_f0
    const-string/jumbo v0, "query"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x25

    goto/16 :goto_22e

    :sswitch_fd
    const-string v0, "category"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto/16 :goto_22e

    :sswitch_109
    const-string/jumbo v0, "parentActivityName"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto/16 :goto_22e

    :sswitch_116
    const-string/jumbo v0, "port"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_22e

    :sswitch_122
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x20

    goto/16 :goto_22e

    :sswitch_12f
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto/16 :goto_22e

    :sswitch_13c
    const-string/jumbo v0, "host"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_22e

    :sswitch_148
    const-string/jumbo v0, "requiredAccountType"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x11

    goto/16 :goto_22e

    :sswitch_155
    const-string/jumbo v0, "queryAdvancedPattern"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x26

    goto/16 :goto_22e

    :sswitch_162
    const-string/jumbo v0, "mimeGroup"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_22e

    :sswitch_16f
    const-string/jumbo v0, "process"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto/16 :goto_22e

    :sswitch_17c
    const-string/jumbo v0, "permission"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto/16 :goto_22e

    :sswitch_189
    const-string/jumbo v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_22e

    :sswitch_195
    const-string/jumbo v0, "scheme"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_22e

    :sswitch_1a1
    const-string/jumbo v0, "sharedUserId"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto/16 :goto_22e

    :sswitch_1ad
    const-string/jumbo v0, "taskAffinity"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x17

    goto/16 :goto_22e

    :sswitch_1ba
    const-string/jumbo v0, "writePermission"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x18

    goto/16 :goto_22e

    :sswitch_1c7
    const-string v0, "fragmentSuffix"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1f

    goto :goto_22e

    :sswitch_1d2
    const-string/jumbo v0, "querySuffix"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x29

    goto :goto_22e

    :sswitch_1de
    const-string v0, "fragmentPrefix"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1e

    goto :goto_22e

    :sswitch_1e9
    const-string/jumbo v0, "queryPrefix"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x28

    goto :goto_22e

    :sswitch_1f5
    const-string/jumbo v0, "restrictedAccountType"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x13

    goto :goto_22e

    :sswitch_201
    const-string/jumbo v0, "mimeType"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_22e

    :sswitch_20c
    const-string/jumbo v0, "permissionGroup"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_22e

    :sswitch_217
    const-string v0, "fragment"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1b

    goto :goto_22e

    :sswitch_222
    const-string v0, "fragmentPattern"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1d

    goto :goto_22e

    :goto_22d
    const/4 v0, -0x1

    :goto_22e
    const v1, 0x8000

    const/16 v2, 0x100

    packed-switch v0, :pswitch_data_2fa

    .line 435
    return v1

    .line 433
    :pswitch_237
    const/16 v0, 0x5b

    return v0

    .line 431
    :pswitch_23a
    return v1

    .line 429
    :pswitch_23b
    const/16 v0, 0xfa0

    return v0

    .line 413
    :pswitch_23e
    const/16 v0, 0x400

    return v0

    .line 393
    :pswitch_241
    const/16 v0, 0xff

    return v0

    .line 391
    :pswitch_244
    return v2

    .line 387
    :pswitch_245
    return v2

    .line 385
    :pswitch_246
    return v2

    nop

    :sswitch_data_248
    .sparse-switch
        -0x63d598e0 -> :sswitch_222
        -0x625d1db0 -> :sswitch_217
        -0x61f97610 -> :sswitch_20c
        -0x52fa1272 -> :sswitch_201
        -0x5071e854 -> :sswitch_1f5
        -0x506afe86 -> :sswitch_1e9
        -0x4ca27afe -> :sswitch_1de
        -0x4b21b9c7 -> :sswitch_1d2
        -0x4759363f -> :sswitch_1c7
        -0x3fcf10f2 -> :sswitch_1ba
        -0x3b4f9233 -> :sswitch_1ad
        -0x3aa6d8f5 -> :sswitch_1a1
        -0x361eca5b -> :sswitch_195
        -0x301acbba -> :sswitch_189
        -0x1eda3a31 -> :sswitch_17c
        -0x1272e191 -> :sswitch_16f
        -0xd029d55 -> :sswitch_162
        -0xbccf8da -> :sswitch_155
        -0x809fe18 -> :sswitch_148
        0x30f5a8 -> :sswitch_13c
        0x337a8b -> :sswitch_12f
        0x346425 -> :sswitch_122
        0x349881 -> :sswitch_116
        0x23f7004 -> :sswitch_109
        0x302bcfe -> :sswitch_fd
        0x66f18c8 -> :sswitch_f0
        0x6ac9171 -> :sswitch_e3
        0x9a3afce -> :sswitch_d6
        0xd51fc9e -> :sswitch_ca
        0x1a127805 -> :sswitch_bd
        0x1cfe2fbc -> :sswitch_b0
        0x26e279a8 -> :sswitch_a3
        0x274520d0 -> :sswitch_96
        0x290fdf83 -> :sswitch_89
        0x2b43048e -> :sswitch_7c
        0x2c999317 -> :sswitch_6f
        0x31e2d7d6 -> :sswitch_62
        0x3e66a7c0 -> :sswitch_55
        0x40fb2ccc -> :sswitch_48
        0x41112663 -> :sswitch_3c
        0x45cbf629 -> :sswitch_2f
        0x4a701bab -> :sswitch_22
        0x5938a575 -> :sswitch_16
        0x7ef7dffc -> :sswitch_9
    .end sparse-switch

    :pswitch_data_2fa
    .packed-switch 0x0
        :pswitch_246
        :pswitch_246
        :pswitch_246
        :pswitch_245
        :pswitch_244
        :pswitch_244
        :pswitch_244
        :pswitch_241
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23e
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23b
        :pswitch_23a
        :pswitch_237
    .end packed-switch
.end method

.method private static blacklist getCategoryResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 545
    packed-switch p0, :pswitch_data_a

    .line 549
    const v0, 0x8000

    return v0

    .line 547
    :pswitch_7
    const/16 v0, 0x400

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getCounterIdx(Ljava/lang/String;)I
    .registers 25
    .param p0, "tag"    # Ljava/lang/String;

    .line 185
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    sparse-switch v1, :sswitch_data_22e

    :cond_35
    goto/16 :goto_1ec

    :sswitch_37
    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v17

    goto/16 :goto_1ed

    :sswitch_44
    const-string v1, "compatible-screens"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x17

    goto/16 :goto_1ed

    :sswitch_50
    const-string/jumbo v1, "uses-feature"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x1a

    goto/16 :goto_1ed

    :sswitch_5d
    const-string/jumbo v1, "uses-permission-sdk-m"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x1e

    goto/16 :goto_1ed

    :sswitch_6a
    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v9

    goto/16 :goto_1ed

    :sswitch_75
    const-string/jumbo v1, "uses-permission-sdk-23"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x1d

    goto/16 :goto_1ed

    :sswitch_82
    const-string/jumbo v1, "supports-gl-texture"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v4

    goto/16 :goto_1ed

    :sswitch_8e
    const-string/jumbo v1, "supports-screens"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v3

    goto/16 :goto_1ed

    :sswitch_9a
    const-string v1, "activity-alias"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v16

    goto/16 :goto_1ed

    :sswitch_a6
    const-string/jumbo v1, "queries"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x18

    goto/16 :goto_1ed

    :sswitch_b3
    const-string/jumbo v1, "path-permission"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x20

    goto/16 :goto_1ed

    :sswitch_c0
    const-string/jumbo v1, "uses-permission"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x1c

    goto/16 :goto_1ed

    :sswitch_cd
    const-string/jumbo v1, "instrumentation"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v7

    goto/16 :goto_1ed

    :sswitch_d9
    const-string/jumbo v1, "profileable"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v20

    goto/16 :goto_1ed

    :sswitch_e6
    const-string v1, "category"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v11

    goto/16 :goto_1ed

    :sswitch_f1
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v10

    goto/16 :goto_1ed

    :sswitch_fc
    const-string/jumbo v1, "permission-group"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v6

    goto/16 :goto_1ed

    :sswitch_108
    const-string/jumbo v1, "uses-sdk"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x16

    goto/16 :goto_1ed

    :sswitch_115
    const-string v1, "attribution"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x19

    goto/16 :goto_1ed

    :sswitch_121
    const-string/jumbo v1, "permission"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x1b

    goto/16 :goto_1ed

    :sswitch_12e
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x21

    goto/16 :goto_1ed

    :sswitch_13b
    const-string/jumbo v1, "receiver"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v18

    goto/16 :goto_1ed

    :sswitch_148
    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v14

    goto/16 :goto_1ed

    :sswitch_154
    const-string/jumbo v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v21

    goto/16 :goto_1ed

    :sswitch_161
    const-string/jumbo v1, "overlay"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v8

    goto/16 :goto_1ed

    :sswitch_16d
    const-string/jumbo v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v23

    goto/16 :goto_1ed

    :sswitch_17a
    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v22

    goto/16 :goto_1ed

    :sswitch_187
    const-string/jumbo v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x22

    goto :goto_1ed

    :sswitch_193
    const-string/jumbo v1, "uri-relative-filter-group"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x23

    goto :goto_1ed

    :sswitch_19f
    const-string/jumbo v1, "uses-library"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v15

    goto :goto_1ed

    :sswitch_1aa
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v12

    goto :goto_1ed

    :sswitch_1b4
    const-string/jumbo v1, "uses-native-library"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v19

    goto :goto_1ed

    :sswitch_1c0
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v13

    goto :goto_1ed

    :sswitch_1ca
    const-string/jumbo v1, "permission-tree"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v5

    goto :goto_1ed

    :sswitch_1d5
    const-string/jumbo v1, "uses-configuration"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v2

    goto :goto_1ed

    :sswitch_1e0
    const-string/jumbo v1, "grant-uri-permission"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x1f

    goto :goto_1ed

    :goto_1ec
    const/4 v1, -0x1

    :goto_1ed
    packed-switch v1, :pswitch_data_2c0

    .line 258
    const/16 v1, 0x22

    return v1

    .line 255
    :pswitch_1f3
    const/16 v1, 0x21

    return v1

    .line 253
    :pswitch_1f6
    const/16 v1, 0x20

    return v1

    .line 251
    :pswitch_1f9
    const/16 v1, 0x1f

    return v1

    .line 249
    :pswitch_1fc
    const/16 v1, 0x1e

    return v1

    .line 247
    :pswitch_1ff
    const/16 v1, 0x1d

    return v1

    .line 245
    :pswitch_202
    const/16 v1, 0x1c

    return v1

    .line 241
    :pswitch_205
    const/16 v1, 0x1b

    return v1

    .line 239
    :pswitch_208
    const/16 v1, 0x1a

    return v1

    .line 237
    :pswitch_20b
    const/16 v1, 0x19

    return v1

    .line 235
    :pswitch_20e
    const/16 v1, 0x18

    return v1

    .line 233
    :pswitch_211
    const/16 v1, 0x17

    return v1

    .line 231
    :pswitch_214
    const/16 v1, 0x16

    return v1

    .line 229
    :pswitch_217
    return v2

    .line 227
    :pswitch_218
    return v3

    .line 225
    :pswitch_219
    return v4

    .line 223
    :pswitch_21a
    return v5

    .line 221
    :pswitch_21b
    return v6

    .line 219
    :pswitch_21c
    return v7

    .line 217
    :pswitch_21d
    return v8

    .line 215
    :pswitch_21e
    return v9

    .line 213
    :pswitch_21f
    return v10

    .line 211
    :pswitch_220
    return v11

    .line 209
    :pswitch_221
    return v12

    .line 207
    :pswitch_222
    return v13

    .line 205
    :pswitch_223
    return v14

    .line 203
    :pswitch_224
    return v15

    .line 201
    :pswitch_225
    return v16

    .line 199
    :pswitch_226
    return v17

    .line 197
    :pswitch_227
    return v18

    .line 195
    :pswitch_228
    return v19

    .line 193
    :pswitch_229
    return v20

    .line 191
    :pswitch_22a
    return v21

    .line 189
    :pswitch_22b
    return v22

    .line 187
    :pswitch_22c
    return v23

    nop

    :sswitch_data_22e
    .sparse-switch
        -0x6c28de5f -> :sswitch_1e0
        -0x69b7c34b -> :sswitch_1d5
        -0x6366e724 -> :sswitch_1ca
        -0x62b40cf1 -> :sswitch_1c0
        -0x5fe67eda -> :sswitch_1b4
        -0x54d081ca -> :sswitch_1aa
        -0x50de9846 -> :sswitch_19f
        -0x472f1456 -> :sswitch_193
        -0x468ec964 -> :sswitch_187
        -0x4284098e -> :sswitch_17a
        -0x422504d6 -> :sswitch_16d
        -0x410bbbb0 -> :sswitch_161
        -0x3d616837 -> :sswitch_154
        -0x3adbfa0f -> :sswitch_148
        -0x30341611 -> :sswitch_13b
        -0x301acbba -> :sswitch_12e
        -0x1eda3a31 -> :sswitch_121
        -0x12786f81 -> :sswitch_115
        -0xfe5a947 -> :sswitch_108
        -0xa2d06ff -> :sswitch_fc
        0x2eefaa -> :sswitch_f1
        0x302bcfe -> :sswitch_e6
        0xa9d2283 -> :sswitch_d9
        0x20752f6e -> :sswitch_cd
        0x23c12e70 -> :sswitch_c0
        0x25eb3477 -> :sswitch_b3
        0x270bd766 -> :sswitch_a6
        0x2f1ad612 -> :sswitch_9a
        0x3573e73e -> :sswitch_8e
        0x381d071c -> :sswitch_82
        0x501aeeb1 -> :sswitch_75
        0x5ca40550 -> :sswitch_6a
        0x65ae49fd -> :sswitch_5d
        0x6adbbdf5 -> :sswitch_50
        0x6c5ff78e -> :sswitch_44
        0x7643c6b5 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_2c0
    .packed-switch 0x0
        :pswitch_22c
        :pswitch_22b
        :pswitch_22a
        :pswitch_229
        :pswitch_228
        :pswitch_227
        :pswitch_226
        :pswitch_225
        :pswitch_224
        :pswitch_223
        :pswitch_222
        :pswitch_221
        :pswitch_220
        :pswitch_21f
        :pswitch_21e
        :pswitch_21d
        :pswitch_21c
        :pswitch_21b
        :pswitch_21a
        :pswitch_219
        :pswitch_218
        :pswitch_217
        :pswitch_214
        :pswitch_211
        :pswitch_20e
        :pswitch_20b
        :pswitch_208
        :pswitch_205
        :pswitch_202
        :pswitch_202
        :pswitch_202
        :pswitch_1ff
        :pswitch_1fc
        :pswitch_1f9
        :pswitch_1f6
        :pswitch_1f3
    .end packed-switch
.end method

.method private static blacklist getDataResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 554
    packed-switch p0, :pswitch_data_14

    .line 580
    :pswitch_3
    const v0, 0x8000

    return v0

    .line 562
    :pswitch_7
    const/16 v0, 0x400

    return v0

    .line 578
    :pswitch_a
    const/16 v0, 0xfa0

    return v0

    .line 558
    :pswitch_d
    const/16 v0, 0x100

    return v0

    .line 560
    :pswitch_10
    const/16 v0, 0xff

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_a
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private static blacklist getGrantUriPermissionResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 585
    packed-switch p0, :pswitch_data_a

    .line 591
    const v0, 0x8000

    return v0

    .line 589
    :pswitch_7
    const/16 v0, 0xfa0

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getInstrumentationResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 596
    sparse-switch p0, :sswitch_data_e

    .line 603
    const v0, 0x8000

    return v0

    .line 598
    :sswitch_7
    const/16 v0, 0x100

    return v0

    .line 601
    :sswitch_a
    const/16 v0, 0x400

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x2 -> :sswitch_a
        0x3 -> :sswitch_7
        0x9 -> :sswitch_a
    .end sparse-switch
.end method

.method private static blacklist getManifestResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 608
    packed-switch p0, :pswitch_data_e

    .line 614
    :pswitch_3
    const v0, 0x8000

    return v0

    .line 612
    :pswitch_7
    const/16 v0, 0x400

    return v0

    .line 610
    :pswitch_a
    const/16 v0, 0x100

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getMetaDataResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 619
    const v0, 0x8000

    packed-switch p0, :pswitch_data_c

    .line 625
    return v0

    .line 623
    :pswitch_7
    return v0

    .line 621
    :pswitch_8
    const/16 v0, 0x400

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getOverlayResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 630
    packed-switch p0, :pswitch_data_10

    .line 640
    :pswitch_3
    const v0, 0x8000

    return v0

    .line 638
    :pswitch_7
    const/16 v0, 0x5b

    return v0

    .line 636
    :pswitch_a
    const/16 v0, 0x400

    return v0

    .line 632
    :pswitch_d
    const/16 v0, 0x100

    return v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getPathPermissionResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 645
    packed-switch p0, :pswitch_data_e

    .line 655
    const v0, 0x8000

    return v0

    .line 653
    :pswitch_7
    const/16 v0, 0xfa0

    return v0

    .line 649
    :pswitch_a
    const/16 v0, 0x400

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getPermissionGroupResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 671
    packed-switch p0, :pswitch_data_a

    .line 675
    const v0, 0x8000

    return v0

    .line 673
    :pswitch_7
    const/16 v0, 0x400

    return v0

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getPermissionResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 660
    packed-switch p0, :pswitch_data_e

    .line 666
    :pswitch_3
    const v0, 0x8000

    return v0

    .line 662
    :pswitch_7
    const/16 v0, 0x100

    return v0

    .line 664
    :pswitch_a
    const/16 v0, 0x400

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_a
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getPermissionTreeResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 680
    packed-switch p0, :pswitch_data_a

    .line 684
    const v0, 0x8000

    return v0

    .line 682
    :pswitch_7
    const/16 v0, 0x400

    return v0

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getPropertyResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 689
    const v0, 0x8000

    packed-switch p0, :pswitch_data_c

    .line 695
    return v0

    .line 693
    :pswitch_7
    return v0

    .line 691
    :pswitch_8
    const/16 v0, 0x400

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getProviderResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 700
    packed-switch p0, :pswitch_data_a

    .line 708
    :pswitch_3
    const v0, 0x8000

    return v0

    .line 706
    :pswitch_7
    const/16 v0, 0x400

    return v0

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getReceiverResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 713
    packed-switch p0, :pswitch_data_a

    .line 719
    :pswitch_3
    const v0, 0x8000

    return v0

    .line 717
    :pswitch_7
    const/16 v0, 0x400

    return v0

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist getResStrMaxLen(I)I
    .registers 4
    .param p1, "index"    # I

    .line 440
    iget-object v0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1b4

    :cond_9
    goto/16 :goto_138

    :sswitch_b
    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x12

    goto/16 :goto_139

    :sswitch_18
    const-string/jumbo v1, "uses-feature"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x13

    goto/16 :goto_139

    :sswitch_25
    const-string/jumbo v1, "uses-permission-sdk-m"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x18

    goto/16 :goto_139

    :sswitch_32
    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto/16 :goto_139

    :sswitch_3d
    const-string/jumbo v1, "uses-permission-sdk-23"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x17

    goto/16 :goto_139

    :sswitch_4a
    const-string v1, "activity-alias"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto/16 :goto_139

    :sswitch_55
    const-string/jumbo v1, "path-permission"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    goto/16 :goto_139

    :sswitch_62
    const-string/jumbo v1, "uses-permission"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16

    goto/16 :goto_139

    :sswitch_6f
    const-string/jumbo v1, "instrumentation"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto/16 :goto_139

    :sswitch_7b
    const-string/jumbo v1, "manifest"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto/16 :goto_139

    :sswitch_88
    const-string v1, "category"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto/16 :goto_139

    :sswitch_93
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto/16 :goto_139

    :sswitch_9e
    const-string/jumbo v1, "permission-group"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xd

    goto/16 :goto_139

    :sswitch_ab
    const-string/jumbo v1, "permission"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xc

    goto/16 :goto_139

    :sswitch_b8
    const-string/jumbo v1, "receiver"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x11

    goto/16 :goto_139

    :sswitch_c5
    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x10

    goto :goto_139

    :sswitch_d1
    const-string/jumbo v1, "property"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xf

    goto :goto_139

    :sswitch_dd
    const-string/jumbo v1, "overlay"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    goto :goto_139

    :sswitch_e9
    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    goto :goto_139

    :sswitch_f5
    const-string/jumbo v1, "uses-library"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x14

    goto :goto_139

    :sswitch_101
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_139

    :sswitch_10b
    const-string/jumbo v1, "uses-native-library"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x15

    goto :goto_139

    :sswitch_117
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_139

    :sswitch_121
    const-string/jumbo v1, "permission-tree"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    goto :goto_139

    :sswitch_12d
    const-string/jumbo v1, "grant-uri-permission"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto :goto_139

    :goto_138
    const/4 v0, -0x1

    :goto_139
    packed-switch v0, :pswitch_data_21a

    .line 490
    const v0, 0x8000

    return v0

    .line 488
    :pswitch_140
    invoke-static {p1}, Landroid/content/res/Element;->getUsesPermissionResStrMaxLen(I)I

    move-result v0

    return v0

    .line 484
    :pswitch_145
    invoke-static {p1}, Landroid/content/res/Element;->getUsesNativeLibraryResStrMaxLen(I)I

    move-result v0

    return v0

    .line 482
    :pswitch_14a
    invoke-static {p1}, Landroid/content/res/Element;->getUsesLibraryResStrMaxLen(I)I

    move-result v0

    return v0

    .line 480
    :pswitch_14f
    invoke-static {p1}, Landroid/content/res/Element;->getUsesFeatureResStrMaxLen(I)I

    move-result v0

    return v0

    .line 478
    :pswitch_154
    invoke-static {p1}, Landroid/content/res/Element;->getServiceResStrMaxLen(I)I

    move-result v0

    return v0

    .line 476
    :pswitch_159
    invoke-static {p1}, Landroid/content/res/Element;->getReceiverResStrMaxLen(I)I

    move-result v0

    return v0

    .line 474
    :pswitch_15e
    invoke-static {p1}, Landroid/content/res/Element;->getProviderResStrMaxLen(I)I

    move-result v0

    return v0

    .line 472
    :pswitch_163
    invoke-static {p1}, Landroid/content/res/Element;->getPropertyResStrMaxLen(I)I

    move-result v0

    return v0

    .line 470
    :pswitch_168
    invoke-static {p1}, Landroid/content/res/Element;->getPermissionTreeResStrMaxLen(I)I

    move-result v0

    return v0

    .line 468
    :pswitch_16d
    invoke-static {p1}, Landroid/content/res/Element;->getPermissionGroupResStrMaxLen(I)I

    move-result v0

    return v0

    .line 466
    :pswitch_172
    invoke-static {p1}, Landroid/content/res/Element;->getPermissionResStrMaxLen(I)I

    move-result v0

    return v0

    .line 464
    :pswitch_177
    invoke-static {p1}, Landroid/content/res/Element;->getPathPermissionResStrMaxLen(I)I

    move-result v0

    return v0

    .line 462
    :pswitch_17c
    invoke-static {p1}, Landroid/content/res/Element;->getOverlayResStrMaxLen(I)I

    move-result v0

    return v0

    .line 460
    :pswitch_181
    invoke-static {p1}, Landroid/content/res/Element;->getMetaDataResStrMaxLen(I)I

    move-result v0

    return v0

    .line 458
    :pswitch_186
    invoke-static {p1}, Landroid/content/res/Element;->getManifestResStrMaxLen(I)I

    move-result v0

    return v0

    .line 456
    :pswitch_18b
    invoke-static {p1}, Landroid/content/res/Element;->getInstrumentationResStrMaxLen(I)I

    move-result v0

    return v0

    .line 454
    :pswitch_190
    invoke-static {p1}, Landroid/content/res/Element;->getGrantUriPermissionResStrMaxLen(I)I

    move-result v0

    return v0

    .line 452
    :pswitch_195
    invoke-static {p1}, Landroid/content/res/Element;->getCategoryResStrMaxLen(I)I

    move-result v0

    return v0

    .line 450
    :pswitch_19a
    invoke-static {p1}, Landroid/content/res/Element;->getDataResStrMaxLen(I)I

    move-result v0

    return v0

    .line 448
    :pswitch_19f
    invoke-static {p1}, Landroid/content/res/Element;->getApplicationResStrMaxLen(I)I

    move-result v0

    return v0

    .line 446
    :pswitch_1a4
    invoke-static {p1}, Landroid/content/res/Element;->getActivityAliasResStrMaxLen(I)I

    move-result v0

    return v0

    .line 444
    :pswitch_1a9
    invoke-static {p1}, Landroid/content/res/Element;->getActivityResStrMaxLen(I)I

    move-result v0

    return v0

    .line 442
    :pswitch_1ae
    invoke-static {p1}, Landroid/content/res/Element;->getActionResStrMaxLen(I)I

    move-result v0

    return v0

    nop

    :sswitch_data_1b4
    .sparse-switch
        -0x6c28de5f -> :sswitch_12d
        -0x6366e724 -> :sswitch_121
        -0x62b40cf1 -> :sswitch_117
        -0x5fe67eda -> :sswitch_10b
        -0x54d081ca -> :sswitch_101
        -0x50de9846 -> :sswitch_f5
        -0x4284098e -> :sswitch_e9
        -0x410bbbb0 -> :sswitch_dd
        -0x3b32222b -> :sswitch_d1
        -0x3adbfa0f -> :sswitch_c5
        -0x30341611 -> :sswitch_b8
        -0x1eda3a31 -> :sswitch_ab
        -0xa2d06ff -> :sswitch_9e
        0x2eefaa -> :sswitch_93
        0x302bcfe -> :sswitch_88
        0x7c92e2f -> :sswitch_7b
        0x20752f6e -> :sswitch_6f
        0x23c12e70 -> :sswitch_62
        0x25eb3477 -> :sswitch_55
        0x2f1ad612 -> :sswitch_4a
        0x501aeeb1 -> :sswitch_3d
        0x5ca40550 -> :sswitch_32
        0x65ae49fd -> :sswitch_25
        0x6adbbdf5 -> :sswitch_18
        0x7643c6b5 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_1ae
        :pswitch_1a9
        :pswitch_1a4
        :pswitch_19f
        :pswitch_19a
        :pswitch_195
        :pswitch_190
        :pswitch_18b
        :pswitch_186
        :pswitch_181
        :pswitch_17c
        :pswitch_177
        :pswitch_172
        :pswitch_16d
        :pswitch_168
        :pswitch_163
        :pswitch_15e
        :pswitch_159
        :pswitch_154
        :pswitch_14f
        :pswitch_14a
        :pswitch_145
        :pswitch_140
        :pswitch_140
        :pswitch_140
    .end packed-switch
.end method

.method private static blacklist getServiceResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 724
    packed-switch p0, :pswitch_data_a

    .line 730
    :pswitch_3
    const v0, 0x8000

    return v0

    .line 728
    :pswitch_7
    const/16 v0, 0x400

    return v0

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getUsesFeatureResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 735
    packed-switch p0, :pswitch_data_a

    .line 739
    const v0, 0x8000

    return v0

    .line 737
    :pswitch_7
    const/16 v0, 0x400

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getUsesLibraryResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 744
    packed-switch p0, :pswitch_data_a

    .line 748
    const v0, 0x8000

    return v0

    .line 746
    :pswitch_7
    const/16 v0, 0x400

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getUsesNativeLibraryResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 753
    packed-switch p0, :pswitch_data_a

    .line 757
    const v0, 0x8000

    return v0

    .line 755
    :pswitch_7
    const/16 v0, 0x400

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist getUsesPermissionResStrMaxLen(I)I
    .registers 2
    .param p0, "index"    # I

    .line 762
    packed-switch p0, :pswitch_data_a

    .line 766
    const v0, 0x8000

    return v0

    .line 764
    :pswitch_7
    const/16 v0, 0x400

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist init(Ljava/lang/String;)V
    .registers 18
    .param p1, "tag"    # Ljava/lang/String;

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    .line 311
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/content/res/Element;->mChildTagMask:J

    .line 312
    const/4 v2, 0x0

    iput v2, v0, Landroid/content/res/Element;->mTotalComponentMetadataSize:I

    .line 313
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string/jumbo v4, "service"

    const-string v5, "compatible-screens"

    const-string v6, "application"

    const-string v7, "activity-alias"

    const-string/jumbo v8, "queries"

    const-string/jumbo v9, "receiver"

    const-string/jumbo v10, "intent"

    const-string/jumbo v11, "uri-relative-filter-group"

    const-string v12, "activity"

    const-string/jumbo v13, "provider"

    const-string/jumbo v14, "intent-filter"

    sparse-switch v3, :sswitch_data_19a

    :cond_31
    goto/16 :goto_9a

    :sswitch_33
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x3

    goto/16 :goto_9b

    :sswitch_3c
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x5

    goto :goto_9b

    :sswitch_44
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x4

    goto :goto_9b

    :sswitch_4c
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    goto :goto_9b

    :sswitch_54
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v2, 0xa

    goto :goto_9b

    :sswitch_5d
    const-string/jumbo v2, "manifest"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v2, 0x8

    goto :goto_9b

    :sswitch_69
    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x2

    goto :goto_9b

    :sswitch_71
    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v2, 0x9

    goto :goto_9b

    :sswitch_7a
    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x7

    goto :goto_9b

    :sswitch_82
    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x6

    goto :goto_9b

    :sswitch_8a
    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v2, 0xb

    goto :goto_9b

    :sswitch_93
    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_9b

    :goto_9a
    const/4 v2, -0x1

    :goto_9b
    const-string v3, "data"

    const-string/jumbo v15, "meta-data"

    const/16 v1, 0x64

    packed-switch v2, :pswitch_data_1cc

    goto/16 :goto_199

    .line 375
    :pswitch_a7
    invoke-direct {v0, v3, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    goto/16 :goto_199

    .line 370
    :pswitch_ac
    const-string/jumbo v1, "package"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 371
    const/16 v1, 0x7d0

    invoke-direct {v0, v10, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 372
    const/16 v1, 0x1f40

    invoke-direct {v0, v13, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 373
    goto/16 :goto_199

    .line 364
    :pswitch_c0
    const-string/jumbo v2, "grant-uri-permission"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 365
    const-string/jumbo v2, "path-permission"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 366
    const/16 v2, 0x3e8

    invoke-direct {v0, v15, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 367
    const/16 v1, 0x4e20

    invoke-direct {v0, v14, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 368
    goto/16 :goto_199

    .line 347
    :pswitch_d8
    invoke-direct {v0, v6, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 348
    const-string/jumbo v2, "overlay"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 349
    const-string/jumbo v2, "instrumentation"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 350
    const-string/jumbo v2, "permission-group"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 351
    const-string/jumbo v2, "permission-tree"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 352
    const-string/jumbo v2, "supports-gl-texture"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 353
    const-string/jumbo v2, "supports-screens"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 354
    const-string/jumbo v2, "uses-configuration"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 355
    const-string/jumbo v2, "uses-sdk"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 356
    const/16 v1, 0xc8

    invoke-direct {v0, v5, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 357
    invoke-direct {v0, v8, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 358
    const-string v1, "attribution"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 359
    const-string/jumbo v1, "uses-feature"

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 360
    const-string/jumbo v1, "permission"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 361
    const-string/jumbo v1, "uses-permission"

    const/16 v2, 0x4e20

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 362
    goto :goto_199

    .line 341
    :pswitch_131
    const/16 v2, 0x4e20

    invoke-direct {v0, v11, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 342
    const-string v1, "action"

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 343
    const-string v1, "category"

    const v2, 0x9c40

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 344
    invoke-direct {v0, v3, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 345
    goto :goto_199

    .line 337
    :pswitch_147
    const-string/jumbo v1, "screen"

    const/16 v2, 0xfa0

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 338
    goto :goto_199

    .line 326
    :pswitch_150
    const-string/jumbo v2, "profileable"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 327
    const-string/jumbo v2, "uses-native-library"

    invoke-direct {v0, v2, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 328
    const/16 v2, 0x3e8

    invoke-direct {v0, v9, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 329
    invoke-direct {v0, v4, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 330
    invoke-direct {v0, v15, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 331
    const-string/jumbo v1, "uses-library"

    invoke-direct {v0, v1, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 332
    const/16 v2, 0xfa0

    invoke-direct {v0, v7, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 333
    const/16 v1, 0x1f40

    invoke-direct {v0, v13, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 334
    const/16 v1, 0x7530

    invoke-direct {v0, v12, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 335
    goto :goto_199

    .line 322
    :pswitch_17d
    const/16 v2, 0x3e8

    invoke-direct {v0, v15, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 323
    const/16 v1, 0x4e20

    invoke-direct {v0, v14, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 324
    goto :goto_199

    .line 315
    :pswitch_188
    const/16 v1, 0x4e20

    const/16 v2, 0x3e8

    const-string/jumbo v3, "layout"

    invoke-direct {v0, v3, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 316
    invoke-direct {v0, v15, v2}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 317
    invoke-direct {v0, v14, v1}, Landroid/content/res/Element;->initializeCounter(Ljava/lang/String;I)V

    .line 318
    nop

    .line 378
    :goto_199
    return-void

    :sswitch_data_19a
    .sparse-switch
        -0x62b40cf1 -> :sswitch_93
        -0x472f1456 -> :sswitch_8a
        -0x468ec964 -> :sswitch_82
        -0x3d616837 -> :sswitch_7a
        -0x3adbfa0f -> :sswitch_71
        -0x30341611 -> :sswitch_69
        0x7c92e2f -> :sswitch_5d
        0x270bd766 -> :sswitch_54
        0x2f1ad612 -> :sswitch_4c
        0x5ca40550 -> :sswitch_44
        0x6c5ff78e -> :sswitch_3c
        0x7643c6b5 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_188
        :pswitch_17d
        :pswitch_17d
        :pswitch_17d
        :pswitch_150
        :pswitch_147
        :pswitch_131
        :pswitch_131
        :pswitch_d8
        :pswitch_c0
        :pswitch_ac
        :pswitch_a7
    .end packed-switch
.end method

.method private blacklist initializeCounter(Ljava/lang/String;I)V
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 771
    invoke-static {p1}, Landroid/content/res/Element;->getCounterIdx(Ljava/lang/String;)I

    move-result v0

    .line 772
    .local v0, "idx":I
    iget-object v1, p0, Landroid/content/res/Element;->mTagCounters:[Landroid/content/res/TagCounter;

    aget-object v1, v1, v0

    if-nez v1, :cond_13

    .line 773
    iget-object v1, p0, Landroid/content/res/Element;->mTagCounters:[Landroid/content/res/TagCounter;

    new-instance v2, Landroid/content/res/TagCounter;

    invoke-direct {v2}, Landroid/content/res/TagCounter;-><init>()V

    aput-object v2, v1, v0

    .line 775
    :cond_13
    iget-object v1, p0, Landroid/content/res/Element;->mTagCounters:[Landroid/content/res/TagCounter;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/content/res/TagCounter;->reset(I)V

    .line 776
    iget-wide v1, p0, Landroid/content/res/Element;->mChildTagMask:J

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Landroid/content/res/Element;->mChildTagMask:J

    .line 777
    return-void
.end method

.method private blacklist isComponentNameAttr(I)Z
    .registers 8
    .param p1, "index"    # I

    .line 821
    iget-object v0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_8e

    :cond_d
    goto :goto_58

    :sswitch_e
    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x6

    goto :goto_59

    :sswitch_19
    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_59

    :sswitch_23
    const-string v1, "activity-alias"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v4

    goto :goto_59

    :sswitch_2d
    const-string/jumbo v1, "instrumentation"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_59

    :sswitch_38
    const-string/jumbo v1, "receiver"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    goto :goto_59

    :sswitch_43
    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_59

    :sswitch_4e
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v5

    goto :goto_59

    :goto_58
    const/4 v0, -0x1

    :goto_59
    packed-switch v0, :pswitch_data_ac

    .line 840
    return v5

    .line 838
    :pswitch_5d
    if-ne p1, v3, :cond_60

    goto :goto_61

    :cond_60
    move v4, v5

    :goto_61
    return v4

    .line 836
    :pswitch_62
    if-ne p1, v3, :cond_65

    goto :goto_66

    :cond_65
    move v4, v5

    :goto_66
    return v4

    .line 834
    :pswitch_67
    if-ne p1, v3, :cond_6a

    goto :goto_6b

    :cond_6a
    move v4, v5

    :goto_6b
    return v4

    .line 832
    :pswitch_6c
    if-ne p1, v3, :cond_6f

    goto :goto_70

    :cond_6f
    move v4, v5

    :goto_70
    return v4

    .line 828
    :pswitch_71
    const/16 v0, 0x10

    if-eq p1, v0, :cond_7d

    if-eq p1, v2, :cond_7d

    const/16 v0, 0x34

    if-ne p1, v0, :cond_7c

    goto :goto_7d

    :cond_7c
    move v4, v5

    :cond_7d
    :goto_7d
    return v4

    .line 826
    :pswitch_7e
    const/4 v0, 0x7

    if-ne p1, v0, :cond_82

    goto :goto_83

    :cond_82
    move v4, v5

    :goto_83
    return v4

    .line 823
    :pswitch_84
    if-eq p1, v2, :cond_8c

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_8b

    goto :goto_8c

    :cond_8b
    move v4, v5

    :cond_8c
    :goto_8c
    return v4

    nop

    :sswitch_data_8e
    .sparse-switch
        -0x62b40cf1 -> :sswitch_4e
        -0x3adbfa0f -> :sswitch_43
        -0x30341611 -> :sswitch_38
        0x20752f6e -> :sswitch_2d
        0x2f1ad612 -> :sswitch_23
        0x5ca40550 -> :sswitch_19
        0x7643c6b5 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_84
        :pswitch_7e
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5d
    .end packed-switch
.end method

.method private blacklist isComponentNameAttr(Ljava/lang/String;)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 780
    iget-object v0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_d4

    :cond_d
    goto :goto_58

    :sswitch_e
    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x6

    goto :goto_59

    :sswitch_19
    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_59

    :sswitch_23
    const-string v1, "activity-alias"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_59

    :sswitch_2d
    const-string/jumbo v1, "instrumentation"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_59

    :sswitch_38
    const-string/jumbo v1, "receiver"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    goto :goto_59

    :sswitch_43
    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_59

    :sswitch_4e
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v4

    goto :goto_59

    :goto_58
    move v0, v5

    :goto_59
    const-string/jumbo v1, "name"

    packed-switch v0, :pswitch_data_f2

    .line 816
    return v4

    .line 809
    :pswitch_60
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_104

    :cond_67
    goto :goto_6f

    :pswitch_68
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    move v5, v4

    :goto_6f
    packed-switch v5, :pswitch_data_10a

    .line 813
    return v4

    .line 811
    :pswitch_73
    return v3

    .line 797
    :pswitch_74
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_110

    :cond_7b
    goto :goto_98

    :sswitch_7c
    const-string/jumbo v0, "zygotePreloadName"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    goto :goto_99

    :sswitch_86
    const-string v0, "backupAgent"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    move v2, v4

    goto :goto_99

    :sswitch_90
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    move v2, v3

    goto :goto_99

    :goto_98
    move v2, v5

    :goto_99
    packed-switch v2, :pswitch_data_11e

    .line 803
    return v4

    .line 801
    :pswitch_9d
    return v3

    .line 790
    :pswitch_9e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_128

    :cond_a5
    goto :goto_b0

    :pswitch_a6
    const-string/jumbo v0, "targetActivity"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    move v5, v4

    :goto_b0
    packed-switch v5, :pswitch_data_12e

    .line 794
    return v4

    .line 792
    :pswitch_b4
    return v3

    .line 782
    :pswitch_b5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_134

    :cond_bc
    goto :goto_cf

    :sswitch_bd
    const-string/jumbo v0, "parentActivityName"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    move v5, v3

    goto :goto_cf

    :sswitch_c8
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    move v5, v4

    :goto_cf
    packed-switch v5, :pswitch_data_13e

    .line 787
    return v4

    .line 785
    :pswitch_d3
    return v3

    :sswitch_data_d4
    .sparse-switch
        -0x62b40cf1 -> :sswitch_4e
        -0x3adbfa0f -> :sswitch_43
        -0x30341611 -> :sswitch_38
        0x20752f6e -> :sswitch_2d
        0x2f1ad612 -> :sswitch_23
        0x5ca40550 -> :sswitch_19
        0x7643c6b5 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_9e
        :pswitch_74
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x337a8b
        :pswitch_68
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_73
    .end packed-switch

    :sswitch_data_110
    .sparse-switch
        0x337a8b -> :sswitch_90
        0x41112663 -> :sswitch_86
        0x7ef7dffc -> :sswitch_7c
    .end sparse-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_9d
        :pswitch_9d
    .end packed-switch

    :pswitch_data_128
    .packed-switch 0x3e66a7c0
        :pswitch_a6
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_b4
    .end packed-switch

    :sswitch_data_134
    .sparse-switch
        0x337a8b -> :sswitch_c8
        0x23f7004 -> :sswitch_bd
    .end sparse-switch

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_d3
    .end packed-switch
.end method

.method static synthetic blacklist lambda$static$0()Landroid/util/Pools$SimplePool;
    .registers 2

    .line 164
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    return-object v0
.end method

.method static blacklist obtain(Ljava/lang/String;)Landroid/content/res/Element;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 168
    sget-object v0, Landroid/content/res/Element;->sPool:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Element;

    .line 169
    .local v0, "element":Landroid/content/res/Element;
    if-nez v0, :cond_16

    .line 170
    new-instance v1, Landroid/content/res/Element;

    invoke-direct {v1}, Landroid/content/res/Element;-><init>()V

    move-object v0, v1

    .line 172
    :cond_16
    invoke-direct {v0, p0}, Landroid/content/res/Element;->init(Ljava/lang/String;)V

    .line 173
    return-object v0
.end method

.method static blacklist shouldValidate(Ljava/lang/String;)Z
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_1f4

    :cond_9
    goto/16 :goto_1ed

    :sswitch_b
    const-string/jumbo v0, "service"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1b

    goto/16 :goto_1ee

    :sswitch_18
    const-string v0, "compatible-screens"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto/16 :goto_1ee

    :sswitch_23
    const-string/jumbo v0, "uses-feature"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x20

    goto/16 :goto_1ee

    :sswitch_30
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x25

    goto/16 :goto_1ee

    :sswitch_3d
    const-string v0, "application"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto/16 :goto_1ee

    :sswitch_48
    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x24

    goto/16 :goto_1ee

    :sswitch_55
    const-string/jumbo v0, "supports-gl-texture"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1c

    goto/16 :goto_1ee

    :sswitch_62
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1d

    goto/16 :goto_1ee

    :sswitch_6f
    const-string v0, "activity-alias"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto/16 :goto_1ee

    :sswitch_7a
    const-string/jumbo v0, "queries"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x18

    goto/16 :goto_1ee

    :sswitch_87
    const-string/jumbo v0, "path-permission"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x11

    goto/16 :goto_1ee

    :sswitch_94
    const-string/jumbo v0, "uses-permission"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x23

    goto/16 :goto_1ee

    :sswitch_a1
    const-string/jumbo v0, "instrumentation"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    goto/16 :goto_1ee

    :sswitch_ae
    const-string/jumbo v0, "profileable"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x15

    goto/16 :goto_1ee

    :sswitch_bb
    const-string/jumbo v0, "manifest"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xd

    goto/16 :goto_1ee

    :sswitch_c8
    const-string v0, "category"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto/16 :goto_1ee

    :sswitch_d3
    const-string v0, "data"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto/16 :goto_1ee

    :sswitch_de
    const-string/jumbo v0, "permission-group"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x13

    goto/16 :goto_1ee

    :sswitch_eb
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x26

    goto/16 :goto_1ee

    :sswitch_f8
    const-string v0, "attribution"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto/16 :goto_1ee

    :sswitch_103
    const-string/jumbo v0, "permission"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x12

    goto/16 :goto_1ee

    :sswitch_110
    const-string/jumbo v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x10

    goto/16 :goto_1ee

    :sswitch_11d
    const-string/jumbo v0, "receiver"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x19

    goto/16 :goto_1ee

    :sswitch_12a
    const-string/jumbo v0, "screen"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1a

    goto/16 :goto_1ee

    :sswitch_137
    const-string/jumbo v0, "provider"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x17

    goto/16 :goto_1ee

    :sswitch_144
    const-string/jumbo v0, "property"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16

    goto/16 :goto_1ee

    :sswitch_151
    const-string/jumbo v0, "intent-filter"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    goto/16 :goto_1ee

    :sswitch_15e
    const-string/jumbo v0, "overlay"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xf

    goto/16 :goto_1ee

    :sswitch_16b
    const-string/jumbo v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xc

    goto/16 :goto_1ee

    :sswitch_178
    const-string/jumbo v0, "meta-data"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    goto/16 :goto_1ee

    :sswitch_185
    const-string/jumbo v0, "intent"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    goto :goto_1ee

    :sswitch_191
    const-string/jumbo v0, "uri-relative-filter-group"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1e

    goto :goto_1ee

    :sswitch_19d
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x21

    goto :goto_1ee

    :sswitch_1a9
    const-string v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1ee

    :sswitch_1b3
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x22

    goto :goto_1ee

    :sswitch_1bf
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_1ee

    :sswitch_1c9
    const-string/jumbo v0, "permission-tree"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x14

    goto :goto_1ee

    :sswitch_1d5
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1f

    goto :goto_1ee

    :sswitch_1e1
    const-string/jumbo v0, "grant-uri-permission"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto :goto_1ee

    :goto_1ed
    const/4 v0, -0x1

    :goto_1ee
    packed-switch v0, :pswitch_data_292

    .line 305
    return v1

    .line 303
    :pswitch_1f2
    return v2

    nop

    :sswitch_data_1f4
    .sparse-switch
        -0x6c28de5f -> :sswitch_1e1
        -0x69b7c34b -> :sswitch_1d5
        -0x6366e724 -> :sswitch_1c9
        -0x62b40cf1 -> :sswitch_1bf
        -0x5fe67eda -> :sswitch_1b3
        -0x54d081ca -> :sswitch_1a9
        -0x50de9846 -> :sswitch_19d
        -0x472f1456 -> :sswitch_191
        -0x468ec964 -> :sswitch_185
        -0x4284098e -> :sswitch_178
        -0x422504d6 -> :sswitch_16b
        -0x410bbbb0 -> :sswitch_15e
        -0x3d616837 -> :sswitch_151
        -0x3b32222b -> :sswitch_144
        -0x3adbfa0f -> :sswitch_137
        -0x361a3f94 -> :sswitch_12a
        -0x30341611 -> :sswitch_11d
        -0x301acbba -> :sswitch_110
        -0x1eda3a31 -> :sswitch_103
        -0x12786f81 -> :sswitch_f8
        -0xfe5a947 -> :sswitch_eb
        -0xa2d06ff -> :sswitch_de
        0x2eefaa -> :sswitch_d3
        0x302bcfe -> :sswitch_c8
        0x7c92e2f -> :sswitch_bb
        0xa9d2283 -> :sswitch_ae
        0x20752f6e -> :sswitch_a1
        0x23c12e70 -> :sswitch_94
        0x25eb3477 -> :sswitch_87
        0x270bd766 -> :sswitch_7a
        0x2f1ad612 -> :sswitch_6f
        0x3573e73e -> :sswitch_62
        0x381d071c -> :sswitch_55
        0x501aeeb1 -> :sswitch_48
        0x5ca40550 -> :sswitch_3d
        0x65ae49fd -> :sswitch_30
        0x6adbbdf5 -> :sswitch_23
        0x6c5ff78e -> :sswitch_18
        0x7643c6b5 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_292
    .packed-switch 0x0
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
    .end packed-switch
.end method


# virtual methods
.method blacklist hasChild(Ljava/lang/String;)Z
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;

    .line 845
    iget-wide v0, p0, Landroid/content/res/Element;->mChildTagMask:J

    invoke-static {p1}, Landroid/content/res/Element;->getCounterIdx(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    int-to-long v4, v2

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    return v3
.end method

.method blacklist recycle()V
    .registers 2

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    .line 178
    sget-object v0, Landroid/content/res/Element;->sPool:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method blacklist seen(Landroid/content/res/Element;)V
    .registers 6
    .param p1, "element"    # Landroid/content/res/Element;

    .line 885
    iget-object v0, p0, Landroid/content/res/Element;->mTagCounters:[Landroid/content/res/TagCounter;

    iget-object v1, p1, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/res/Element;->getCounterIdx(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    .line 886
    .local v0, "counter":Landroid/content/res/TagCounter;
    if-eqz v0, :cond_3d

    .line 887
    invoke-virtual {v0}, Landroid/content/res/TagCounter;->increment()V

    .line 888
    invoke-virtual {v0}, Landroid/content/res/TagCounter;->isValid()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_3d

    .line 889
    :cond_16
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " elements exceeded the max allowed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 893
    :cond_3d
    :goto_3d
    return-void
.end method

.method blacklist validateComponentMetadata(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 878
    iget v0, p0, Landroid/content/res/Element;->mTotalComponentMetadataSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Element;->mTotalComponentMetadataSize:I

    .line 879
    iget v0, p0, Landroid/content/res/Element;->mTotalComponentMetadataSize:I

    const/high16 v1, 0x40000

    if-gt v0, v1, :cond_10

    .line 882
    return-void

    .line 880
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max total meta data size limit exceeded for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist validateComponentName(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 849
    const/4 v0, 0x1

    .line 850
    .local v0, "isStart":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 851
    const-string v2, ";,[](){}:?%^*|/\\"

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_17

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 852
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid Java class name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PackageParsing"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 856
    .end local v1    # "i":I
    :cond_46
    return-void
.end method

.method blacklist validateResStrAttr(ILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "stringValue"    # Ljava/lang/CharSequence;

    .line 869
    if-eqz p2, :cond_28

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, p1}, Landroid/content/res/Element;->getResStrMaxLen(I)I

    move-result v1

    if-gt v0, v1, :cond_d

    goto :goto_28

    .line 870
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String length limit exceeded for attribute in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_28
    :goto_28
    invoke-direct {p0, p1}, Landroid/content/res/Element;->isComponentNameAttr(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 873
    invoke-virtual {p0, p2}, Landroid/content/res/Element;->validateComponentName(Ljava/lang/CharSequence;)V

    .line 875
    :cond_31
    return-void
.end method

.method blacklist validateStrAttr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;

    .line 859
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1}, Landroid/content/res/Element;->getAttrStrMaxLen(Ljava/lang/String;)I

    move-result v1

    if-gt v0, v1, :cond_d

    goto :goto_32

    .line 860
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String length limit exceeded for attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_32
    :goto_32
    invoke-direct {p0, p1}, Landroid/content/res/Element;->isComponentNameAttr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 864
    invoke-virtual {p0, p2}, Landroid/content/res/Element;->validateComponentName(Ljava/lang/CharSequence;)V

    .line 866
    :cond_3b
    return-void
.end method
