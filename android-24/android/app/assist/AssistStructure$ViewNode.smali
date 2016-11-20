.class public Landroid/app/assist/AssistStructure$ViewNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# static fields
.field static final FLAGS_ACCESSIBILITY_FOCUSED:I = 0x1000

.field static final FLAGS_ACTIVATED:I = 0x2000

.field static final FLAGS_ALL_CONTROL:I = -0x100000

.field static final FLAGS_ASSIST_BLOCKED:I = 0x80

.field static final FLAGS_CHECKABLE:I = 0x100

.field static final FLAGS_CHECKED:I = 0x200

.field static final FLAGS_CLICKABLE:I = 0x400

.field static final FLAGS_CONTEXT_CLICKABLE:I = 0x4000

.field static final FLAGS_DISABLED:I = 0x1

.field static final FLAGS_FOCUSABLE:I = 0x10

.field static final FLAGS_FOCUSED:I = 0x20

.field static final FLAGS_HAS_ALPHA:I = 0x20000000

.field static final FLAGS_HAS_CHILDREN:I = 0x100000

.field static final FLAGS_HAS_COMPLEX_TEXT:I = 0x800000

.field static final FLAGS_HAS_CONTENT_DESCRIPTION:I = 0x2000000

.field static final FLAGS_HAS_ELEVATION:I = 0x10000000

.field static final FLAGS_HAS_EXTRAS:I = 0x400000

.field static final FLAGS_HAS_ID:I = 0x200000

.field static final FLAGS_HAS_LARGE_COORDS:I = 0x4000000

.field static final FLAGS_HAS_MATRIX:I = 0x40000000

.field static final FLAGS_HAS_SCROLL:I = 0x8000000

.field static final FLAGS_HAS_TEXT:I = 0x1000000

.field static final FLAGS_LONG_CLICKABLE:I = 0x800

.field static final FLAGS_SELECTED:I = 0x40

.field static final FLAGS_VISIBILITY_MASK:I = 0xc

.field public static final TEXT_COLOR_UNDEFINED:I = 0x1

.field public static final TEXT_STYLE_BOLD:I = 0x1

.field public static final TEXT_STYLE_ITALIC:I = 0x2

.field public static final TEXT_STYLE_STRIKE_THRU:I = 0x8

.field public static final TEXT_STYLE_UNDERLINE:I = 0x4


# instance fields
.field mAlpha:F

.field mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

.field mClassName:Ljava/lang/String;

.field mContentDescription:Ljava/lang/CharSequence;

.field mElevation:F

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mHeight:I

.field mId:I

.field mIdEntry:Ljava/lang/String;

.field mIdPackage:Ljava/lang/String;

.field mIdType:Ljava/lang/String;

.field mMatrix:Landroid/graphics/Matrix;

.field mScrollX:I

.field mScrollY:I

.field mText:Landroid/app/assist/AssistStructure$ViewNodeText;

