.class Landroid/media/AudioManager$1;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Landroid/media/AudioManager$VolumeCacheQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1252
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/media/AudioManager$VolumeCacheQuery;)Ljava/lang/Integer;
    .registers 6
    .param p1, "query"    # Landroid/media/AudioManager$VolumeCacheQuery;

    .line 1255
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1257
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetqueryCommand(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result v1

    packed-switch v1, :pswitch_data_54

    .line 1262
    const-string v1, "AudioManager"

    goto :goto_35

    .line 1260
    :pswitch_e
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetstream(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4c

    .line 1259
    :pswitch_1b
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetstream(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4c

    .line 1258
    :pswitch_28
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetstream(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4c

    .line 1262
    :goto_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid volume cache query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4b} :catch_4d

    .line 1263
    const/4 v1, 0x0

    .line 1257
    :goto_4c
    return-object v1

    .line 1266
    :catch_4d
    move-exception v1

    .line 1267
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_28
        :pswitch_1b
        :pswitch_e
    .end packed-switch
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1252
    check-cast p1, Landroid/media/AudioManager$VolumeCacheQuery;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager$1;->apply(Landroid/media/AudioManager$VolumeCacheQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
