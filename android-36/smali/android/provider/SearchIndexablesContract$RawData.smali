.class public final Landroid/provider/SearchIndexablesContract$RawData;
.super Landroid/provider/SearchIndexablesContract$BaseColumns;
.source "SearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawData"
.end annotation


# static fields
.field public static final whitelist COLUMN_ENTRIES:Ljava/lang/String; = "entries"

.field public static final whitelist COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final whitelist COLUMN_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final whitelist COLUMN_SCREEN_TITLE:Ljava/lang/String; = "screenTitle"

.field public static final whitelist COLUMN_SUMMARY_OFF:Ljava/lang/String; = "summaryOff"

.field public static final whitelist COLUMN_SUMMARY_ON:Ljava/lang/String; = "summaryOn"

.field public static final whitelist COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final whitelist COLUMN_USER_ID:Ljava/lang/String; = "user_id"

.field public static final whitelist MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/indexables_raw"

.field public static final greylist-max-o PAYLOAD:Ljava/lang/String; = "payload"

.field public static final greylist-max-o PAYLOAD_TYPE:Ljava/lang/String; = "payload_type"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/provider/SearchIndexablesContract$BaseColumns;-><init>(Landroid/provider/SearchIndexablesContract-IA;)V

    .line 272
    return-void
.end method
