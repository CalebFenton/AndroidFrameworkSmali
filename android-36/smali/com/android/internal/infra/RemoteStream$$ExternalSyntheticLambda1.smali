.class public final synthetic Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lcom/android/internal/infra/RemoteStream;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method
