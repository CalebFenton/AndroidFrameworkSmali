.class public final synthetic Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;


# instance fields
.field public final synthetic blacklist f$0:[B


# direct methods
.method public synthetic constructor blacklist <init>([B)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda0;->f$0:[B

    return-void
.end method


# virtual methods
.method public final blacklist applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda0;->f$0:[B

    check-cast p1, Ljava/io/OutputStream;

    invoke-static {v0, p1}, Lcom/android/internal/infra/RemoteStream;->lambda$sendBytes$1([BLjava/io/OutputStream;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
