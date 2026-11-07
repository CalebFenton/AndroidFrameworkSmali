.class final Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
.super Ljava/lang/Object;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmartSelectSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RectangleWithTextSelectionLayout"
.end annotation


# instance fields
.field private final greylist-max-o mRectangle:Landroid/graphics/RectF;

.field private final greylist-max-o mTextSelectionLayout:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/RectF;I)V
    .registers 4
    .param p1, "rectangle"    # Landroid/graphics/RectF;
    .param p2, "textSelectionLayout"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mRectangle:Landroid/graphics/RectF;

    .line 76
    iput p2, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mTextSelectionLayout:I

    .line 77
    return-void
.end method


# virtual methods
.method public greylist-max-o getRectangle()Landroid/graphics/RectF;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mRectangle:Landroid/graphics/RectF;

    return-object v0
.end method

.method public greylist-max-o getTextSelectionLayout()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mTextSelectionLayout:I

    return v0
.end method
