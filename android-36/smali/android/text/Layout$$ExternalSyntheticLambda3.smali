.class public final synthetic Landroid/text/Layout$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/text/Layout$TextInclusionStrategy;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 3

    .line 0
    invoke-static {p1, p2}, Landroid/text/Layout;->lambda$static$1(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method
