.class public final Landroid/provider/ContactsContract$Directory;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Directory"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_directory"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_directories"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT:J = 0x0L

.field public static final DIRECTORY_AUTHORITY:Ljava/lang/String; = "authority"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final EXPORT_SUPPORT:Ljava/lang/String; = "exportSupport"

.field public static final EXPORT_SUPPORT_ANY_ACCOUNT:I = 0x2

.field public static final EXPORT_SUPPORT_NONE:I = 0x0

.field public static final EXPORT_SUPPORT_SAME_ACCOUNT_ONLY:I = 0x1

.field public static final LOCAL_INVISIBLE:J = 0x1L

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final PHOTO_SUPPORT:Ljava/lang/String; = "photoSupport"

.field public static final PHOTO_SUPPORT_FULL:I = 0x3

.field public static final PHOTO_SUPPORT_FULL_SIZE_ONLY:I = 0x2

.field public static final PHOTO_SUPPORT_NONE:I = 0x0

.field public static final PHOTO_SUPPORT_THUMBNAIL_ONLY:I = 0x1

.field public static final SHORTCUT_SUPPORT:Ljava/lang/String; = "shortcutSupport"

.field public static final SHORTCUT_SUPPORT_DATA_ITEMS_ONLY:I = 0x1

.field public static final SHORTCUT_SUPPORT_FULL:I = 0x2

.field public static final SHORTCUT_SUPPORT_NONE:I = 0x0

.field public static final TYPE_RESOURCE_ID:Ljava/lang/String; = "typeResourceId"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 393
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@2
    const-string/jumbo v1, "directories"

    #@5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    .line 392
    sput-object v0, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 380
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static notifyDirectoryChange(Landroid/content/ContentResolver;)V
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 566
    new-instance v0, Landroid/content/ContentValues;

    #@3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@6
    .line 567
    .local v0, "contentValues":Landroid/content/ContentValues;
    sget-object v1, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    #@8
    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@b
    .line 562
    return-void
.end method
