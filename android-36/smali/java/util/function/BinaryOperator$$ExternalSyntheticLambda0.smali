.class public final synthetic Ljava/util/function/BinaryOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Comparator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/BinaryOperator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/function/BinaryOperator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Ljava/util/function/BinaryOperator;->lambda$maxBy$1(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
