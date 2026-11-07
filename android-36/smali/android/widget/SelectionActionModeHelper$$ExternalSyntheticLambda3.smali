.class public final synthetic Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda3;->f$0:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda3;->f$0:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method
