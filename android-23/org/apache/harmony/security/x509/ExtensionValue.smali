.class public Lorg/apache/harmony/security/x509/ExtensionValue;
.super Ljava/lang/Object;
.source "ExtensionValue.java"


# instance fields
.field protected encoding:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "encoding"    # [B

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    #@5
    .line 34
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@6
    .line 55
    return-void
.end method

.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "Unparseable extension value:\n"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    #@c
    if-nez v0, :cond_0

    #@e
    .line 46
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;->getEncoded()[B

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    #@14
    .line 48
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    #@16
    if-nez v0, :cond_1

    #@18
    .line 49
    const-string/jumbo v0, "NULL\n"

    #@1b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 43
    :goto_0
    return-void

    #@1f
    .line 51
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    #@21
    invoke-static {v0, p2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    #@2
    return-object v0
.end method
