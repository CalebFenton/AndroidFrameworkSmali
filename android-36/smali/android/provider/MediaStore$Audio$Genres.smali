.class public final Landroid/provider/MediaStore$Audio$Genres;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/MediaStore$Audio$GenresColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Genres"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Audio$Genres$Members;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/genre"

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "name"

.field public static final whitelist ENTRY_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/genre"

.field public static final whitelist EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3864
    nop

    .line 3865
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Audio$Genres;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3871
    nop

    .line 3872
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3871
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 3835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "volumeName"    # Ljava/lang/String;

    .line 3844
    sget-object v0, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3845
    const-string v1, "genres"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 3844
    return-object v0
.end method

.method public static whitelist getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;
    .registers 5
    .param p0, "volumeName"    # Ljava/lang/String;
    .param p1, "audioId"    # I

    .line 3857
    invoke-static {p0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3858
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "genres"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 3857
    return-object v0
.end method
