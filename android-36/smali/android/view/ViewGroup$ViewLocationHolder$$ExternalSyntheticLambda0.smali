.class public final synthetic Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/Rect;

.field public final synthetic blacklist f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Rect;

    iput-object p2, p0, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->lambda$compareBoundsOfTree$0(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
