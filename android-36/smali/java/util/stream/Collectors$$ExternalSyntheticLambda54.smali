.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/Collector;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/Collector;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda54;->f$0:Ljava/util/stream/Collector;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda54;->f$0:Ljava/util/stream/Collector;

    invoke-static {v0}, Ljava/util/stream/Collectors;->lambda$partitioningBy$64(Ljava/util/stream/Collector;)Ljava/util/stream/Collectors$Partition;

    move-result-object v0

    return-object v0
.end method
