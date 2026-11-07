.class public final synthetic Lcom/android/internal/util/RingBuffer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/RingBuffer$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/android/internal/util/RingBuffer;->lambda$new$1(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
