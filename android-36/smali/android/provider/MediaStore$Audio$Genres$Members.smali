.class public final Landroid/provider/MediaStore$Audio$Genres$Members;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Audio$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio$Genres;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Members"
.end annotation


# static fields
.field public static final whitelist AUDIO_ID:Ljava/lang/String; = "audio_id"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final whitelist CONTENT_DIRECTORY:Ljava/lang/String; = "members"

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "title_key"

.field public static final whitelist GENRE_ID:Ljava/lang/String; = "genre_id"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 3892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getContentUri(Ljava/lang/String;J)Landroid/net/Uri;
    .registers 5
    .param p0, "volumeName"    # Ljava/lang/String;
    .param p1, "genreId"    # J

    .line 3895
    nop

    .line 3896
    invoke-static {p0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3897
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "members"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 3895
    return-object v0
.end method
