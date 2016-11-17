.class public Landroid/view/DragEvent;
.super Ljava/lang/Object;
.source "DragEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DragEvent$1;
    }
.end annotation


# static fields
.field public static final ACTION_DRAG_ENDED:I = 0x4

.field public static final ACTION_DRAG_ENTERED:I = 0x5

.field public static final ACTION_DRAG_EXITED:I = 0x6

.field public static final ACTION_DRAG_LOCATION:I = 0x2

.field public static final ACTION_DRAG_STARTED:I = 0x1

.field public static final ACTION_DROP:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final TRACK_RECYCLED_LOCATION:Z

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/DragEvent;

.field private static gRecyclerUsed:I


# instance fields
.field mAction:I

.field mClipData:Landroid/content/ClipData;

.field mClipDescription:Landroid/content/ClipDescription;

.field mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

.field mDragResult:Z

.field mLocalState:Ljava/lang/Object;

.field private mNext:Landroid/view/DragEvent;

.field private mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;

.field mX:F

.field mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 143
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    #@7
    .line 144
    const/4 v0, 0x0

    #@8
    sput v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    #@a
    .line 145
    const/4 v0, 0x0

    #@b
    sput-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    #@d
    .line 510
    new-instance v0, Landroid/view/DragEvent$1;

    #@f
    invoke-direct {v0}, Landroid/view/DragEvent$1;-><init>()V

    #@12
    .line 509
    sput-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14
    .line 126
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "description"    # Landroid/content/ClipDescription;
    .param p5, "data"    # Landroid/content/ClipData;
    .param p6, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;
    .param p7, "localState"    # Ljava/lang/Object;
    .param p8, "result"    # Z

    #@0
    .prologue
    .line 263
    iput p1, p0, Landroid/view/DragEvent;->mAction:I

    #@2
    .line 264
    iput p2, p0, Landroid/view/DragEvent;->mX:F

    #@4
    .line 265
    iput p3, p0, Landroid/view/DragEvent;->mY:F

    #@6
    .line 266
    iput-object p4, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@8
    .line 267
    iput-object p5, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@a
    .line 268
    iput-object p6, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    #@c
    .line 269
    iput-object p7, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@e
    .line 270
    iput-boolean p8, p0, Landroid/view/DragEvent;->mDragResult:Z

    #@10
    .line 262
    return-void
.end method

.method static obtain()Landroid/view/DragEvent;
    .locals 8

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    move v2, v1

    #@4
    move-object v4, v3

    #@5
    move-object v5, v3

    #@6
    move-object v6, v3

    #@7
    move v7, v0

    #@8
    .line 274
    invoke-static/range {v0 .. v7}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .locals 10
    .param p0, "action"    # I
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "localState"    # Ljava/lang/Object;
    .param p4, "description"    # Landroid/content/ClipDescription;
    .param p5, "data"    # Landroid/content/ClipData;
    .param p6, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;
    .param p7, "result"    # Z

    #@0
    .prologue
    .line 282
    sget-object v9, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    #@2
    monitor-enter v9

    #@3
    .line 283
    :try_start_0
    sget-object v1, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 284
    new-instance v0, Landroid/view/DragEvent;

    #@9
    invoke-direct {v0}, Landroid/view/DragEvent;-><init>()V

    #@c
    .local v0, "ev":Landroid/view/DragEvent;
    move v1, p0

    #@d
    move v2, p1

    #@e
    move v3, p2

    #@f
    move-object v4, p4

    #@10
    move-object v5, p5

    #@11
    move-object/from16 v6, p6

    #@13
    move-object v7, p3

    #@14
    move/from16 v8, p7

    #@16
    .line 285
    invoke-direct/range {v0 .. v8}, Landroid/view/DragEvent;->init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v9

    #@1a
    .line 287
    return-object v0

    #@1b
    .line 289
    .end local v0    # "ev":Landroid/view/DragEvent;
    :cond_0
    :try_start_1
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    #@1d
    .line 290
    .restart local v0    # "ev":Landroid/view/DragEvent;
    iget-object v1, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    #@1f
    sput-object v1, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    #@21
    .line 291
    sget v1, Landroid/view/DragEvent;->gRecyclerUsed:I

    #@23
    add-int/lit8 v1, v1, -0x1

    #@25
    sput v1, Landroid/view/DragEvent;->gRecyclerUsed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    monitor-exit v9

    #@28
    .line 293
    const/4 v1, 0x0

    #@29
    iput-object v1, v0, Landroid/view/DragEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    #@2b
    .line 294
    const/4 v1, 0x0

    #@2c
    iput-boolean v1, v0, Landroid/view/DragEvent;->mRecycled:Z

    #@2e
    .line 295
    const/4 v1, 0x0

    #@2f
    iput-object v1, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    #@31
    move v1, p0

    #@32
    move v2, p1

    #@33
    move v3, p2

    #@34
    move-object v4, p4

    #@35
    move-object v5, p5

    #@36
    move-object/from16 v6, p6

    #@38
    move-object v7, p3

    #@39
    move/from16 v8, p7

    #@3b
    .line 297
    invoke-direct/range {v0 .. v8}, Landroid/view/DragEvent;->init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Ljava/lang/Object;Z)V

    #@3e
    .line 299
    return-object v0

    #@3f
    .line 282
    .end local v0    # "ev":Landroid/view/DragEvent;
    :catchall_0
    move-exception v1

    #@40
    monitor-exit v9

    #@41
    throw v1
