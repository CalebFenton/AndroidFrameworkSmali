.class public final Landroid/view/inputmethod/SelectGesture$Builder;
.super Ljava/lang/Object;
.source "SelectGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/SelectGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mArea:Landroid/graphics/RectF;

.field private blacklist mFallbackText:Ljava/lang/String;

.field private blacklist mGranularity:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/inputmethod/SelectGesture;
    .registers 6

    .line 134
    iget-object v0, p0, Landroid/view/inputmethod/SelectGesture$Builder;->mArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/view/inputmethod/SelectGesture$Builder;->mArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 137
    iget v0, p0, Landroid/view/inputmethod/SelectGesture$Builder;->mGranularity:I

    if-lez v0, :cond_1d

    .line 140
    new-instance v0, Landroid/view/inputmethod/SelectGesture;

    iget v1, p0, Landroid/view/inputmethod/SelectGesture$Builder;->mGranularity:I

    iget-object v2, p0, Landroid/view/inputmethod/SelectGesture$Builder;->mArea:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/view/inputmethod/SelectGesture$Builder;->mFallbackText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/SelectGesture;-><init>(ILandroid/graphics/RectF;Ljava/lang/String;Landroid/view/inputmethod/SelectGesture-IA;)V

    return-object v0

    .line 138
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Selection granularity must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Selection area must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFallbackText(Ljava/lang/String;)Landroid/view/inputmethod/SelectGesture$Builder;
    .registers 2
    .param p1, "fallbackText"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Landroid/view/inputmethod/SelectGesture$Builder;->mFallbackText:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public whitelist setGranularity(I)Landroid/view/inputmethod/SelectGesture$Builder;
    .registers 2
    .param p1, "granularity"    # I

    .line 93
    iput p1, p0, Landroid/view/inputmethod/SelectGesture$Builder;->mGranularity:I

    .line 94
    return-object p0
.end method

.method public whitelist setSelectionArea(Landroid/graphics/RectF;)Landroid/view/inputmethod/SelectGesture$Builder;
    .registers 2
    .param p1, "area"    # Landroid/graphics/RectF;

    .line 113
    iput-object p1, p0, Landroid/view/inputmethod/SelectGesture$Builder;->mArea:Landroid/graphics/RectF;

    .line 114
    return-object p0
.end method
