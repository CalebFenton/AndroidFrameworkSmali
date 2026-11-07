.class public final Landroid/provider/BrowserContract$ImageMappings;
.super Ljava/lang/Object;
.source "BrowserContract.java"

# interfaces
.implements Landroid/provider/BrowserContract$ImageMappingColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageMappings"
.end annotation


# static fields
.field public static final greylist-max-o CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/image_mappings"

.field public static final greylist-max-o CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/image_mappings"

.field public static final greylist-max-o CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 658
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "image_mappings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract$ImageMappings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
