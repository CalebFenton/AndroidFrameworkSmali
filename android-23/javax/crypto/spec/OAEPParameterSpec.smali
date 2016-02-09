.class public Ljavax/crypto/spec/OAEPParameterSpec;
.super Ljava/lang/Object;
.source "OAEPParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;


# instance fields
.field private final mdName:Ljava/lang/String;

.field private final mgfName:Ljava/lang/String;

.field private final mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final pSrc:Ljavax/crypto/spec/PSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    #@2
    invoke-direct {v0}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>()V

    #@5
    sput-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    #@7
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const-string/jumbo v0, "SHA-1"

    #@6
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    #@8
    .line 50
    const-string/jumbo v0, "MGF1"

    #@b
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    #@d
    .line 51
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    #@f
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@11
    .line 52
    sget-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    #@13
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    #@15
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V
    .locals 2
    .param p1, "mdName"    # Ljava/lang/String;
    .param p2, "mgfName"    # Ljava/lang/String;
    .param p3, "mgfSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "pSrc"    # Ljavax/crypto/spec/PSource;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    if-nez p1, :cond_0

    #@5
    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "mdName == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 78
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "mgfName == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 80
    :cond_1
    if-nez p4, :cond_2

    #@1b
    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    #@1d
    const-string/jumbo v1, "pSrc == null"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 83
    :cond_2
    iput-object p1, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    #@26
    .line 84
    iput-object p2, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    #@28
    .line 85
    iput-object p3, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@2a
    .line 86
    iput-object p4, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    #@2c
    .line 75
    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMGFAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@2
    return-object v0
.end method

.method public getPSource()Ljavax/crypto/spec/PSource;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    #@2
    return-object v0
.end method
