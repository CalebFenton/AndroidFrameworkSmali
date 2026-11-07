.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Supplier;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda34;->f$0:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda34;->f$0:Ljava/util/function/Supplier;

    invoke-static {v0, p1}, Ljava/util/stream/Collectors;->lambda$groupingByConcurrent$58(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
