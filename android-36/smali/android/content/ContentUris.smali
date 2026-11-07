.class public Landroid/content/ContentUris;
.super Ljava/lang/Object;
.source "ContentUris.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;
    .registers 4
    .param p0, "builder"    # Landroid/net/Uri$Builder;
    .param p1, "id"    # J

    .line 102
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist parseId(Landroid/net/Uri;)J
    .registers 4
    .param p0, "contentUri"    # Landroid/net/Uri;

    .line 89
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "last":Ljava/lang/String;
    if-nez v0, :cond_9

    const-wide/16 v1, -0x1

    goto :goto_d

    :cond_9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_d
    return-wide v1
.end method

.method public static whitelist removeId(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .param p0, "contentUri"    # Landroid/net/Uri;

    .line 127
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "last":Ljava/lang/String;
    if-eqz v0, :cond_2f

    .line 131
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 134
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 136
    .local v2, "builder":Landroid/net/Uri$Builder;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 137
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2a

    .line 138
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 140
    .end local v3    # "i":I
    :cond_2a
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 129
    .end local v1    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "builder":Landroid/net/Uri$Builder;
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No path segments to remove"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    .registers 4
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "id"    # J

    .line 114
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
