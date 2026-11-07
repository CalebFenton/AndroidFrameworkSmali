.class public final synthetic Lcom/android/internal/util/TraceBuffer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/util/TraceBuffer;

.field public final synthetic blacklist f$1:[B


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/util/TraceBuffer;[B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/TraceBuffer$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/TraceBuffer;

    iput-object p2, p0, Lcom/android/internal/util/TraceBuffer$$ExternalSyntheticLambda0;->f$1:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/TraceBuffer;

    iget-object v1, p0, Lcom/android/internal/util/TraceBuffer$$ExternalSyntheticLambda0;->f$1:[B

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/TraceBuffer;->$r8$lambda$ttmwZcF_e5Ivr22sB5KWUXhSNG8(Lcom/android/internal/util/TraceBuffer;[BLjava/lang/Object;)Z

    move-result p1

    return p1
.end method
