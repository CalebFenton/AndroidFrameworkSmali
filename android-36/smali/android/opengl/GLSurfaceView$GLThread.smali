.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private greylist mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private greylist-max-o mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExited:Z

.field private greylist-max-o mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mFinishedCreatingEglSurface:Z

.field private greylist-max-o mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHasSurface:Z

.field private greylist-max-o mHaveEglContext:Z

.field private greylist-max-o mHaveEglSurface:Z

.field private greylist-max-o mHeight:I

.field private greylist-max-o mPaused:Z

.field private greylist-max-o mRenderComplete:Z

.field private greylist-max-o mRenderMode:I

.field private greylist-max-o mRequestPaused:Z

.field private greylist-max-o mRequestRender:Z

.field private greylist-max-o mShouldExit:Z

.field private greylist-max-o mShouldReleaseEglContext:Z

.field private greylist-max-o mSizeChanged:Z

.field private greylist-max-o mSurfaceIsBad:Z

.field private greylist-max-o mWaitingForSurface:Z

.field private greylist-max-o mWantRenderNotification:Z

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmExited(Landroid/opengl/GLSurfaceView$GLThread;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .line 1255
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1852
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1853
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1256
    const/4 v1, 0x0

    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1257
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1258
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1259
    iput v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1260
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1261
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1262
    return-void
.end method

.method private greylist-max-o guardedRun()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1303
    move-object/from16 v1, p0

    new-instance v0, Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    .line 1304
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1305
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1306
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1309
    const/4 v2, 0x0

    .line 1310
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1311
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1312
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1313
    .local v5, "createGlInterface":Z
    const/4 v6, 0x0

    .line 1314
    .local v6, "lostEglContext":Z
    const/4 v7, 0x0

    .line 1315
    .local v7, "sizeChanged":Z
    const/4 v8, 0x0

    .line 1316
    .local v8, "wantRenderNotification":Z
    const/4 v9, 0x0

    .line 1317
    .local v9, "doRenderNotification":Z
    const/4 v10, 0x0

    .line 1318
    .local v10, "askedToReleaseEglContext":Z
    const/4 v11, 0x0

    .line 1319
    .local v11, "w":I
    const/4 v12, 0x0

    .line 1320
    .local v12, "h":I
    const/4 v13, 0x0

    .line 1321
    .local v13, "event":Ljava/lang/Runnable;
    const/4 v14, 0x0

    .line 1324
    .local v14, "finishDrawingRunnable":Ljava/lang/Runnable;
    :goto_1f
    :try_start_1f
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2b3

    .line 1326
    :goto_24
    :try_start_24
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_2ac

    if-eqz v0, :cond_3e

    .line 1327
    :try_start_28
    monitor-exit v15
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_39

    .line 1617
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v16

    monitor-enter v16

    .line 1618
    :try_start_2e
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1619
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1620
    monitor-exit v16

    .line 1327
    return-void

    .line 1620
    :catchall_36
    move-exception v0

    monitor-exit v16
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw v0

    .line 1499
    :catchall_39
    move-exception v0

    move-object/from16 v18, v2

    goto/16 :goto_2af

    .line 1330
    :cond_3e
    :try_start_3e
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    move/from16 v17, v0

    if-nez v17, :cond_57

    .line 1331
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_2ac

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v18, "gl":Ljavax/microedition/khronos/opengles/GL10;
    :try_start_4d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1332
    .end local v13    # "event":Ljava/lang/Runnable;
    .local v0, "event":Ljava/lang/Runnable;
    move-object v13, v0

    const/4 v2, 0x0

    goto/16 :goto_154

    .line 1336
    .end local v0    # "event":Ljava/lang/Runnable;
    .end local v18    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v13    # "event":Ljava/lang/Runnable;
    :cond_57
    move-object/from16 v18, v2

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v18    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v0, 0x0

    .line 1337
    .local v0, "pausing":Z
    iget-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v19, v0

    .end local v0    # "pausing":Z
    .local v19, "pausing":Z
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_71

    .line 1338
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1339
    .end local v19    # "pausing":Z
    .restart local v0    # "pausing":Z
    iget-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    iput-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1340
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    move/from16 v19, v0

    .line 1347
    .end local v0    # "pausing":Z
    .restart local v19    # "pausing":Z
    :cond_71
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v0, :cond_7f

    .line 1351
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1352
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1353
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1354
    const/4 v10, 0x1

    .line 1358
    :cond_7f
    if-eqz v6, :cond_89

    .line 1359
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1360
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1361
    const/4 v0, 0x0

    move v6, v0

    .line 1365
    :cond_89
    if-eqz v19, :cond_92

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_92

    .line 1369
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1373
    :cond_92
    if-eqz v19, :cond_ad

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_ad

    .line 1374
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 1375
    .local v0, "view":Landroid/opengl/GLSurfaceView;
    if-nez v0, :cond_a4

    .line 1376
    const/4 v2, 0x0

    goto :goto_a8

    :cond_a4
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmPreserveEGLContextOnPause(Landroid/opengl/GLSurfaceView;)Z

    move-result v2

    .line 1377
    .local v2, "preserveEglContextOnPause":Z
    :goto_a8
    if-nez v2, :cond_ad

    .line 1378
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1386
    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    .end local v2    # "preserveEglContextOnPause":Z
    :cond_ad
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_c9

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_c9

    .line 1390
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_bc

    .line 1391
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1393
    :cond_bc
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1394
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1395
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1399
    :cond_c9
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_db

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_db

    .line 1403
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1404
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1407
    :cond_db
    if-eqz v9, :cond_eb

    .line 1411
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1412
    const/4 v9, 0x0

    .line 1413
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1414
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1417
    :cond_eb
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_f5

    .line 1418
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    move-object v14, v0

    .line 1419
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1423
    :cond_f5
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_292

    .line 1426
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_fd
    .catchall {:try_start_4d .. :try_end_fd} :catchall_2b1

    if-nez v0, :cond_120

    .line 1427
    if-eqz v10, :cond_104

    .line 1428
    const/4 v0, 0x0

    move v10, v0

    .end local v10    # "askedToReleaseEglContext":Z
    .local v0, "askedToReleaseEglContext":Z
    goto :goto_120

    .line 1431
    .end local v0    # "askedToReleaseEglContext":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    :cond_104
    :try_start_104
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_109
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_109} :catch_116
    .catchall {:try_start_104 .. :try_end_109} :catchall_2b1

    .line 1435
    nop

    .line 1436
    const/4 v0, 0x1

    :try_start_10b
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1437
    const/4 v3, 0x1

    .line 1439
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_120

    .line 1432
    :catch_116
    move-exception v0

    .line 1433
    .local v0, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1434
    nop

    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .end local v18    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1443
    .end local v0    # "t":Ljava/lang/RuntimeException;
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    .restart local v6    # "lostEglContext":Z
    .restart local v7    # "sizeChanged":Z
    .restart local v8    # "wantRenderNotification":Z
    .restart local v9    # "doRenderNotification":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    .restart local v11    # "w":I
    .restart local v12    # "h":I
    .restart local v13    # "event":Ljava/lang/Runnable;
    .restart local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .restart local v18    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_120
    :goto_120
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_12e

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_12e

    .line 1444
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1445
    const/4 v4, 0x1

    .line 1446
    const/4 v5, 0x1

    .line 1447
    const/4 v7, 0x1

    .line 1450
    :cond_12e
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_2a0

    .line 1451
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_144

    .line 1452
    const/4 v7, 0x1

    .line 1453
    iget v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move v11, v0

    .line 1454
    iget v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    move v12, v0

    .line 1455
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1463
    const/4 v4, 0x1

    .line 1465
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1467
    :cond_144
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1468
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1469
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z
    :try_end_150
    .catchall {:try_start_10b .. :try_end_150} :catchall_2b1

    if-eqz v0, :cond_154

    .line 1470
    const/4 v0, 0x1

    move v8, v0

    .line 1499
    .end local v19    # "pausing":Z
    :cond_154
    :goto_154
    :try_start_154
    monitor-exit v15
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_28e

    .line 1501
    if-eqz v13, :cond_160

    .line 1502
    :try_start_157
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 1503
    const/4 v13, 0x0

    .line 1504
    move v0, v2

    move-object/from16 v2, v18

    goto/16 :goto_1f

    .line 1507
    :cond_160
    if-eqz v4, :cond_19a

    .line 1511
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 1512
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_16f
    .catchall {:try_start_157 .. :try_end_16f} :catchall_2b3

    .line 1513
    const/4 v0, 0x1

    :try_start_170
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1514
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1515
    monitor-exit v15

    .line 1524
    const/4 v0, 0x0

    move v4, v0

    .end local v4    # "createEglSurface":Z
    .local v0, "createEglSurface":Z
    goto :goto_19a

    .line 1515
    .end local v0    # "createEglSurface":Z
    .restart local v4    # "createEglSurface":Z
    :catchall_17d
    move-exception v0

    monitor-exit v15
    :try_end_17f
    .catchall {:try_start_170 .. :try_end_17f} :catchall_17d

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_17f
    throw v0

    .line 1517
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_180
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_185
    .catchall {:try_start_17f .. :try_end_185} :catchall_2b3

    .line 1518
    const/4 v0, 0x1

    :try_start_186
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1519
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1520
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1521
    monitor-exit v15

    .line 1522
    move v0, v2

    move-object/from16 v2, v18

    goto/16 :goto_1f

    .line 1521
    :catchall_197
    move-exception v0

    monitor-exit v15
    :try_end_199
    .catchall {:try_start_186 .. :try_end_199} :catchall_197

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_199
    throw v0

    .line 1527
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_19a
    :goto_19a
    if-eqz v5, :cond_1a8

    .line 1528
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 1530
    .end local v18    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x0

    move v15, v5

    move-object v5, v0

    goto :goto_1ab

    .line 1527
    .end local v0    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v18    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_1a8
    move v15, v5

    move-object/from16 v5, v18

    .line 1533
    .end local v18    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v5, "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v15, "createGlInterface":Z
    :goto_1ab
    move/from16 v19, v3

    .end local v3    # "createEglContext":Z
    .local v19, "createEglContext":Z
    const-wide/16 v2, 0x8

    if-eqz v19, :cond_1e3

    .line 1537
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_1b9
    .catchall {:try_start_199 .. :try_end_1b9} :catchall_2b3

    move-object/from16 v18, v0

    .line 1538
    .local v18, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_1de

    .line 1540
    :try_start_1bd
    const-string/jumbo v0, "onSurfaceCreated"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1541
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0
    :try_end_1c7
    .catchall {:try_start_1bd .. :try_end_1c7} :catchall_1d6

    move-wide/from16 v20, v2

    :try_start_1c9
    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v2, v2, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v5, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_1d0
    .catchall {:try_start_1c9 .. :try_end_1d0} :catchall_1d4

    .line 1543
    :try_start_1d0
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1544
    goto :goto_1e0

    .line 1543
    :catchall_1d4
    move-exception v0

    goto :goto_1d9

    :catchall_1d6
    move-exception v0

    move-wide/from16 v20, v2

    :goto_1d9
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1544
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1538
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_1de
    move-wide/from16 v20, v2

    .line 1546
    :goto_1e0
    const/4 v0, 0x0

    move v3, v0

    .end local v19    # "createEglContext":Z
    .local v0, "createEglContext":Z
    goto :goto_1e7

    .line 1533
    .end local v0    # "createEglContext":Z
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v19    # "createEglContext":Z
    :cond_1e3
    move-wide/from16 v20, v2

    move/from16 v3, v19

    .line 1549
    .end local v19    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    :goto_1e7
    if-eqz v7, :cond_220

    .line 1553
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_1f1
    .catchall {:try_start_1d0 .. :try_end_1f1} :catchall_2b3

    move-object v2, v0

    .line 1554
    .local v2, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v2, :cond_219

    .line 1556
    :try_start_1f4
    const-string/jumbo v0, "onSurfaceChanged"
    :try_end_1f7
    .catchall {:try_start_1f4 .. :try_end_1f7} :catchall_20d

    move-object/from16 v19, v2

    move/from16 v18, v3

    move-wide/from16 v2, v20

    .end local v2    # "view":Landroid/opengl/GLSurfaceView;
    .end local v3    # "createEglContext":Z
    .local v18, "createEglContext":Z
    .local v19, "view":Landroid/opengl/GLSurfaceView;
    :try_start_1fd
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1557
    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v5, v11, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_207
    .catchall {:try_start_1fd .. :try_end_207} :catchall_20b

    .line 1559
    :try_start_207
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1560
    goto :goto_21d

    .line 1559
    :catchall_20b
    move-exception v0

    goto :goto_212

    .end local v18    # "createEglContext":Z
    .end local v19    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v2    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v3    # "createEglContext":Z
    :catchall_20d
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v18, v3

    .end local v2    # "view":Landroid/opengl/GLSurfaceView;
    .end local v3    # "createEglContext":Z
    .restart local v18    # "createEglContext":Z
    .restart local v19    # "view":Landroid/opengl/GLSurfaceView;
    :goto_212
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1560
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1554
    .end local v18    # "createEglContext":Z
    .end local v19    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v2    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v3    # "createEglContext":Z
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_219
    move-object/from16 v19, v2

    move/from16 v18, v3

    .line 1562
    .end local v2    # "view":Landroid/opengl/GLSurfaceView;
    .end local v3    # "createEglContext":Z
    .restart local v18    # "createEglContext":Z
    .restart local v19    # "view":Landroid/opengl/GLSurfaceView;
    :goto_21d
    const/4 v0, 0x0

    move v7, v0

    .end local v7    # "sizeChanged":Z
    .local v0, "sizeChanged":Z
    goto :goto_222

    .line 1549
    .end local v0    # "sizeChanged":Z
    .end local v18    # "createEglContext":Z
    .end local v19    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v3    # "createEglContext":Z
    .restart local v7    # "sizeChanged":Z
    :cond_220
    move/from16 v18, v3

    .line 1569
    .end local v3    # "createEglContext":Z
    .restart local v18    # "createEglContext":Z
    :goto_222
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_22a
    .catchall {:try_start_207 .. :try_end_22a} :catchall_2b3

    move-object v2, v0

    .line 1570
    .restart local v2    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v2, :cond_256

    .line 1572
    :try_start_22d
    const-string/jumbo v0, "onDrawFrame"
    :try_end_230
    .catchall {:try_start_22d .. :try_end_230} :catchall_24c

    move-object/from16 v19, v2

    const-wide/16 v2, 0x8

    .end local v2    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v19    # "view":Landroid/opengl/GLSurfaceView;
    :try_start_234
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1573
    invoke-static/range {v19 .. v19}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1574
    if-eqz v14, :cond_244

    .line 1575
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V
    :try_end_243
    .catchall {:try_start_234 .. :try_end_243} :catchall_24a

    .line 1576
    const/4 v14, 0x0

    .line 1579
    :cond_244
    const-wide/16 v20, 0x8

    :try_start_246
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1580
    goto :goto_258

    .line 1579
    :catchall_24a
    move-exception v0

    goto :goto_24f

    .end local v19    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v2    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_24c
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v19    # "view":Landroid/opengl/GLSurfaceView;
    :goto_24f
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1580
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1570
    .end local v19    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v2    # "view":Landroid/opengl/GLSurfaceView;
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_256
    move-object/from16 v19, v2

    .line 1583
    .end local v2    # "view":Landroid/opengl/GLSurfaceView;
    :goto_258
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v0

    move v2, v0

    .line 1584
    .local v2, "swapError":I
    sparse-switch v2, :sswitch_data_2c4

    .line 1598
    const-string v0, "GLThread"

    goto :goto_269

    .line 1591
    :sswitch_265
    const/4 v0, 0x1

    .line 1592
    .end local v6    # "lostEglContext":Z
    .local v0, "lostEglContext":Z
    move v6, v0

    goto :goto_27e

    .line 1586
    .end local v0    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    :sswitch_268
    goto :goto_27e

    .line 1598
    :goto_269
    const-string v3, "eglSwapBuffers"

    invoke-static {v0, v3, v2}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1600
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v3

    monitor-enter v3
    :try_end_273
    .catchall {:try_start_246 .. :try_end_273} :catchall_2b3

    .line 1601
    const/4 v0, 0x1

    :try_start_274
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1602
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1603
    monitor-exit v3

    .line 1607
    :goto_27e
    if-eqz v8, :cond_284

    .line 1608
    const/4 v0, 0x1

    .line 1609
    .end local v9    # "doRenderNotification":Z
    .local v0, "doRenderNotification":Z
    const/4 v3, 0x0

    move v9, v0

    move v8, v3

    .line 1611
    .end local v0    # "doRenderNotification":Z
    .end local v2    # "swapError":I
    .restart local v9    # "doRenderNotification":Z
    :cond_284
    move-object v2, v5

    move v5, v15

    move/from16 v3, v18

    const/4 v0, 0x0

    goto/16 :goto_1f

    .line 1603
    .restart local v2    # "swapError":I
    :catchall_28b
    move-exception v0

    monitor-exit v3
    :try_end_28d
    .catchall {:try_start_274 .. :try_end_28d} :catchall_28b

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_28d
    throw v0
    :try_end_28e
    .catchall {:try_start_28d .. :try_end_28e} :catchall_2b3

    .line 1499
    .end local v2    # "swapError":I
    .end local v15    # "createGlInterface":Z
    .restart local v3    # "createEglContext":Z
    .local v5, "createGlInterface":Z
    .local v18, "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :catchall_28e
    move-exception v0

    move/from16 v19, v3

    .end local v3    # "createEglContext":Z
    .local v19, "createEglContext":Z
    goto :goto_2af

    .line 1475
    .restart local v3    # "createEglContext":Z
    .local v19, "pausing":Z
    :cond_292
    if-eqz v14, :cond_2a0

    .line 1476
    :try_start_294
    const-string v0, "GLSurfaceView"

    const-string v2, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    .line 1479
    const/4 v0, 0x0

    move-object v14, v0

    .line 1497
    :cond_2a0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1498
    .end local v19    # "pausing":Z
    move-object/from16 v2, v18

    const/4 v0, 0x0

    goto/16 :goto_24

    .line 1499
    .end local v18    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    :catchall_2ac
    move-exception v0

    move-object/from16 v18, v2

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v18    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :goto_2af
    monitor-exit v15
    :try_end_2b0
    .catchall {:try_start_294 .. :try_end_2b0} :catchall_2b1

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_2b0
    throw v0
    :try_end_2b1
    .catchall {:try_start_2b0 .. :try_end_2b1} :catchall_2b3

    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :catchall_2b1
    move-exception v0

    goto :goto_2af

    .line 1617
    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .end local v18    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :catchall_2b3
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1618
    :try_start_2b9
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1619
    invoke-direct {v1}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1620
    monitor-exit v2
    :try_end_2c0
    .catchall {:try_start_2b9 .. :try_end_2c0} :catchall_2c1

    .line 1621
    throw v0

    .line 1620
    :catchall_2c1
    move-exception v0

    :try_start_2c2
    monitor-exit v2
    :try_end_2c3
    .catchall {:try_start_2c2 .. :try_end_2c3} :catchall_2c1

    throw v0

    :sswitch_data_2c4
    .sparse-switch
        0x3000 -> :sswitch_268
        0x300e -> :sswitch_265
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$requestRenderAndNotify$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "oldCallback"    # Ljava/lang/Runnable;
    .param p1, "finishDrawing"    # Ljava/lang/Runnable;

    .line 1672
    if-eqz p0, :cond_5

    .line 1673
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1675
    :cond_5
    if-eqz p1, :cond_a

    .line 1676
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1678
    :cond_a
    return-void
