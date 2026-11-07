.class public final synthetic Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/IndentingPrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;->f$0:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;->f$0:Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, [Ljava/lang/Double;

    invoke-static {v0, p1, p2}, Lcom/android/internal/os/PowerProfile;->lambda$dump$1(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/Double;)V

    return-void
.end method
