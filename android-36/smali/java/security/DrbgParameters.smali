.class public Ljava/security/DrbgParameters;
.super Ljava/lang/Object;
.source "DrbgParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/DrbgParameters$Instantiation;,
        Ljava/security/DrbgParameters$Capability;,
        Ljava/security/DrbgParameters$NextBytes;,
        Ljava/security/DrbgParameters$Reseed;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method public static whitelist test-api instantiation(ILjava/security/DrbgParameters$Capability;[B)Ljava/security/DrbgParameters$Instantiation;
    .registers 6
    .param p0, "strength"    # I
    .param p1, "capability"    # Ljava/security/DrbgParameters$Capability;
    .param p2, "personalizationString"    # [B

    .line 522
    new-instance v0, Ljava/security/DrbgParameters$Instantiation;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/DrbgParameters$Capability;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Ljava/security/DrbgParameters$Instantiation;-><init>(ILjava/security/DrbgParameters$Capability;[BLjava/security/DrbgParameters-IA;)V

    return-object v0
.end method

.method public static whitelist test-api nextBytes(IZ[B)Ljava/security/DrbgParameters$NextBytes;
    .registers 5
    .param p0, "strength"    # I
    .param p1, "predictionResistance"    # Z
    .param p2, "additionalInput"    # [B

    .line 540
    new-instance v0, Ljava/security/DrbgParameters$NextBytes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/security/DrbgParameters$NextBytes;-><init>(IZ[BLjava/security/DrbgParameters-IA;)V

    return-object v0
.end method

.method public static whitelist test-api reseed(Z[B)Ljava/security/DrbgParameters$Reseed;
    .registers 4
    .param p0, "predictionResistance"    # Z
    .param p1, "additionalInput"    # [B

    .line 553
    new-instance v0, Ljava/security/DrbgParameters$Reseed;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/security/DrbgParameters$Reseed;-><init>(Z[BLjava/security/DrbgParameters-IA;)V

    return-object v0
.end method
