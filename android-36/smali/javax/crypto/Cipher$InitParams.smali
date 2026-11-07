.class Ljavax/crypto/Cipher$InitParams;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitParams"
.end annotation


# instance fields
.field final greylist-max-o initType:Ljavax/crypto/Cipher$InitType;

.field final greylist-max-o key:Ljava/security/Key;

.field final greylist-max-o opmode:I

.field final greylist-max-o params:Ljava/security/AlgorithmParameters;

.field final greylist-max-o random:Ljava/security/SecureRandom;

.field final greylist-max-o spec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method constructor greylist-max-o <init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V
    .registers 7
    .param p1, "initType"    # Ljavax/crypto/Cipher$InitType;
    .param p2, "opmode"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "params"    # Ljava/security/AlgorithmParameters;

    .line 2747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2748
    iput-object p1, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    .line 2749
    iput p2, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    .line 2750
    iput-object p3, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    .line 2751
    iput-object p4, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    .line 2752
    iput-object p5, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 2753
    iput-object p6, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    .line 2754
    return-void
.end method
