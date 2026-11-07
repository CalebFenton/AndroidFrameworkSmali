.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda86;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BinaryOperator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda86;->f$0:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda86;->f$0:Ljava/util/function/BinaryOperator;

    invoke-static {v0}, Ljava/util/stream/Collectors;->lambda$reducing$46(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collectors$1OptionalBox;

    move-result-object v0

    return-object v0
.end method
