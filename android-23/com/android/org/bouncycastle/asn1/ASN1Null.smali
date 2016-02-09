.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Null;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Null.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Null;
    .locals 6
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 34
    instance-of v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Null;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 36
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Null;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 39
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 43
    :try_start_0
    move-object v0, p0

    #@b
    check-cast v0, [B

    #@d
    move-object v3, v0

    #@e
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@11
    move-result-object v3

    #@12
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Null;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Null;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v3

    #@16
    return-object v3

    #@17
    .line 50
    :catch_0
    move-exception v2

    #@18
    .line 51
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "unknown object in getInstance(): "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 46
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    #@3b
    .line 47
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3d
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v5, "failed to construct NULL from byte[]: "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v3

    #@59
    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-object v4
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 66
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Null;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 68
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 71
    :cond_0
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 60
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 79
    const-string/jumbo v0, "NULL"

    #@3
    return-object v0
.end method
