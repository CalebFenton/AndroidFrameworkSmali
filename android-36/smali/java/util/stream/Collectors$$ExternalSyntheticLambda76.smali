.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda76;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Ljava/util/HashSet;

    check-cast p2, Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->lambda$toSet$7(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method
