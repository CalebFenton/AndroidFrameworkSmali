.class public Landroid/provider/SearchIndexablesContract;
.super Ljava/lang/Object;
.source "SearchIndexablesContract.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SearchIndexablesContract$XmlResource;,
        Landroid/provider/SearchIndexablesContract$RawData;,
        Landroid/provider/SearchIndexablesContract$SiteMapColumns;,
        Landroid/provider/SearchIndexablesContract$NonIndexableKey;,
        Landroid/provider/SearchIndexablesContract$SliceUriPairColumns;,
        Landroid/provider/SearchIndexablesContract$BaseColumns;
    }
.end annotation


# static fields
.field public static final whitelist COLUMN_INDEX_NON_INDEXABLE_KEYS_KEY_VALUE:I = 0x0

.field public static final whitelist COLUMN_INDEX_RAW_CLASS_NAME:I = 0x7

.field public static final whitelist COLUMN_INDEX_RAW_ENTRIES:I = 0x4

.field public static final whitelist COLUMN_INDEX_RAW_ICON_RESID:I = 0x8

.field public static final whitelist COLUMN_INDEX_RAW_INTENT_ACTION:I = 0x9

.field public static final whitelist COLUMN_INDEX_RAW_INTENT_TARGET_CLASS:I = 0xb

.field public static final whitelist COLUMN_INDEX_RAW_INTENT_TARGET_PACKAGE:I = 0xa

.field public static final whitelist COLUMN_INDEX_RAW_KEY:I = 0xc

.field public static final whitelist COLUMN_INDEX_RAW_KEYWORDS:I = 0x5

.field public static final greylist-max-o COLUMN_INDEX_RAW_PAYLOAD:I = 0xf

.field public static final greylist-max-o COLUMN_INDEX_RAW_PAYLOAD_TYPE:I = 0xe

.field public static final whitelist COLUMN_INDEX_RAW_RANK:I = 0x0

.field public static final whitelist COLUMN_INDEX_RAW_SCREEN_TITLE:I = 0x6

.field public static final whitelist COLUMN_INDEX_RAW_SUMMARY_OFF:I = 0x3

.field public static final whitelist COLUMN_INDEX_RAW_SUMMARY_ON:I = 0x2

.field public static final whitelist COLUMN_INDEX_RAW_TITLE:I = 0x1

.field public static final whitelist COLUMN_INDEX_RAW_USER_ID:I = 0xd

.field public static final whitelist COLUMN_INDEX_XML_RES_CLASS_NAME:I = 0x2

.field public static final whitelist COLUMN_INDEX_XML_RES_ICON_RESID:I = 0x3

.field public static final whitelist COLUMN_INDEX_XML_RES_INTENT_ACTION:I = 0x4

.field public static final whitelist COLUMN_INDEX_XML_RES_INTENT_TARGET_CLASS:I = 0x6

.field public static final whitelist COLUMN_INDEX_XML_RES_INTENT_TARGET_PACKAGE:I = 0x5

.field public static final whitelist COLUMN_INDEX_XML_RES_RANK:I = 0x0

.field public static final whitelist COLUMN_INDEX_XML_RES_RESID:I = 0x1

.field public static final whitelist DYNAMIC_INDEXABLES_RAW:Ljava/lang/String; = "dynamic_indexables_raw"

.field public static final whitelist DYNAMIC_INDEXABLES_RAW_PATH:Ljava/lang/String; = "settings/dynamic_indexables_raw"

.field public static final whitelist INDEXABLES_RAW:Ljava/lang/String; = "indexables_raw"

.field public static final whitelist INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

.field public static final whitelist INDEXABLES_RAW_PATH:Ljava/lang/String; = "settings/indexables_raw"

.field public static final whitelist INDEXABLES_XML_RES:Ljava/lang/String; = "indexables_xml_res"

.field public static final whitelist INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

.field public static final whitelist INDEXABLES_XML_RES_PATH:Ljava/lang/String; = "settings/indexables_xml_res"

.field public static final whitelist NON_INDEXABLES_KEYS:Ljava/lang/String; = "non_indexables_key"

.field public static final whitelist NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

.field public static final whitelist NON_INDEXABLES_KEYS_PATH:Ljava/lang/String; = "settings/non_indexables_key"

.field public static final whitelist PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.SEARCH_INDEXABLES_PROVIDER"

.field private static final greylist-max-o SETTINGS:Ljava/lang/String; = "settings"

.field public static final greylist-max-o SITE_MAP_COLUMNS:[Ljava/lang/String;

.field public static final greylist-max-o SITE_MAP_PAIRS_KEYS:Ljava/lang/String; = "site_map_pairs"

.field public static final greylist-max-o SITE_MAP_PAIRS_PATH:Ljava/lang/String; = "settings/site_map_pairs"

.field public static final whitelist SLICE_URI_PAIRS:Ljava/lang/String; = "slice_uri_pairs"

.field public static final whitelist SLICE_URI_PAIRS_COLUMNS:[Ljava/lang/String;

.field public static final whitelist SLICE_URI_PAIRS_PATH:Ljava/lang/String; = "settings/slice_uri_pairs"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 116
    const-string/jumbo v5, "intentTargetPackage"

    const-string/jumbo v6, "intentTargetClass"

    const-string/jumbo v0, "rank"

    const-string/jumbo v1, "xmlResId"

    const-string v2, "className"

    const-string/jumbo v3, "iconResId"

    const-string/jumbo v4, "intentAction"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    .line 140
    const-string/jumbo v15, "payload_type"

    const-string/jumbo v16, "payload"

    const-string/jumbo v1, "rank"

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "summaryOn"

    const-string/jumbo v4, "summaryOff"

    const-string v5, "entries"

    const-string/jumbo v6, "keywords"

    const-string/jumbo v7, "screenTitle"

    const-string v8, "className"

    const-string/jumbo v9, "iconResId"

    const-string/jumbo v10, "intentAction"

    const-string/jumbo v11, "intentTargetPackage"

    const-string/jumbo v12, "intentTargetClass"

    const-string/jumbo v13, "key"

    const-string/jumbo v14, "user_id"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    .line 164
    const-string v0, "child_class"

    const-string v1, "child_title"

    const-string/jumbo v2, "parent_class"

    const-string/jumbo v3, "parent_title"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/SearchIndexablesContract;->SITE_MAP_COLUMNS:[Ljava/lang/String;

    .line 200
    const-string/jumbo v0, "key"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    .line 229
    const-string/jumbo v1, "slice_uri"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/SearchIndexablesContract;->SLICE_URI_PAIRS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
