.class public final synthetic Landroid/widget/TextView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/text/Layout$SelectionRectangleConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/Path;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/Path;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TextView$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final blacklist accept(FFFFI)V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/widget/TextView$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Path;

    move-object p0, v0

    invoke-static/range {p0 .. p5}, Landroid/widget/TextView;->lambda$maybeUpdateHighlightPaths$1(Landroid/graphics/Path;FFFFI)V

    return-void
.end method
