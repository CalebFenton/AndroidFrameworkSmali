.class public final synthetic Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/TextView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda11;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda11;->f$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
