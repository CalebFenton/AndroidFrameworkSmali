.class public Lcom/android/server/audio/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeController"


# instance fields
.field private mController:Landroid/media/IVolumeController;

.field private mLongPressTimeout:I

.field private mNextLongPress:J

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .locals 1
    .param p0, "controller"    # Landroid/media/IVolumeController;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6079
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    invoke-interface {p0}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 6075
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .locals 2
    .param p1, "controller"    # Landroid/media/IVolumeController;

    #@0
    .prologue
    .line 6071
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 6037
    const-string/jumbo v0, "long_press_timeout"

    #@3
    const/16 v1, 0x1f4

    #@5
    const/4 v2, -0x2

    #@6
    .line 6036
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    #@c
    .line 6035
    return-void
.end method

.method public postDismiss()V
    .locals 3

    #@0
    .prologue
    .line 6128
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 6129
    return-void

    #@5
    .line 6131
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@7
    invoke-interface {v1}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 6127
    :goto_0
    return-void

    #@b
    .line 6132
    :catch_0
    move-exception v0

    #@c
    .line 6133
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VolumeController"

    #@f
    const-string/jumbo v2, "Error calling dismiss"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    goto :goto_0
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 6088
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 6089
    return-void

    #@5
    .line 6091
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@7
    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 6087
    :goto_0
    return-void

    #@b
    .line 6092
    :catch_0
    move-exception v0

    #@c
    .line 6093
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VolumeController"

    #@f
    const-string/jumbo v2, "Error calling displaySafeVolumeWarning"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 6108
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 6109
    return-void

    #@5
    .line 6111
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@7
    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 6107
    :goto_0
    return-void

    #@b
    .line 6112
    :catch_0
    move-exception v0

    #@c
    .line 6113
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VolumeController"

    #@f
    const-string/jumbo v2, "Error calling masterMuteChanged"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    goto :goto_0
.end method

.method public postVolumeChanged(II)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 6098
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 6099
    return-void

    #@5
    .line 6101
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@7
    invoke-interface {v1, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 6097
    :goto_0
    return-void

    #@b
    .line 6102
    :catch_0
    move-exception v0

    #@c
    .line 6103
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VolumeController"

    #@f
    const-string/jumbo v2, "Error calling volumeChanged"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    goto :goto_0
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/IVolumeController;

    #@0
    .prologue
    .line 6031
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@2
    .line 6032
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    #@5
    .line 6030
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 6118
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 6119
    return-void

    #@5
    .line 6121
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@7
    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 6117
    :goto_0
    return-void

    #@b
    .line 6122
    :catch_0
    move-exception v0

    #@c
    .line 6123
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VolumeController"

    #@f
    const-string/jumbo v2, "Error calling setLayoutDirection"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 6067
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    #@2
    .line 6066
    return-void
.end method

.method public suppressAdjustment(IIZ)Z
    .locals 8
    .param p1, "resolvedStream"    # I
    .param p2, "flags"    # I
    .param p3, "isMute"    # Z

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 6041
    if-eqz p3, :cond_0

    #@5
    .line 6042
    return v3

    #@6
    .line 6044
    :cond_0
    const/4 v2, 0x0

    #@7
    .line 6045
    .local v2, "suppress":Z
    const/4 v3, 0x2

    #@8
    if-ne p1, v3, :cond_2

    #@a
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    #@c
    if-eqz v3, :cond_2

    #@e
    .line 6046
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@11
    move-result-wide v0

    #@12
    .line 6047
    .local v0, "now":J
    and-int/lit8 v3, p2, 0x1

    #@14
    if-eqz v3, :cond_1

    #@16
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    #@18
    if-eqz v3, :cond_3

    #@1a
    .line 6053
    :cond_1
    iget-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    #@1c
    cmp-long v3, v4, v6

    #@1e
    if-lez v3, :cond_2

    #@20
    .line 6054
    iget-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    #@22
    cmp-long v3, v0, v4

    #@24
    if-lez v3, :cond_5

    #@26
    .line 6056
    iput-wide v6, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    #@28
    .line 6063
    .end local v0    # "now":J
    :cond_2
    :goto_0
    return v2

    #@29
    .line 6049
    .restart local v0    # "now":J
    :cond_3
    iget-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    #@2b
    cmp-long v3, v4, v0

    #@2d
    if-gez v3, :cond_4

    #@2f
    .line 6050
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    #@31
    int-to-long v4, v3

    #@32
    add-long/2addr v4, v0

    #@33
    iput-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    #@35
    .line 6052
    :cond_4
    const/4 v2, 0x1

    #@36
    .line 6047
    goto :goto_0

    #@37
    .line 6059
    :cond_5
    const/4 v2, 0x1

    #@38
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 6084
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "VolumeController("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ",mVisible="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, ")"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method
