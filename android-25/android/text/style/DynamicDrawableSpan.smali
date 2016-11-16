.class public abstract Landroid/text/style/DynamicDrawableSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DynamicDrawableSpan.java"


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DynamicDrawableSpan"


# instance fields
.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVerticalAlignment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    #@3
    .line 48
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    #@6
    .line 47
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "verticalAlignment"    # I

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    #@3
    .line 55
    iput p1, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    #@5
    .line 54
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    #@0
    .prologue
    .line 109
    iget-object v1, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    #@2
    .line 110
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    #@3
    .line 112
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@5
    .line 113
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    #@b
    .line 115
    :cond_0
    if-nez v0, :cond_1

    #@d
    .line 116
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v0

    #@11
    .line 117
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@13
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@16
    iput-object v2, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    #@18
    .line 120
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 96
    .local v0, "b":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@7
    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@a
    move-result-object v2

    #@b
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@d
    sub-int v1, p8, v2

    #@f
    .line 99
    .local v1, "transY":I
    iget v2, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    #@11
    const/4 v3, 0x1

    #@12
    if-ne v2, v3, :cond_0

    #@14
    .line 100
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    #@17
    move-result-object v2

    #@18
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@1a
    sub-int/2addr v1, v2

    #@1b
    .line 103
    :cond_0
    int-to-float v2, v1

    #@1c
    invoke-virtual {p1, p5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@1f
    .line 104
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@22
    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@25
    .line 94
    return-void
.end method

.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 77
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 78
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@8
    move-result-object v1

    #@9
    .line 80
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    #@b
    .line 81
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    #@d
    neg-int v2, v2

    #@e
    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@10
    .line 82
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@12
    .line 84
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@14
    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@16
    .line 85
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@18
    .line 88
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->right:I

    #@1a
    return v2
.end method

.method public getVerticalAlignment()I
    .locals 1

    #@0
    .prologue
    .line 63
    iget v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    #@2
    return v0
.end method
