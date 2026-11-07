.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda94;
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

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda94;->f$0:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda94;->f$0:Ljava/util/function/BinaryOperator;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$mapMerger$12(Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
