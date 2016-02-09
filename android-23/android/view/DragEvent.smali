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
    .line 139
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    #@7
    .line 140
    const/4 v0, 0x0

    #@8
    sput v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    #@a
    .line 141
    const/4 v0, 0x0

    #@b
    sput-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    #@d
    .line 486
    new-instance v0, Landroid/view/DragEvent$1;

    #@f
    invoke-direct {v0}, Landroid/view/DragEvent$1;-><init>()V

    #@12
    .line 485
    sput-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14
    .line 124
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "description"    # Landroid/content/ClipDescription;
    .param p5, "data"    # Landroid/content/ClipData;
    .param p6, "localState"    # Ljava/lang/Object;
    .param p7, "result"    # Z

    #@0
    .prologue
    .line 257
    iput p1, p0, Landroid/view/DragEvent;->mAction:I

    #@2
    .line 258
    iput p2, p0, Landroid/view/DragEvent;->mX:F

    #@4
    .line 259
    iput p3, p0, Landroid/view/DragEvent;->mY:F

    #@6
    .line 260
    iput-object p4, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@8
    .line 261
    iput-object p5, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@a
    .line 262
    iput-object p6, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@c
    .line 263
    iput-boolean p7, p0, Landroid/view/DragEvent;->mDragResult:Z

    #@e
    .line 256
    return-void
.end method

.method static obtain()Landroid/view/DragEvent;
    .locals 7

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
    move v6, v0

    #@7
    .line 267
    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;
    .locals 9
    .param p0, "action"    # I
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "localState"    # Ljava/lang/Object;
    .param p4, "description"    # Landroid/content/ClipDescription;
    .param p5, "data"    # Landroid/content/ClipData;
    .param p6, "result"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 274
    sget-object v8, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    #@3
    monitor-enter v8

    #@4
    .line 275
    :try_start_0
    sget-object v1, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 276
    new-instance v0, Landroid/view/DragEvent;

    #@a
    invoke-direct {v0}, Landroid/view/DragEvent;-><init>()V

    #@d
    .local v0, "ev":Landroid/view/DragEvent;
    move v1, p0

    #@e
    move v2, p1

    #@f
    move v3, p2

    #@10
    move-object v4, p4

    #@11
    move-object v5, p5

    #@12
    move-object v6, p3

    #@13
    move v7, p6

    #@14
    .line 277
    invoke-direct/range {v0 .. v7}, Landroid/view/DragEvent;->init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v8

    #@18
    .line 278
    return-object v0

    #@19
    .line 280
    .end local v0    # "ev":Landroid/view/DragEvent;
    :cond_0
    :try_start_1
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    #@1b
    .line 281
    .restart local v0    # "ev":Landroid/view/DragEvent;
    iget-object v1, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    #@1d
    sput-object v1, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    #@1f
    .line 282
    sget v1, Landroid/view/DragEvent;->gRecyclerUsed:I

    #@21
    add-int/lit8 v1, v1, -0x1

    #@23
    sput v1, Landroid/view/DragEvent;->gRecyclerUsed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit v8

    #@26
    .line 284
    iput-object v2, v0, Landroid/view/DragEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    #@28
    .line 285
    const/4 v1, 0x0

    #@29
    iput-boolean v1, v0, Landroid/view/DragEvent;->mRecycled:Z

    #@2b
    .line 286
    iput-object v2, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    #@2d
    move v1, p0

    #@2e
    move v2, p1

    #@2f
    move v3, p2

    #@30
    move-object v4, p4

    #@31
    move-object v5, p5

    #@32
    move-object v6, p3

    #@33
    move v7, p6

    #@34
    .line 288
    invoke-direct/range {v0 .. v7}, Landroid/view/DragEvent;->init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Ljava/lang/Object;Z)V

    #@37
    .line 290
    return-object v0

    #@38
    .line 274
    .end local v0    # "ev":Landroid/view/DragEvent;
    :catchall_0
    move-exception v1

    #@39
    monitor-exit v8

    #@3a
    throw v1
