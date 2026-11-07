.class public final synthetic Ljava/util/concurrent/LinkedTransferQueue$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Collection;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Collection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$$ExternalSyntheticLambda1;->f$0:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$$ExternalSyntheticLambda1;->f$0:Ljava/util/Collection;

    invoke-static {v0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
