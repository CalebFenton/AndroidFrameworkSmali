.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;
.super Ljava/lang/IllegalStateException;
.source "ASN1ParsingException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;->cause:Ljava/lang/Throwable;

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
