.class public final Landroid/provider/MediaStore;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$MediaColumns;,
        Landroid/provider/MediaStore$Files;,
        Landroid/provider/MediaStore$InternalThumbnails;,
        Landroid/provider/MediaStore$Images;,
        Landroid/provider/MediaStore$Audio;,
        Landroid/provider/MediaStore$Video;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field public static final ACTION_MTP_SESSION_END:Ljava/lang/String; = "android.provider.action.MTP_SESSION_END"

.field public static final ACTION_VIDEO_CAPTURE:Ljava/lang/String; = "android.media.action.VIDEO_CAPTURE"

.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field public static final EXTRA_DURATION_LIMIT:Ljava/lang/String; = "android.intent.extra.durationLimit"

.field public static final EXTRA_FINISH_ON_COMPLETION:Ljava/lang/String; = "android.intent.extra.finishOnCompletion"

.field public static final EXTRA_FULL_SCREEN:Ljava/lang/String; = "android.intent.extra.fullScreen"

.field public static final EXTRA_MEDIA_ALBUM:Ljava/lang/String; = "android.intent.extra.album"

.field public static final EXTRA_MEDIA_ARTIST:Ljava/lang/String; = "android.intent.extra.artist"

.field public static final EXTRA_MEDIA_FOCUS:Ljava/lang/String; = "android.intent.extra.focus"

.field public static final EXTRA_MEDIA_GENRE:Ljava/lang/String; = "android.intent.extra.genre"

.field public static final EXTRA_MEDIA_PLAYLIST:Ljava/lang/String; = "android.intent.extra.playlist"

.field public static final EXTRA_MEDIA_RADIO_CHANNEL:Ljava/lang/String; = "android.intent.extra.radio_channel"

.field public static final EXTRA_MEDIA_TITLE:Ljava/lang/String; = "android.intent.extra.title"

.field public static final EXTRA_OUTPUT:Ljava/lang/String; = "output"

.field public static final EXTRA_SCREEN_ORIENTATION:Ljava/lang/String; = "android.intent.extra.screenOrientation"

.field public static final EXTRA_SHOW_ACTION_ICONS:Ljava/lang/String; = "android.intent.extra.showActionIcons"

.field public static final EXTRA_SIZE_LIMIT:Ljava/lang/String; = "android.intent.extra.sizeLimit"

.field public static final EXTRA_VIDEO_QUALITY:Ljava/lang/String; = "android.intent.extra.videoQuality"

.field public static final INTENT_ACTION_MEDIA_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.MEDIA_PLAY_FROM_SEARCH"

.field public static final INTENT_ACTION_MEDIA_SEARCH:Ljava/lang/String; = "android.intent.action.MEDIA_SEARCH"

.field public static final INTENT_ACTION_MUSIC_PLAYER:Ljava/lang/String; = "android.intent.action.MUSIC_PLAYER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA"

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final INTENT_ACTION_TEXT_OPEN_FROM_SEARCH:Ljava/lang/String; = "android.media.action.TEXT_OPEN_FROM_SEARCH"

.field public static final INTENT_ACTION_VIDEO_CAMERA:Ljava/lang/String; = "android.media.action.VIDEO_CAMERA"

.field public static final INTENT_ACTION_VIDEO_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.VIDEO_PLAY_FROM_SEARCH"

.field public static final MEDIA_IGNORE_FILENAME:Ljava/lang/String; = ".nomedia"

.field public static final MEDIA_SCANNER_VOLUME:Ljava/lang/String; = "volume"

.field public static final META_DATA_STILL_IMAGE_CAMERA_PREWARM_SERVICE:Ljava/lang/String; = "android.media.still_image_camera_preview_service"

.field public static final PARAM_DELETE_DATA:Ljava/lang/String; = "deletedata"

.field private static final TAG:Ljava/lang/String; = "MediaStore"

.field public static final UNHIDE_CALL:Ljava/lang/String; = "unhide"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getMediaScannerUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 2237
    const-string/jumbo v0, "content://media/none/media_scanner"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2262
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    .line 2263
    const-string/jumbo v1, "content://media/none/version"

    #@8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v1

    #@c
    move-object v3, v2

    #@d
    move-object v4, v2

    #@e
    move-object v5, v2

    #@f
    .line 2262
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@12
    move-result-object v6

    #@13
    .line 2265
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@15
    .line 2267
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 2268
    const/4 v0, 0x0

    #@1c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v0

    #@20
    .line 2271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@23
    .line 2268
    return-object v0

    #@24
    .line 2271
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@27
    .line 2274
    :cond_1
    return-object v2

    #@28
    .line 2270
    :catchall_0
    move-exception v0

    #@29
    .line 2271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@2c
    .line 2270
    throw v0
.end method
