.class public Ljava/security/cert/PolicyQualifierInfo;
.super Ljava/lang/Object;
.source "PolicyQualifierInfo.java"


# instance fields
.field private mData:[B

.field private mEncoded:[B

.field private mId:Ljava/lang/String;

.field private pqiString:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 6
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, [B

    #@b
    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mEncoded:[B

    #@d
    .line 103
    new-instance v1, Lsun/security/util/DerValue;

    #@f
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mEncoded:[B

    #@11
    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    #@14
    .line 104
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    #@16
    const/16 v3, 0x30

    #@18
    if-eq v2, v3, :cond_0

    #@1a
    .line 105
    new-instance v2, Ljava/io/IOException;

    #@1c
    const-string/jumbo v3, "Invalid encoding for PolicyQualifierInfo"

    #@1f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 107
    :cond_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@25
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mId:Ljava/lang/String;

    #@33
    .line 108
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@35
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->toByteArray()[B

    #@38
    move-result-object v0

    #@39
    .line 109
    .local v0, "tmp":[B
    if-nez v0, :cond_1

    #@3b
    .line 110
    iput-object v5, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    #@3d
    .line 100
    :goto_0
    return-void

    #@3e
    .line 112
    :cond_1
    array-length v2, v0

    #@3f
    new-array v2, v2, [B

    #@41
    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    #@43
    .line 113
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    #@45
    array-length v3, v0

    #@46
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@49
    goto :goto_0
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->mEncoded:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public final getPolicyQualifier()[B
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 150
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    goto :goto_0
.end method

.method public final getPolicyQualifierId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 161
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->pqiString:Ljava/lang/String;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 162
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->pqiString:Ljava/lang/String;

    #@6
    return-object v2

    #@7
    .line 163
    :cond_0
    new-instance v0, Lsun/misc/HexDumpEncoder;

    #@9
    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@c
    .line 164
    .local v0, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v1, Ljava/lang/StringBuffer;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@11
    .line 165
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "PolicyQualifierInfo: [\n"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "  qualifierID: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    iget-object v3, p0, Ljava/security/cert/PolicyQualifierInfo;->mId:Ljava/lang/String;

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    const-string/jumbo v3, "\n"

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "  qualifier: "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    .line 168
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    #@45
    if-nez v2, :cond_1

    #@47
    const-string/jumbo v2, "null"

    #@4a
    .line 167
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    .line 168
    const-string/jumbo v3, "\n"

    #@51
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    .line 169
    const-string/jumbo v2, "]"

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@62
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@65
    move-result-object v2

    #@66
    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->pqiString:Ljava/lang/String;

    #@68
    .line 171
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->pqiString:Ljava/lang/String;

    #@6a
    return-object v2

    #@6b
    .line 168
    :cond_1
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->mData:[B

    #@6d
    invoke-virtual {v0, v2}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    goto :goto_0
.end method
