.class public Lcom/android/internal/org/bouncycastle/operator/GenericKey;
.super Ljava/lang/Object;
.source "GenericKey.java"


# instance fields
.field private blacklist algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist representation:Ljava/lang/Object;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/lang/Object;)V
    .registers 3
    .param p1, "algorithmIdentifier"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "representation"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 33
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->representation:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .registers 3
    .param p1, "algorithmIdentifier"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "representation"    # [B

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 27
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->representation:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "representation"    # Ljava/lang/Object;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 21
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->representation:Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getRepresentation()Ljava/lang/Object;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/GenericKey;->representation:Ljava/lang/Object;

    return-object v0
.end method
