.class public abstract Landroid/provider/MediaCognitionService;
.super Landroid/app/Service;
.source "MediaCognitionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaCognitionService$ProcessingType;,
        Landroid/provider/MediaCognitionService$ProcessingCombination;,
        Landroid/provider/MediaCognitionService$ProcessingTypes;
    }
.end annotation


# static fields
.field public static final whitelist BIND_MEDIA_COGNITION_SERVICE:Ljava/lang/String; = "com.android.providers.media.permission.BIND_MEDIA_COGNITION_SERVICE"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.provider.MediaCognitionService"

.field public static final blacklist TAG:Ljava/lang/String; = "MediaCognitionService"


# instance fields
.field private final blacklist mInterface:Landroid/provider/mediacognitionutils/IMediaCognitionService;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 189
    new-instance v0, Landroid/provider/MediaCognitionService$1;

    invoke-direct {v0, p0}, Landroid/provider/MediaCognitionService$1;-><init>(Landroid/provider/MediaCognitionService;)V

    iput-object v0, p0, Landroid/provider/MediaCognitionService;->mInterface:Landroid/provider/mediacognitionutils/IMediaCognitionService;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 133
    const-string v0, "android.provider.MediaCognitionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 134
    const-string v0, "MediaCognitionService"

    const-string v1, "Wrong action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_15
    iget-object v0, p0, Landroid/provider/MediaCognitionService;->mInterface:Landroid/provider/mediacognitionutils/IMediaCognitionService;

    invoke-interface {v0}, Landroid/provider/mediacognitionutils/IMediaCognitionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onGetProcessingVersions(Landroid/provider/MediaCognitionGetVersionsCallback;)V
.end method

.method public abstract whitelist onProcessMedia(Ljava/util/List;Landroid/os/CancellationSignal;Landroid/provider/MediaCognitionProcessingCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/provider/MediaCognitionProcessingRequest;",
            ">;",
            "Landroid/os/CancellationSignal;",
            "Landroid/provider/MediaCognitionProcessingCallback;",
            ")V"
        }
    .end annotation
.end method
