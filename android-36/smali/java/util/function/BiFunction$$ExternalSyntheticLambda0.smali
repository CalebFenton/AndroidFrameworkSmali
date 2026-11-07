.class public final synthetic Ljava/util/function/BiFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiFunction;

.field public final synthetic blacklist f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiFunction;Ljava/util/function/Function;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/BiFunction$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/BiFunction;

    iput-object p2, p0, Ljava/util/function/BiFunction$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Ljava/util/function/BiFunction$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/BiFunction;

    iget-object v1, p0, Ljava/util/function/BiFunction$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1, p2}, Ljava/util/function/BiFunction;->$r8$lambda$jpe6lCtItPFG5YvADvcUCtRg944(Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
