.class public abstract Landroid/media/tv/interactive/TvInteractiveAppService;
.super Landroid/app/Service;
.source "TvInteractiveAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;,
        Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;,
        Landroid/media/tv/interactive/TvInteractiveAppService$Session;,
        Landroid/media/tv/interactive/TvInteractiveAppService$TimeShiftCommandType;,
        Landroid/media/tv/interactive/TvInteractiveAppService$PlaybackCommandStopMode;,
        Landroid/media/tv/interactive/TvInteractiveAppService$PlaybackCommandType;
    }
.end annotation


# static fields
.field public static final whitelist COMMAND_PARAMETER_KEY_CHANGE_CHANNEL_QUIETLY:Ljava/lang/String; = "command_change_channel_quietly"

.field public static final whitelist COMMAND_PARAMETER_KEY_CHANNEL_URI:Ljava/lang/String; = "command_channel_uri"

.field public static final whitelist COMMAND_PARAMETER_KEY_INPUT_ID:Ljava/lang/String; = "command_input_id"

.field public static final whitelist COMMAND_PARAMETER_KEY_PLAYBACK_PARAMS:Ljava/lang/String; = "command_playback_params"

.field public static final whitelist COMMAND_PARAMETER_KEY_PROGRAM_URI:Ljava/lang/String; = "command_program_uri"

.field public static final whitelist COMMAND_PARAMETER_KEY_STOP_MODE:Ljava/lang/String; = "command_stop_mode"

.field public static final whitelist COMMAND_PARAMETER_KEY_TIME_POSITION:Ljava/lang/String; = "command_time_position"

.field public static final whitelist COMMAND_PARAMETER_KEY_TIME_SHIFT_MODE:Ljava/lang/String; = "command_time_shift_mode"

.field public static final whitelist COMMAND_PARAMETER_KEY_TRACK_ID:Ljava/lang/String; = "command_track_id"

.field public static final whitelist COMMAND_PARAMETER_KEY_TRACK_TYPE:Ljava/lang/String; = "command_track_type"

.field public static final whitelist COMMAND_PARAMETER_KEY_VOLUME:Ljava/lang/String; = "command_volume"

.field public static final whitelist COMMAND_PARAMETER_VALUE_STOP_MODE_BLANK:I = 0x1

.field public static final whitelist COMMAND_PARAMETER_VALUE_STOP_MODE_FREEZE:I = 0x2

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DETACH_MEDIA_VIEW_TIMEOUT_MS:I = 0x1388

.field public static final blacklist PLAYBACK_COMMAND_TYPE_FREEZE:Ljava/lang/String; = "freeze"

.field public static final whitelist PLAYBACK_COMMAND_TYPE_SELECT_TRACK:Ljava/lang/String; = "select_track"

.field public static final whitelist PLAYBACK_COMMAND_TYPE_SET_STREAM_VOLUME:Ljava/lang/String; = "set_stream_volume"

.field public static final whitelist PLAYBACK_COMMAND_TYPE_STOP:Ljava/lang/String; = "stop"

.field public static final whitelist PLAYBACK_COMMAND_TYPE_TUNE:Ljava/lang/String; = "tune"

.field public static final whitelist PLAYBACK_COMMAND_TYPE_TUNE_NEXT:Ljava/lang/String; = "tune_next"

.field public static final whitelist PLAYBACK_COMMAND_TYPE_TUNE_PREV:Ljava/lang/String; = "tune_previous"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.tv.interactive.TvInteractiveAppService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.media.tv.interactive.app"

.field private static final blacklist TAG:Ljava/lang/String; = "TvInteractiveAppService"

.field public static final whitelist TIME_SHIFT_COMMAND_TYPE_PAUSE:Ljava/lang/String; = "pause"

.field public static final whitelist TIME_SHIFT_COMMAND_TYPE_PLAY:Ljava/lang/String; = "play"

.field public static final whitelist TIME_SHIFT_COMMAND_TYPE_RESUME:Ljava/lang/String; = "resume"

.field public static final whitelist TIME_SHIFT_COMMAND_TYPE_SEEK_TO:Ljava/lang/String; = "seek_to"

.field public static final whitelist TIME_SHIFT_COMMAND_TYPE_SET_MODE:Ljava/lang/String; = "set_mode"

.field public static final whitelist TIME_SHIFT_COMMAND_TYPE_SET_PLAYBACK_PARAMS:Ljava/lang/String; = "set_playback_params"


# instance fields
.field private final blacklist mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mServiceHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceHandler(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService;->mServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 306
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$ServiceHandler;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService;Landroid/media/tv/interactive/TvInteractiveAppService-IA;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService;->mServiceHandler:Landroid/os/Handler;

    .line 307
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public final whitelist notifyStateChanged(III)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "error"    # I

    .line 409
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 410
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 411
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 412
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 413
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService;->mServiceHandler:Landroid/os/Handler;

    .line 414
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 415
    return-void
.end method

.method public whitelist onAppLinkCommand(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "command"    # Landroid/os/Bundle;

    .line 379
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 313
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$1;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService;)V

    .line 358
    .local v0, "tvIAppServiceBinder":Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;
    return-object v0
.end method

.method public abstract whitelist onCreateSession(Ljava/lang/String;I)Landroid/media/tv/interactive/TvInteractiveAppService$Session;
.end method

.method public whitelist onRegisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V
    .registers 2
    .param p1, "appLinkInfo"    # Landroid/media/tv/interactive/AppLinkInfo;

    .line 365
    return-void
.end method

.method public whitelist onUnregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V
    .registers 2
    .param p1, "appLinkInfo"    # Landroid/media/tv/interactive/AppLinkInfo;

    .line 371
    return-void
.end method
