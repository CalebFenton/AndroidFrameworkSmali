.class public final synthetic Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    return-void
.end method


# virtual methods
.method public final blacklist applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    check-cast p1, Ljava/io/OutputStream;

    invoke-static {v0, p1}, Lcom/android/internal/infra/RemoteStream;->lambda$sendBytes$0(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/io/OutputStream;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