.end method

.method private greylist-max-o readyToDraw()Z
    .registers 3

    .line 1629
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_1e

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_1e

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_1e

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1e

    :cond_1d
    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method private greylist-max-o stopEglContextLocked()V
    .registers 2

    .line 1296
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 1297
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1298
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1299
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1301
    :cond_13
    return-void
.end method

.method private greylist-max-o stopEglSurfaceLocked()V
    .registers 2

    .line 1285
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    .line 1286
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1287
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1289
    :cond_c
    return-void
.end method


# virtual methods
.method public greylist-max-o ableToDraw()Z
    .registers 2

    .line 1625
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public greylist-max-o getRenderMode()I
    .registers 3

    .line 1645
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1646
    :try_start_5
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    .line 1647
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public greylist-max-o onPause()V
    .registers 4

    .line 1722
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1726
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1727
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1728
    :goto_f
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_28

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    if-nez v1, :cond_28

    .line 1733
    :try_start_17
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2a

    .line 1736
    :goto_1e
    goto :goto_f

    .line 1734
    :catch_1f
    move-exception v1

    .line 1735
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1e

    .line 1738
    :cond_28
    monitor-exit v0

    .line 1739
    return-void

    .line 1738
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public greylist-max-o onResume()V
    .registers 4

    .line 1742
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1746
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1747
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1748
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1749
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1750
    :goto_14
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_31

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_31

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_33

    if-nez v1, :cond_31

    .line 1755
    :try_start_20
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_33

    .line 1758
    :goto_27
    goto :goto_14

    .line 1756
    :catch_28
    move-exception v1

    .line 1757
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_27

    .line 1760
    :cond_31
    monitor-exit v0

    .line 1761
    return-void

    .line 1760
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public greylist-max-o onWindowResize(II)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1764
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1765
    :try_start_5
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1766
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1767
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1768
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1769
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1776
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_19

    .line 1777
    monitor-exit v0

    return-void

    .line 1780
    :cond_19
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1783
    :goto_20
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_43

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_43

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_43

    .line 1784
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z

    move-result v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_45

    if-eqz v1, :cond_43

    .line 1789
    :try_start_32
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_39} :catch_3a
    .catchall {:try_start_32 .. :try_end_39} :catchall_45

    .line 1792
    :goto_39
    goto :goto_20

    .line 1790
    :catch_3a
    move-exception v1

    .line 1791
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_3b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_39

    .line 1794
    :cond_43
    monitor-exit v0

    .line 1795
    return-void

    .line 1794
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_45

    throw v1
