.class public final Ljava/security/DrbgParameters$Reseed;
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
    name = "Reseed"
.end annotation


# instance fields
.field private final blacklist additionalInput:[B

.field private final blacklist predictionResistance:Z


# direct methods
.method private constructor blacklist <init>(Z[B)V
    .registers 4
    .param p1, "predictionResistance"    # Z
    .param p2, "additionalInput"    # [B

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-boolean p1, p0, Ljava/security/DrbgParameters$Reseed;->predictionResistance:Z

    .line 501
    if-nez p2, :cond_9

    .line 502
    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_f
    iput-object v0, p0, Ljava/security/DrbgParameters$Reseed;->additionalInput:[B

    .line 503
    return-void
.end method

.method synthetic constructor blacklist <init>(Z[BLjava/security/DrbgParameters-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/security/DrbgParameters$Reseed;-><init>(Z[B)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getAdditionalInput()[B
    .registers 2

    .line 496
    iget-object v0, p0, Ljava/security/DrbgParameters$Reseed;->additionalInput:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Ljava/security/DrbgParameters$Reseed;->additionalInput:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_e
    return-object v0
.end method

.method public whitelist test-api getPredictionResistance()Z
    .registers 2

    .line 485
    iget-boolean v0, p0, Ljava/security/DrbgParameters$Reseed;->predictionResistance:Z

    return v0
.end method
