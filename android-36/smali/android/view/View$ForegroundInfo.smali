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
.field private greylist-max-o mBoundsChanged:Z

.field private greylist-max-o mDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mGravity:I

.field private greylist-max-o mInsidePadding:Z

.field private final greylist-max-o mOverlayBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mSelfBounds:Landroid/graphics/Rect;

.field private greylist-max-o mTintInfo:Landroid/view/View$TintInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBoundsChanged(Landroid/view/View$ForegroundInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDrawable(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGravity(Landroid/view/View$ForegroundInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsidePadding(Landroid/view/View$ForegroundInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayBounds(Landroid/view/View$ForegroundInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ForegroundInfo;->mOverlayBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelfBounds(Landroid/view/View$ForegroundInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ForegroundInfo;->mSelfBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTintInfo(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundsChanged(Landroid/view/View$ForegroundInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDrawable(Landroid/view/View$ForegroundInfo;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGravity(Landroid/view/View$ForegroundInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInsidePadding(Landroid/view/View$ForegroundInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTintInfo(Landroid/view/View$ForegroundInfo;Landroid/view/View$TintInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 5086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5089
    const/16 v0, 0x77

    iput v0, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    .line 5090
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    .line 5091
    iput-boolean v0, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    .line 5092
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$ForegroundInfo;->mSelfBounds:Landroid/graphics/Rect;

    .line 5093
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$ForegroundInfo;->mOverlayBounds:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/View$ForegroundInfo;-><init>()V

    return-void
.end method
