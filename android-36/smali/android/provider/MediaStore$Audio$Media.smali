.class public final Landroid/provider/MediaStore$Audio$Media;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Audio$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/audio"

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "title_key"

.field public static final whitelist ENTRY_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/audio"

.field public static final whitelist EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist EXTRA_MAX_BYTES:Ljava/lang/String; = "android.provider.MediaStore.extra.MAX_BYTES"

.field public static final whitelist INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist RECORD_SOUND_ACTION:Ljava/lang/String; = "android.provider.MediaStore.RECORD_SOUND"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3774
    nop

    .line 3775
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3781
    nop

    .line 3782
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3781
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 3735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "volumeName"    # Ljava/lang/String;

    .line 3744
    sget-object v0, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3745
    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 3744
    return-object v0
.end method

.method public static whitelist getContentUri(Ljava/lang/String;J)Landroid/net/Uri;
    .registers 4
    .param p0, "volumeName"    # Ljava/lang/String;
    .param p1, "id"    # J

    .line 3757
    invoke-static {p0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3768
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/provider/MediaStore;->getVolumeName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
