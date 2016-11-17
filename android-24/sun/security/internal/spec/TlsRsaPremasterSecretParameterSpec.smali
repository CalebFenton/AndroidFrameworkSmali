.class public Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;
.super Ljava/lang/Object;
.source "TlsRsaPremasterSecretParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final majorVersion:I

.field private final minorVersion:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    invoke-static {p1}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    #@6
    move-result v0

    #@7
    .line 65
    iput v0, p0, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->majorVersion:I

    #@9
    .line 68
    invoke-static {p2}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    #@c
    move-result v0

    #@d
    .line 67
    iput v0, p0, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->minorVersion:I

    #@f
    .line 64
    return-void
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->majorVersion:I

    #@2
    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget v0, p0, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->minorVersion:I

    #@2
    return v0
.end method
