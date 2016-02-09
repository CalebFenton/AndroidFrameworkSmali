.class Lcom/android/server/audio/PlayerRecord;
.super Ljava/lang/Object;
.source "PlayerRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/PlayerRecord$RccPlaybackState;,
        Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;,
        Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field public static sController:Lcom/android/server/audio/MediaFocusControl;

.field private static sLastRccId:I


# instance fields
.field private mCallingPackageName:Ljava/lang/String;

.field private mCallingUid:I

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field public mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

.field public mPlaybackStream:I

.field public mPlaybackType:I

.field public mPlaybackVolume:I

.field public mPlaybackVolumeHandling:I

.field public mPlaybackVolumeMax:I

.field private mRcClient:Landroid/media/IRemoteControlClient;

.field private mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

.field private mRccId:I

.field private final mReceiverComponent:Landroid/content/ComponentName;

.field public mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    sput v0, Lcom/android/server/audio/PlayerRecord;->sLastRccId:I

    #@3
    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 62
    iput v1, p0, Lcom/android/server/audio/PlayerRecord;->mRccId:I

    #@7
    .line 224
    iput-object p1, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    #@9
    .line 225
    iput-object p2, p0, Lcom/android/server/audio/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    #@b
    .line 226
    iput-object p3, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    #@d
    .line 227
    iput v1, p0, Lcom/android/server/audio/PlayerRecord;->mCallingUid:I

    #@f
    .line 228
    iput-object v2, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    #@11
    .line 229
    sget v1, Lcom/android/server/audio/PlayerRecord;->sLastRccId:I

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    sput v1, Lcom/android/server/audio/PlayerRecord;->sLastRccId:I

    #@17
    iput v1, p0, Lcom/android/server/audio/PlayerRecord;->mRccId:I

    #@19
    .line 230
    new-instance v1, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    #@1b
    .line 231
    const/4 v2, 0x1

    #@1c
    .line 232
    const-wide/16 v4, -0x1

    #@1e
    .line 233
    const/high16 v3, 0x3f800000    # 1.0f

    #@20
    .line 230
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;-><init>(IJF)V

    #@23
    iput-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    #@25
    .line 235
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->resetPlaybackInfo()V

    #@28
    .line 236
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    #@2e
    const/4 v2, 0x0

    #@2f
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 222
    :cond_0
    :goto_0
    return-void

    #@33
    .line 239
    :catch_0
    move-exception v0

    #@34
    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    #@36
    iget-object v2, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    #@38
    invoke-virtual {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V

    #@3b
    goto :goto_0
.end method

.method protected static setMediaFocusControl(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "mfc"    # Lcom/android/server/audio/MediaFocusControl;

    #@0
    .prologue
    .line 218
    sput-object p0, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    #@2
    .line 217
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 352
    sget-object v0, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    #@2
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V

    #@7
    .line 351
    return-void
.end method

.method public destroy()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 343
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->unlinkToRcClientDeath()V

    #@4
    .line 344
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 345
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@e
    .line 346
    iput-object v2, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    #@10
    .line 342
    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "registrationInfo"    # Z

    #@0
    .prologue
    .line 195
    if-eqz p2, :cond_0

    #@2
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "  pi: "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 197
    const-string/jumbo v1, " -- pack: "

    #@17
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 197
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    #@1d
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 198
    const-string/jumbo v1, "  -- ercvr: "

    #@24
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 198
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    #@2a
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 199
    const-string/jumbo v1, "  -- client: "

    #@31
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 199
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    #@37
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 200
    const-string/jumbo v1, "  -- uid: "

    #@3e
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 200
    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mCallingUid:I

    #@44
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 201
    const-string/jumbo v1, "  -- type: "

    #@4b
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    .line 201
    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackType:I

    #@51
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 202
    const-string/jumbo v1, "  state: "

    #@58
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    .line 202
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    #@5e
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@69
    .line 194
    :goto_0
    return-void

    #@6a
    .line 205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v1, "  uid: "

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mCallingUid:I

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    .line 206
    const-string/jumbo v1, "  -- id: "

    #@7f
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    .line 206
    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mRccId:I

    #@85
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    .line 207
    const-string/jumbo v1, "  -- type: "

    #@8c
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    .line 207
    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackType:I

    #@92
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    .line 208
    const-string/jumbo v1, "  -- state: "

    #@99
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    .line 208
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    #@9f
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    .line 209
    const-string/jumbo v1, "  -- vol handling: "

    #@a6
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v0

    #@aa
    .line 209
    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeHandling:I

    #@ac
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    .line 210
    const-string/jumbo v1, "  -- vol: "

    #@b3
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v0

    #@b7
    .line 210
    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolume:I

    #@b9
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v0

    #@bd
    .line 211
    const-string/jumbo v1, "  -- volMax: "

    #@c0
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    .line 211
    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeMax:I

    #@c6
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v0

    #@ca
    .line 212
    const-string/jumbo v1, "  -- volObs: "

    #@cd
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v0

    #@d1
    .line 212
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    #@d3
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v0

    #@db
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@de
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->destroy()V

    #@3
    .line 358
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 356
    return-void
.end method

.method protected getMediaButtonIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method protected getMediaButtonReceiver()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method protected getRcc()Landroid/media/IRemoteControlClient;
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    #@2
    return-object v0
.end method

.method protected getRccId()I
    .locals 1

    #@0
    .prologue
    .line 248
    iget v0, p0, Lcom/android/server/audio/PlayerRecord;->mRccId:I

    #@2
    return v0
.end method

.method protected hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 265
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 268
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    #@11
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 270
    :cond_1
    const/4 v0, 0x0

    #@1f
    return v0
.end method

.method protected isPlaybackActive()Z
    .locals 1

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    #@2
    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    #@4
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->isPlaystateActive(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected resetControllerInfoForNoRcc()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 312
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->unlinkToRcClientDeath()V

    #@4
    .line 314
    iput-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    #@6
    .line 315
    iput-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    #@8
    .line 310
    return-void
.end method

.method protected resetControllerInfoForRcc(Landroid/media/IRemoteControlClient;Ljava/lang/String;I)V
    .locals 7
    .param p1, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 284
    iget-object v3, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 286
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->unlinkToRcClientDeath()V

    #@8
    .line 289
    :cond_0
    iput-object p1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    #@a
    .line 290
    iput-object p2, p0, Lcom/android/server/audio/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    #@c
    .line 291
    iput p3, p0, Lcom/android/server/audio/PlayerRecord;->mCallingUid:I

    #@e
    .line 292
    if-nez p1, :cond_1

    #@10
    .line 294
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->resetPlaybackInfo()V

    #@13
    .line 282
    :goto_0
    return-void

    #@14
    .line 296
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    #@16
    invoke-interface {v3}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v0

    #@1a
    .line 298
    .local v0, "b":Landroid/os/IBinder;
    new-instance v2, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    #@1c
    iget-object v3, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    #@1e
    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;-><init>(Lcom/android/server/audio/PlayerRecord;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    #@21
    .line 300
    .local v2, "rcdh":Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;
    const/4 v3, 0x0

    #@22
    :try_start_0
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 306
    :goto_1
    iput-object v2, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    #@27
    goto :goto_0

    #@28
    .line 301
    :catch_0
    move-exception v1

    #@29
    .line 303
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "registerRemoteControlClient() has a dead client "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 304
    iput-object v6, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    #@45
    goto :goto_1
.end method

.method public resetPlaybackInfo()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xf

    #@2
    .line 319
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackType:I

    #@5
    .line 320
    iput v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolume:I

    #@7
    .line 321
    iput v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeMax:I

    #@9
    .line 322
    const/4 v0, 0x1

    #@a
    iput v0, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeHandling:I

    #@c
    .line 323
    const/4 v0, 0x3

    #@d
    iput v0, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackStream:I

    #@f
    .line 324
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    #@11
    invoke-virtual {v0}, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->reset()V

    #@14
    .line 325
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    #@17
    .line 318
    return-void
.end method

.method public unlinkToRcClientDeath()V
    .locals 4

    #@0
    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    #@6
    invoke-static {v1}, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->-get0(Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    #@e
    invoke-static {v1}, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->-get0(Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    #@14
    const/4 v3, 0x0

    #@15
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@18
    .line 333
    const/4 v1, 0x0

    #@19
    iput-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 329
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 334
    :catch_0
    move-exception v0

    #@1d
    .line 336
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "MediaFocusControl"

    #@20
    const-string/jumbo v2, "Error in unlinkToRcClientDeath()"

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method
