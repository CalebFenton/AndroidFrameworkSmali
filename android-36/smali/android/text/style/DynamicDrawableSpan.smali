.class public abstract Landroid/text/style/DynamicDrawableSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DynamicDrawableSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/DynamicDrawableSpan$AlignmentType;
    }
.end annotation


# static fields
.field public static final whitelist ALIGN_BASELINE:I = 0x1

.field public static final whitelist ALIGN_BOTTOM:I = 0x0

.field public static final whitelist ALIGN_CENTER:I = 0x2


# instance fields
.field private greylist mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected final whitelist mVerticalAlignment:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 113
    return-void
.end method

.method protected constructor whitelist <init>(I)V
    .registers 2
    .param p1, "verticalAlignment"    # I

    .line 121
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 122
    iput p1, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 123
    return-void
.end method

.method private greylist-max-o getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 178
    iget-object v0, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 179
    .local v0, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v1, 0x0

    .line 181
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_c

    .line 182
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_c
    if-nez v1, :cond_19

    .line 186
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 187
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 190
    :cond_19
    return-object v1
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 162
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, "b":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 165
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p8, v1

    .line 166
    .local v1, "transY":I
    iget v2, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 167
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v1, v2

    goto :goto_30

    .line 168
    :cond_1c
    iget v2, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    .line 169
    sub-int v2, p8, p6

    div-int/2addr v2, v3

    add-int/2addr v2, p6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/2addr v4, v3

    sub-int v1, v2, v4

    .line 172
    :cond_30
    :goto_30
    int-to-float v2, v1

    invoke-virtual {p1, p5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 173
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 175
    return-void
.end method

.method public abstract whitelist getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public whitelist getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 10
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 144
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 147
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_18

    .line 148
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    neg-int v2, v2

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 149
    const/4 v2, 0x0

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 151
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 152
    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 155
    :cond_18
    iget v2, v1, Landroid/graphics/Rect;->right:I

    return v2
.end method

.method public whitelist getVerticalAlignment()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicDrawableSpan{verticalAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getVerticalAlignment()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    return-object v0
.end method
