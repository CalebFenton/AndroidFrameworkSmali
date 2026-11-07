.class public Lcom/android/internal/net/eap/exceptions/simaka/EapSimInvalidAtRandException;
.super Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
.source "EapSimInvalidAtRandException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method
