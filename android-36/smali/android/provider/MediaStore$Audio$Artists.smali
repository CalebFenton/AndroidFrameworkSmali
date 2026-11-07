.class public final Landroid/provider/MediaStore$Audio$Artists;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/MediaStore$Audio$ArtistColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Artists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Audio$Artists$Albums;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/artists"

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist_key"

.field public static final whitelist ENTRY_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/artist"

.field public static final whitelist EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4139
    nop

    .line 4140
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Artists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Audio$Artists;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4146
    nop

    .line 4147
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Artists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4146
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 4123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "volumeName"    # Ljava/lang/String;

    .line 4132
    sget-object v0, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4133
    const-string v1, "artists"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 4132
    return-object v0
.end method
