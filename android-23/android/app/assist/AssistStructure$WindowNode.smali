.class public Landroid/app/assist/AssistStructure$WindowNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowNode"
.end annotation


# instance fields
.field final mDisplayId:I

.field final mHeight:I

.field final mRoot:Landroid/app/assist/AssistStructure$ViewNode;

.field final mTitle:Ljava/lang/CharSequence;

.field final mWidth:I

.field final mX:I

.field final mY:I


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;)V
    .locals 3
    .param p1, "reader"    # Landroid/app/assist/AssistStructure$ParcelTransferReader;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 426
    const v1, 0x11111111

    #@7
    invoke-virtual {p1, v1, v2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    #@a
    move-result-object v0

    #@b
    .line 427
    .local v0, "in":Landroid/os/Parcel;
    iget v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    iput v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    #@11
    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    #@17
    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    #@1d
    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v1

    #@21
    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    #@23
    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    #@29
    .line 432
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Ljava/lang/CharSequence;

    #@31
    iput-object v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    #@33
    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v1

    #@37
    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    #@39
    .line 434
    new-instance v1, Landroid/app/assist/AssistStructure$ViewNode;

    #@3b
    invoke-direct {v1, p1, v2}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    #@3e
    iput-object v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    #@40
    .line 425
    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure;Landroid/view/ViewRootImpl;)V
    .locals 6
    .param p1, "assist"    # Landroid/app/assist/AssistStructure;
    .param p2, "root"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 404
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    #@7
    move-result-object v2

    #@8
    .line 405
    .local v2, "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    #@a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@d
    .line 406
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    #@10
    .line 407
    iget v3, v1, Landroid/graphics/Rect;->left:I

    #@12
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@15
    move-result v4

    #@16
    sub-int/2addr v3, v4

    #@17
    iput v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    #@19
    .line 408
    iget v3, v1, Landroid/graphics/Rect;->top:I

    #@1b
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@1e
    move-result v4

    #@1f
    sub-int/2addr v3, v4

    #@20
    iput v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    #@22
    .line 409
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@25
    move-result v3

    #@26
    iput v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    #@28
    .line 410
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@2b
    move-result v3

    #@2c
    iput v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    #@2e
    .line 411
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    #@31
    move-result-object v3

    #@32
    iput-object v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    #@34
    .line 412
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getDisplayId()I

    #@37
    move-result v3

    #@38
    iput v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    #@3a
    .line 413
    new-instance v3, Landroid/app/assist/AssistStructure$ViewNode;

    #@3c
    invoke-direct {v3}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    #@3f
    iput-object v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    #@41
    .line 414
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    #@43
    iget-object v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    #@45
    invoke-direct {v0, p1, v3, v5}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    #@48
    .line 415
    .local v0, "builder":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    #@4b
    move-result v3

    #@4c
    and-int/lit16 v3, v3, 0x2000

    #@4e
    if-eqz v3, :cond_0

    #@50
    .line 418
    invoke-virtual {v2, v0}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    #@53
    .line 419
    const/4 v3, 0x1

    #@54
    invoke-virtual {v0, v3}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setAssistBlocked(Z)V

    #@57
    .line 420
    return-void

    #@58
    .line 422
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    #@5b
    .line 403
    return-void
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    #@0
    .prologue
    .line 488
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 473
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    #@2
    return v0
.end method

.method public getLeft()I
    .locals 1

    #@0
    .prologue
    .line 451
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    #@2
    return v0
.end method

.method public getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTop()I
    .locals 1

    #@0
    .prologue
    .line 459
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 466
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    #@2
    return v0
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p3, "tmpMatrix"    # [F

    #@0
    .prologue
    .line 438
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 439
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 440
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 441
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 442
    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@1a
    .line 443
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 437
    return-void
.end method