.end method

.method public static obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;
    .locals 7
    .param p0, "source"    # Landroid/view/DragEvent;

    #@0
    .prologue
    .line 295
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    #@2
    iget v1, p0, Landroid/view/DragEvent;->mX:F

    #@4
    iget v2, p0, Landroid/view/DragEvent;->mY:F

    #@6
    iget-object v3, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@8
    .line 296
    iget-object v4, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@a
    iget-object v5, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@c
    iget-boolean v6, p0, Landroid/view/DragEvent;->mDragResult:Z

    #@e
    .line 295
    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 455
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAction()I
    .locals 1

    #@0
    .prologue
    .line 313
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    #@2
    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@2
    return-object v0
.end method

.method public getClipDescription()Landroid/content/ClipDescription;
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@2
    return-object v0
.end method

.method public getLocalState()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getResult()Z
    .locals 1

    #@0
    .prologue
    .line 398
    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    #@2
    return v0
.end method

.method public getX()F
    .locals 1

    #@0
    .prologue
    .line 322
    iget v0, p0, Landroid/view/DragEvent;->mX:F

    #@2
    return v0
.end method

.method public getY()F
    .locals 1

    #@0
    .prologue
    .line 332
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
    .line 415
    iget-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 416
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
    .line 418
    :cond_0
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    #@26
    .line 421
    iput-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@28
    .line 422
    iput-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@2a
    .line 423
    iput-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@2c
    .line 425
    sget-object v1, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    #@2e
    monitor-enter v1

    #@2f
    .line 426
    :try_start_0
    sget v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    #@31
    const/16 v2, 0xa

    #@33
    if-ge v0, v2, :cond_1

    #@35
    .line 427
    sget v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    #@37
    add-int/lit8 v0, v0, 0x1

    #@39
    sput v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    #@3b
    .line 428
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    #@3d
    iput-object v0, p0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    #@3f
    .line 429
    sput-object p0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :cond_1
    monitor-exit v1

    #@42
    .line 407
    return-void

    #@43
    .line 425
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
    .line 441
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
    .line 442
    const-string/jumbo v1, " action="

    #@1b
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 442
    iget v1, p0, Landroid/view/DragEvent;->mAction:I

    #@21
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 442
    const-string/jumbo v1, " @ ("

    #@28
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 442
    iget v1, p0, Landroid/view/DragEvent;->mX:F

    #@2e
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 442
    const-string/jumbo v1, ", "

    #@35
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 442
    iget v1, p0, Landroid/view/DragEvent;->mY:F

    #@3b
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 442
    const-string/jumbo v1, ") desc="

    #@42
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 442
    iget-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@48
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 443
    const-string/jumbo v1, " data="

    #@4f
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 443
    iget-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@55
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 443
    const-string/jumbo v1, " local="

    #@5c
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 443
    iget-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    #@62
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    .line 443
    const-string/jumbo v1, " result="

    #@69
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 443
    iget-boolean v1, p0, Landroid/view/DragEvent;->mDragResult:Z

    #@6f
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 444
    const-string/jumbo v1, "}"

    #@76
    .line 441
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
    .line 464
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 465
    iget v0, p0, Landroid/view/DragEvent;->mX:F

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@c
    .line 466
    iget v0, p0, Landroid/view/DragEvent;->mY:F

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@11
    .line 467
    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 468
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 469
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 474
    :goto_1
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@22
    if-nez v0, :cond_2

    #@24
    .line 475
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 463
    :goto_2
    return-void

    #@28
    :cond_0
    move v0, v2

    #@29
    .line 467
    goto :goto_0

    #@2a
    .line 471
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 472
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@2f
    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    #@32
    goto :goto_1

    #@33
    .line 477
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 478
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@38
    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@3b
    goto :goto_2
.end method
