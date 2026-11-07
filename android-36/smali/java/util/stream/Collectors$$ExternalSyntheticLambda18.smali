.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiConsumer;

.field public final synthetic blacklist f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda18;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda18;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda18;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda18;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/util/stream/Collectors;->lambda$flatMapping$14(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
