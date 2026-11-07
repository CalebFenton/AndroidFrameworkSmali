.class public final Landroid/provider/BrowserContract$Images;
.super Ljava/lang/Object;
.source "BrowserContract.java"

# interfaces
.implements Landroid/provider/BrowserContract$ImageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Images"
.end annotation


# static fields
.field public static final greylist-max-o CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/images"

.field public static final greylist-max-o CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/images"

.field public static final greylist-max-r CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o DATA:Ljava/lang/String; = "data"

.field public static final greylist-max-o IMAGE_TYPE_FAVICON:I = 0x1

.field public static final greylist-max-o IMAGE_TYPE_PRECOMPOSED_TOUCH_ICON:I = 0x2

.field public static final greylist-max-o IMAGE_TYPE_TOUCH_ICON:I = 0x4

.field public static final greylist-max-o TYPE:Ljava/lang/String; = "type"

.field public static final greylist-max-o URL:Ljava/lang/String; = "url_key"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 585
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "images"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract$Images;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
