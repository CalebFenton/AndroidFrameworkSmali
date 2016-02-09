.class public Ljava/security/cert/PolicyQualifierInfo;
.super Ljava/lang/Object;
.source "PolicyQualifierInfo.java"


# instance fields
.field private final encoded:[B

.field private final policyQualifier:[B

.field private final policyQualifierId:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 4
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 49
    if-nez p1, :cond_0

    #@6
    .line 50
    new-instance v1, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v2, "encoded == null"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 52
    :cond_0
    array-length v1, p1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 53
    new-instance v1, Ljava/io/IOException;

    #@14
    const-string/jumbo v2, "encoded.length == 0"

    #@17
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 55
    :cond_1
    array-length v1, p1

    #@1c
    new-array v1, v1, [B

    #@1e
    iput-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    #@20
    .line 56
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    #@22
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    #@24
    array-length v2, v2

    #@25
    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@28
    .line 59
    sget-object v1, Lorg/apache/harmony/security/x509/PolicyQualifierInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@2a
    .line 60
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    #@2c
    .line 59
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, [Ljava/lang/Object;

    #@32
    .line 61
    .local v0, "decoded":[Ljava/lang/Object;
    aget-object v1, v0, v3

    #@34
    check-cast v1, [I

    #@36
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifierId:Ljava/lang/String;

    #@3c
    .line 62
    const/4 v1, 0x1

    #@3d
    aget-object v1, v0, v1

    #@3f
    check-cast v1, [B

    #@41
    iput-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    #@43
    .line 48
    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 71
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 72
    .local v0, "ret":[B
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    #@8
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 73
    return-object v0
.end method

.method public final getPolicyQualifier()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 93
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 94
    return-object v2

    #@7
    .line 96
    :cond_0
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 97
    .local v0, "ret":[B
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    #@e
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    #@10
    array-length v2, v2

    #@11
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 98
    return-object v0
.end method

.method public final getPolicyQualifierId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifierId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "PolicyQualifierInfo: [\npolicyQualifierId: "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifierId:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 112
    const-string/jumbo v1, "\npolicyQualifier: \n"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 113
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    #@15
    const-string/jumbo v2, " "

    #@18
    invoke-static {v1, v2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 114
    const-string/jumbo v1, "]"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method
