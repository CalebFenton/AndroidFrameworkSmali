.class public final Landroid/view/inputmethod/InsertModeGesture$Builder;
.super Ljava/lang/Object;
.source "InsertModeGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InsertModeGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCancellationSignal:Landroid/os/CancellationSignal;

.field private blacklist mFallbackText:Ljava/lang/String;

.field private blacklist mPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/inputmethod/InsertModeGesture;
    .registers 6

    .line 132
    iget-object v0, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_1d

    .line 134
    iget-object v0, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_15

    .line 137
    new-instance v0, Landroid/view/inputmethod/InsertModeGesture;

    iget-object v1, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mFallbackText:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/InsertModeGesture;-><init>(Landroid/graphics/PointF;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/view/inputmethod/InsertModeGesture-IA;)V

    return-object v0

    .line 135
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CancellationSignal must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insertion point must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCancellationSignal(Landroid/os/CancellationSignal;)Landroid/view/inputmethod/InsertModeGesture$Builder;
    .registers 2
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 110
    iput-object p1, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 111
    return-object p0
.end method

.method public whitelist setFallbackText(Ljava/lang/String;)Landroid/view/inputmethod/InsertModeGesture$Builder;
    .registers 2
    .param p1, "fallbackText"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mFallbackText:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public whitelist setInsertionPoint(Landroid/graphics/PointF;)Landroid/view/inputmethod/InsertModeGesture$Builder;
    .registers 2
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 99
    iput-object p1, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mPoint:Landroid/graphics/PointF;

    .line 100
    return-object p0
.end method
