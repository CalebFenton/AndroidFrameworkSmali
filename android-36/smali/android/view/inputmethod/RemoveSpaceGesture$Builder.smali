.class public final Landroid/view/inputmethod/RemoveSpaceGesture$Builder;
.super Ljava/lang/Object;
.source "RemoveSpaceGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/RemoveSpaceGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEndPoint:Landroid/graphics/PointF;

.field private blacklist mFallbackText:Ljava/lang/String;

.field private blacklist mStartPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/inputmethod/RemoveSpaceGesture;
    .registers 6

    .line 99
    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mStartPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mEndPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_15

    .line 102
    new-instance v0, Landroid/view/inputmethod/RemoveSpaceGesture;

    iget-object v1, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mStartPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mEndPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mFallbackText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/RemoveSpaceGesture;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;Landroid/view/inputmethod/RemoveSpaceGesture-IA;)V

    return-object v0

    .line 100
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start and end points must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFallbackText(Ljava/lang/String;)Landroid/view/inputmethod/RemoveSpaceGesture$Builder;
    .registers 2
    .param p1, "fallbackText"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mFallbackText:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public whitelist setPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/inputmethod/RemoveSpaceGesture$Builder;
    .registers 3
    .param p1, "startPoint"    # Landroid/graphics/PointF;
    .param p2, "endPoint"    # Landroid/graphics/PointF;

    .line 78
    iput-object p1, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mStartPoint:Landroid/graphics/PointF;

    .line 79
    iput-object p2, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mEndPoint:Landroid/graphics/PointF;

    .line 80
    return-object p0
.end method
