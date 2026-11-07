.class final Landroid/hardware/radio/TunerAdapter;
.super Landroid/hardware/radio/RadioTuner;
.source "TunerAdapter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BroadcastRadio.TunerAdapter"


# instance fields
.field private blacklist mBand:I

.field private final blacklist mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

.field private blacklist mIsClosed:Z

.field private blacklist mLegacyListFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLegacyListProxy:Landroid/hardware/radio/ProgramList;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mTuner:Landroid/hardware/radio/ITuner;


# direct methods
.method public static synthetic blacklist $r8$lambda$5wx9g1IkVJoE19kfOOuYVoPRwLc(Landroid/hardware/radio/TunerAdapter;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/radio/TunerAdapter;->lambda$getDynamicProgramList$1()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/radio/ITuner;Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .registers 5
    .param p1, "tuner"    # Landroid/hardware/radio/ITuner;
    .param p2, "callback"    # Landroid/hardware/radio/TunerCallbackAdapter;
    .param p3, "band"    # I

    .line 55
    invoke-direct {p0}, Landroid/hardware/radio/RadioTuner;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    .line 56
    const-string v0, "Tuner cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ITuner;

    iput-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    .line 57
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    .line 58
    iput p3, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    .line 59
    return-void
.end method

.method private blacklist convertForceAnalogConfigFlag(I)I
    .registers 4
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioImproved()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    .line 427
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->isConfigFlagSupported(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 428
    const/16 p1, 0xa

    .line 430
    :cond_15
    return p1
.end method

.method private synthetic blacklist lambda$getDynamicProgramList$1()V
    .registers 4

    .line 321
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->stopProgramListUpdates()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_7} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_15

    .line 325
    :catch_8
    move-exception v1

    .line 326
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "Couldn\'t stop program list updates"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 322
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v1

    .line 324
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "Tuner may already be closed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :goto_15
    nop

    .line 328
    :goto_16
    return-void
.end method

.method static synthetic blacklist lambda$getDynamicProgramList$2()V
    .registers 2

    .line 337
    const-string v0, "BroadcastRadio.TunerAdapter"

    const-string v1, "Empty closeListener in programListObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method static synthetic blacklist lambda$getProgramList$0()V
    .registers 2

    .line 291
    const-string v0, "BroadcastRadio.TunerAdapter"

    const-string v1, "Empty closeListener in programListObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method


# virtual methods
.method public whitelist cancel()I
    .registers 4

    .line 218
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->cancel()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_7} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    .line 225
    nop

    .line 226
    const/4 v0, 0x0

    return v0

    .line 222
    :catch_a
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/16 v0, -0x20

    return v0

    .line 219
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t cancel"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const/16 v0, -0x26

    return v0
.end method

