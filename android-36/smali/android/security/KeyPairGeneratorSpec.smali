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
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mEndDate:Ljava/util/Date;

.field private final greylist-max-o mKeySize:I

.field private final greylist-max-o mKeyType:Ljava/lang/String;

.field private final greylist-max-o mKeystoreAlias:Ljava/lang/String;

.field private final greylist-max-o mSerialNumber:Ljava/math/BigInteger;

.field private final greylist-max-o mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final greylist-max-o mStartDate:Ljava/util/Date;

.field private final greylist-max-o mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V
    .registers 13
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

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-eqz p1, :cond_6c

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 120
    if-eqz p6, :cond_5a

    .line 122
    if-eqz p7, :cond_51

    .line 124
    if-eqz p8, :cond_48

    .line 126
    if-eqz p9, :cond_40

    .line 128
    invoke-virtual {p9, p8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    const-string v1, "endDate < startDate"

    if-nez v0, :cond_3a

    .line 132
    invoke-virtual {p9, p8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 136
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Landroid/security/KeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Landroid/security/KeyPairGeneratorSpec;->mKeyType:Ljava/lang/String;

    .line 139
    iput p4, p0, Landroid/security/KeyPairGeneratorSpec;->mKeySize:I

    .line 140
    iput-object p5, p0, Landroid/security/KeyPairGeneratorSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 141
    iput-object p6, p0, Landroid/security/KeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    .line 142
    iput-object p7, p0, Landroid/security/KeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    .line 143
    iput-object p8, p0, Landroid/security/KeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    .line 144
    iput-object p9, p0, Landroid/security/KeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    .line 145
    return-void

    .line 133
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endDate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startDate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "subjectDN == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyStoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getEndDate()Ljava/util/Date;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .registers 2

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getKeySize()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeySize:I

    return v0
.end method

.method public whitelist getKeyType()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeyType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getKeystoreAlias()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist getStartDate()Ljava/util/Date;
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public whitelist getSubjectDN()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public whitelist isEncryptionRequired()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    const/4 v0, 0x0

    return v0
.end method
