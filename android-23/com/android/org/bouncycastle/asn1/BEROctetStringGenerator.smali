.class public Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;
.super Lcom/android/org/bouncycastle/asn1/BERGenerator;
.source "BEROctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 14
    const/16 v0, 0x24

    #@5
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;->writeBERHeader(I)V

    #@8
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    #@3
    .line 25
    const/16 v0, 0x24

    #@5
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;->writeBERHeader(I)V

    #@8
    .line 21
    return-void
.end method


# virtual methods
.method public getOctetOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 30
    const/16 v0, 0x3e8

    #@2
    new-array v0, v0, [B

    #@4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream([B)Ljava/io/OutputStream;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getOctetOutputStream([B)Ljava/io/OutputStream;
    .locals 1
    .param p1, "buf"    # [B

    #@0
    .prologue
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;-><init>(Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;[B)V

    #@5
    return-object v0
.end method
