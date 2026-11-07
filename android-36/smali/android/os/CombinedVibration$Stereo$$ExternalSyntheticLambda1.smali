.class public final synthetic Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/CombinedVibration$Stereo;

.field public final synthetic blacklist f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/CombinedVibration$Stereo;Landroid/util/SparseArray;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda1;->f$0:Landroid/os/CombinedVibration$Stereo;

    iput-object p2, p0, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda1;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda1;->f$0:Landroid/os/CombinedVibration$Stereo;

    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda1;->f$1:Landroid/util/SparseArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Landroid/os/CombinedVibration$Stereo;->$r8$lambda$etDOqC3FtktB09k8rHwTuDQO1Ys(Landroid/os/CombinedVibration$Stereo;Landroid/util/SparseArray;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
