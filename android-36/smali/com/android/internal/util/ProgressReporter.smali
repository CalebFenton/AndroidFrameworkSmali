.class public Lcom/android/internal/util/ProgressReporter;
.super Ljava/lang/Object;
.source "ProgressReporter.java"


# static fields
.field private static final blacklist STATE_FINISHED:I = 0x2

.field private static final blacklist STATE_INIT:I = 0x0

.field private static final blacklist STATE_STARTED:I = 0x1


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mId:I

.field private final blacklist mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProgress:I

.field private blacklist mSegmentRange:[I

.field private blacklist mState:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "id"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 65
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    .line 74
    const/16 v1, 0x64

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 82
    iput p1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    .line 83
    return-void
.end method

.method private blacklist notifyFinished(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 231
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 233
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IProgressListener;

    invoke-interface {v1, p1, p2}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 235
    goto :goto_17

    .line 234
    :catch_16
    move-exception v1

    .line 231
    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 237
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 238
    return-void
.end method

.method private blacklist notifyProgress(IILandroid/os/Bundle;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 221
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 223
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IProgressListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 225
    goto :goto_17

    .line 224
    :catch_16
    move-exception v1

    .line 221
    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 227
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 228
    return-void
.end method

.method private blacklist notifyStarted(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 211
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 213
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IProgressListener;

    invoke-interface {v1, p1, p2}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 215
    goto :goto_17

    .line 214
    :catch_16
    move-exception v1

    .line 211
    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 217
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 218
    return-void
.end method


# virtual methods
.method public blacklist addListener(Landroid/os/IProgressListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .line 90
    if-nez p1, :cond_3

    return-void

    .line 91
    :cond_3
    monitor-enter p0

    .line 92
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 93
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2c

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_30

    goto :goto_2a

    .line 106
    :pswitch_10
    :try_start_10
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    invoke-interface {p1, v0, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16
    .catchall {:try_start_10 .. :try_end_15} :catchall_2c

    .line 108
    goto :goto_2a

    .line 107
    :catch_16
    move-exception v0

    goto :goto_2a

    .line 99
    :pswitch_18
    :try_start_18
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    invoke-interface {p1, v0, v1}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V

    .line 100
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_27
    .catchall {:try_start_18 .. :try_end_26} :catchall_2c

    .line 102
    goto :goto_2a

    .line 101
    :catch_27
    move-exception v0

    .line 103
    goto :goto_2a

    .line 96
    :pswitch_29
    nop

    .line 111
    :goto_2a
    :try_start_2a
    monitor-exit p0

    .line 112
    return-void

    .line 111
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_29
        :pswitch_18
        :pswitch_10
    .end packed-switch
.end method

.method public blacklist endSegment([I)V
    .registers 5
    .param p1, "lastRange"    # [I

    .line 173
    monitor-enter p0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 175
    iput-object p1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 176
    monitor-exit p0

    .line 177
    return-void

    .line 176
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public blacklist finish()V
    .registers 3

    .line 203
    monitor-enter p0

    .line 204
    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 205
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyFinished(ILandroid/os/Bundle;)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 207
    monitor-exit p0

    .line 208
    return-void

    .line 207
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public blacklist getProgress()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    return v0
.end method

.method blacklist getSegmentRange()[I
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    return-object v0
.end method

.method public blacklist setProgress(I)V
    .registers 4
    .param p1, "progress"    # I

    .line 120
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public blacklist setProgress(II)V
    .registers 4
    .param p1, "n"    # I
    .param p2, "m"    # I

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method public blacklist setProgress(IILjava/lang/CharSequence;)V
    .registers 9
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;

    .line 143
    monitor-enter p0

    .line 144
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 147
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v3, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    aget v3, v3, v1

    mul-int/2addr v3, p1

    div-int/2addr v3, p2

    iget-object v4, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    aget v1, v4, v1

    .line 148
    invoke-static {v3, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 149
    if-eqz p3, :cond_25

    .line 150
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 152
    :cond_25
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V

    .line 153
    monitor-exit p0

    .line 154
    return-void

    .line 145
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be started to change progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/util/ProgressReporter;
    .end local p1    # "n":I
    .end local p2    # "m":I
    .end local p3    # "title":Ljava/lang/CharSequence;
    throw v0

    .line 153
    .restart local p0    # "this":Lcom/android/internal/util/ProgressReporter;
    .restart local p1    # "n":I
    .restart local p2    # "m":I
    .restart local p3    # "title":Ljava/lang/CharSequence;
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public blacklist setProgress(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "progress"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 129
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public blacklist start()V
    .registers 4

    .line 192
    monitor-enter p0

    .line 193
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 194
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyStarted(ILandroid/os/Bundle;)V

    .line 195
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V

    .line 196
    monitor-exit p0

    .line 197
    return-void

    .line 196
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public blacklist startSegment(I)[I
    .registers 6
    .param p1, "size"    # I

    .line 162
    monitor-enter p0

    .line 163
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 164
    .local v0, "lastRange":[I
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x64

    filled-new-array {v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 165
    monitor-exit p0

    return-object v0

    .line 166
    .end local v0    # "lastRange":[I
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method
