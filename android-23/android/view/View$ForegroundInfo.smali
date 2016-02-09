.class Landroid/view/View$ForegroundInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForegroundInfo"
.end annotation


# instance fields
.field private mBoundsChanged:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mGravity:I

.field private mInsidePadding:Z

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mTintInfo:Landroid/view/View$TintInfo;


# direct methods
.method static synthetic -get0(Landroid/view/View$ForegroundInfo;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/view/View$ForegroundInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/view/View$ForegroundInfo;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/view/View$ForegroundInfo;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ForegroundInfo;->mOverlayBounds:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/view/View$ForegroundInfo;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ForegroundInfo;->mSelfBounds:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/view/View$ForegroundInfo;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/view/View$ForegroundInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/view/View$ForegroundInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/view/View$ForegroundInfo;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/view/View$ForegroundInfo;Landroid/view/View$TintInfo;)Landroid/view/View$TintInfo;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;

    #@2
    return-object p1
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 3389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 3392
    const/16 v0, 0x77

    #@6
    iput v0, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    #@8
    .line 3393
    iput-boolean v1, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    #@a
    .line 3394
    iput-boolean v1, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    #@c
    .line 3395
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/View$ForegroundInfo;->mSelfBounds:Landroid/graphics/Rect;

    #@13
    .line 3396
    new-instance v0, Landroid/graphics/Rect;

    #@15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@18
    iput-object v0, p0, Landroid/view/View$ForegroundInfo;->mOverlayBounds:Landroid/graphics/Rect;

    #@1a
    .line 3389
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View$ForegroundInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/view/View$ForegroundInfo;-><init>()V

    #@3
    return-void
.end method
