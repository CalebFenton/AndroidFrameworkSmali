.class public final synthetic Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/text/Layout$SelectionRectangleConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda12;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final blacklist accept(FFFFI)V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda12;->f$0:Ljava/util/List;

    move-object p0, v0

    invoke-static/range {p0 .. p5}, Landroid/widget/SelectionActionModeHelper;->lambda$convertSelectionToRectangles$2(Ljava/util/List;FFFFI)V

    return-void
.end method
