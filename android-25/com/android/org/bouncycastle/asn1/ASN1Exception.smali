.class public Lcom/android/org/bouncycastle/asn1/ASN1Exception;
.super Ljava/io/IOException;
.source "ASN1Exception.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 10
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 18
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;->cause:Ljava/lang/Throwable;

    #@5
    .line 15
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;->cause:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method
