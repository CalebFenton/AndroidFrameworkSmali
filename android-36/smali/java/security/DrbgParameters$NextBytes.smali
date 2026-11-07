.class public final Ljava/security/DrbgParameters$NextBytes;
.super Ljava/lang/Object;
.source "DrbgParameters.java"

# interfaces
.implements Ljava/security/SecureRandomParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/DrbgParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NextBytes"
.end annotation


# instance fields
.field private final blacklist additionalInput:[B

.field private final blacklist predictionResistance:Z

.field private final blacklist strength:I


# direct methods
.method private constructor blacklist <init>(IZ[B)V
    .registers 7
    .param p1, "strength"    # I
    .param p2, "predictionResistance"    # Z
    .param p3, "additionalInput"    # [B

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const/4 v0, -0x1

    if-lt p1, v0, :cond_17

    .line 461
    iput p1, p0, Ljava/security/DrbgParameters$NextBytes;->strength:I

    .line 462
    iput-boolean p2, p0, Ljava/security/DrbgParameters$NextBytes;->predictionResistance:Z

    .line 463
    if-nez p3, :cond_e

    .line 464
    const/4 v0, 0x0

    goto :goto_14

    :cond_e
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_14
    iput-object v0, p0, Ljava/security/DrbgParameters$NextBytes;->additionalInput:[B

    .line 465
    return-void

    .line 458
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal security strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(IZ[BLjava/security/DrbgParameters-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljava/security/DrbgParameters$NextBytes;-><init>(IZ[B)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getAdditionalInput()[B
    .registers 2

    .line 452
    iget-object v0, p0, Ljava/security/DrbgParameters$NextBytes;->additionalInput:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Ljava/security/DrbgParameters$NextBytes;->additionalInput:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_e
    return-object v0
.end method

.method public whitelist test-api getPredictionResistance()Z
    .registers 2

    .line 441
    iget-boolean v0, p0, Ljava/security/DrbgParameters$NextBytes;->predictionResistance:Z

    return v0
.end method

.method public whitelist test-api getStrength()I
    .registers 2

    .line 432
    iget v0, p0, Ljava/security/DrbgParameters$NextBytes;->strength:I

    return v0
.end method
