.class public final Landroid/security/KeyPairGeneratorSpec;
.super Ljava/lang/Object;
.source "KeyPairGeneratorSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyPairGeneratorSpec$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEndDate:Ljava/util/Date;

.field private final mFlags:I

.field private final mKeySize:I

.field private final mKeyType:Ljava/lang/String;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mSerialNumber:Ljava/math/BigInteger;

.field private final mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mStartDate:Ljava/util/Date;

.field private final mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyStoreAlias"    # Ljava/lang/String;
    .param p3, "keyType"    # Ljava/lang/String;
    .param p4, "keySize"    # I
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "subjectDN"    # Ljavax/security/auth/x500/X500Principal;
    .param p7, "serialNumber"    # Ljava/math/BigInteger;
    .param p8, "startDate"    # Ljava/util/Date;
    .param p9, "endDate"    # Ljava/util/Date;
    .param p10, "flags"    # I

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    if-nez p1, :cond_0

    #@5
    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "context == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 120
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "keyStoreAlias must not be empty"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 122
    :cond_1
    if-nez p6, :cond_2

    #@1f
    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "subjectDN == null"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 124
    :cond_2
    if-nez p7, :cond_3

    #@2a
    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string/jumbo v1, "serialNumber == null"

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 126
    :cond_3
    if-nez p8, :cond_4

    #@35
    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@37
    const-string/jumbo v1, "startDate == null"

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 128
    :cond_4
    if-nez p9, :cond_5

    #@40
    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@42
    const-string/jumbo v1, "endDate == null"

    #@45
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0

    #@49
    .line 130
    :cond_5
    invoke-virtual {p9, p8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_6

    #@4f
    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@51
    const-string/jumbo v1, "endDate < startDate"

    #@54
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0

    #@58
    .line 134
    :cond_6
    invoke-virtual {p9, p8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_7

    #@5e
    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@60
    const-string/jumbo v1, "endDate < startDate"

    #@63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v0

    #@67
    .line 138
    :cond_7
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    #@69
    .line 139
    iput-object p2, p0, Landroid/security/KeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    #@6b
    .line 140
    iput-object p3, p0, Landroid/security/KeyPairGeneratorSpec;->mKeyType:Ljava/lang/String;

    #@6d
    .line 141
    iput p4, p0, Landroid/security/KeyPairGeneratorSpec;->mKeySize:I

    #@6f
    .line 142
    iput-object p5, p0, Landroid/security/KeyPairGeneratorSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@71
    .line 143
    iput-object p6, p0, Landroid/security/KeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    #@73
    .line 144
    iput-object p7, p0, Landroid/security/KeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    #@75
    .line 145
    iput-object p8, p0, Landroid/security/KeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    #@77
    .line 146
    iput-object p9, p0, Landroid/security/KeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    #@79
    .line 147
    iput p10, p0, Landroid/security/KeyPairGeneratorSpec;->mFlags:I

    #@7b
    .line 117
    return-void
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@2
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 232
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec;->mFlags:I

    #@2
    return v0
.end method

.method public getKeySize()I
    .locals 1

    #@0
    .prologue
    .line 180
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeySize:I

    #@2
    return v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeyType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getSubjectDN()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method public isEncryptionRequired()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 248
    iget v1, p0, Landroid/security/KeyPairGeneratorSpec;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method
