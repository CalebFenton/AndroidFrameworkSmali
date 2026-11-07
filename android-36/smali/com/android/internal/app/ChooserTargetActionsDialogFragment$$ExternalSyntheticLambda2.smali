.class public final synthetic Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    check-cast p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->$r8$lambda$bSYD4czaDbmn831qG15NEcrvA5k(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
