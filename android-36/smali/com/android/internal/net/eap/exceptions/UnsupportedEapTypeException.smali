.class public Lcom/android/internal/net/eap/exceptions/UnsupportedEapTypeException;
.super Lcom/android/internal/net/eap/exceptions/EapSilentException;
.source "UnsupportedEapTypeException.java"


# instance fields
.field public final blacklist eapIdentifier:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "eapIdentifier"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p2}, Lcom/android/internal/net/eap/exceptions/EapSilentException;-><init>(Ljava/lang/String;)V

    .line 38
    iput p1, p0, Lcom/android/internal/net/eap/exceptions/UnsupportedEapTypeException;->eapIdentifier:I

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "eapIdentifier"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/android/internal/net/eap/exceptions/EapSilentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iput p1, p0, Lcom/android/internal/net/eap/exceptions/UnsupportedEapTypeException;->eapIdentifier:I

    .line 52
    return-void
.end method
