.class public final synthetic Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Function;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Function;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Ljava/util/concurrent/CompletionStage;->lambda$exceptionallyComposeAsync$7(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
