.class public final synthetic Landroid/telecom/DefaultDialerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/DefaultDialerManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telecom/DefaultDialerManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Landroid/telecom/DefaultDialerManager;->lambda$setDefaultDialerApplication$0(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V

    return-void
.end method
