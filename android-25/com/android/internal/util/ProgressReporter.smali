.class public Lcom/android/internal/util/ProgressReporter;
.super Ljava/lang/Object;
.source "ProgressReporter.java"


# static fields
.field private static final STATE_FINISHED:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_STARTED:I = 0x1


# instance fields
.field private mExtras:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mId:I

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/IProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mSegmentRange:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 60
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@b
    .line 63
    iput v1, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    #@d
    .line 65
    iput v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    #@f
    .line 67
    new-instance v0, Landroid/os/Bundle;

    #@11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    #@16
    .line 74
    const/16 v0, 0x64

    #@18
    filled-new-array {v1, v0}, [I

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    #@1e
    .line 81
    iput p1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    #@20
    .line 80
    return-void
.end method

.method private notifyFinished(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/os/IProgressListener;

    #@12
    invoke-interface {v2, p1, p2}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 229
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 235
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@1a
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1d
    .line 228
    return-void

    #@1e
    .line 232
    :catch_0
    move-exception v1

    #@1f
    .local v1, "ignored":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private notifyProgress(IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/os/IProgressListener;

    #@12
    invoke-interface {v2, p1, p2, p3}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 219
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 225
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@1a
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1d
    .line 218
    return-void

    #@1e
    .line 222
    :catch_0
    move-exception v1

    #@1f
    .local v1, "ignored":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private notifyStarted(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/os/IProgressListener;

    #@12
    invoke-interface {v2, p1, p2}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 209
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 215
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@1a
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1d
    .line 208
    return-void

    #@1e
    .line 212
    :catch_0
    move-exception v1

    #@1f
    .local v1, "ignored":Landroid/os/RemoteException;
    goto :goto_1
.end method


# virtual methods
.method public addListener(Landroid/os/IProgressListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/os/IProgressListener;

    #@0
    .prologue
    .line 89
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 90
    :cond_0
    monitor-enter p0

    #@4
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@6
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@9
    .line 92
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    packed-switch v1, :pswitch_data_0

    #@e
    :goto_0
    :pswitch_0
    monitor-exit p0

    #@f
    .line 88
    return-void

    #@10
    .line 98
    :pswitch_1
    :try_start_1
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    #@12
    const/4 v2, 0x0

    #@13
    invoke-interface {p1, v1, v2}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V

    #@16
    .line 99
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    #@18
    iget v2, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    #@1a
    iget-object v3, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    #@1c
    invoke-interface {p1, v1, v2, v3}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 100
    :catch_0
    move-exception v0

    #@21
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    #@22
    .line 105
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :pswitch_2
    :try_start_2
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    #@24
    const/4 v2, 0x0

    #@25
    invoke-interface {p1, v1, v2}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 106
    :catch_1
    move-exception v0

    #@2a
    .restart local v0    # "ignored":Landroid/os/RemoteException;
    goto :goto_0

    #@2b
    .line 90
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit p0

    #@2d
    throw v1

    #@2e
    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public endSegment([I)V
    .locals 3
    .param p1, "lastRange"    # [I

    #@0
    .prologue
    .line 172
    monitor-enter p0

    #@1
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    #@3
    const/4 v1, 0x0

    #@4
    aget v0, v0, v1

    #@6
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    #@8
    const/4 v2, 0x1

    #@9
    aget v1, v1, v2

    #@b
    add-int/2addr v0, v1

    #@c
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    #@e
    .line 174
    iput-object p1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 171
    return-void

    #@12
    .line 172
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public finish()V
    .locals 2

    #@0
    .prologue
    .line 201
    monitor-enter p0

    #@1
    .line 202
    const/4 v0, 0x2

    #@2
    :try_start_0
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    #@4
    .line 203
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyFinished(ILandroid/os/Bundle;)V

    #@a
    .line 204
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 200
    return-void

    #@11
    .line 201
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method getProgress()I
    .locals 1

    #@0
    .prologue
    .line 179
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    #@2
    return v0
.end method

.method getSegmentRange()[I
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    #@2
    return-object v0
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    #@0
    .prologue
    .line 119
    const/16 v0, 0x64

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    #@6
    .line 118
    return-void
.end method

.method public setProgress(II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "m"    # I

    #@0
    .prologue
    .line 135
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    #@4
    .line 134
    return-void
.end method

.method public setProgress(IILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 142
    monitor-enter p0

    #@2
    .line 143
    :try_start_0
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Must be started to change progress"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 142
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0

    #@12
    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    #@14
    const/4 v1, 0x0

    #@15
    aget v0, v0, v1

    #@17
    .line 147
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    #@19
    const/4 v2, 0x1

    #@1a
    aget v1, v1, v2

    #@1c
    mul-int/2addr v1, p1

    #@1d
    div-int/2addr v1, p2

    #@1e
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    #@20
    const/4 v3, 0x1

    #@21
    aget v2, v2, v3

    #@23
    const/4 v3, 0x0

    #@24
    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    #@27
    move-result v1

    #@28
    .line 146
    add-int/2addr v0, v1

    #@29
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    #@2b
    .line 148
    if-eqz p3, :cond_1

    #@2d
    .line 149
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    #@2f
    const-string/jumbo v1, "android.intent.extra.TITLE"

    #@32
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@35
    .line 151
    :cond_1
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    #@37
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    #@39
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    #@3b
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    monitor-exit p0

    #@3f
    .line 141
    return-void
.end method

.method public setProgress(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 128
    const/16 v0, 0x64

    #@2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    #@5
    .line 127
    return-void
.end method

.method public start()V
    .locals 3

    #@0
    .prologue
    .line 190
    monitor-enter p0

    #@1
    .line 191
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    #@4
    .line 192
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyStarted(ILandroid/os/Bundle;)V

    #@a
    .line 193
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    #@c
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    #@e
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    #@10
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 189
    return-void

    #@15
    .line 190
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public startSegment(I)[I
    .locals 4
    .param p1, "size"    # I

    #@0
    .prologue
    .line 161
    monitor-enter p0

    #@1
    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    #@3
    .line 163
    .local v0, "lastRange":[I
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [I

    #@6
    iget v2, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    #@8
    const/4 v3, 0x0

    #@9
    aput v2, v1, v3

    #@b
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    #@d
    const/4 v3, 0x1

    #@e
    aget v2, v2, v3

    #@10
    mul-int/2addr v2, p1

    #@11
    div-int/lit8 v2, v2, 0x64

    #@13
    const/4 v3, 0x1

    #@14
    aput v2, v1, v3

    #@16
    iput-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 164
    return-object v0

    #@1a
    .line 161
    .end local v0    # "lastRange":[I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method
