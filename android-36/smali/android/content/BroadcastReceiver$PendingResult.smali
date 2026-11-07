.class public Landroid/content/BroadcastReceiver$PendingResult;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingResult"
.end annotation


# static fields
.field public static final greylist-max-o TYPE_COMPONENT:I = 0x0

.field public static final greylist-max-o TYPE_REGISTERED:I = 0x1

.field public static final greylist-max-o TYPE_UNREGISTERED:I = 0x2


# instance fields
.field greylist mAbortBroadcast:Z

.field final blacklist mAssumeDeliveredHint:Z

.field greylist mFinished:Z

.field final greylist-max-p mFlags:I

.field final greylist mInitialStickyHint:Z

.field final greylist mOrderedHint:Z

.field blacklist mReceiverClassName:Ljava/lang/String;

.field greylist-max-p mResultCode:I

.field greylist-max-p mResultData:Ljava/lang/String;

.field greylist mResultExtras:Landroid/os/Bundle;

.field final greylist mSendingUser:I

.field final blacklist mSentFromPackage:Ljava/lang/String;

.field final blacklist mSentFromUid:I

.field final greylist-max-p mToken:Landroid/os/IBinder;

.field final greylist-max-p mType:I


# direct methods
.method public constructor greylist-max-p <init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V
    .registers 23
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Ljava/lang/String;
    .param p3, "resultExtras"    # Landroid/os/Bundle;
    .param p4, "type"    # I
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "userId"    # I
    .param p9, "flags"    # I

    .line 120
    nop

    .line 121
    invoke-static/range {p4 .. p5}, Landroid/content/BroadcastReceiver$PendingResult;->guessAssumeDelivered(IZ)Z

    move-result v7

    .line 120
    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZZLandroid/os/IBinder;IIILjava/lang/String;)V

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/os/Bundle;IZZZLandroid/os/IBinder;IIILjava/lang/String;)V
    .registers 13
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Ljava/lang/String;
    .param p3, "resultExtras"    # Landroid/os/Bundle;
    .param p4, "type"    # I
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "assumeDelivered"    # Z
    .param p8, "token"    # Landroid/os/IBinder;
    .param p9, "userId"    # I
    .param p10, "flags"    # I
    .param p11, "sentFromUid"    # I
    .param p12, "sentFromPackage"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 130
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 132
    iput p4, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    .line 133
    iput-boolean p5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    .line 134
    iput-boolean p6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    .line 135
    iput-boolean p7, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAssumeDeliveredHint:Z

    .line 136
    iput-object p8, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    .line 137
    iput p9, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    .line 138
    iput p10, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    .line 139
    iput p11, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSentFromUid:I

    .line 140
    iput-object p12, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSentFromPackage:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static blacklist guessAssumeDelivered(IZ)Z
    .registers 4
    .param p0, "type"    # I
    .param p1, "ordered"    # Z

    .line 147
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 148
    return v0

    .line 149
    :cond_4
    if-eqz p1, :cond_a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_a

    .line 150
    return v0

    .line 152
    :cond_a
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final whitelist abortBroadcast()V
    .registers 2

    .line 242
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 244
    return-void
.end method

.method greylist-max-o checkSynchronousHint()V
    .registers 4

    .line 356
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 359
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    return-void

    .line 357
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method public final whitelist clearAbortBroadcast()V
    .registers 2

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 253
    return-void
.end method

.method public final whitelist finish()V
    .registers 5

    .line 260
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PendingResult#finish#ClassName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mReceiverClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 265
    :cond_21
    invoke-static {}, Landroid/content/BroadcastReceiver;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 266
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/os/DebugStore;->recordFinish(I)V

    .line 269
    :cond_2e
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    if-nez v0, :cond_4a

    .line 270
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 271
    .local v0, "mgr":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/app/QueuedWork;->hasPendingWork()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 282
    new-instance v1, Landroid/content/BroadcastReceiver$PendingResult$1;

    invoke-direct {v1, p0, v0}, Landroid/content/BroadcastReceiver$PendingResult$1;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/app/IActivityManager;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    goto :goto_49

    .line 292
    :cond_46
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    .line 294
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    :goto_49
    goto :goto_51

    .line 297
    :cond_4a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 298
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    .line 300
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    :goto_51
    return-void
.end method

.method public final whitelist getAbortBroadcast()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    return v0
.end method

.method public final whitelist getResultCode()I
    .registers 2

    .line 171
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    return v0
.end method

.method public final whitelist getResultData()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getResultExtras(Z)Landroid/os/Bundle;
    .registers 4
    .param p1, "makeMap"    # Z

    .line 209
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 210
    .local v0, "e":Landroid/os/Bundle;
    if-nez p1, :cond_5

    return-object v0

    .line 211
    :cond_5
    if-nez v0, :cond_f

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 212
    :cond_f
    return-object v0
.end method

.method public greylist-max-o getSendingUserId()I
    .registers 2

    .line 339
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    return v0
.end method

.method public blacklist getSentFromPackage()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSentFromPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSentFromUid()I
    .registers 2

    .line 344
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSentFromUid:I

    return v0
.end method

.method public greylist-max-o sendFinished(Landroid/app/IActivityManager;)V
    .registers 18
    .param p1, "am"    # Landroid/app/IActivityManager;

    .line 311
    move-object/from16 v1, p0

    monitor-enter p0

    .line 312
    :try_start_3
    iget-boolean v0, v1, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z

    if-nez v0, :cond_3f

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_47

    .line 318
    :try_start_a
    iget-object v0, v1, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    .line 319
    iget-object v0, v1, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 324
    :cond_14
    iget-boolean v0, v1, Landroid/content/BroadcastReceiver$PendingResult;->mAssumeDeliveredHint:Z

    if-nez v0, :cond_3b

    .line 325
    iget-boolean v0, v1, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-eqz v0, :cond_2e

    .line 326
    iget-object v3, v1, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    iget v4, v1, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    iget-object v5, v1, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    iget-boolean v7, v1, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    iget v8, v1, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    goto :goto_3b

    .line 329
    :cond_2e
    iget-object v10, v1, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    iget v15, v1, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v15}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3b} :catch_3c
    .catchall {:try_start_a .. :try_end_3b} :catchall_47

    .line 333
    :cond_3b
    :goto_3b
    goto :goto_3d

    .line 332
    :catch_3c
    move-exception v0

    .line 334
    :goto_3d
    :try_start_3d
    monitor-exit p0

    .line 335
    return-void

    .line 313
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Broadcast already finished"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/BroadcastReceiver$PendingResult;
    .end local p1    # "am":Landroid/app/IActivityManager;
    throw v0

    .line 334
    .restart local p0    # "this":Landroid/content/BroadcastReceiver$PendingResult;
    .restart local p1    # "am":Landroid/app/IActivityManager;
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_47

    throw v0
.end method

.method public greylist-max-o setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 304
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 305
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 307
    :cond_9
    return-void
.end method

.method public final whitelist setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 221
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 222
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 223
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 224
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 225
    return-void
.end method

.method public final whitelist setResultCode(I)V
    .registers 2
    .param p1, "code"    # I

    .line 161
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 162
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 163
    return-void
.end method

.method public final whitelist setResultData(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 181
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public final whitelist setResultExtras(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 199
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 200
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 201
    return-void
.end method
