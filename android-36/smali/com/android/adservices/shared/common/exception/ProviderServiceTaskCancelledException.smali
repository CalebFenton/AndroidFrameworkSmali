.class public final Lcom/android/adservices/shared/common/exception/ProviderServiceTaskCancelledException;
.super Ljava/lang/IllegalStateException;
.source "ProviderServiceTaskCancelledException.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