.end method

.method public static obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;
    .locals 8
    .param p0, "source"    # Landroid/view/DragEvent;

    #@0
    .prologue
    .line 304
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    #@2
    iget v1, p0, Landroid/view/DragEvent;->mX:F

    #@4
    iget v2, p0, Landroid/view/DragEvent;->mY:F

    #@6
    iget-object v3, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@8
    .line 305
    iget-object v4, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@a
    iget-object v5, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@c
    iget-object v6, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    #@e
    .line 306
    iget-boolean v7, p0, Landroid/view/DragEvent;->mDragResult:Z

    #@10
    .line 304
    invoke-static/range {v0 .. v7}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 473
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAction()I
    .locals 1

    #@0
    .prologue
    .line 323
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    #@2
    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@2
    return-object v0
.end method

.method public getClipDescription()Landroid/content/ClipDescription;
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@2
    return-object v0
.end method

.method public getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;
    .locals 1

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    #@2
    return-object v0
.end method

.method public getLocalState()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getResult()Z
    .locals 1

    #@0
    .prologue
    .line 416
    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    #@2
    return v0
.end method

.method public getX()F
    .locals 1

    #@0
    .prologue
    .line 332
    iget v0, p0, Landroid/view/DragEvent;->mX:F

    #@2
    return v0
.end method

.method public getY()F
    .locals 1

    #@0
    .prologue
    .line 341
    iget v0, p0, Landroid/view/DragEvent;->mY:F

    #@2
    return v0
.end method

.method public final recycle()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 433
    iget-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 434
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {p0}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " recycled twice!"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 436
    :cond_0
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    #@26
    .line 439
    iput-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@28
    .line 440
    iput-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@2a
    .line 441
    iput-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@2c
    .line 443
    sget-object v1, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    #@2e
    monitor-enter v1

    #@2f
    .line 444
    :try_start_0
    sget v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    #@31
    const/16 v2, 0xa

    #@33
    if-ge v0, v2, :cond_1

    #@35
    .line 445
    sget v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    #@37
    add-int/lit8 v0, v0, 0x1

    #@39
    sput v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    #@3b
    .line 446
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    #@3d
    iput-object v0, p0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    #@3f
    .line 447
    sput-object p0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :cond_1
    monitor-exit v1

    #@42
    .line 425
    return-void

    #@43
    .line 443
    :catchall_0
    move-exception v0

    #@44
    monitor-exit v1

    #@45
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DragEvent{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 460
    const-string/jumbo v1, " action="

    #@1b
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 460
    iget v1, p0, Landroid/view/DragEvent;->mAction:I

    #@21
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 460
    const-string/jumbo v1, " @ ("

    #@28
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 460
    iget v1, p0, Landroid/view/DragEvent;->mX:F

    #@2e
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 460
    const-string/jumbo v1, ", "

    #@35
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 460
    iget v1, p0, Landroid/view/DragEvent;->mY:F

    #@3b
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 460
    const-string/jumbo v1, ") desc="

    #@42
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 460
    iget-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@48
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 461
    const-string/jumbo v1, " data="

    #@4f
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 461
    iget-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@55
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 461
    const-string/jumbo v1, " local="

    #@5c
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 461
    iget-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@62
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    .line 461
    const-string/jumbo v1, " result="

    #@69
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 461
    iget-boolean v1, p0, Landroid/view/DragEvent;->mDragResult:Z

    #@6f
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 462
    const-string/jumbo v1, "}"

    #@76
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 482
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 483
    iget v0, p0, Landroid/view/DragEvent;->mX:F

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@c
    .line 484
    iget v0, p0, Landroid/view/DragEvent;->mY:F

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@11
    .line 485
    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 486
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 487
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 492
    :goto_1
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@22
    if-nez v0, :cond_2

    #@24
    .line 493
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 498
    :goto_2
    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    #@29
    if-nez v0, :cond_3

    #@2b
    .line 499
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 481
    :goto_3
    return-void

    #@2f
    :cond_0
    move v0, v2

    #@30
    .line 485
    goto :goto_0

    #@31
    .line 489
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 490
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@36
    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    goto :goto_1

    #@3a
    .line 495
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 496
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@3f
    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@42
    goto :goto_2

    #@43
    .line 501
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 502
    iget-object v0, p0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    #@48
    invoke-interface {v0}, Lcom/android/internal/view/IDragAndDropPermissions;->asBinder()Landroid/os/IBinder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@4f
    goto :goto_3
.end method
