.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BinaryOperator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda53;->f$0:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda53;->f$0:Ljava/util/function/BinaryOperator;

    check-cast p1, Ljava/util/stream/Collectors$Partition;

    check-cast p2, Ljava/util/stream/Collectors$Partition;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$partitioningBy$63(Ljava/util/function/BinaryOperator;Ljava/util/stream/Collectors$Partition;Ljava/util/stream/Collectors$Partition;)Ljava/util/stream/Collectors$Partition;

    move-result-object p1

    return-object p1
.end method
