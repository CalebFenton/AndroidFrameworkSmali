.class public Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;
.super Ljava/lang/Object;
.source "RecipientOperator.java"


# instance fields
.field private final blacklist operator:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/InputDecryptor;)V
    .registers 2
    .param p1, "decryptor"    # Lcom/android/internal/org/bouncycastle/operator/InputDecryptor;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/MacCalculator;)V
    .registers 2
    .param p1, "macCalculator"    # Lcom/android/internal/org/bouncycastle/operator/MacCalculator;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 4
    .param p1, "dataIn"    # Ljava/io/InputStream;

    .line 31
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/operator/InputDecryptor;

    if-eqz v0, :cond_f

    .line 33
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/org/bouncycastle/operator/InputDecryptor;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 37
    :cond_f
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/org/bouncycastle/operator/MacCalculator;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public blacklist getMac()[B
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/org/bouncycastle/operator/MacCalculator;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist isMacBased()Z
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/operator/MacCalculator;

    return v0
.end method
