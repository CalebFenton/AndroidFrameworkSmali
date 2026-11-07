.class public final synthetic Landroid/os/BundleMerger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/BundleMerger;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/BundleMerger;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BundleMerger$$ExternalSyntheticLambda0;->f$0:Landroid/os/BundleMerger;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/os/BundleMerger$$ExternalSyntheticLambda0;->f$0:Landroid/os/BundleMerger;

    check-cast p1, Landroid/os/Bundle;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BundleMerger;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
