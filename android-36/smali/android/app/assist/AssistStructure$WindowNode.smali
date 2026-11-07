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
.field final greylist-max-o mDisplayId:I

.field final greylist-max-o mHeight:I

.field final greylist-max-o mRoot:Landroid/app/assist/AssistStructure$ViewNode;

.field final greylist-max-o mTitle:Ljava/lang/CharSequence;

.field final greylist-max-o mWidth:I

.field final greylist-max-o mX:I

.field final greylist-max-o mY:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;)V
    .registers 5
    .param p1, "reader"    # Landroid/app/assist/AssistStructure$ParcelTransferReader;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const v0, 0x11111111

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v0

    .line 560
    .local v0, "in":Landroid/os/Parcel;
    iget v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    .line 565
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    .line 567
    new-instance v2, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v2, p1, v1}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    iput-object v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    .line 568
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/assist/AssistStructure;Landroid/view/ViewRootImpl;ZI)V
    .registers 10
    .param p1, "assist"    # Landroid/app/assist/AssistStructure;
    .param p2, "root"    # Landroid/view/ViewRootImpl;
    .param p3, "forAutoFill"    # Z
    .param p4, "flags"    # I

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 527
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 528
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 529
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    .line 530
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    .line 531
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    .line 532
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    .line 533
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    .line 534
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    .line 535
    new-instance v2, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v2}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    iput-object v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    .line 537
    new-instance v2, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    iget-object v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    .line 538
    .local v2, "builder":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_66

    .line 539
    if-eqz p3, :cond_5e

    .line 540
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Landroid/app/assist/AssistStructure$WindowNode;->resolveViewAutofillFlags(Landroid/content/Context;I)I

    move-result v3

    .line 541
    .local v3, "viewFlags":I
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 542
    .end local v3    # "viewFlags":I
    goto :goto_66

    .line 545
    :cond_5e
    invoke-virtual {v0, v2}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    .line 546
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setAssistBlocked(Z)V

    .line 547
    return-void

    .line 550
    :cond_66
    :goto_66
    if-eqz p3, :cond_74

    .line 551
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Landroid/app/assist/AssistStructure$WindowNode;->resolveViewAutofillFlags(Landroid/content/Context;I)I

    move-result v3

    .line 552
    .restart local v3    # "viewFlags":I
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 553
    .end local v3    # "viewFlags":I
    goto :goto_77

    .line 554
    :cond_74
    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 556
    :goto_77
    return-void
.end method


# virtual methods
.method public whitelist getDisplayId()I
    .registers 2

    .line 628
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 613
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    return v0
.end method

.method public whitelist getLeft()I
    .registers 2

    .line 591
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    return v0
.end method

.method public whitelist getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;
    .registers 2

    .line 635
    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 620
    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTop()I
    .registers 2

    .line 599
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 606
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    return v0
.end method

.method greylist-max-o resolveViewAutofillFlags(Landroid/content/Context;I)I
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fillRequestFlags"    # I

    .line 573
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_11

    .line 572
    invoke-virtual {p1}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_f

    goto :goto_11

    .line 574
    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 571
    :goto_12
    return v0
.end method

.method greylist-max-o writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p3, "tmpMatrix"    # [F

    .line 578
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 583
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    return-void
.end method
