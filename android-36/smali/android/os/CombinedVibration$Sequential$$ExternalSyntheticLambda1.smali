.class public final synthetic Landroid/os/CombinedVibration$Sequential$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/SparseArray;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/CombinedVibration$Sequential$$ExternalSyntheticLambda1;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential$$ExternalSyntheticLambda1;->f$0:Landroid/util/SparseArray;

    check-cast p1, Landroid/os/CombinedVibration;

    invoke-static {v0, p1}, Landroid/os/CombinedVibration$Sequential;->lambda$getDuration$0(Landroid/util/SparseArray;Landroid/os/CombinedVibration;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
