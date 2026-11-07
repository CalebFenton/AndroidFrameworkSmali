.class public Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "ECKeyParameters.java"


# instance fields
.field private final blacklist parameters:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method protected constructor blacklist <init>(ZLcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .registers 5
    .param p1, "isPrivate"    # Z
    .param p2, "parameters"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    if-eqz p2, :cond_8

    .line 23
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->parameters:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 24
    return-void

    .line 20
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'parameters\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->parameters:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
