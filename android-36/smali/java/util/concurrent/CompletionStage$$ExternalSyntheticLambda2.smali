.class public final synthetic Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/CompletionStage;

.field public final synthetic blacklist f$1:Ljava/util/function/Function;

.field public final synthetic blacklist f$2:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/CompletionStage;

    iput-object p2, p0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Function;

    iput-object p3, p0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/CompletionStage;

    iget-object v1, p0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Function;

    iget-object v2, p0, Ljava/util/concurrent/CompletionStage$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/Executor;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/concurrent/CompletionStage;->$r8$lambda$NsuNCmRt_rACZ28X-fMZp8n9L70(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
