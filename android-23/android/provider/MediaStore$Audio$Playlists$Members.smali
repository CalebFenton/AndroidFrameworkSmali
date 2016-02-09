.class public final Landroid/provider/MediaStore$Audio$Playlists$Members;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Audio$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio$Playlists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Members"
.end annotation


# static fields
.field public static final AUDIO_ID:Ljava/lang/String; = "audio_id"

.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "members"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "play_order"

.field public static final PLAYLIST_ID:Ljava/lang/String; = "playlist_id"

.field public static final PLAY_ORDER:Ljava/lang/String; = "play_order"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getContentUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3
    .param p0, "volumeName"    # Ljava/lang/String;
    .param p1, "playlistId"    # J

    #@0
    .prologue
    .line 1674
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "content://media/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 1675
    const-string/jumbo v1, "/audio/playlists/"

    #@13
    .line 1674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 1675
    const-string/jumbo v1, "/members"

    #@1e
    .line 1674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public static final moveItem(Landroid/content/ContentResolver;JII)Z
    .locals 7
    .param p0, "res"    # Landroid/content/ContentResolver;
    .param p1, "playlistId"    # J
    .param p3, "from"    # I
    .param p4, "to"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1688
    const-string/jumbo v3, "external"

    #@5
    invoke-static {v3, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@c
    move-result-object v3

    #@d
    .line 1691
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 1688
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@14
    move-result-object v3

    #@15
    .line 1692
    const-string/jumbo v4, "move"

    #@18
    const-string/jumbo v5, "true"

    #@1b
    .line 1688
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@22
    move-result-object v0

    #@23
    .line 1694
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    #@25
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@28
    .line 1695
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "play_order"

    #@2b
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@32
    .line 1696
    invoke-virtual {p0, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_0

    #@38
    const/4 v2, 0x1

    #@39
    :cond_0
    return v2
.end method
