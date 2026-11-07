.class public Lcom/android/internal/net/eap/exceptions/InvalidEapResponseException;
.super Ljava/lang/Exception;
.source "InvalidEapResponseException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
