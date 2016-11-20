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
.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method static synthetic -set0(Landroid/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    #@2
    return p1
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1242
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 1822
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@c
    .line 1823
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@e
    .line 1243
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@10
    .line 1244
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@12
    .line 1245
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@14
    .line 1246
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    #@16
    .line 1247
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@18
    .line 1248
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@1a
    .line 1241
    return-void
.end method

.method private guardedRun()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1290
    new-instance v21, Landroid/opengl/GLSurfaceView$EglHelper;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@6
    move-object/from16 v22, v0

    #@8
    invoke-direct/range {v21 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    #@b
    move-object/from16 v0, v21

    #@d
    move-object/from16 v1, p0

    #@f
    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@11
    .line 1291
    const/16 v21, 0x0

    #@13
    move/from16 v0, v21

    #@15
    move-object/from16 v1, p0

    #@17
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@19
    .line 1292
    const/16 v21, 0x0

    #@1b
    move/from16 v0, v21

    #@1d
    move-object/from16 v1, p0

    #@1f
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@21
    .line 1293
    const/16 v21, 0x0

    #@23
    move/from16 v0, v21

    #@25
    move-object/from16 v1, p0

    #@27
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@29
    .line 1296
    const/4 v10, 0x0

    #@2a
    .line 1297
    .local v10, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x0

    #@2b
    .line 1298
    .local v5, "createEglContext":Z
    const/4 v6, 0x0

    #@2c
    .line 1299
    .local v6, "createEglSurface":Z
    const/4 v7, 0x0

    #@2d
    .line 1300
    .local v7, "createGlInterface":Z
    const/4 v12, 0x0

    #@2e
    .line 1301
    .local v12, "lostEglContext":Z
    const/4 v15, 0x0

    #@2f
    .line 1302
    .local v15, "sizeChanged":Z
    const/16 v20, 0x0

    #@31
    .line 1303
    .local v20, "wantRenderNotification":Z
    const/4 v8, 0x0

    #@32
    .line 1304
    .local v8, "doRenderNotification":Z
    const/4 v4, 0x0

    #@33
    .line 1305
    .local v4, "askedToReleaseEglContext":Z
    const/16 v19, 0x0

    #@35
    .line 1306
    .local v19, "w":I
    const/4 v11, 0x0

    #@36
    .line 1307
    .local v11, "h":I
    const/4 v9, 0x0

    #@37
    .line 1310
    .end local v10    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3a
    move-result-object v22

    #@3b
    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@3c
    .line 1312
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    #@3e
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    #@40
    move/from16 v21, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@42
    if-eqz v21, :cond_1

    #@44
    :try_start_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@45
    .line 1588
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@48
    move-result-object v22

    #@49
    monitor-enter v22

    #@4a
    .line 1589
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@4d
    .line 1590
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@50
    monitor-exit v22

    #@51
    .line 1313
    return-void

    #@52
    .line 1588
    :catchall_0
    move-exception v21

    #@53
    monitor-exit v22

    #@54
    throw v21

    #@55
    .line 1316
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@59
    move-object/from16 v21, v0

    #@5b
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    #@5e
    move-result v21

    #@5f
    if-nez v21, :cond_3

    #@61
    .line 1317
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@65
    move-object/from16 v21, v0

    #@67
    const/16 v23, 0x0

    #@69
    move-object/from16 v0, v21

    #@6b
    move/from16 v1, v23

    #@6d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@70
    move-result-object v21

    #@71
    move-object/from16 v0, v21

    #@73
    check-cast v0, Ljava/lang/Runnable;

    #@75
    move-object v9, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@76
    :cond_2
    :goto_2
    :try_start_5
    monitor-exit v22

    #@77
    .line 1476
    if-eqz v9, :cond_15

    #@79
    .line 1477
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@7c
    .line 1478
    const/4 v9, 0x0

    #@7d
    .local v9, "event":Ljava/lang/Runnable;
    goto :goto_0

    #@7e
    .line 1322
    .end local v9    # "event":Ljava/lang/Runnable;
    :cond_3
    const/4 v13, 0x0

    #@7f
    .line 1323
    .local v13, "pausing":Z
    :try_start_6
    move-object/from16 v0, p0

    #@81
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    #@83
    move/from16 v21, v0

    #@85
    move-object/from16 v0, p0

    #@87
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@89
    move/from16 v23, v0

    #@8b
    move/from16 v0, v21

    #@8d
    move/from16 v1, v23

    #@8f
    if-eq v0, v1, :cond_4

    #@91
    .line 1324
    move-object/from16 v0, p0

    #@93
    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@95
    .line 1325
    .local v13, "pausing":Z
    move-object/from16 v0, p0

    #@97
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@99
    move/from16 v21, v0

    #@9b
    move/from16 v0, v21

    #@9d
    move-object/from16 v1, p0

    #@9f
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    #@a1
    .line 1326
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@a4
    move-result-object v21

    #@a5
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@a8
    .line 1333
    .end local v13    # "pausing":Z
    :cond_4
    move-object/from16 v0, p0

    #@aa
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    #@ac
    move/from16 v21, v0

    #@ae
    if-eqz v21, :cond_5

    #@b0
    .line 1337
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@b3
    .line 1338
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    #@b6
    .line 1339
    const/16 v21, 0x0

    #@b8
    move/from16 v0, v21

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    #@be
    .line 1340
    const/4 v4, 0x1

    #@bf
    .line 1344
    :cond_5
    if-eqz v12, :cond_6

    #@c1
    .line 1345
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@c4
    .line 1346
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    #@c7
    .line 1347
    const/4 v12, 0x0

    #@c8
    .line 1351
    :cond_6
    if-eqz v13, :cond_7

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@ce
    move/from16 v21, v0

    #@d0
    if-eqz v21, :cond_7

    #@d2
    .line 1355
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@d5
    .line 1359
    :cond_7
    if-eqz v13, :cond_8

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@db
    move/from16 v21, v0

    #@dd
    if-eqz v21, :cond_8

    #@df
    .line 1360
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@e3
    move-object/from16 v21, v0

    #@e5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e8
    move-result-object v18

    #@e9
    check-cast v18, Landroid/opengl/GLSurfaceView;

    #@eb
    .line 1361
    .local v18, "view":Landroid/opengl/GLSurfaceView;
    if-nez v18, :cond_f

    #@ed
    .line 1362
    const/4 v14, 0x0

    #@ee
    .line 1363
    .local v14, "preserveEglContextOnPause":Z
    :goto_3
    if-nez v14, :cond_8

    #@f0
    .line 1364
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    #@f3
    .line 1372
    .end local v14    # "preserveEglContextOnPause":Z
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_8
    move-object/from16 v0, p0

    #@f5
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@f7
    move/from16 v21, v0

    #@f9
    if-nez v21, :cond_9

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@ff
    move/from16 v21, v0

    #@101
    if-eqz v21, :cond_10

    #@103
    .line 1385
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    #@105
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@107
    move/from16 v21, v0

    #@109
    if-eqz v21, :cond_a

    #@10b
    move-object/from16 v0, p0

    #@10d
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@10f
    move/from16 v21, v0

    #@111
    if-eqz v21, :cond_a

    #@113
    .line 1389
    const/16 v21, 0x0

    #@115
    move/from16 v0, v21

    #@117
    move-object/from16 v1, p0

    #@119
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@11b
    .line 1390
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@11e
    move-result-object v21

    #@11f
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@122
    .line 1393
    :cond_a
    if-eqz v8, :cond_b

    #@124
    .line 1397
    const/16 v21, 0x0

    #@126
    move/from16 v0, v21

    #@128
    move-object/from16 v1, p0

    #@12a
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@12c
    .line 1398
    const/4 v8, 0x0

    #@12d
    .line 1399
    const/16 v21, 0x1

    #@12f
    move/from16 v0, v21

    #@131
    move-object/from16 v1, p0

    #@133
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@135
    .line 1400
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@138
    move-result-object v21

    #@139
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@13c
    .line 1404
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    #@13f
    move-result v21

    #@140
    if-eqz v21, :cond_14

    #@142
    .line 1407
    move-object/from16 v0, p0

    #@144
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@146
    move/from16 v21, v0

    #@148
    if-nez v21, :cond_c

    #@14a
    .line 1408
    if-eqz v4, :cond_12

    #@14c
    .line 1409
    const/4 v4, 0x0

    #@14d
    .line 1424
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    #@14f
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@151
    move/from16 v21, v0

    #@153
    if-eqz v21, :cond_d

    #@155
    move-object/from16 v0, p0

    #@157
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@159
    move/from16 v21, v0

    #@15b
    if-eqz v21, :cond_13

    #@15d
    .line 1431
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    #@15f
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@161
    move/from16 v21, v0

    #@163
    if-eqz v21, :cond_14

    #@165
    .line 1432
    move-object/from16 v0, p0

    #@167
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@169
    move/from16 v21, v0

    #@16b
    if-eqz v21, :cond_e

    #@16d
    .line 1433
    const/4 v15, 0x1

    #@16e
    .line 1434
    move-object/from16 v0, p0

    #@170
    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@172
    move/from16 v19, v0

    #@174
    .line 1435
    move-object/from16 v0, p0

    #@176
    iget v11, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@178
    .line 1436
    const/16 v21, 0x1

    #@17a
    move/from16 v0, v21

    #@17c
    move-object/from16 v1, p0

    #@17e
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@180
    .line 1444
    const/4 v6, 0x1

    #@181
    .line 1446
    const/16 v21, 0x0

    #@183
    move/from16 v0, v21

    #@185
    move-object/from16 v1, p0

    #@187
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@189
    .line 1448
    :cond_e
    const/16 v21, 0x0

    #@18b
    move/from16 v0, v21

    #@18d
    move-object/from16 v1, p0

    #@18f
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@191
    .line 1449
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@194
    move-result-object v21

    #@195
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@198
    .line 1450
    move-object/from16 v0, p0

    #@19a
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@19c
    move/from16 v21, v0

    #@19e
    if-eqz v21, :cond_2

    #@1a0
    .line 1451
    const/16 v20, 0x1

    #@1a2
    goto/16 :goto_2

    #@1a4
    .line 1362
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_f
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get6(Landroid/opengl/GLSurfaceView;)Z

    #@1a7
    move-result v14

    #@1a8
    goto/16 :goto_3

    #@1aa
    .line 1376
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_10
    move-object/from16 v0, p0

    #@1ac
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@1ae
    move/from16 v21, v0

    #@1b0
    if-eqz v21, :cond_11

    #@1b2
    .line 1377
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@1b5
    .line 1379
    :cond_11
    const/16 v21, 0x1

    #@1b7
    move/from16 v0, v21

    #@1b9
    move-object/from16 v1, p0

    #@1bb
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@1bd
    .line 1380
    const/16 v21, 0x0

    #@1bf
    move/from16 v0, v21

    #@1c1
    move-object/from16 v1, p0

    #@1c3
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    #@1c5
    .line 1381
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1c8
    move-result-object v21

    #@1c9
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@1cc
    goto/16 :goto_4

    #@1ce
    .line 1310
    :catchall_1
    move-exception v21

    #@1cf
    :try_start_7
    monitor-exit v22

    #@1d0
    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@1d1
    .line 1584
    :catchall_2
    move-exception v21

    #@1d2
    .line 1588
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1d5
    move-result-object v22

    #@1d6
    monitor-enter v22

    #@1d7
    .line 1589
    :try_start_8
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@1da
    .line 1590
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    #@1dd
    monitor-exit v22

    #@1de
    .line 1584
    throw v21

    #@1df
    .line 1412
    :cond_12
    :try_start_9
    move-object/from16 v0, p0

    #@1e1
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@1e3
    move-object/from16 v21, v0

    #@1e5
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@1e8
    .line 1417
    const/16 v21, 0x1

    #@1ea
    :try_start_a
    move/from16 v0, v21

    #@1ec
    move-object/from16 v1, p0

    #@1ee
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@1f0
    .line 1418
    const/4 v5, 0x1

    #@1f1
    .line 1420
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1f4
    move-result-object v21

    #@1f5
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@1f8
    goto/16 :goto_5

    #@1fa
    .line 1413
    :catch_0
    move-exception v17

    #@1fb
    .line 1414
    .local v17, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1fe
    move-result-object v21

    #@1ff
    move-object/from16 v0, v21

    #@201
    move-object/from16 v1, p0

    #@203
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@206
    .line 1415
    throw v17

    #@207
    .line 1425
    .end local v17    # "t":Ljava/lang/RuntimeException;
    :cond_13
    const/16 v21, 0x1

    #@209
    move/from16 v0, v21

    #@20b
    move-object/from16 v1, p0

    #@20d
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@20f
    .line 1426
    const/4 v6, 0x1

    #@210
    .line 1427
    const/4 v7, 0x1

    #@211
    .line 1428
    const/4 v15, 0x1

    #@212
    goto/16 :goto_6

    #@214
    .line 1472
    :cond_14
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@217
    move-result-object v21

    #@218
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@21b
    goto/16 :goto_1

    #@21d
    .line 1482
    :cond_15
    if-eqz v6, :cond_16

    #@21f
    .line 1486
    :try_start_b
    move-object/from16 v0, p0

    #@221
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@223
    move-object/from16 v21, v0

    #@225
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    #@228
    move-result v21

    #@229
    if-eqz v21, :cond_1d

    #@22b
    .line 1487
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@22e
    move-result-object v22

    #@22f
    monitor-enter v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@230
    .line 1488
    const/16 v21, 0x1

    #@232
    :try_start_c
    move/from16 v0, v21

    #@234
    move-object/from16 v1, p0

    #@236
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    #@238
    .line 1489
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@23b
    move-result-object v21

    #@23c
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@23f
    :try_start_d
    monitor-exit v22

    #@240
    .line 1499
    const/4 v6, 0x0

    #@241
    .line 1502
    :cond_16
    if-eqz v7, :cond_17

    #@243
    .line 1503
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@247
    move-object/from16 v21, v0

    #@249
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    #@24c
    move-result-object v21

    #@24d
    move-object/from16 v0, v21

    #@24f
    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    #@251
    move-object v10, v0

    #@252
    .line 1505
    .local v10, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v7, 0x0

    #@253
    .line 1508
    .end local v10    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_17
    if-eqz v5, :cond_19

    #@255
    .line 1512
    move-object/from16 v0, p0

    #@257
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@259
    move-object/from16 v21, v0

    #@25b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@25e
    move-result-object v18

    #@25f
    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    #@261
    .line 1513
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_18

    #@263
    .line 1515
    :try_start_e
    const-string/jumbo v21, "onSurfaceCreated"

    #@266
    const-wide/16 v22, 0x8

    #@268
    move-wide/from16 v0, v22

    #@26a
    move-object/from16 v2, v21

    #@26c
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@26f
    .line 1516
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    #@272
    move-result-object v21

    #@273
    move-object/from16 v0, p0

    #@275
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@277
    move-object/from16 v22, v0

    #@279
    move-object/from16 v0, v22

    #@27b
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@27d
    move-object/from16 v22, v0

    #@27f
    move-object/from16 v0, v21

    #@281
    move-object/from16 v1, v22

    #@283
    invoke-interface {v0, v10, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    #@286
    .line 1518
    const-wide/16 v22, 0x8

    #@288
    :try_start_f
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@28b
    .line 1521
    :cond_18
    const/4 v5, 0x0

    #@28c
    .line 1524
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_19
    if-eqz v15, :cond_1b

    #@28e
    .line 1528
    move-object/from16 v0, p0

    #@290
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@292
    move-object/from16 v21, v0

    #@294
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@297
    move-result-object v18

    #@298
    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    #@29a
    .line 1529
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_1a

    #@29c
    .line 1531
    :try_start_10
    const-string/jumbo v21, "onSurfaceChanged"

    #@29f
    const-wide/16 v22, 0x8

    #@2a1
    move-wide/from16 v0, v22

    #@2a3
    move-object/from16 v2, v21

    #@2a5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2a8
    .line 1532
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    #@2ab
    move-result-object v21

    #@2ac
    move-object/from16 v0, v21

    #@2ae
    move/from16 v1, v19

    #@2b0
    invoke-interface {v0, v10, v1, v11}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    #@2b3
    .line 1534
    const-wide/16 v22, 0x8

    #@2b5
    :try_start_11
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@2b8
    .line 1537
    :cond_1a
    const/4 v15, 0x0

    #@2b9
    .line 1544
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1b
    move-object/from16 v0, p0

    #@2bb
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@2bd
    move-object/from16 v21, v0

    #@2bf
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2c2
    move-result-object v18

    #@2c3
    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    #@2c5
    .line 1545
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_1c

    #@2c7
    .line 1547
    :try_start_12
    const-string/jumbo v21, "onDrawFrame"

    #@2ca
    const-wide/16 v22, 0x8

    #@2cc
    move-wide/from16 v0, v22

    #@2ce
    move-object/from16 v2, v21

    #@2d0
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2d3
    .line 1548
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    #@2d6
    move-result-object v21

    #@2d7
    move-object/from16 v0, v21

    #@2d9
    invoke-interface {v0, v10}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    #@2dc
    .line 1550
    const-wide/16 v22, 0x8

    #@2de
    :try_start_13
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@2e1
    .line 1554
    :cond_1c
    move-object/from16 v0, p0

    #@2e3
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@2e5
    move-object/from16 v21, v0

    #@2e7
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    #@2ea
    move-result v16

    #@2eb
    .line 1555
    .local v16, "swapError":I
    sparse-switch v16, :sswitch_data_0

    #@2ee
    .line 1569
    const-string/jumbo v21, "GLThread"

    #@2f1
    const-string/jumbo v22, "eglSwapBuffers"

    #@2f4
    move-object/from16 v0, v21

    #@2f6
    move-object/from16 v1, v22

    #@2f8
    move/from16 v2, v16

    #@2fa
    invoke-static {v0, v1, v2}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    #@2fd
    .line 1571
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@300
    move-result-object v22

    #@301
    monitor-enter v22
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    #@302
    .line 1572
    const/16 v21, 0x1

    #@304
    :try_start_14
    move/from16 v0, v21

    #@306
    move-object/from16 v1, p0

    #@308
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    #@30a
    .line 1573
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@30d
    move-result-object v21

    #@30e
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    #@311
    :try_start_15
    monitor-exit v22

    #@312
    .line 1578
    :goto_7
    :sswitch_0
    if-eqz v20, :cond_0

    #@314
    .line 1579
    const/4 v8, 0x1

    #@315
    .line 1580
    const/16 v20, 0x0

    #@317
    goto/16 :goto_0

    #@319
    .line 1487
    .end local v16    # "swapError":I
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_3
    move-exception v21

    #@31a
    monitor-exit v22

    #@31b
    throw v21

    #@31c
    .line 1492
    :cond_1d
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@31f
    move-result-object v22

    #@320
    monitor-enter v22
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    #@321
    .line 1493
    const/16 v21, 0x1

    #@323
    :try_start_16
    move/from16 v0, v21

    #@325
    move-object/from16 v1, p0

    #@327
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    #@329
    .line 1494
    const/16 v21, 0x1

    #@32b
    move/from16 v0, v21

    #@32d
    move-object/from16 v1, p0

    #@32f
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    #@331
    .line 1495
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@334
    move-result-object v21

    #@335
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    #@338
    :try_start_17
    monitor-exit v22

    #@339
    goto/16 :goto_0

    #@33b
    .line 1492
    :catchall_4
    move-exception v21

    #@33c
    monitor-exit v22

    #@33d
    throw v21

    #@33e
    .line 1517
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_5
    move-exception v21

    #@33f
    .line 1518
    const-wide/16 v22, 0x8

    #@341
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@344
    .line 1517
    throw v21

    #@345
    .line 1533
    :catchall_6
    move-exception v21

    #@346
    .line 1534
    const-wide/16 v22, 0x8

    #@348
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@34b
    .line 1533
    throw v21

    #@34c
    .line 1549
    :catchall_7
    move-exception v21

    #@34d
    .line 1550
    const-wide/16 v22, 0x8

    #@34f
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@352
    .line 1549
    throw v21

    #@353
    .line 1562
    .restart local v16    # "swapError":I
    :sswitch_1
    const/4 v12, 0x1

    #@354
    .line 1563
    goto :goto_7

    #@355
    .line 1571
    :catchall_8
    move-exception v21

    #@356
    monitor-exit v22

    #@357
    throw v21
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    #@358
    .line 1588
    .end local v16    # "swapError":I
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_9
    move-exception v21

    #@359
    monitor-exit v22

    #@35a
    throw v21

    #@35b
    .line 1555
    nop

    #@35c
    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1600
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    #@4
    if-nez v2, :cond_0

    #@6
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    #@c
    if-eqz v2, :cond_2

    #@e
    :cond_0
    move v0, v1

    #@f
    :cond_1
    :goto_0
    return v0

    #@10
    .line 1601
    :cond_2
    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@12
    if-lez v2, :cond_0

    #@14
    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@16
    if-lez v2, :cond_0

    #@18
    .line 1602
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@1a
    if-nez v2, :cond_1

    #@1c
    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    #@1e
    if-eq v2, v0, :cond_1

    #@20
    move v0, v1

    #@21
    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    #@0
    .prologue
    .line 1283
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1284
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@6
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    #@9
    .line 1285
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@c
    .line 1286
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@13
    .line 1282
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    #@0
    .prologue
    .line 1272
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1273
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@7
    .line 1274
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@9
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    #@c
    .line 1271
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    #@0
    .prologue
    .line 1596
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    #@0
    .prologue
    .line 1616
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v0

    #@4
    monitor-enter v0

    #@5
    .line 1617
    :try_start_0
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 1616
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public onPause()V
    .locals 3

    #@0
    .prologue
    .line 1693
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1697
    const/4 v1, 0x1

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@8
    .line 1698
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@f
    .line 1699
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    #@11
    if-nez v1, :cond_0

    #@13
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    if-eqz v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 1692
    return-void

    #@19
    .line 1704
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 1705
    :catch_0
    move-exception v0

    #@22
    .line 1706
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 1693
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method

.method public onResume()V
    .locals 3

    #@0
    .prologue
    .line 1713
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1717
    const/4 v1, 0x0

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@8
    .line 1718
    const/4 v1, 0x1

    #@9
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@b
    .line 1719
    const/4 v1, 0x0

    #@c
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@e
    .line 1720
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@15
    .line 1721
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    #@17
    if-nez v1, :cond_0

    #@19
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    #@1b
    if-eqz v1, :cond_0

    #@1d
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    if-eqz v1, :cond_1

    #@21
    :cond_0
    monitor-exit v2

    #@22
    .line 1712
    return-void

    #@23
    .line 1726
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 1727
    :catch_0
    move-exception v0

    #@2c
    .line 1728
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 1713
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 1735
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1736
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@7
    .line 1737
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@9
    .line 1738
    const/4 v1, 0x1

    #@a
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@c
    .line 1739
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@f
    .line 1740
    const/4 v1, 0x0

    #@10
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@12
    .line 1747
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v1

    #@16
    if-ne v1, p0, :cond_0

    #@18
    monitor-exit v2

    #@19
    .line 1748
    return-void

    #@1a
    .line 1751
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@21
    .line 1754
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    #@23
    if-nez v1, :cond_1

    #@25
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    if-eqz v1, :cond_2

    #@29
    :cond_1
    monitor-exit v2

    #@2a
    .line 1734
    return-void

    #@2b
    .line 1754
    :cond_2
    :try_start_2
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@2d
    if-nez v1, :cond_1

    #@2f
    .line 1755
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    move-result v1

    #@33
    .line 1754
    if-eqz v1, :cond_1

    #@35
    .line 1760
    :try_start_3
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 1761
    :catch_0
    move-exception v0

    #@3e
    .line 1762
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 1735
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@47
    monitor-exit v2

    #@48
    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1794
    if-nez p1, :cond_0

    #@2
    .line 1795
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "r must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1797
    :cond_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@e
    move-result-object v1

    #@f
    monitor-enter v1

    #@10
    .line 1798
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 1799
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 1793
    return-void

    #@1e
    .line 1797
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    #@0
    .prologue
    .line 1771
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1772
    const/4 v1, 0x1

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    #@8
    .line 1773
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@f
    .line 1774
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    if-nez v1, :cond_0

    #@13
    .line 1776
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 1777
    :catch_0
    move-exception v0

    #@1c
    .line 1778
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 1771
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    :cond_0
    monitor-exit v2

    #@28
    .line 1768
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    #@0
    .prologue
    .line 1785
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    #@3
    .line 1786
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@a
    .line 1784
    return-void
.end method

.method public requestRender()V
    .locals 2

    #@0
    .prologue
    .line 1622
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v1

    #@4
    monitor-enter v1

    #@5
    .line 1623
    const/4 v0, 0x1

    #@6
    :try_start_0
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@8
    .line 1624
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 1621
    return-void

    #@11
    .line 1622
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public requestRenderAndWait()V
    .locals 3

    #@0
    .prologue
    .line 1629
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1634
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    if-ne v1, p0, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 1635
    return-void

    #@d
    .line 1638
    :cond_0
    const/4 v1, 0x1

    #@e
    :try_start_1
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@10
    .line 1639
    const/4 v1, 0x1

    #@11
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@13
    .line 1640
    const/4 v1, 0x0

    #@14
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@16
    .line 1642
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@1d
    .line 1644
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    #@1f
    if-nez v1, :cond_1

    #@21
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    if-eqz v1, :cond_2

    #@25
    :cond_1
    monitor-exit v2

    #@26
    .line 1628
    return-void

    #@27
    .line 1644
    :cond_2
    :try_start_2
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@29
    if-nez v1, :cond_1

    #@2b
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 1646
    :try_start_3
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1647
    :catch_0
    move-exception v0

    #@3a
    .line 1648
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 1629
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "GLThread "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    #@f
    move-result-wide v2

    #@10
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    #@1b
    .line 1259
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1263
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@25
    .line 1252
    :goto_0
    return-void

    #@26
    .line 1260
    :catch_0
    move-exception v0

    #@27
    .line 1263
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@2e
    goto :goto_0

    #@2f
    .line 1262
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@30
    .line 1263
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@37
    .line 1262
    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    #@0
    .prologue
    .line 1606
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 1607
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "renderMode"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1609
    :cond_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@11
    move-result-object v1

    #@12
    monitor-enter v1

    #@13
    .line 1610
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    #@15
    .line 1611
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 1605
    return-void

    #@1e
    .line 1609
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    #@0
    .prologue
    .line 1656
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1660
    const/4 v1, 0x1

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@8
    .line 1661
    const/4 v1, 0x0

    #@9
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    #@b
    .line 1662
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@12
    .line 1663
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1664
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    if-eqz v1, :cond_1

    #@1a
    :cond_0
    monitor-exit v2

    #@1b
    .line 1655
    return-void

    #@1c
    .line 1665
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 1667
    :try_start_2
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 1668
    :catch_0
    move-exception v0

    #@29
    .line 1669
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 1656
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@32
    monitor-exit v2

    #@33
    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 3

    #@0
    .prologue
    .line 1676
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1680
    const/4 v1, 0x0

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@8
    .line 1681
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@f
    .line 1682
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@11
    if-nez v1, :cond_0

    #@13
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    if-eqz v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 1675
    return-void

    #@19
    .line 1684
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 1685
    :catch_0
    move-exception v0

    #@22
    .line 1686
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 1676
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method
