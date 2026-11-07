.class public final Landroid/provider/BrowserContract$Bookmarks;
.super Ljava/lang/Object;
.source "BrowserContract.java"

# interfaces
.implements Landroid/provider/BrowserContract$CommonColumns;
.implements Landroid/provider/BrowserContract$ImageColumns;
.implements Landroid/provider/BrowserContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmarks"
.end annotation


# static fields
.field public static final greylist-max-o BOOKMARK_TYPE_BOOKMARK:I = 0x1

.field public static final greylist-max-o BOOKMARK_TYPE_BOOKMARK_BAR_FOLDER:I = 0x3

.field public static final greylist-max-o BOOKMARK_TYPE_FOLDER:I = 0x2

.field public static final greylist-max-o BOOKMARK_TYPE_MOBILE_FOLDER:I = 0x5

.field public static final greylist-max-o BOOKMARK_TYPE_OTHER_FOLDER:I = 0x4

.field public static final greylist-max-o CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/bookmark"

.field public static final greylist-max-o CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/bookmark"

.field public static final greylist CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-r CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

.field public static final greylist-max-o INSERT_AFTER:Ljava/lang/String; = "insert_after"

.field public static final greylist-max-o INSERT_AFTER_SOURCE_ID:Ljava/lang/String; = "insert_after_source"

.field public static final greylist-max-o IS_DELETED:Ljava/lang/String; = "deleted"

.field public static final greylist-max-o IS_FOLDER:Ljava/lang/String; = "folder"

.field public static final greylist-max-o PARAM_ACCOUNT_NAME:Ljava/lang/String; = "acct_name"

.field public static final greylist-max-o PARAM_ACCOUNT_TYPE:Ljava/lang/String; = "acct_type"

.field public static final greylist-max-o PARENT:Ljava/lang/String; = "parent"

.field public static final greylist-max-o PARENT_SOURCE_ID:Ljava/lang/String; = "parent_source"

.field public static final greylist-max-o POSITION:Ljava/lang/String; = "position"

.field public static final greylist-max-o QUERY_PARAMETER_SHOW_DELETED:Ljava/lang/String; = "show_deleted"

.field public static final greylist-max-o TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 258
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bookmarks"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 308
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 309
    const-string v1, "folder"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    .line 308
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist-max-r buildFolderUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "folderId"    # J

    .line 330
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
