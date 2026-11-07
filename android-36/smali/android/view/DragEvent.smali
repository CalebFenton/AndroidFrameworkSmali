.class public Landroid/view/DragEvent;
.super Ljava/lang/Object;
.source "DragEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist ACTION_DRAG_ENDED:I = 0x4

.field public static final whitelist ACTION_DRAG_ENTERED:I = 0x5

.field public static final whitelist ACTION_DRAG_EXITED:I = 0x6

.field public static final whitelist ACTION_DRAG_LOCATION:I = 0x2

.field public static final whitelist ACTION_DRAG_STARTED:I = 0x1

.field public static final whitelist ACTION_DROP:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_RECYCLED:I = 0xa

.field private static final greylist-max-o TRACK_RECYCLED_LOCATION:Z = false

.field private static final greylist-max-o gRecyclerLock:Ljava/lang/Object;

.field private static greylist-max-o gRecyclerTop:Landroid/view/DragEvent;

.field private static greylist-max-o gRecyclerUsed:I


# instance fields
.field greylist-max-o mAction:I

.field greylist-max-r mClipData:Landroid/content/ClipData;

.field greylist-max-r mClipDescription:Landroid/content/ClipDescription;

.field private blacklist mDisplayId:I

.field greylist-max-o mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

.field greylist-max-o mDragResult:Z

.field private blacklist mDragSurface:Landroid/view/SurfaceControl;

.field greylist-max-o mEventHandlerWasCalled:Z

.field private blacklist mFlags:I

.field greylist-max-o mLocalState:Ljava/lang/Object;

.field private greylist-max-o mNext:Landroid/view/DragEvent;

.field private blacklist mOffsetX:F

.field private blacklist mOffsetY:F

.field private greylist-max-o mRecycled:Z

.field private greylist-max-o mRecycledLocation:Ljava/lang/RuntimeException;

.field greylist-max-o mX:F

