.class public Ljavax/crypto/spec/OAEPParameterSpec;
.super Ljava/lang/Object;
.source "OAEPParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final whitelist test-api DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;


# instance fields
.field private greylist-max-o mdName:Ljava/lang/String;

.field private greylist-max-o mgfName:Ljava/lang/String;

.field private greylist-max-o mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private greylist-max-o pSrc:Ljavax/crypto/spec/PSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {v0}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>()V

    sput-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "SHA-1"

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    .line 80
    const-string v0, "MGF1"

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    .line 81
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 82
    sget-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    .line 94
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V
    .registers 7
    .param p1, "mdName"    # Ljava/lang/String;
    .param p2, "mgfName"    # Ljava/lang/String;
    .param p3, "mgfSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "pSrc"    # Ljavax/crypto/spec/PSource;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "SHA-1"

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    .line 80
    const-string v0, "MGF1"

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    .line 81
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 82
    sget-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    .line 116
    if-eqz p1, :cond_32

    .line 119
    if-eqz p2, :cond_2a

    .line 123
    if-eqz p4, :cond_22

    .line 127
    iput-object p1, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 130
    iput-object p4, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    .line 131
    return-void

    .line 124
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source of the encoding input is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mask generation function algorithm is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "digest algorithm is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getDigestAlgorithm()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMGFAlgorithm()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 157
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getPSource()Ljavax/crypto/spec/PSource;
    .registers 2

    .line 166
    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    return-object v0
.end method