.method public whitelist cancelAnnouncement()V
    .registers 4

    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->cancelAnnouncement()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 235
    nop

    .line 236
    return-void

    .line 233
    :catch_7
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist close()V
    .registers 4

    .line 63
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    if-eqz v1, :cond_10

    .line 65
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Tuner is already closed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    monitor-exit v0

    return-void

    .line 68
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    .line 69
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_1f

    .line 70
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    .line 73
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_34

    .line 74
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v0}, Landroid/hardware/radio/TunerCallbackAdapter;->close()V

    .line 76
    :try_start_25
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->close()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 79
    goto :goto_33

    .line 77
    :catch_2b
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Exception trying to close tuner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_33
    return-void

    .line 73
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public whitelist getConfiguration([Landroid/hardware/radio/RadioManager$BandConfig;)I
    .registers 5
    .param p1, "config"    # [Landroid/hardware/radio/RadioManager$BandConfig;

    .line 104
    if-eqz p1, :cond_1b

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 108
    :try_start_6
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 109
    return v1

    .line 110
    :catch_10
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const/16 v1, -0x20

    return v1

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument must be an array of length 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDynamicProgramList(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/radio/ProgramList;
    .registers 7
    .param p1, "filter"    # Landroid/hardware/radio/ProgramList$Filter;

    .line 311
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 313
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    .line 314
    iput-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    .line 316
    :cond_f
    iput-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    .line 317
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_44

    .line 318
    new-instance v0, Landroid/hardware/radio/ProgramList;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList;-><init>()V

    .line 319
    .local v0, "list":Landroid/hardware/radio/ProgramList;
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    new-instance v3, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/radio/TunerAdapter;)V

    invoke-virtual {v1, v0, v3}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    .line 331
    :try_start_21
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    :try_end_26
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_21 .. :try_end_26} :catch_3b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_28

    .line 340
    nop

    .line 342
    return-object v0

    .line 335
    :catch_28
    move-exception v1

    .line 336
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    new-instance v4, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    .line 339
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Service died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 332
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_3b
    move-exception v1

    .line 333
    .local v1, "ex":Ljava/lang/UnsupportedOperationException;
    const-string v3, "BroadcastRadio.TunerAdapter"

    const-string v4, "Program list is not supported with this hardware"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-object v2

    .line 317
    .end local v0    # "list":Landroid/hardware/radio/ProgramList;
    .end local v1    # "ex":Ljava/lang/UnsupportedOperationException;
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public whitelist getMetadataImage(I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "id"    # I

    .line 257
    if-eqz p1, :cond_33

    .line 261
    :try_start_2
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_b

    .line 266
    return-object v0

    .line 263
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metadata image with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .end local p1    # "id":I
    throw v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2a} :catch_2a

    .line 267
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .restart local p1    # "id":I
    :catch_2a
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid metadata image id 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMute()Z
    .registers 4

    .line 133
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->isMuted()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 134
    :catch_7
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getParameters(Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 403
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const-string v1, "Keys cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->getParameters(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 404
    :catch_f
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getProgramInformation([Landroid/hardware/radio/RadioManager$ProgramInfo;)I
    .registers 5
    .param p1, "info"    # [Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 240
    const-string v0, "BroadcastRadio.TunerAdapter"

    if-eqz p1, :cond_1d

    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    goto :goto_1d

    .line 245
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->getCurrentProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v1

    .line 246
    .local v1, "current":Landroid/hardware/radio/RadioManager$ProgramInfo;
    if-nez v1, :cond_19

    .line 247
    const-string v2, "Didn\'t get program info yet"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/16 v0, -0x26

    return v0

    .line 250
    :cond_19
    const/4 v0, 0x0

    aput-object v1, p1, v0

    .line 251
    return v0

    .line 241
    .end local v1    # "current":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :cond_1d
    :goto_1d
    const-string v1, "The argument must be an array of length 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v0, -0x16

    return v0
.end method

.method public whitelist getProgramList(Ljava/util/Map;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 284
    .local p1, "vendorFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 286
    :cond_f
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Program list filter has changed, requesting new list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v1, Landroid/hardware/radio/ProgramList;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    .line 288
    iput-object p1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    .line 289
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->clearLastCompleteList()V

    .line 290
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    new-instance v3, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    .line 294
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_56

    .line 296
    :try_start_31
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    new-instance v1, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v1, p1}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3b} :catch_4d

    .line 299
    nop

    .line 301
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v0}, Landroid/hardware/radio/TunerCallbackAdapter;->getLastCompleteList()Ljava/util/List;

    move-result-object v0

    .line 302
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    if-eqz v0, :cond_45

    .line 305
    return-object v0

    .line 303
    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Program list is not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    :catch_4d
    move-exception v0

    .line 298
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 294
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public whitelist hasControl()Z
    .registers 3

    .line 418
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->isClosed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_9

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 419
    :catch_9
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isAnalogForced()Z
    .registers 3

    .line 348
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/hardware/radio/TunerAdapter;->isConfigFlagSet(I)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    .line 349
    :catch_6
    move-exception v0

    .line 350
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isAntennaConnected()Z
    .registers 2

    .line 411
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v0}, Landroid/hardware/radio/TunerCallbackAdapter;->isAntennaConnected()Z

    move-result v0

    return v0
.end method