.field greylist-max-o mY:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDragSurface(Landroid/view/DragEvent;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDragSurface(Landroid/view/DragEvent;Landroid/view/SurfaceControl;)V
    .registers 2

    iput-object p1, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/view/DragEvent;I)V
    .registers 2

    iput p1, p0, Landroid/view/DragEvent;->mFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffsetX(Landroid/view/DragEvent;F)V
    .registers 2

    iput p1, p0, Landroid/view/DragEvent;->mOffsetX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffsetY(Landroid/view/DragEvent;F)V
    .registers 2

    iput p1, p0, Landroid/view/DragEvent;->mOffsetY:F

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 176
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 177
    const/4 v0, 0x0

    sput v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    .line 178
    const/4 v0, 0x0

    sput-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    .line 630
    new-instance v0, Landroid/view/DragEvent$1;

    invoke-direct {v0}, Landroid/view/DragEvent$1;-><init>()V

    sput-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method public static blacklist actionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "action"    # I

    .line 547
    packed-switch p0, :pswitch_data_1a

    .line 561
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 559
    :pswitch_8
    const-string v0, "ACTION_DRAG_EXITED"

    return-object v0

    .line 557
    :pswitch_b
    const-string v0, "ACTION_DRAG_ENTERED"

    return-object v0

    .line 555
    :pswitch_e
    const-string v0, "ACTION_DRAG_ENDED"

    return-object v0

    .line 553
    :pswitch_11
    const-string v0, "ACTION_DROP"

    return-object v0

    .line 551
    :pswitch_14
    const-string v0, "ACTION_DRAG_LOCATION"

    return-object v0

    .line 549
    :pswitch_17
    const-string v0, "ACTION_DRAG_STARTED"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist init(IFFFFIILandroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V
    .registers 14
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "offsetX"    # F
    .param p5, "offsetY"    # F
    .param p6, "displayId"    # I
    .param p7, "flags"    # I
    .param p8, "description"    # Landroid/content/ClipDescription;
    .param p9, "data"    # Landroid/content/ClipData;
    .param p10, "dragSurface"    # Landroid/view/SurfaceControl;
    .param p11, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;
    .param p12, "localState"    # Ljava/lang/Object;
    .param p13, "result"    # Z

    .line 308
    iput p1, p0, Landroid/view/DragEvent;->mAction:I

    .line 309
    iput p2, p0, Landroid/view/DragEvent;->mX:F

    .line 310
    iput p3, p0, Landroid/view/DragEvent;->mY:F

    .line 311
    iput p4, p0, Landroid/view/DragEvent;->mOffsetX:F

    .line 312
    iput p5, p0, Landroid/view/DragEvent;->mOffsetY:F

    .line 313
    iput p6, p0, Landroid/view/DragEvent;->mDisplayId:I

    .line 314
    iput p7, p0, Landroid/view/DragEvent;->mFlags:I

    .line 315
    iput-object p8, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 316
    iput-object p9, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 317
    iput-object p10, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    .line 318
    iput-object p11, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    .line 319
    iput-object p12, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 320
    iput-boolean p13, p0, Landroid/view/DragEvent;->mDragResult:Z

    .line 321
    return-void
.end method

.method static greylist-max-o obtain()Landroid/view/DragEvent;
    .registers 13

    .line 324
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v12}, Landroid/view/DragEvent;->obtain(IFFFFIILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(IFFFFIILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .registers 30
    .param p0, "action"    # I
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F
    .param p5, "displayId"    # I
    .param p6, "flags"    # I
    .param p7, "localState"    # Ljava/lang/Object;
    .param p8, "description"    # Landroid/content/ClipDescription;
    .param p9, "data"    # Landroid/content/ClipData;
    .param p10, "dragSurface"    # Landroid/view/SurfaceControl;
    .param p11, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;
    .param p12, "result"    # Z

    .line 333
    sget-object v1, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_3
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    if-nez v0, :cond_2c

    .line 335
    new-instance v0, Landroid/view/DragEvent;

    invoke-direct {v0}, Landroid/view/DragEvent;-><init>()V

    move-object v2, v0

    .line 336
    .local v2, "ev":Landroid/view/DragEvent;
    move/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v14, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v15, p12

    invoke-direct/range {v2 .. v15}, Landroid/view/DragEvent;->init(IFFFFIILandroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V

    .line 338
    monitor-exit v1

    return-object v2

    .line 340
    .end local v2    # "ev":Landroid/view/DragEvent;
    :cond_2c
    sget-object v3, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    .line 341
    .local v3, "ev":Landroid/view/DragEvent;
    iget-object v0, v3, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    sput-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    .line 342
    sget v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    .line 343
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_5f

    .line 344
    const/4 v0, 0x0

    iput-object v0, v3, Landroid/view/DragEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    .line 345
    const/4 v1, 0x0

    iput-boolean v1, v3, Landroid/view/DragEvent;->mRecycled:Z

    .line 346
    iput-object v0, v3, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    .line 348
    move/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v15, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v16, p12

    invoke-direct/range {v3 .. v16}, Landroid/view/DragEvent;->init(IFFFFIILandroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V

    .line 351
    return-object v3

    .line 343
    .end local v3    # "ev":Landroid/view/DragEvent;
    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public static greylist-max-r obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;
    .registers 14
    .param p0, "source"    # Landroid/view/DragEvent;

    .line 357
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    iget v1, p0, Landroid/view/DragEvent;->mX:F

    iget v2, p0, Landroid/view/DragEvent;->mY:F

    iget v3, p0, Landroid/view/DragEvent;->mOffsetX:F

    iget v4, p0, Landroid/view/DragEvent;->mOffsetY:F

    iget v5, p0, Landroid/view/DragEvent;->mDisplayId:I

    iget v6, p0, Landroid/view/DragEvent;->mFlags:I

    iget-object v7, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    iget-object v8, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iget-object v9, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iget-object v10, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    iget-object v11, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    iget-boolean v12, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-static/range {v0 .. v12}, Landroid/view/DragEvent;->obtain(IFFFFIILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .registers 2

    .line 377
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    return v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .registers 2

    .line 422
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getClipDescription()Landroid/content/ClipDescription;
    .registers 2

    .line 438
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 410
    iget v0, p0, Landroid/view/DragEvent;->mDisplayId:I

    return v0
.end method

.method public greylist-max-o getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;
    .registers 2

    .line 453
    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    return-object v0
.end method

.method public blacklist getDragFlags()I
    .registers 2

    .line 448
    iget v0, p0, Landroid/view/DragEvent;->mFlags:I

    return v0
.end method

.method public blacklist getDragSurface()Landroid/view/SurfaceControl;
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public whitelist getLocalState()Ljava/lang/Object;
    .registers 2

    .line 472
    iget-object v0, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getOffsetX()F
    .registers 2

    .line 400
    iget v0, p0, Landroid/view/DragEvent;->mOffsetX:F

    return v0
.end method

.method public blacklist getOffsetY()F
    .registers 2

    .line 405
    iget v0, p0, Landroid/view/DragEvent;->mOffsetY:F

    return v0
.end method

.method public whitelist getResult()Z
    .registers 2

    .line 499
    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    return v0
.end method

.method public whitelist getX()F
    .registers 2

    .line 386
    iget v0, p0, Landroid/view/DragEvent;->mX:F

    return v0
.end method

.method public whitelist getY()F
    .registers 2

    .line 395
    iget v0, p0, Landroid/view/DragEvent;->mY:F

    return v0
.end method

.method public final greylist-max-o recycle()V
    .registers 5

    .line 516
    iget-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    if-nez v0, :cond_2a

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    .line 522
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 523
    iput-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 524
    iput-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 525
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 527
    sget-object v1, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 528
    :try_start_14
    sget v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_25

    .line 529
    sget v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    add-int/2addr v2, v0

    sput v2, Landroid/view/DragEvent;->gRecyclerUsed:I

    .line 530
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    iput-object v0, p0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    .line 531
    sput-object p0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    .line 533
    :cond_25
    monitor-exit v1

    .line 534
    return-void

    .line 533
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_27

    throw v0

    .line 517
    :cond_2a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragEvent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DragEvent;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 594
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget v0, p0, Landroid/view/DragEvent;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 596
    iget v0, p0, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 597
    iget v0, p0, Landroid/view/DragEvent;->mOffsetX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 598
    iget v0, p0, Landroid/view/DragEvent;->mOffsetY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 599
    iget v0, p0, Landroid/view/DragEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2d

    .line 602
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    .line 604
    :cond_2d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 607
    :goto_35
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    if-nez v0, :cond_3d

    .line 608
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .line 610
    :cond_3d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 613
    :goto_45
    iget-object v0, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_4d

    .line 614
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    .line 616
    :cond_4d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-object v0, p0, Landroid/view/DragEvent;->mDragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 619
    :goto_55
    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    if-nez v0, :cond_5d

    .line 620
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_69

    .line 622
    :cond_5d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-interface {v0}, Lcom/android/internal/view/IDragAndDropPermissions;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 625
    :goto_69
    return-void
.end method
