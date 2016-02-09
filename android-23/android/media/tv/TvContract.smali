.class public final Landroid/media/tv/TvContract;
.super Ljava/lang/Object;
.source "TvContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvContract$BaseTvColumns;,
        Landroid/media/tv/TvContract$Channels;,
        Landroid/media/tv/TvContract$Programs;,
        Landroid/media/tv/TvContract$WatchedPrograms;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "android.media.tv"

.field public static final PARAM_BROWSABLE_ONLY:Ljava/lang/String; = "browsable_only"

.field public static final PARAM_CANONICAL_GENRE:Ljava/lang/String; = "canonical_genre"

.field public static final PARAM_CHANNEL:Ljava/lang/String; = "channel"

.field public static final PARAM_END_TIME:Ljava/lang/String; = "end_time"

.field public static final PARAM_INPUT:Ljava/lang/String; = "input"

.field public static final PARAM_START_TIME:Ljava/lang/String; = "start_time"

.field private static final PATH_CHANNEL:Ljava/lang/String; = "channel"

.field private static final PATH_PASSTHROUGH:Ljava/lang/String; = "passthrough"

.field private static final PATH_PROGRAM:Ljava/lang/String; = "program"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final buildChannelLogoUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "channelId"    # J

    #@0
    .prologue
    .line 138
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildChannelUri(J)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/media/tv/TvContract;->buildChannelLogoUri(Landroid/net/Uri;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final buildChannelLogoUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 147
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Not a channel: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 150
    :cond_0
    const-string/jumbo v0, "logo"

    #@23
    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public static final buildChannelUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "channelId"    # J

    #@0
    .prologue
    .line 118
    sget-object v0, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "content"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, "android.media.tv"

    #@f
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12
    move-result-object v0

    #@13
    .line 129
    const-string/jumbo v1, "passthrough"

    #@16
    .line 128
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method public static final buildChannelsUriForInput(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final buildChannelsUriForInput(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 3
    .param p0, "inputId"    # Ljava/lang/String;
    .param p1, "genre"    # Ljava/lang/String;
    .param p2, "browsableOnly"    # Z

    #@0
    .prologue
    .line 199
    if-nez p1, :cond_0

    #@2
    .line 200
    invoke-static {p0, p2}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 202
    :cond_0
    invoke-static {p1}, Landroid/media/tv/TvContract$Programs$Genres;->isCanonical(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Not a canonical genre: \'"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "\'"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 205
    :cond_1
    invoke-static {p0, p2}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@35
    move-result-object v0

    #@36
    .line 206
    const-string/jumbo v1, "canonical_genre"

    #@39
    .line 205
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@40
    move-result-object v0

    #@41
    return-object v0
.end method

.method public static final buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 3
    .param p0, "inputId"    # Ljava/lang/String;
    .param p1, "browsableOnly"    # Z

    #@0
    .prologue
    .line 176
    sget-object v1, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@5
    move-result-object v0

    #@6
    .line 177
    .local v0, "builder":Landroid/net/Uri$Builder;
    if-eqz p0, :cond_0

    #@8
    .line 178
    const-string/jumbo v1, "input"

    #@b
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@e
    .line 180
    :cond_0
    const-string/jumbo v1, "browsable_only"

    #@11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public static final buildInputId(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final buildProgramUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "programId"    # J

    #@0
    .prologue
    .line 215
    sget-object v0, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final buildProgramsUriForChannel(J)Landroid/net/Uri;
    .locals 4
    .param p0, "channelId"    # J

    #@0
    .prologue
    .line 224
    sget-object v0, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@5
    move-result-object v0

    #@6
    .line 225
    const-string/jumbo v1, "channel"

    #@9
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static final buildProgramsUriForChannel(JJJ)Landroid/net/Uri;
    .locals 4
    .param p0, "channelId"    # J
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J

    #@0
    .prologue
    .line 252
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(J)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    .line 253
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@7
    move-result-object v1

    #@8
    const-string/jumbo v2, "start_time"

    #@b
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12
    move-result-object v1

    #@13
    .line 254
    const-string/jumbo v2, "end_time"

    #@16
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 253
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@21
    move-result-object v1

    #@22
    return-object v1
.end method

.method public static final buildProgramsUriForChannel(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 234
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Not a channel: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 237
    :cond_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@23
    move-result-wide v0

    #@24
    invoke-static {v0, v1}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(J)Landroid/net/Uri;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public static final buildProgramsUriForChannel(Landroid/net/Uri;JJ)Landroid/net/Uri;
    .locals 7
    .param p0, "channelUri"    # Landroid/net/Uri;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    #@0
    .prologue
    .line 269
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Not a channel: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 272
    :cond_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@23
    move-result-wide v0

    #@24
    move-wide v2, p1

    #@25
    move-wide v4, p3

    #@26
    invoke-static/range {v0 .. v5}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(JJJ)Landroid/net/Uri;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public static final buildWatchedProgramUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "watchedProgramId"    # J

    #@0
    .prologue
    .line 282
    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final isChannelUri(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 300
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public static final isChannelUriForPassthroughInput(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 317
    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "passthrough"

    #@9
    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public static final isChannelUriForTunerInput(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 308
    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "channel"

    #@9
    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public static final isProgramUri(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 325
    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "program"

    #@9
    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private static isTvUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 286
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "content"

    #@5
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 287
    const-string/jumbo v0, "android.media.tv"

    #@12
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    .line 286
    :goto_0
    return v0

    #@1b
    :cond_0
    const/4 v0, 0x0

    #@1c
    goto :goto_0
.end method

.method private static isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "pathSegment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 291
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    .line 292
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    const/4 v3, 0x2

    #@a
    if-ne v2, v3, :cond_0

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    :cond_0
    return v1
.end method
