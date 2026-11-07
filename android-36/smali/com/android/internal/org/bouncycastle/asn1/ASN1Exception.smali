.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;
.super Ljava/io/IOException;
.source "ASN1Exception.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 33
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;->cause:Ljava/lang/Throwable;

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
