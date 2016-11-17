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
.field final initType:Ljavax/crypto/Cipher$InitType;

.field final key:Ljava/security/Key;

.field final opmode:I

.field final params:Ljava/security/AlgorithmParameters;

.field final random:Ljava/security/SecureRandom;

.field final spec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V
    .locals 0
    .param p1, "initType"    # Ljavax/crypto/Cipher$InitType;
    .param p2, "opmode"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "params"    # Ljava/security/AlgorithmParameters;

    #@0
    .prologue
    .line 2720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2722
    iput-object p1, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    #@5
    .line 2723
    iput p2, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    #@7
    .line 2724
    iput-object p3, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@9
    .line 2725
    iput-object p4, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    #@b
    .line 2726
    iput-object p5, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    #@d
    .line 2727
    iput-object p6, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    #@f
    .line 2721
    return-void
.end method
