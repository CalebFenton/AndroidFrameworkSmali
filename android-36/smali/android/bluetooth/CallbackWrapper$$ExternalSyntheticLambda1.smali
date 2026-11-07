.class public final synthetic Landroid/bluetooth/CallbackWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/CallbackWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/CallbackWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p2}, Landroid/bluetooth/CallbackWrapper;->lambda$forEach$1(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method
