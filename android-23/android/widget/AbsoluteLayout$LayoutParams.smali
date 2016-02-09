.class public Landroid/widget/AbsoluteLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "AbsoluteLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsoluteLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    #@0
    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@3
    .line 181
    iput p3, p0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    #@5
    .line 182
    iput p4, p0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    #@7
    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 202
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 204
    sget-object v1, Lcom/android/internal/R$styleable;->AbsoluteLayout_Layout:[I

    #@6
    .line 203
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 205
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    #@10
    .line 208
    const/4 v1, 0x1

    #@11
    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    #@17
    .line 209
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 215
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "Absolute.LayoutParams={width="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 222
    iget v1, p0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    #@12
    invoke-static {v1}, Landroid/widget/AbsoluteLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 222
    const-string/jumbo v1, ", height="

    #@1d
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 222
    iget v1, p0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    #@23
    invoke-static {v1}, Landroid/widget/AbsoluteLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 223
    const-string/jumbo v1, " x="

    #@2e
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 223
    iget v1, p0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    #@34
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 223
    const-string/jumbo v1, " y="

    #@3b
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 223
    iget v1, p0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    #@41
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 223
    const-string/jumbo v1, "}"

    #@48
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    return-object v0
.end method
