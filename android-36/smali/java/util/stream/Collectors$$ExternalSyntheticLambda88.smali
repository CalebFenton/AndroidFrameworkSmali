.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda88;
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
    check-cast p1, Ljava/util/stream/Collectors$1OptionalBox;

    check-cast p2, Ljava/util/stream/Collectors$1OptionalBox;

    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->lambda$reducing$47(Ljava/util/stream/Collectors$1OptionalBox;Ljava/util/stream/Collectors$1OptionalBox;)Ljava/util/stream/Collectors$1OptionalBox;

    move-result-object p1

    return-object p1
.end method
