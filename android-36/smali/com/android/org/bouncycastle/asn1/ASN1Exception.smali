.class public Lcom/android/org/bouncycastle/asn1/ASN1Exception;
.super Ljava/io/IOException;
.source "ASN1Exception.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
