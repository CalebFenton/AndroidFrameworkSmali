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
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1224
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 1770
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@c
    .line 1771
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@e
    .line 1225
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@10
    .line 1226
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@12
    .line 1227
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@14
    .line 1228
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    #@16
    .line 1229
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@18
    .line 1223
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
    .line 1271
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
    .line 1272
    const/16 v21, 0x0

    #@13
    move/from16 v0, v21

    #@15
    move-object/from16 v1, p0

    #@17
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@19
    .line 1273
    const/16 v21, 0x0

    #@1b
    move/from16 v0, v21

    #@1d
    move-object/from16 v1, p0

    #@1f
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@21
    .line 1275
    const/4 v10, 0x0

    #@22
    .line 1276
    .local v10, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x0

    #@23
    .line 1277
    .local v5, "createEglContext":Z
    const/4 v6, 0x0

    #@24
    .line 1278
    .local v6, "createEglSurface":Z
    const/4 v7, 0x0

    #@25
    .line 1279
    .local v7, "createGlInterface":Z
    const/4 v12, 0x0

    #@26
    .line 1280
    .local v12, "lostEglContext":Z
    const/4 v15, 0x0

    #@27
    .line 1281
    .local v15, "sizeChanged":Z
    const/16 v20, 0x0

    #@29
    .line 1282
    .local v20, "wantRenderNotification":Z
    const/4 v8, 0x0

    #@2a
    .line 1283
    .local v8, "doRenderNotification":Z
    const/4 v4, 0x0

    #@2b
    .line 1284
    .local v4, "askedToReleaseEglContext":Z
    const/16 v19, 0x0

    #@2d
    .line 1285
    .local v19, "w":I
    const/4 v11, 0x0

    #@2e
    .line 1286
    .local v11, "h":I
    const/4 v9, 0x0

    #@2f
    .line 1289
    .end local v10    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@32
    move-result-object v22

    #@33
    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@34
    .line 1291
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    #@36
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    #@38
    move/from16 v21, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3a
    if-eqz v21, :cond_1

    #@3c
    :try_start_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@3d
    .line 1574
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@40
    move-result-object v22

    #@41
    monitor-enter v22

    #@42
    .line 1575
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@45
    .line 1576
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    monitor-exit v22

    #@49
    .line 1292
    return-void

    #@4a
    .line 1574
    :catchall_0
    move-exception v21

    #@4b
    monitor-exit v22

    #@4c
    throw v21

    #@4d
    .line 1295
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@51
    move-object/from16 v21, v0

    #@53
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    #@56
    move-result v21

    #@57
    if-nez v21, :cond_2

    #@59
    .line 1296
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@5d
    move-object/from16 v21, v0

    #@5f
    const/16 v23, 0x0

    #@61
    move-object/from16 v0, v21

    #@63
    move/from16 v1, v23

    #@65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@68
    move-result-object v21

    #@69
    move-object/from16 v0, v21

    #@6b
    check-cast v0, Ljava/lang/Runnable;

    #@6d
    move-object v9, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@6e
    :goto_2
    :try_start_5
    monitor-exit v22

    #@6f
    .line 1462
    if-eqz v9, :cond_16

    #@71
    .line 1463
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@74
    .line 1464
    const/4 v9, 0x0

    #@75
    .local v9, "event":Ljava/lang/Runnable;
    goto :goto_0

    #@76
    .line 1301
    .end local v9    # "event":Ljava/lang/Runnable;
    :cond_2
    const/4 v13, 0x0

    #@77
    .line 1302
    .local v13, "pausing":Z
    :try_start_6
    move-object/from16 v0, p0

    #@79
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    #@7b
    move/from16 v21, v0

    #@7d
    move-object/from16 v0, p0

    #@7f
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@81
    move/from16 v23, v0

    #@83
    move/from16 v0, v21

    #@85
    move/from16 v1, v23

    #@87
    if-eq v0, v1, :cond_3

    #@89
    .line 1303
    move-object/from16 v0, p0

    #@8b
    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@8d
    .line 1304
    .local v13, "pausing":Z
    move-object/from16 v0, p0

    #@8f
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@91
    move/from16 v21, v0

    #@93
    move/from16 v0, v21

    #@95
    move-object/from16 v1, p0

    #@97
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    #@99
    .line 1305
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@9c
    move-result-object v21

    #@9d
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@a0
    .line 1312
    .end local v13    # "pausing":Z
    :cond_3
    move-object/from16 v0, p0

    #@a2
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    #@a4
    move/from16 v21, v0

    #@a6
    if-eqz v21, :cond_4

    #@a8
    .line 1316
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@ab
    .line 1317
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    #@ae
    .line 1318
    const/16 v21, 0x0

    #@b0
    move/from16 v0, v21

    #@b2
    move-object/from16 v1, p0

    #@b4
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    #@b6
    .line 1319
    const/4 v4, 0x1

    #@b7
    .line 1323
    :cond_4
    if-eqz v12, :cond_5

    #@b9
    .line 1324
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@bc
    .line 1325
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    #@bf
    .line 1326
    const/4 v12, 0x0

    #@c0
    .line 1330
    :cond_5
    if-eqz v13, :cond_6

    #@c2
    move-object/from16 v0, p0

    #@c4
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@c6
    move/from16 v21, v0

    #@c8
    if-eqz v21, :cond_6

    #@ca
    .line 1334
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@cd
    .line 1338
    :cond_6
    if-eqz v13, :cond_8

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@d3
    move/from16 v21, v0

    #@d5
    if-eqz v21, :cond_8

    #@d7
    .line 1339
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@db
    move-object/from16 v21, v0

    #@dd
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e0
    move-result-object v18

    #@e1
    check-cast v18, Landroid/opengl/GLSurfaceView;

    #@e3
    .line 1340
    .local v18, "view":Landroid/opengl/GLSurfaceView;
    if-nez v18, :cond_10

    #@e5
    .line 1341
    const/4 v14, 0x0

    #@e6
    .line 1342
    :goto_3
    if-eqz v14, :cond_7

    #@e8
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@eb
    move-result-object v21

    #@ec
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    #@ef
    move-result v21

    #@f0
    if-eqz v21, :cond_8

    #@f2
    .line 1343
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    #@f5
    .line 1351
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_8
    if-eqz v13, :cond_9

    #@f7
    .line 1352
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@fa
    move-result-object v21

    #@fb
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    #@fe
    move-result v21

    #@ff
    if-eqz v21, :cond_9

    #@101
    .line 1353
    move-object/from16 v0, p0

    #@103
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@105
    move-object/from16 v21, v0

    #@107
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    #@10a
    .line 1361
    :cond_9
    move-object/from16 v0, p0

    #@10c
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@10e
    move/from16 v21, v0

    #@110
    if-nez v21, :cond_a

    #@112
    move-object/from16 v0, p0

    #@114
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@116
    move/from16 v21, v0

    #@118
    if-eqz v21, :cond_11

    #@11a
    .line 1374
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    #@11c
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@11e
    move/from16 v21, v0

    #@120
    if-eqz v21, :cond_b

    #@122
    move-object/from16 v0, p0

    #@124
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@126
    move/from16 v21, v0

    #@128
    if-eqz v21, :cond_b

    #@12a
    .line 1378
    const/16 v21, 0x0

    #@12c
    move/from16 v0, v21

    #@12e
    move-object/from16 v1, p0

    #@130
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@132
    .line 1379
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@135
    move-result-object v21

    #@136
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@139
    .line 1382
    :cond_b
    if-eqz v8, :cond_c

    #@13b
    .line 1386
    const/16 v20, 0x0

    #@13d
    .line 1387
    const/4 v8, 0x0

    #@13e
    .line 1388
    const/16 v21, 0x1

    #@140
    move/from16 v0, v21

    #@142
    move-object/from16 v1, p0

    #@144
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@146
    .line 1389
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@149
    move-result-object v21

    #@14a
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@14d
    .line 1393
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    #@150
    move-result v21

    #@151
    if-eqz v21, :cond_15

    #@153
    .line 1396
    move-object/from16 v0, p0

    #@155
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@157
    move/from16 v21, v0

    #@159
    if-nez v21, :cond_d

    #@15b
    .line 1397
    if-eqz v4, :cond_13

    #@15d
    .line 1398
    const/4 v4, 0x0

    #@15e
    .line 1413
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    #@160
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@162
    move/from16 v21, v0

    #@164
    if-eqz v21, :cond_e

    #@166
    move-object/from16 v0, p0

    #@168
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@16a
    move/from16 v21, v0

    #@16c
    if-eqz v21, :cond_14

    #@16e
    .line 1420
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    #@170
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@172
    move/from16 v21, v0

    #@174
    if-eqz v21, :cond_15

    #@176
    .line 1421
    move-object/from16 v0, p0

    #@178
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@17a
    move/from16 v21, v0

    #@17c
    if-eqz v21, :cond_f

    #@17e
    .line 1422
    const/4 v15, 0x1

    #@17f
    .line 1423
    move-object/from16 v0, p0

    #@181
    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@183
    move/from16 v19, v0

    #@185
    .line 1424
    move-object/from16 v0, p0

    #@187
    iget v11, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@189
    .line 1425
    const/16 v20, 0x1

    #@18b
    .line 1433
    const/4 v6, 0x1

    #@18c
    .line 1435
    const/16 v21, 0x0

    #@18e
    move/from16 v0, v21

    #@190
    move-object/from16 v1, p0

    #@192
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@194
    .line 1437
    :cond_f
    const/16 v21, 0x0

    #@196
    move/from16 v0, v21

    #@198
    move-object/from16 v1, p0

    #@19a
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@19c
    .line 1438
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@19f
    move-result-object v21

    #@1a0
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@1a3
    goto/16 :goto_2

    #@1a5
    .line 1289
    :catchall_1
    move-exception v21

    #@1a6
    :try_start_7
    monitor-exit v22

    #@1a7
    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@1a8
    .line 1570
    :catchall_2
    move-exception v21

    #@1a9
    .line 1574
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1ac
    move-result-object v22

    #@1ad
    monitor-enter v22

    #@1ae
    .line 1575
    :try_start_8
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@1b1
    .line 1576
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    #@1b4
    monitor-exit v22

    #@1b5
    .line 1570
    throw v21

    #@1b6
    .line 1341
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_10
    :try_start_9
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get6(Landroid/opengl/GLSurfaceView;)Z

    #@1b9
    move-result v14

    #@1ba
    .local v14, "preserveEglContextOnPause":Z
    goto/16 :goto_3

    #@1bc
    .line 1365
    .end local v14    # "preserveEglContextOnPause":Z
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_11
    move-object/from16 v0, p0

    #@1be
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@1c0
    move/from16 v21, v0

    #@1c2
    if-eqz v21, :cond_12

    #@1c4
    .line 1366
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@1c7
    .line 1368
    :cond_12
    const/16 v21, 0x1

    #@1c9
    move/from16 v0, v21

    #@1cb
    move-object/from16 v1, p0

    #@1cd
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@1cf
    .line 1369
    const/16 v21, 0x0

    #@1d1
    move/from16 v0, v21

    #@1d3
    move-object/from16 v1, p0

    #@1d5
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    #@1d7
    .line 1370
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1da
    move-result-object v21

    #@1db
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@1de
    goto/16 :goto_4

    #@1e0
    .line 1399
    :cond_13
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1e3
    move-result-object v21

    #@1e4
    move-object/from16 v0, v21

    #@1e6
    move-object/from16 v1, p0

    #@1e8
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@1eb
    move-result v21

    #@1ec
    if-eqz v21, :cond_d

    #@1ee
    .line 1401
    :try_start_a
    move-object/from16 v0, p0

    #@1f0
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@1f2
    move-object/from16 v21, v0

    #@1f4
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@1f7
    .line 1406
    const/16 v21, 0x1

    #@1f9
    :try_start_b
    move/from16 v0, v21

    #@1fb
    move-object/from16 v1, p0

    #@1fd
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@1ff
    .line 1407
    const/4 v5, 0x1

    #@200
    .line 1409
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@203
    move-result-object v21

    #@204
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@207
    goto/16 :goto_5

    #@209
    .line 1402
    :catch_0
    move-exception v17

    #@20a
    .line 1403
    .local v17, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@20d
    move-result-object v21

    #@20e
    move-object/from16 v0, v21

    #@210
    move-object/from16 v1, p0

    #@212
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@215
    .line 1404
    throw v17

    #@216
    .line 1414
    .end local v17    # "t":Ljava/lang/RuntimeException;
    :cond_14
    const/16 v21, 0x1

    #@218
    move/from16 v0, v21

    #@21a
    move-object/from16 v1, p0

    #@21c
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@21e
    .line 1415
    const/4 v6, 0x1

    #@21f
    .line 1416
    const/4 v7, 0x1

    #@220
    .line 1417
    const/4 v15, 0x1

    #@221
    goto/16 :goto_6

    #@223
    .line 1458
    :cond_15
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@226
    move-result-object v21

    #@227
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@22a
    goto/16 :goto_1

    #@22c
    .line 1468
    :cond_16
    if-eqz v6, :cond_17

    #@22e
    .line 1472
    :try_start_c
    move-object/from16 v0, p0

    #@230
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@232
    move-object/from16 v21, v0

    #@234
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    #@237
    move-result v21

    #@238
    if-eqz v21, :cond_1e

    #@23a
    .line 1473
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@23d
    move-result-object v22

    #@23e
    monitor-enter v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@23f
    .line 1474
    const/16 v21, 0x1

    #@241
    :try_start_d
    move/from16 v0, v21

    #@243
    move-object/from16 v1, p0

    #@245
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    #@247
    .line 1475
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@24a
    move-result-object v21

    #@24b
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@24e
    :try_start_e
    monitor-exit v22

    #@24f
    .line 1485
    const/4 v6, 0x0

    #@250
    .line 1488
    :cond_17
    if-eqz v7, :cond_18

    #@252
    .line 1489
    move-object/from16 v0, p0

    #@254
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@256
    move-object/from16 v21, v0

    #@258
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    #@25b
    move-result-object v21

    #@25c
    move-object/from16 v0, v21

    #@25e
    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    #@260
    move-object v10, v0

    #@261
    .line 1491
    .local v10, "gl":Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@264
    move-result-object v21

    #@265
    move-object/from16 v0, v21

    #@267
    invoke-virtual {v0, v10}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    #@26a
    .line 1492
    const/4 v7, 0x0

    #@26b
    .line 1495
    .end local v10    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_18
    if-eqz v5, :cond_1a

    #@26d
    .line 1499
    move-object/from16 v0, p0

    #@26f
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@271
    move-object/from16 v21, v0

    #@273
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@276
    move-result-object v18

    #@277
    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@279
    .line 1500
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_19

    #@27b
    .line 1502
    :try_start_f
    const-string/jumbo v21, "onSurfaceCreated"

    #@27e
    const-wide/16 v22, 0x8

    #@280
    move-wide/from16 v0, v22

    #@282
    move-object/from16 v2, v21

    #@284
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@287
    .line 1503
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    #@28a
    move-result-object v21

    #@28b
    move-object/from16 v0, p0

    #@28d
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@28f
    move-object/from16 v22, v0

    #@291
    move-object/from16 v0, v22

    #@293
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@295
    move-object/from16 v22, v0

    #@297
    move-object/from16 v0, v21

    #@299
    move-object/from16 v1, v22

    #@29b
    invoke-interface {v0, v10, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    #@29e
    .line 1505
    const-wide/16 v22, 0x8

    #@2a0
    :try_start_10
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@2a3
    .line 1508
    :cond_19
    const/4 v5, 0x0

    #@2a4
    .line 1511
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1a
    if-eqz v15, :cond_1c

    #@2a6
    .line 1515
    move-object/from16 v0, p0

    #@2a8
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@2aa
    move-object/from16 v21, v0

    #@2ac
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2af
    move-result-object v18

    #@2b0
    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    #@2b2
    .line 1516
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_1b

    #@2b4
    .line 1518
    :try_start_11
    const-string/jumbo v21, "onSurfaceChanged"

    #@2b7
    const-wide/16 v22, 0x8

    #@2b9
    move-wide/from16 v0, v22

    #@2bb
    move-object/from16 v2, v21

    #@2bd
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2c0
    .line 1519
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    #@2c3
    move-result-object v21

    #@2c4
    move-object/from16 v0, v21

    #@2c6
    move/from16 v1, v19

    #@2c8
    invoke-interface {v0, v10, v1, v11}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    #@2cb
    .line 1521
    const-wide/16 v22, 0x8

    #@2cd
    :try_start_12
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@2d0
    .line 1524
    :cond_1b
    const/4 v15, 0x0

    #@2d1
    .line 1531
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1c
    move-object/from16 v0, p0

    #@2d3
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@2d5
    move-object/from16 v21, v0

    #@2d7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2da
    move-result-object v18

    #@2db
    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    #@2dd
    .line 1532
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_1d

    #@2df
    .line 1534
    :try_start_13
    const-string/jumbo v21, "onDrawFrame"

    #@2e2
    const-wide/16 v22, 0x8

    #@2e4
    move-wide/from16 v0, v22

    #@2e6
    move-object/from16 v2, v21

    #@2e8
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2eb
    .line 1535
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    #@2ee
    move-result-object v21

    #@2ef
    move-object/from16 v0, v21

    #@2f1
    invoke-interface {v0, v10}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    #@2f4
    .line 1537
    const-wide/16 v22, 0x8

    #@2f6
    :try_start_14
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@2f9
    .line 1541
    :cond_1d
    move-object/from16 v0, p0

    #@2fb
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@2fd
    move-object/from16 v21, v0

    #@2ff
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    #@302
    move-result v16

    #@303
    .line 1542
    .local v16, "swapError":I
    sparse-switch v16, :sswitch_data_0

    #@306
    .line 1556
    const-string/jumbo v21, "GLThread"

    #@309
    const-string/jumbo v22, "eglSwapBuffers"

    #@30c
    move-object/from16 v0, v21

    #@30e
    move-object/from16 v1, v22

    #@310
    move/from16 v2, v16

    #@312
    invoke-static {v0, v1, v2}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    #@315
    .line 1558
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@318
    move-result-object v22

    #@319
    monitor-enter v22
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    #@31a
    .line 1559
    const/16 v21, 0x1

    #@31c
    :try_start_15
    move/from16 v0, v21

    #@31e
    move-object/from16 v1, p0

    #@320
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    #@322
    .line 1560
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@325
    move-result-object v21

    #@326
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    #@329
    :try_start_16
    monitor-exit v22

    #@32a
    .line 1565
    :goto_7
    :sswitch_0
    if-eqz v20, :cond_0

    #@32c
    .line 1566
    const/4 v8, 0x1

    #@32d
    goto/16 :goto_0

    #@32f
    .line 1473
    .end local v16    # "swapError":I
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_3
    move-exception v21

    #@330
    monitor-exit v22

    #@331
    throw v21

    #@332
    .line 1478
    :cond_1e
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@335
    move-result-object v22

    #@336
    monitor-enter v22
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    #@337
    .line 1479
    const/16 v21, 0x1

    #@339
    :try_start_17
    move/from16 v0, v21

    #@33b
    move-object/from16 v1, p0

    #@33d
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    #@33f
    .line 1480
    const/16 v21, 0x1

    #@341
    move/from16 v0, v21

    #@343
    move-object/from16 v1, p0

    #@345
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    #@347
    .line 1481
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@34a
    move-result-object v21

    #@34b
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    #@34e
    :try_start_18
    monitor-exit v22

    #@34f
    goto/16 :goto_0

    #@351
    .line 1478
    :catchall_4
    move-exception v21

    #@352
    monitor-exit v22

    #@353
    throw v21

    #@354
    .line 1504
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_5
    move-exception v21

    #@355
    .line 1505
    const-wide/16 v22, 0x8

    #@357
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@35a
    .line 1504
    throw v21

    #@35b
    .line 1520
    :catchall_6
    move-exception v21

    #@35c
    .line 1521
    const-wide/16 v22, 0x8

    #@35e
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@361
    .line 1520
    throw v21

    #@362
    .line 1536
    :catchall_7
    move-exception v21

    #@363
    .line 1537
    const-wide/16 v22, 0x8

    #@365
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@368
    .line 1536
    throw v21

    #@369
    .line 1549
    .restart local v16    # "swapError":I
    :sswitch_1
    const/4 v12, 0x1

    #@36a
    .line 1550
    goto :goto_7

    #@36b
    .line 1558
    :catchall_8
    move-exception v21

    #@36c
    monitor-exit v22

    #@36d
    throw v21
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    #@36e
    .line 1574
    .end local v16    # "swapError":I
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_9
    move-exception v21

    #@36f
    monitor-exit v22

    #@370
    throw v21

    #@371
    .line 1542
    nop

    #@372
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
    .line 1586
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
    .line 1587
    :cond_2
    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@12
    if-lez v2, :cond_0

    #@14
    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@16
    if-lez v2, :cond_0

    #@18
    .line 1588
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
    .line 1264
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1265
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@6
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    #@9
    .line 1266
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@c
    .line 1267
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@13
    .line 1263
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    #@0
    .prologue
    .line 1253
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1254
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@7
    .line 1255
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@9
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    #@c
    .line 1252
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    #@0
    .prologue
    .line 1582
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
    .line 1602
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v0

    #@4
    monitor-enter v0

    #@5
    .line 1603
    :try_start_0
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 1602
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
    .line 1652
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1656
    const/4 v1, 0x1

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@8
    .line 1657
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@f
    .line 1658
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
    .line 1651
    return-void

    #@19
    .line 1663
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
    .line 1664
    :catch_0
    move-exception v0

    #@22
    .line 1665
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
    .line 1652
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
    .line 1672
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1676
    const/4 v1, 0x0

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@8
    .line 1677
    const/4 v1, 0x1

    #@9
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@b
    .line 1678
    const/4 v1, 0x0

    #@c
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@e
    .line 1679
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@15
    .line 1680
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
    .line 1671
    return-void

    #@23
    .line 1685
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
    .line 1686
    :catch_0
    move-exception v0

    #@2c
    .line 1687
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
    .line 1672
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
    .line 1694
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1695
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@7
    .line 1696
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@9
    .line 1697
    const/4 v1, 0x1

    #@a
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@c
    .line 1698
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@f
    .line 1699
    const/4 v1, 0x0

    #@10
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@12
    .line 1700
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@19
    .line 1703
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    #@1b
    if-nez v1, :cond_0

    #@1d
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    if-eqz v1, :cond_1

    #@21
    :cond_0
    monitor-exit v2

    #@22
    .line 1693
    return-void

    #@23
    .line 1703
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@25
    if-nez v1, :cond_0

    #@27
    .line 1704
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result v1

    #@2b
    .line 1703
    if-eqz v1, :cond_0

    #@2d
    .line 1709
    :try_start_2
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 1710
    :catch_0
    move-exception v0

    #@36
    .line 1711
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 1694
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@3f
    monitor-exit v2

    #@40
    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1743
    if-nez p1, :cond_0

    #@2
    .line 1744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "r must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1746
    :cond_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@e
    move-result-object v1

    #@f
    monitor-enter v1

    #@10
    .line 1747
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 1748
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
    .line 1742
    return-void

    #@1e
    .line 1746
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
    .line 1720
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1721
    const/4 v1, 0x1

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    #@8
    .line 1722
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@f
    .line 1723
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    if-nez v1, :cond_0

    #@13
    .line 1725
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
    .line 1726
    :catch_0
    move-exception v0

    #@1c
    .line 1727
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
    .line 1720
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
    .line 1717
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    #@0
    .prologue
    .line 1734
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    #@3
    .line 1735
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@a
    .line 1733
    return-void
.end method

.method public requestRender()V
    .locals 2

    #@0
    .prologue
    .line 1608
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v1

    #@4
    monitor-enter v1

    #@5
    .line 1609
    const/4 v0, 0x1

    #@6
    :try_start_0
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@8
    .line 1610
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
    .line 1607
    return-void

    #@11
    .line 1608
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 1234
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
    .line 1240
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1244
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@25
    .line 1233
    :goto_0
    return-void

    #@26
    .line 1241
    :catch_0
    move-exception v0

    #@27
    .line 1244
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@2e
    goto :goto_0

    #@2f
    .line 1243
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@30
    .line 1244
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@37
    .line 1243
    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    #@0
    .prologue
    .line 1592
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 1593
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "renderMode"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1595
    :cond_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@11
    move-result-object v1

    #@12
    monitor-enter v1

    #@13
    .line 1596
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    #@15
    .line 1597
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
    .line 1591
    return-void

    #@1e
    .line 1595
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
    .line 1615
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1619
    const/4 v1, 0x1

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@8
    .line 1620
    const/4 v1, 0x0

    #@9
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    #@b
    .line 1621
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@12
    .line 1622
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1623
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    if-eqz v1, :cond_1

    #@1a
    :cond_0
    monitor-exit v2

    #@1b
    .line 1614
    return-void

    #@1c
    .line 1624
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 1626
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
    .line 1627
    :catch_0
    move-exception v0

    #@29
    .line 1628
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
    .line 1615
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
    .line 1635
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1639
    const/4 v1, 0x0

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@8
    .line 1640
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@f
    .line 1641
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
    .line 1634
    return-void

    #@19
    .line 1643
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
    .line 1644
    :catch_0
    move-exception v0

    #@22
    .line 1645
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
    .line 1635
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method
