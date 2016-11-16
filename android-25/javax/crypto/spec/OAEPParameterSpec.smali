.class public Ljavax/crypto/spec/OAEPParameterSpec;
.super Ljava/lang/Object;
.source "OAEPParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;


# instance fields
.field private mdName:Ljava/lang/String;

.field private mgfName:Ljava/lang/String;

.field private mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private pSrc:Ljavax/crypto/spec/PSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 87
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    #@2
    invoke-direct {v0}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>()V

    #@5
    sput-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    #@7
    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    const-string/jumbo v0, "SHA-1"

    #@6
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    #@8
    .line 80
    const-string/jumbo v0, "MGF1"

    #@b
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    #@d
    .line 81
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    #@f
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@11
    .line 82
    sget-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    #@13
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    #@15
    .line 93
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
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    const-string/jumbo v0, "SHA-1"

    #@6
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    #@8
    .line 80
    const-string/jumbo v0, "MGF1"

    #@b
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    #@d
    .line 81
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    #@f
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@11
    .line 82
    sget-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    #@13
    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    #@15
    .line 116
    if-nez p1, :cond_0

    #@17
    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    #@19
    const-string/jumbo v1, "digest algorithm is null"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 119
    :cond_0
    if-nez p2, :cond_1

    #@22
    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    #@24
    const-string/jumbo v1, "mask generation function algorithm is null"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 123
    :cond_1
    if-nez p4, :cond_2

    #@2d
    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    #@2f
    const-string/jumbo v1, "source of the encoding input is null"

    #@32
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 127
    :cond_2
    iput-object p1, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    #@38
    .line 128
    iput-object p2, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    #@3a
    .line 129
    iput-object p3, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@3c
    .line 130
    iput-object p4, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    #@3e
    .line 115
    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMGFAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    #@2
    return-object v0
.end method

.method public getPSource()Ljavax/crypto/spec/PSource;
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    #@2
    return-object v0
.end method
