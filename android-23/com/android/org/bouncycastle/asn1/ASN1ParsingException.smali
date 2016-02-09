.class public Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;
.super Ljava/lang/IllegalStateException;
.source "ASN1ParsingException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3
    .line 16
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;->cause:Ljava/lang/Throwable;

    #@5
    .line 13
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;->cause:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method
