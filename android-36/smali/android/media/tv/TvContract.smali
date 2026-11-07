.class public final Landroid/media/tv/TvContract;
.super Ljava/lang/Object;
.source "TvContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvContract$Channels;,
        Landroid/media/tv/TvContract$Programs;,
        Landroid/media/tv/TvContract$RecordedPrograms;,
        Landroid/media/tv/TvContract$PreviewPrograms;,
        Landroid/media/tv/TvContract$WatchNextPrograms;,
        Landroid/media/tv/TvContract$WatchedPrograms;,
        Landroid/media/tv/TvContract$PreviewProgramColumns;,
        Landroid/media/tv/TvContract$ProgramColumns;,
        Landroid/media/tv/TvContract$BaseTvColumns;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CHANNEL_BROWSABLE_REQUESTED:Ljava/lang/String; = "android.media.tv.action.CHANNEL_BROWSABLE_REQUESTED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_INITIALIZE_PROGRAMS:Ljava/lang/String; = "android.media.tv.action.INITIALIZE_PROGRAMS"

.field public static final whitelist ACTION_PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT:Ljava/lang/String; = "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

.field public static final whitelist ACTION_PREVIEW_PROGRAM_BROWSABLE_DISABLED:Ljava/lang/String; = "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

.field public static final whitelist ACTION_REQUEST_CHANNEL_BROWSABLE:Ljava/lang/String; = "android.media.tv.action.REQUEST_CHANNEL_BROWSABLE"

.field public static final whitelist ACTION_WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED:Ljava/lang/String; = "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

.field public static final whitelist AUTHORITY:Ljava/lang/String; = "android.media.tv"

.field public static final whitelist EXTRA_BLOCKED_PACKAGES:Ljava/lang/String; = "android.media.tv.extra.BLOCKED_PACKAGES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.media.tv.extra.CHANNEL_ID"

.field public static final whitelist EXTRA_COLUMN_NAME:Ljava/lang/String; = "android.media.tv.extra.COLUMN_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DATA_TYPE:Ljava/lang/String; = "android.media.tv.extra.DATA_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DEFAULT_VALUE:Ljava/lang/String; = "android.media.tv.extra.DEFAULT_VALUE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_EXISTING_COLUMN_NAMES:Ljava/lang/String; = "android.media.tv.extra.EXISTING_COLUMN_NAMES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.tv.extra.PACKAGE_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PREVIEW_PROGRAM_ID:Ljava/lang/String; = "android.media.tv.extra.PREVIEW_PROGRAM_ID"

.field public static final whitelist EXTRA_RESULT_CODE:Ljava/lang/String; = "android.media.tv.extra.RESULT_CODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_WATCH_NEXT_PROGRAM_ID:Ljava/lang/String; = "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

.field public static final whitelist METHOD_ADD_COLUMN:Ljava/lang/String; = "add_column"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METHOD_BLOCK_PACKAGE:Ljava/lang/String; = "block_package"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METHOD_GET_BLOCKED_PACKAGES:Ljava/lang/String; = "get_blocked_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METHOD_GET_COLUMNS:Ljava/lang/String; = "get_columns"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METHOD_UNBLOCK_PACKAGE:Ljava/lang/String; = "unblock_package"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o PARAM_BROWSABLE_ONLY:Ljava/lang/String; = "browsable_only"

.field public static final greylist-max-o PARAM_CANONICAL_GENRE:Ljava/lang/String; = "canonical_genre"

.field public static final greylist-max-o PARAM_CHANNEL:Ljava/lang/String; = "channel"

.field public static final greylist-max-o PARAM_END_TIME:Ljava/lang/String; = "end_time"

.field public static final greylist-max-o PARAM_INPUT:Ljava/lang/String; = "input"

.field public static final greylist-max-o PARAM_PACKAGE:Ljava/lang/String; = "package"

.field public static final greylist-max-o PARAM_PREVIEW:Ljava/lang/String; = "preview"

.field public static final greylist-max-o PARAM_START_TIME:Ljava/lang/String; = "start_time"

.field private static final greylist-max-o PATH_CHANNEL:Ljava/lang/String; = "channel"

.field private static final greylist-max-o PATH_PASSTHROUGH:Ljava/lang/String; = "passthrough"

.field private static final greylist-max-o PATH_PREVIEW_PROGRAM:Ljava/lang/String; = "preview_program"

.field private static final greylist-max-o PATH_PROGRAM:Ljava/lang/String; = "program"

.field private static final greylist-max-o PATH_RECORDED_PROGRAM:Ljava/lang/String; = "recorded_program"

.field private static final greylist-max-o PATH_WATCH_NEXT_PROGRAM:Ljava/lang/String; = "watch_next_program"

.field public static final greylist-max-o PERMISSION_READ_TV_LISTINGS:Ljava/lang/String; = "android.permission.READ_TV_LISTINGS"

.field public static final whitelist RESULT_ERROR_INVALID_ARGUMENT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_ERROR_IO:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_OK:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist buildChannelLogoUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "channelId"    # J

    .line 499
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/media/tv/TvContract;->buildChannelLogoUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist buildChannelLogoUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .param p0, "channelUri"    # Landroid/net/Uri;

    .line 508
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 511
    const-string v0, "logo"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 509
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist buildChannelUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "channelId"    # J

    .line 479
    sget-object v0, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "inputId"    # Ljava/lang/String;

    .line 489
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.media.tv"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 490
    const-string v1, "passthrough"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 489
    return-object v0
