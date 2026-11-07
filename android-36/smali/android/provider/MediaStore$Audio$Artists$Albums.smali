.class public final Landroid/provider/MediaStore$Audio$Artists$Albums;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/MediaStore$Audio$AlbumColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio$Artists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Albums"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 4168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getContentUri(Ljava/lang/String;J)Landroid/net/Uri;
    .registers 5
    .param p0, "volumeName"    # Ljava/lang/String;
    .param p1, "artistId"    # J

    .line 4170
    nop

    .line 4171
    invoke-static {p0}, Landroid/provider/MediaStore$Audio$Artists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4172
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "albums"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 4170
    return-object v0
.end method
