.class Ljavax/crypto/Cipher$InitParams;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitParams"
.end annotation


# instance fields
.field private final initType:Ljavax/crypto/Cipher$InitType;

.field private final key:Ljava/security/Key;

.field private final opmode:I

.field private final params:Ljava/security/AlgorithmParameters;

.field private final random:Ljava/security/SecureRandom;

.field private final spec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method static synthetic -get0(Ljavax/crypto/Cipher$InitParams;)Ljavax/crypto/Cipher$InitType;
    .locals 1

    #@0
    iget-object v0, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljavax/crypto/Cipher$InitParams;)Ljava/security/Key;
    .locals 1

    #@0
    iget-object v0, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljavax/crypto/Cipher$InitParams;)I
    .locals 1

    #@0
    iget v0, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    #@2
    return v0
.end method

.method static synthetic -get3(Ljavax/crypto/Cipher$InitParams;)Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    iget-object v0, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Ljavax/crypto/Cipher$InitParams;)Ljava/security/SecureRandom;
    .locals 1

    #@0
    iget-object v0, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Ljavax/crypto/Cipher$InitParams;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    #@0
    iget-object v0, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    #@2
    return-object v0
.end method

.method private constructor <init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V
    .locals 0
    .param p1, "initType"    # Ljavax/crypto/Cipher$InitType;
    .param p2, "opmode"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "params"    # Ljava/security/AlgorithmParameters;

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 131
    iput-object p1, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    #@5
    .line 132
    iput p2, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    #@7
    .line 133
    iput-object p3, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@9
    .line 134
    iput-object p4, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    #@b
    .line 135
    iput-object p5, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    #@d
    .line 136
    iput-object p6, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    #@f
    .line 130
    return-void
.end method

.method synthetic constructor <init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljavax/crypto/Cipher$InitParams;)V
    .locals 0
    .param p1, "initType"    # Ljavax/crypto/Cipher$InitType;
    .param p2, "opmode"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "params"    # Ljava/security/AlgorithmParameters;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Ljavax/crypto/Cipher$InitParams;-><init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V

    #@3
    return-void
.end method
