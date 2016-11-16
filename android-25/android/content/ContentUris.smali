.class public Landroid/content/ContentUris;
.super Ljava/lang/Object;
.source "ContentUris.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/net/Uri$Builder;
    .param p1, "id"    # J

    #@0
    .prologue
    .line 98
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static parseId(Landroid/net/Uri;)J
    .locals 4
    .param p0, "contentUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 86
    .local v0, "last":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    const-wide/16 v2, -0x1

    #@8
    :goto_0
    return-wide v2

    #@9
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@c
    move-result-wide v2

    #@d
    goto :goto_0
.end method

.method public static withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 1
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "id"    # J

    #@0
    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