.end method

.method public greylist-max-o queueEvent(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1823
    if-eqz p1, :cond_18

    .line 1826
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1827
    :try_start_7
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1828
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1829
    monitor-exit v0

    .line 1830
    return-void

    .line 1829
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    .line 1824
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o requestExitAndWait()V
    .registers 4

    .line 1800
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1801
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1802
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1803
    :goto_f
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_26

    if-nez v1, :cond_24

    .line 1805
    :try_start_13
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b
    .catchall {:try_start_13 .. :try_end_1a} :catchall_26

    .line 1808
    :goto_1a
    goto :goto_f

    .line 1806
    :catch_1b
    move-exception v1

    .line 1807
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1a

    .line 1810
    :cond_24
    monitor-exit v0

    .line 1811
    return-void

    .line 1810
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_26

    throw v1
.end method

.method public greylist-max-o requestReleaseEglContextLocked()V
    .registers 2

    .line 1814
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1815
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1816
    return-void
.end method

.method public greylist-max-o requestRender()V
    .registers 3

    .line 1651
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1652
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1653
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1654
    monitor-exit v0

    .line 1655
    return-void

    .line 1654
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public greylist-max-o requestRenderAndNotify(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "finishDrawing"    # Ljava/lang/Runnable;

    .line 1658
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1663
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_d

    .line 1664
    monitor-exit v0

    return-void

    .line 1667
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1668
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1669
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1670
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1671
    .local v1, "oldCallback":Ljava/lang/Runnable;
    new-instance v2, Landroid/opengl/GLSurfaceView$GLThread$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/opengl/GLSurfaceView$GLThread$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1680
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1681
    .end local v1    # "oldCallback":Ljava/lang/Runnable;
    monitor-exit v0

    .line 1682
    return-void

    .line 1681
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1272
    :try_start_1a
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_2e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_25

    .line 1276
    :goto_1d
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1277
    goto :goto_30

    .line 1276
    :catchall_25
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1277
    throw v0

    .line 1273
    :catch_2e
    move-exception v0

    goto :goto_1d

    .line 1278
    :goto_30
    return-void
.end method

.method public greylist-max-o setRenderMode(I)V
    .registers 4
    .param p1, "renderMode"    # I

    .line 1635
    if-ltz p1, :cond_18

    const/4 v0, 0x1

    if-gt p1, v0, :cond_18

    .line 1638
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1639
    :try_start_a
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1640
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1641
    monitor-exit v0

    .line 1642
    return-void

    .line 1641
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v1

    .line 1636
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o surfaceCreated()V
    .registers 4

    .line 1685
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1689
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1690
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1691
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1692
    :goto_12
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_31

    if-nez v1, :cond_2f

    .line 1696
    :try_start_1e
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_25} :catch_26
    .catchall {:try_start_1e .. :try_end_25} :catchall_31

    .line 1699
    :goto_25
    goto :goto_12

    .line 1697
    :catch_26
    move-exception v1

    .line 1698
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_25

    .line 1701
    :cond_2f
    monitor-exit v0

    .line 1702
    return-void

    .line 1701
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public greylist-max-o surfaceDestroyed()V
    .registers 4

    .line 1705
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1709
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1710
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1711
    :goto_f
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_28

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    if-nez v1, :cond_28

    .line 1713
    :try_start_17
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2a

    .line 1716
    :goto_1e
    goto :goto_f

    .line 1714
    :catch_1f
    move-exception v1

    .line 1715
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1e

    .line 1718
    :cond_28
    monitor-exit v0

    .line 1719
    return-void

    .line 1718
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2a

    throw v1
.end method
