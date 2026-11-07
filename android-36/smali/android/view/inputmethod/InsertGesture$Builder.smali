.class public final Landroid/view/inputmethod/InsertGesture$Builder;
.super Ljava/lang/Object;
.source "InsertGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InsertGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFallbackText:Ljava/lang/String;

.field private blacklist mPoint:Landroid/graphics/PointF;

.field private blacklist mText:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/inputmethod/InsertGesture;
    .registers 6

    .line 118
    iget-object v0, p0, Landroid/view/inputmethod/InsertGesture$Builder;->mPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_1d

    .line 121
    iget-object v0, p0, Landroid/view/inputmethod/InsertGesture$Builder;->mText:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 124
    new-instance v0, Landroid/view/inputmethod/InsertGesture;

    iget-object v1, p0, Landroid/view/inputmethod/InsertGesture$Builder;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InsertGesture$Builder;->mPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Landroid/view/inputmethod/InsertGesture$Builder;->mFallbackText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/InsertGesture;-><init>(Ljava/lang/String;Landroid/graphics/PointF;Ljava/lang/String;Landroid/view/inputmethod/InsertGesture-IA;)V

    return-object v0

    .line 122
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text to insert must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insertion point must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFallbackText(Ljava/lang/String;)Landroid/view/inputmethod/InsertGesture$Builder;
    .registers 2
    .param p1, "fallbackText"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Landroid/view/inputmethod/InsertGesture$Builder;->mFallbackText:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public whitelist setInsertionPoint(Landroid/graphics/PointF;)Landroid/view/inputmethod/InsertGesture$Builder;
    .registers 2
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 97
    iput-object p1, p0, Landroid/view/inputmethod/InsertGesture$Builder;->mPoint:Landroid/graphics/PointF;

    .line 98
    return-object p0
.end method

.method public whitelist setTextToInsert(Ljava/lang/String;)Landroid/view/inputmethod/InsertGesture$Builder;
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Landroid/view/inputmethod/InsertGesture$Builder;->mText:Ljava/lang/String;

    .line 87
    return-object p0
.end method
