.class public final synthetic Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/SparseArray;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayTopology;->lambda$getGraph$2(Landroid/util/SparseArray;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
