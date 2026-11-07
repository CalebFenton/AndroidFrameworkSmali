.class public abstract Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.super Ljava/lang/Object;
.source "X9ECParametersHolder.java"


# instance fields
.field private blacklist curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private blacklist params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist createCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end method

.method protected abstract blacklist createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
.end method

.method public declared-synchronized blacklist getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    monitor-enter p0

    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-nez v0, :cond_e

    .line 19
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->createCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_12

    .line 22
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_c

    monitor-exit p0

    return-object v0

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_c

    throw v0
.end method

.method public declared-synchronized blacklist getParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 2

    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    if-nez v0, :cond_e

    .line 29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_12

    .line 32
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_c

    monitor-exit p0

    return-object v0

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_c

    throw v0
.end method