.field mWidth:I

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 514
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    #@6
    .line 526
    const/high16 v0, 0x3f800000    # 1.0f

    #@8
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    #@a
    .line 565
    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V
    .locals 9
    .param p1, "reader"    # Landroid/app/assist/AssistStructure$ParcelTransferReader;
    .param p2, "nestingLevel"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 514
    const/4 v6, -0x1

    #@5
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    #@7
    .line 526
    const/high16 v6, 0x3f800000    # 1.0f

    #@9
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    #@b
    .line 569
    const v6, 0x22222222

    #@e
    invoke-virtual {p1, v6, p2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    #@11
    move-result-object v3

    #@12
    .line 570
    .local v3, "in":Landroid/os/Parcel;
    iget v6, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    #@14
    add-int/lit8 v6, v6, 0x1

    #@16
    iput v6, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    #@18
    .line 571
    iget-object v4, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    #@1a
    .line 572
    .local v4, "preader":Landroid/os/PooledStringReader;
    invoke-virtual {v4}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    #@20
    .line 573
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v6

    #@24
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@26
    .line 574
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@28
    .line 575
    .local v1, "flags":I
    const/high16 v6, 0x200000

    #@2a
    and-int/2addr v6, v1

    #@2b
    if-eqz v6, :cond_0

    #@2d
    .line 576
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v6

    #@31
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    #@33
    .line 577
    iget v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    #@35
    if-eqz v6, :cond_0

    #@37
    .line 578
    invoke-virtual {v4}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    #@3d
    .line 579
    iget-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    #@3f
    if-eqz v6, :cond_0

    #@41
    .line 580
    invoke-virtual {v4}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    #@47
    .line 581
    invoke-virtual {v4}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    #@4d
    .line 585
    :cond_0
    const/high16 v6, 0x4000000

    #@4f
    and-int/2addr v6, v1

    #@50
    if-eqz v6, :cond_8

    #@52
    .line 586
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v6

    #@56
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    #@58
    .line 587
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v6

    #@5c
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    #@5e
    .line 588
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v6

    #@62
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    #@64
    .line 589
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v6

    #@68
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    #@6a
    .line 598
    :goto_0
    const/high16 v6, 0x8000000

    #@6c
    and-int/2addr v6, v1

    #@6d
    if-eqz v6, :cond_1

    #@6f
    .line 599
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v6

    #@73
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    #@75
    .line 600
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v6

    #@79
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    #@7b
    .line 602
    :cond_1
    const/high16 v6, 0x40000000    # 2.0f

    #@7d
    and-int/2addr v6, v1

    #@7e
    if-eqz v6, :cond_2

    #@80
    .line 603
    new-instance v6, Landroid/graphics/Matrix;

    #@82
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    #@85
    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    #@87
    .line 604
    iget-object v6, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    #@89
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->readFloatArray([F)V

    #@8c
    .line 605
    iget-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    #@8e
    iget-object v8, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    #@90
    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->setValues([F)V

    #@93
    .line 607
    :cond_2
    const/high16 v6, 0x10000000

    #@95
    and-int/2addr v6, v1

    #@96
    if-eqz v6, :cond_3

    #@98
    .line 608
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    #@9b
    move-result v6

    #@9c
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    #@9e
    .line 610
    :cond_3
    const/high16 v6, 0x20000000

    #@a0
    and-int/2addr v6, v1

    #@a1
    if-eqz v6, :cond_4

    #@a3
    .line 611
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    #@a6
    move-result v6

    #@a7
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    #@a9
    .line 613
    :cond_4
    const/high16 v6, 0x2000000

    #@ab
    and-int/2addr v6, v1

    #@ac
    if-eqz v6, :cond_5

    #@ae
    .line 614
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@b0
    invoke-interface {v6, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b3
    move-result-object v6

    #@b4
    check-cast v6, Ljava/lang/CharSequence;

    #@b6
    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    #@b8
    .line 616
    :cond_5
    const/high16 v6, 0x1000000

    #@ba
    and-int/2addr v6, v1

    #@bb
    if-eqz v6, :cond_6

    #@bd
    .line 617
    new-instance v8, Landroid/app/assist/AssistStructure$ViewNodeText;

    #@bf
    const/high16 v6, 0x800000

    #@c1
    and-int/2addr v6, v1

    #@c2
    if-nez v6, :cond_9

    #@c4
    const/4 v6, 0x1

    #@c5
    :goto_1
    invoke-direct {v8, v3, v6}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    #@c8
    iput-object v8, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@ca
    .line 619
    :cond_6
    const/high16 v6, 0x400000

    #@cc
    and-int/2addr v6, v1

    #@cd
    if-eqz v6, :cond_7

    #@cf
    .line 620
    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@d2
    move-result-object v6

    #@d3
    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    #@d5
    .line 622
    :cond_7
    const/high16 v6, 0x100000

    #@d7
    and-int/2addr v6, v1

    #@d8
    if-eqz v6, :cond_a

    #@da
    .line 623
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@dd
    move-result v0

    #@de
    .line 628
    .local v0, "NCHILDREN":I
    new-array v6, v0, [Landroid/app/assist/AssistStructure$ViewNode;

    #@e0
    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@e2
    .line 629
    const/4 v2, 0x0

    #@e3
    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_a

    #@e5
    .line 630
    iget-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@e7
    new-instance v7, Landroid/app/assist/AssistStructure$ViewNode;

    #@e9
    add-int/lit8 v8, p2, 0x1

    #@eb
    invoke-direct {v7, p1, v8}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    #@ee
    aput-object v7, v6, v2

    #@f0
    .line 629
    add-int/lit8 v2, v2, 0x1

    #@f2
    goto :goto_2

    #@f3
    .line 591
    .end local v0    # "NCHILDREN":I
    .end local v2    # "i":I
    :cond_8
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@f6
    move-result v5

    #@f7
    .line 592
    .local v5, "val":I
    and-int/lit16 v6, v5, 0x7fff

    #@f9
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    #@fb
    .line 593
    shr-int/lit8 v6, v5, 0x10

    #@fd
    and-int/lit16 v6, v6, 0x7fff

    #@ff
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    #@101
    .line 594
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    #@104
    move-result v5

    #@105
    .line 595
    and-int/lit16 v6, v5, 0x7fff

    #@107
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    #@109
    .line 596
    shr-int/lit8 v6, v5, 0x10

    #@10b
    and-int/lit16 v6, v6, 0x7fff

    #@10d
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    #@10f
    goto/16 :goto_0

    #@111
    .end local v5    # "val":I
    :cond_9
    move v6, v7

    #@112
    .line 617
    goto :goto_1

    #@113
    .line 568
    :cond_a
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    #@0
    .prologue
    .line 821
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    #@2
    return v0
.end method

.method public getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1049
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    #@0
    .prologue
    .line 1041
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@6
    array-length v0, v0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 924
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 932
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getElevation()F
    .locals 1

    #@0
    .prologue
    .line 812
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    #@2
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1034
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 794
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    #@2
    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1027
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@7
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    #@9
    :cond_0
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 723
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    #@2
    return v0
.end method

.method public getIdEntry()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 750
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIdPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 732
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 741
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLeft()I
    .locals 1

    #@0
    .prologue
    .line 757
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    #@2
    return v0
.end method

.method public getScrollX()I
    .locals 1

    #@0
    .prologue
    .line 772
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    #@2
    return v0
.end method

.method public getScrollY()I
    .locals 1

    #@0
    .prologue
    .line 780
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    #@2
    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 940
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@7
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    #@9
    :cond_0
    return-object v0
.end method

.method public getTextBackgroundColor()I
    .locals 1

    #@0
    .prologue
    .line 977
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@6
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public getTextColor()I
    .locals 1

    #@0
    .prologue
    .line 966
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@6
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public getTextLineBaselines()[I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1019
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@7
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    #@9
    :cond_0
    return-object v0
.end method

.method public getTextLineCharOffsets()[I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1009
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@7
    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    #@9
    :cond_0
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    #@0
    .prologue
    .line 956
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@6
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, -0x1

    #@a
    goto :goto_0
.end method

.method public getTextSelectionStart()I
    .locals 1

    #@0
    .prologue
    .line 947
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@6
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, -0x1

    #@a
    goto :goto_0
.end method

.method public getTextSize()F
    .locals 1

    #@0
    .prologue
    .line 987
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@6
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public getTextStyle()I
    .locals 1

    #@0
    .prologue
    .line 999
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@6
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public getTop()I
    .locals 1

    #@0
    .prologue
    .line 764
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    #@2
    return v0
.end method

.method public getTransformation()Landroid/graphics/Matrix;
    .locals 1

    #@0
    .prologue
    .line 803
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    #@0
    .prologue
    .line 829
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0xc

    #@4
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 787
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    #@2
    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 873
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit16 v1, v1, 0x1000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isActivated()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 901
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit16 v1, v1, 0x2000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isAssistBlocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 836
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit16 v1, v1, 0x80

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isCheckable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 880
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit16 v1, v1, 0x100

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isChecked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 887
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit16 v1, v1, 0x200

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isClickable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 850
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit16 v1, v1, 0x400

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isContextClickable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 915
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit16 v1, v1, 0x4000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 843
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isFocusable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 857
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isFocused()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 865
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x20

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isLongClickable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 908
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit16 v1, v1, 0x800

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isSelected()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 894
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x40

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)I
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p3, "tmpMatrix"    # [F

    #@0
    .prologue
    const/high16 v6, 0x400000

    #@2
    const/high16 v5, 0x200000

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    .line 636
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    #@8
    const v4, 0xfffff

    #@b
    and-int v0, v1, v4

    #@d
    .line 637
    .local v0, "flags":I
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    #@f
    const/4 v4, -0x1

    #@10
    if-eq v1, v4, :cond_0

    #@12
    .line 638
    or-int/2addr v0, v5

    #@13
    .line 640
    :cond_0
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    #@15
    and-int/lit16 v1, v1, -0x8000

    #@17
    if-nez v1, :cond_1

    #@19
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    #@1b
    and-int/lit16 v1, v1, -0x8000

    #@1d
    if-eqz v1, :cond_14

    #@1f
    .line 642
    :cond_1
    :goto_0
    const/high16 v1, 0x4000000

    #@21
    or-int/2addr v0, v1

    #@22
    .line 644
    :cond_2
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    #@24
    if-nez v1, :cond_3

    #@26
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    #@28
    if-eqz v1, :cond_4

    #@2a
    .line 645
    :cond_3
    const/high16 v1, 0x8000000

    #@2c
    or-int/2addr v0, v1

    #@2d
    .line 647
    :cond_4
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    #@2f
    if-eqz v1, :cond_5

    #@31
    .line 648
    const/high16 v1, 0x40000000    # 2.0f

    #@33
    or-int/2addr v0, v1

    #@34
    .line 650
    :cond_5
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    #@36
    const/4 v4, 0x0

    #@37
    cmpl-float v1, v1, v4

    #@39
    if-eqz v1, :cond_6

    #@3b
    .line 651
    const/high16 v1, 0x10000000

    #@3d
    or-int/2addr v0, v1

    #@3e
    .line 653
    :cond_6
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    #@40
    const/high16 v4, 0x3f800000    # 1.0f

    #@42
    cmpl-float v1, v1, v4

    #@44
    if-eqz v1, :cond_7

    #@46
    .line 654
    const/high16 v1, 0x20000000

    #@48
    or-int/2addr v0, v1

    #@49
    .line 656
    :cond_7
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    #@4b
    if-eqz v1, :cond_8

    #@4d
    .line 657
    const/high16 v1, 0x2000000

    #@4f
    or-int/2addr v0, v1

    #@50
    .line 659
    :cond_8
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@52
    if-eqz v1, :cond_9

    #@54
    .line 660
    const/high16 v1, 0x1000000

    #@56
    or-int/2addr v0, v1

    #@57
    .line 661
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@59
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNodeText;->isSimple()Z

    #@5c
    move-result v1

    #@5d
    if-nez v1, :cond_9

    #@5f
    .line 662
    const/high16 v1, 0x800000

    #@61
    or-int/2addr v0, v1

    #@62
    .line 665
    :cond_9
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    #@64
    if-eqz v1, :cond_a

    #@66
    .line 666
    or-int/2addr v0, v6

    #@67
    .line 668
    :cond_a
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    #@69
    if-eqz v1, :cond_b

    #@6b
    .line 669
    const/high16 v1, 0x100000

    #@6d
    or-int/2addr v0, v1

    #@6e
    .line 672
    :cond_b
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    #@70
    invoke-virtual {p2, v1}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    #@73
    .line 673
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@76
    .line 674
    and-int v1, v0, v5

    #@78
    if-eqz v1, :cond_c

    #@7a
    .line 675
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    #@7c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7f
    .line 676
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    #@81
    if-eqz v1, :cond_c

    #@83
    .line 677
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    #@85
    invoke-virtual {p2, v1}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    #@88
    .line 678
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    #@8a
    if-eqz v1, :cond_c

    #@8c
    .line 679
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    #@8e
    invoke-virtual {p2, v1}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    #@91
    .line 680
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    #@93
    invoke-virtual {p2, v1}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    #@96
    .line 684
    :cond_c
    const/high16 v1, 0x4000000

    #@98
    and-int/2addr v1, v0

    #@99
    if-eqz v1, :cond_17

    #@9b
    .line 685
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    #@9d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a0
    .line 686
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    #@a2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a5
    .line 687
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    #@a7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 688
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    #@ac
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@af
    .line 693
    :goto_1
    const/high16 v1, 0x8000000

    #@b1
    and-int/2addr v1, v0

    #@b2
    if-eqz v1, :cond_d

    #@b4
    .line 694
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    #@b6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b9
    .line 695
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    #@bb
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@be
    .line 697
    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    #@c0
    and-int/2addr v1, v0

    #@c1
    if-eqz v1, :cond_e

    #@c3
    .line 698
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    #@c5
    invoke-virtual {v1, p3}, Landroid/graphics/Matrix;->getValues([F)V

    #@c8
    .line 699
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@cb
    .line 701
    :cond_e
    const/high16 v1, 0x10000000

    #@cd
    and-int/2addr v1, v0

    #@ce
    if-eqz v1, :cond_f

    #@d0
    .line 702
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    #@d2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@d5
    .line 704
    :cond_f
    const/high16 v1, 0x20000000

    #@d7
    and-int/2addr v1, v0

    #@d8
    if-eqz v1, :cond_10

    #@da
    .line 705
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    #@dc
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@df
    .line 707
    :cond_10
    const/high16 v1, 0x2000000

    #@e1
    and-int/2addr v1, v0

    #@e2
    if-eqz v1, :cond_11

    #@e4
    .line 708
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    #@e6
    invoke-static {v1, p1, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@e9
    .line 710
    :cond_11
    const/high16 v1, 0x1000000

    #@eb
    and-int/2addr v1, v0

    #@ec
    if-eqz v1, :cond_12

    #@ee
    .line 711
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    #@f0
    const/high16 v4, 0x800000

    #@f2
    and-int/2addr v4, v0

    #@f3
    if-nez v4, :cond_18

    #@f5
    :goto_2
    invoke-virtual {v1, p1, v2}, Landroid/app/assist/AssistStructure$ViewNodeText;->writeToParcel(Landroid/os/Parcel;Z)V

    #@f8
    .line 713
    :cond_12
    and-int v1, v0, v6

    #@fa
    if-eqz v1, :cond_13

    #@fc
    .line 714
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    #@fe
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@101
    .line 716
    :cond_13
    return v0

    #@102
    .line 641
    :cond_14
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    #@104
    and-int/lit16 v1, v1, -0x8000

    #@106
    if-eqz v1, :cond_15

    #@108
    move v1, v2

    #@109
    :goto_3
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    #@10b
    and-int/lit16 v4, v4, -0x8000

    #@10d
    if-eqz v4, :cond_16

    #@10f
    move v4, v2

    #@110
    :goto_4
    or-int/2addr v1, v4

    #@111
    .line 640
    if-eqz v1, :cond_2

    #@113
    goto/16 :goto_0

    #@115
    :cond_15
    move v1, v3

    #@116
    .line 641
    goto :goto_3

    #@117
    :cond_16
    move v4, v3

    #@118
    goto :goto_4

    #@119
    .line 690
    :cond_17
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    #@11b
    shl-int/lit8 v1, v1, 0x10

    #@11d
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    #@11f
    or-int/2addr v1, v4

    #@120
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@123
    .line 691
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    #@125
    shl-int/lit8 v1, v1, 0x10

    #@127
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    #@129
    or-int/2addr v1, v4

    #@12a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12d
    goto :goto_1

    #@12e
    :cond_18
    move v2, v3

    #@12f
    .line 711
    goto :goto_2
.end method
