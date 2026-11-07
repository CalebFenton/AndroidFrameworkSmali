.class public final synthetic Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda8;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda8;->f$0:I

    check-cast p1, Landroid/graphics/RectF;

    invoke-static {v0, p1}, Landroid/widget/SelectionActionModeHelper;->lambda$convertSelectionToRectangles$1(ILandroid/graphics/RectF;)Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    move-result-object p1

    return-object p1
.end method
