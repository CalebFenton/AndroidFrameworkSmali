.class public Landroid/provider/SearchIndexablesContract;
.super Ljava/lang/Object;
.source "SearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SearchIndexablesContract$XmlResource;,
        Landroid/provider/SearchIndexablesContract$RawData;,
        Landroid/provider/SearchIndexablesContract$NonIndexableKey;,
        Landroid/provider/SearchIndexablesContract$BaseColumns;
    }
.end annotation


# static fields
.field public static final COLUMN_INDEX_NON_INDEXABLE_KEYS_KEY_VALUE:I = 0x0

.field public static final COLUMN_INDEX_RAW_CLASS_NAME:I = 0x7

.field public static final COLUMN_INDEX_RAW_ENTRIES:I = 0x4

.field public static final COLUMN_INDEX_RAW_ICON_RESID:I = 0x8

.field public static final COLUMN_INDEX_RAW_INTENT_ACTION:I = 0x9

.field public static final COLUMN_INDEX_RAW_INTENT_TARGET_CLASS:I = 0xb

.field public static final COLUMN_INDEX_RAW_INTENT_TARGET_PACKAGE:I = 0xa

.field public static final COLUMN_INDEX_RAW_KEY:I = 0xc

.field public static final COLUMN_INDEX_RAW_KEYWORDS:I = 0x5

.field public static final COLUMN_INDEX_RAW_RANK:I = 0x0

.field public static final COLUMN_INDEX_RAW_SCREEN_TITLE:I = 0x6

.field public static final COLUMN_INDEX_RAW_SUMMARY_OFF:I = 0x3

.field public static final COLUMN_INDEX_RAW_SUMMARY_ON:I = 0x2

.field public static final COLUMN_INDEX_RAW_TITLE:I = 0x1

.field public static final COLUMN_INDEX_RAW_USER_ID:I = 0xd

.field public static final COLUMN_INDEX_XML_RES_CLASS_NAME:I = 0x2

.field public static final COLUMN_INDEX_XML_RES_ICON_RESID:I = 0x3

.field public static final COLUMN_INDEX_XML_RES_INTENT_ACTION:I = 0x4

.field public static final COLUMN_INDEX_XML_RES_INTENT_TARGET_CLASS:I = 0x6

.field public static final COLUMN_INDEX_XML_RES_INTENT_TARGET_PACKAGE:I = 0x5

.field public static final COLUMN_INDEX_XML_RES_RANK:I = 0x0

.field public static final COLUMN_INDEX_XML_RES_RESID:I = 0x1

.field public static final INDEXABLES_RAW:Ljava/lang/String; = "indexables_raw"

.field public static final INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

.field public static final INDEXABLES_RAW_PATH:Ljava/lang/String; = "settings/indexables_raw"

.field public static final INDEXABLES_XML_RES:Ljava/lang/String; = "indexables_xml_res"

.field public static final INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

.field public static final INDEXABLES_XML_RES_PATH:Ljava/lang/String; = "settings/indexables_xml_res"

.field public static final NON_INDEXABLES_KEYS:Ljava/lang/String; = "non_indexables_key"

.field public static final NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

.field public static final NON_INDEXABLES_KEYS_PATH:Ljava/lang/String; = "settings/non_indexables_key"

.field public static final PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.SEARCH_INDEXABLES_PROVIDER"

.field private static final SETTINGS:Ljava/lang/String; = "settings"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 72
    const/4 v0, 0x7

    #@6
    new-array v0, v0, [Ljava/lang/String;

    #@8
    .line 73
    const-string/jumbo v1, "rank"

    #@b
    aput-object v1, v0, v3

    #@d
    .line 74
    const-string/jumbo v1, "xmlResId"

    #@10
    aput-object v1, v0, v4

    #@12
    .line 75
    const-string/jumbo v1, "className"

    #@15
    aput-object v1, v0, v5

    #@17
    .line 76
    const-string/jumbo v1, "iconResId"

    #@1a
    aput-object v1, v0, v6

    #@1c
    .line 77
    const-string/jumbo v1, "intentAction"

    #@1f
    aput-object v1, v0, v7

    #@21
    .line 78
    const-string/jumbo v1, "intentTargetPackage"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    .line 79
    const-string/jumbo v1, "intentTargetClass"

    #@2a
    const/4 v2, 0x6

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 72
    sput-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    #@2f
    .line 96
    const/16 v0, 0xe

    #@31
    new-array v0, v0, [Ljava/lang/String;

    #@33
    .line 97
    const-string/jumbo v1, "rank"

    #@36
    aput-object v1, v0, v3

    #@38
    .line 98
    const-string/jumbo v1, "title"

    #@3b
    aput-object v1, v0, v4

    #@3d
    .line 99
    const-string/jumbo v1, "summaryOn"

    #@40
    aput-object v1, v0, v5

    #@42
    .line 100
    const-string/jumbo v1, "summaryOff"

    #@45
    aput-object v1, v0, v6

    #@47
    .line 101
    const-string/jumbo v1, "entries"

    #@4a
    aput-object v1, v0, v7

    #@4c
    .line 102
    const-string/jumbo v1, "keywords"

    #@4f
    const/4 v2, 0x5

    #@50
    aput-object v1, v0, v2

    #@52
    .line 103
    const-string/jumbo v1, "screenTitle"

    #@55
    const/4 v2, 0x6

    #@56
    aput-object v1, v0, v2

    #@58
    .line 104
    const-string/jumbo v1, "className"

    #@5b
    const/4 v2, 0x7

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 105
    const-string/jumbo v1, "iconResId"

    #@61
    const/16 v2, 0x8

    #@63
    aput-object v1, v0, v2

    #@65
    .line 106
    const-string/jumbo v1, "intentAction"

    #@68
    const/16 v2, 0x9

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 107
    const-string/jumbo v1, "intentTargetPackage"

    #@6f
    const/16 v2, 0xa

    #@71
    aput-object v1, v0, v2

    #@73
    .line 108
    const-string/jumbo v1, "intentTargetClass"

    #@76
    const/16 v2, 0xb

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 109
    const-string/jumbo v1, "key"

    #@7d
    const/16 v2, 0xc

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 110
    const-string/jumbo v1, "user_id"

    #@84
    const/16 v2, 0xd

    #@86
    aput-object v1, v0, v2

    #@88
    .line 96
    sput-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    #@8a
    .line 134
    new-array v0, v4, [Ljava/lang/String;

    #@8c
    .line 135
    const-string/jumbo v1, "key"

    #@8f
    aput-object v1, v0, v3

    #@91
    .line 134
    sput-object v0, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    #@93
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