.end method

.method public static whitelist buildChannelsUriForInput(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .param p0, "inputId"    # Ljava/lang/String;

    .line 521
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist buildChannelsUriForInput(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .registers 6
    .param p0, "inputId"    # Ljava/lang/String;
    .param p1, "genre"    # Ljava/lang/String;
    .param p2, "browsableOnly"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 560
    if-nez p1, :cond_7

    .line 561
    invoke-static {p0, p2}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 563
    :cond_7
    invoke-static {p1}, Landroid/media/tv/TvContract$Programs$Genres;->isCanonical(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 566
    invoke-static {p0, p2}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 567
    const-string v1, "canonical_genre"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 566
    return-object v0

    .line 564
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a canonical genre: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;
    .registers 5
    .param p0, "inputId"    # Ljava/lang/String;
    .param p1, "browsableOnly"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 537
    sget-object v0, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 538
    .local v0, "builder":Landroid/net/Uri$Builder;
    if-eqz p0, :cond_d

    .line 539
    const-string v1, "input"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 541
    :cond_d
    const-string v1, "browsable_only"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 541
    return-object v1
.end method

.method public static whitelist buildInputId(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Landroid/content/ComponentName;

    .line 470
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist buildPreviewProgramUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "previewProgramId"    # J

    .line 653
    sget-object v0, Landroid/media/tv/TvContract$PreviewPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist buildPreviewProgramsUriForChannel(J)Landroid/net/Uri;
    .registers 5
    .param p0, "channelId"    # J

    .line 662
    sget-object v0, Landroid/media/tv/TvContract$PreviewPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 663
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 662
    return-object v0
.end method

.method public static whitelist buildPreviewProgramsUriForChannel(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .param p0, "channelUri"    # Landroid/net/Uri;

    .line 672
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 675
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/media/tv/TvContract;->buildPreviewProgramsUriForChannel(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 673
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist buildProgramUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "programId"    # J

    .line 576
    sget-object v0, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist buildProgramsUriForChannel(J)Landroid/net/Uri;
    .registers 5
    .param p0, "channelId"    # J

    .line 585
    sget-object v0, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 586
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 585
    return-object v0
.end method

.method public static whitelist buildProgramsUriForChannel(JJJ)Landroid/net/Uri;
    .registers 10
    .param p0, "channelId"    # J
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J

    .line 615
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(J)Landroid/net/Uri;

    move-result-object v0

    .line 616
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "start_time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 617
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "end_time"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 616
    return-object v1
.end method

.method public static whitelist buildProgramsUriForChannel(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .param p0, "channelUri"    # Landroid/net/Uri;

    .line 595
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 598
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 596
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist buildProgramsUriForChannel(Landroid/net/Uri;JJ)Landroid/net/Uri;
    .registers 12
    .param p0, "channelUri"    # Landroid/net/Uri;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 632
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 635
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    move-wide v3, p1

    move-wide v5, p3

    .end local p1    # "startTime":J
    .end local p3    # "endTime":J
    .local v3, "startTime":J
    .local v5, "endTime":J
    invoke-static/range {v1 .. v6}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(JJJ)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 633
    .end local v3    # "startTime":J
    .end local v5    # "endTime":J
    .restart local p1    # "startTime":J
    .restart local p3    # "endTime":J
    :cond_11
    move-wide v3, p1

    move-wide v5, p3

    .end local p1    # "startTime":J
    .end local p3    # "endTime":J
    .restart local v3    # "startTime":J
    .restart local v5    # "endTime":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not a channel: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static whitelist buildRecordedProgramUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "recordedProgramId"    # J

    .line 644
    sget-object v0, Landroid/media/tv/TvContract$RecordedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist buildWatchNextProgramUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "watchNextProgramId"    # J

    .line 684
    sget-object v0, Landroid/media/tv/TvContract$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o buildWatchedProgramUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "watchedProgramId"    # J

    .line 694
    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isChannelUri(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 711
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static whitelist isChannelUriForPassthroughInput(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 725
    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "passthrough"

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static whitelist isChannelUriForTunerInput(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 718
    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "channel"

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static whitelist isProgramUri(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 732
    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "program"

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static whitelist isRecordedProgramUri(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 739
    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "recorded_program"

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static greylist-max-o isTvUri(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 698
    if-eqz p0, :cond_1c

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 699
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.tv"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 698
    :goto_1d
    return v0
.end method

.method private static greylist-max-o isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "pathSegment"    # Ljava/lang/String;

    .line 703
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 704
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_17

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v3, 0x1

    :cond_17
    return v3
.end method

.method public static whitelist requestChannelBrowsable(Landroid/content/Context;J)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channelId"    # J

    .line 754
    const-string v0, "tv_input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    .line 756
    .local v0, "manager":Landroid/media/tv/TvInputManager;
    if-eqz v0, :cond_11

    .line 757
    invoke-static {p1, p2}, Landroid/media/tv/TvContract;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager;->requestChannelBrowsable(Landroid/net/Uri;)V

    .line 759
    :cond_11
    return-void
.end method
