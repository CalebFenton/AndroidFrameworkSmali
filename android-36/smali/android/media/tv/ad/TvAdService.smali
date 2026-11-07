.class public abstract Landroid/media/tv/ad/TvAdService;
.super Landroid/app/Service;
.source "TvAdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/TvAdService$ServiceHandler;,
        Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;,
        Landroid/media/tv/ad/TvAdService$Session;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DETACH_MEDIA_VIEW_TIMEOUT_MS:I = 0x1388

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.tv.ad.TvAdService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.media.tv.ad.service"

.field private static final blacklist TAG:Ljava/lang/String; = "TvAdService"


# instance fields
.field private final blacklist mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/tv/ad/ITvAdServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mServiceHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/media/tv/ad/TvAdService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceHandler(Landroid/media/tv/ad/TvAdService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdService;->mServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    new-instance v0, Landroid/media/tv/ad/TvAdService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/ad/TvAdService$ServiceHandler;-><init>(Landroid/media/tv/ad/TvAdService;Landroid/media/tv/ad/TvAdService-IA;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService;->mServiceHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public whitelist onAppLinkCommand(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "command"    # Landroid/os/Bundle;

    .line 141
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 97
    new-instance v0, Landroid/media/tv/ad/TvAdService$1;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdService$1;-><init>(Landroid/media/tv/ad/TvAdService;)V

    .line 132
    .local v0, "tvAdServiceBinder":Landroid/media/tv/ad/ITvAdService$Stub;
    return-object v0
.end method

.method public abstract whitelist onCreateSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/ad/TvAdService$Session;
.end method