.method public whitelist isConfigFlagSet(I)Z
    .registers 5
    .param p1, "flag"    # I

    .line 375
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerAdapter;->convertForceAnalogConfigFlag(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->isConfigFlagSet(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 376
    :catch_b
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isConfigFlagSupported(I)Z
    .registers 5
    .param p1, "flag"    # I

    .line 366
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->isConfigFlagSupported(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 367
    :catch_7
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist scan(IZ)I
    .registers 7
    .param p1, "direction"    # I
    .param p2, "skipSubChannel"    # Z

    .line 158
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_9

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    invoke-interface {v1, v3, p2}, Landroid/hardware/radio/ITuner;->seek(ZZ)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_d} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f

    .line 166
    nop

    .line 167
    return v2

    .line 163
    :catch_f
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    const/16 v0, -0x20

    return v0

    .line 160
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t scan"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/16 v0, -0x26

    return v0
.end method

.method public whitelist seek(IZ)I
    .registers 7
    .param p1, "direction"    # I
    .param p2, "skipSubChannel"    # Z

    .line 173
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_9

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    invoke-interface {v1, v3, p2}, Landroid/hardware/radio/ITuner;->seek(ZZ)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_d} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f

    .line 181
    nop

    .line 182
    return v2

    .line 178
    :catch_f
    move-exception v1

    .line 179
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    const/16 v0, -0x20

    return v0

    .line 175
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t seek"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const/16 v0, -0x26

    return v0
.end method

.method public whitelist setAnalogForced(Z)V
    .registers 4
    .param p1, "isForced"    # Z

    .line 357
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/hardware/radio/TunerAdapter;->setConfigFlag(IZ)V
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_4} :catch_6

    .line 360
    nop

    .line 361
    return-void

    .line 358
    :catch_6
    move-exception v0

    .line 359
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setConfigFlag(IZ)V
    .registers 6
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 384
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerAdapter;->convertForceAnalogConfigFlag(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/hardware/radio/ITuner;->setConfigFlag(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 387
    nop

    .line 388
    return-void

    .line 385
    :catch_b
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I
    .registers 6
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .line 84
    const/16 v0, -0x16

    if-nez p1, :cond_5

    .line 85
    return v0

    .line 88
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 89
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_d} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_19

    .line 90
    :try_start_d
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getType()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    .line 91
    monitor-exit v1

    .line 92
    const/4 v0, 0x0

    return v0

    .line 91
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    .end local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .end local p1    # "config":Landroid/hardware/radio/RadioManager$BandConfig;
    :try_start_18
    throw v2
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_19} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_19} :catch_19

    .line 96
    .restart local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .restart local p1    # "config":Landroid/hardware/radio/RadioManager$BandConfig;
    :catch_19
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/16 v1, -0x20

    return v1

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_24
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "BroadcastRadio.TunerAdapter"

    const-string v3, "Can\'t set configuration"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    return v0
.end method

.method public whitelist setMute(Z)I
    .registers 5
    .param p1, "mute"    # Z

    .line 119
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->setMuted(Z)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_7} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    .line 126
    nop

    .line 127
    const/4 v0, 0x0

    return v0

    .line 123
    :catch_a
    move-exception v1

    .line 124
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/16 v0, -0x20

    return v0

    .line 120
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t set muted"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist setParameters(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 393
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const-string v1, "Parameters cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 395
    :catch_f
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist startBackgroundScan()Z
    .registers 4

    .line 275
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->startBackgroundScan()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 276
    :catch_7
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist step(IZ)I
    .registers 7
    .param p1, "direction"    # I
    .param p2, "skipSubChannel"    # Z

    .line 143
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_9

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    invoke-interface {v1, v3, p2}, Landroid/hardware/radio/ITuner;->step(ZZ)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_d} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f

    .line 151
    nop

    .line 152
    return v2

    .line 148
    :catch_f
    move-exception v1

    .line 149
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/16 v0, -0x20

    return v0

    .line 145
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t step"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const/16 v0, -0x26

    return v0
.end method

.method public whitelist tune(II)I
    .registers 6
    .param p1, "channel"    # I
    .param p2, "subChannel"    # I

    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_15

    .line 190
    :try_start_3
    iget v1, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    .line 191
    .local v1, "band":I
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 192
    :try_start_6
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-static {v1, p1, p2}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/hardware/radio/ITuner;->tune(Landroid/hardware/radio/ProgramSelector;)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_f} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_f} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_15

    .line 202
    .end local v1    # "band":I
    nop

    .line 203
    const/4 v0, 0x0

    return v0

    .line 191
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    .end local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .end local p1    # "channel":I
    .end local p2    # "subChannel":I
    :try_start_14
    throw v1
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_15} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_15} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_15} :catch_15

    .line 199
    .restart local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .restart local p1    # "channel":I
    .restart local p2    # "subChannel":I
    :catch_15
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const/16 v1, -0x20

    return v1

    .line 196
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Can\'t tune"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const/16 v1, -0x16

    return v1

    .line 193
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2b
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Can\'t tune"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/16 v1, -0x26

    return v1
.end method

.method public whitelist tune(Landroid/hardware/radio/ProgramSelector;)V
    .registers 5
    .param p1, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 209
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->tune(Landroid/hardware/radio/ProgramSelector;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 212
    nop

    .line 213
    return-void

    .line 210
    :catch_7
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
