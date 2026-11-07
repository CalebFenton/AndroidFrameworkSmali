.class public abstract Landroid/media/musicrecognition/MusicRecognitionService;
.super Landroid/app/Service;
.source "MusicRecognitionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/MusicRecognitionService$Callback;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_MUSIC_SEARCH_LOOKUP:Ljava/lang/String; = "android.service.musicrecognition.MUSIC_RECOGNITION"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mServiceInterface:Landroid/media/musicrecognition/IMusicRecognitionService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/musicrecognition/MusicRecognitionService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/musicrecognition/MusicRecognitionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-class v0, Landroid/media/musicrecognition/MusicRecognitionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/musicrecognition/MusicRecognitionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    new-instance v0, Landroid/media/musicrecognition/MusicRecognitionService$1;

    invoke-direct {v0, p0}, Landroid/media/musicrecognition/MusicRecognitionService$1;-><init>(Landroid/media/musicrecognition/MusicRecognitionService;)V

    iput-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService;->mServiceInterface:Landroid/media/musicrecognition/IMusicRecognitionService;

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 140
    const-string v0, "android.service.musicrecognition.MUSIC_RECOGNITION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 141
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService;->mServiceInterface:Landroid/media/musicrecognition/IMusicRecognitionService;

    invoke-interface {v0}, Landroid/media/musicrecognition/IMusicRecognitionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 143
    :cond_13
    sget-object v0, Landroid/media/musicrecognition/MusicRecognitionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to bind to wrong intent (should be android.service.musicrecognition.MUSIC_RECOGNITION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 118
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService;->mHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method public abstract whitelist onRecognize(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/media/musicrecognition/MusicRecognitionService$Callback;)V
.end method
