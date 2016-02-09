.class public Ljava/security/spec/X509EncodedKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "X509EncodedKeySpec.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "encodedKey"    # [B

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    #@3
    .line 32
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-super {p0}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method
