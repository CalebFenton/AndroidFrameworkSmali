.class public final Landroid/provider/MediaStore$Downloads;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$DownloadColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Downloads"
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/download"

.field public static final whitelist EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2821
    nop

    .line 2822
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Downloads;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2829
    nop

    .line 2830
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2829
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 2815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "volumeName"    # Ljava/lang/String;

    .line 2845
    sget-object v0, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2846
    const-string v1, "downloads"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2845
    return-object v0
.end method

.method public static whitelist getContentUri(Ljava/lang/String;J)Landroid/net/Uri;
    .registers 4
    .param p0, "volumeName"    # Ljava/lang/String;
    .param p1, "id"    # J

    .line 2858
    invoke-static {p0}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 2863
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/provider/MediaStore;->getVolumeName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
