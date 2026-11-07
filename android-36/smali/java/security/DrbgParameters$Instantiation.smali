.class public final Ljava/security/DrbgParameters$Instantiation;
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
    name = "Instantiation"
.end annotation


# instance fields
.field private final blacklist capability:Ljava/security/DrbgParameters$Capability;

.field private final blacklist personalizationString:[B

.field private final blacklist strength:I


# direct methods
.method private constructor blacklist <init>(ILjava/security/DrbgParameters$Capability;[B)V
    .registers 7
    .param p1, "strength"    # I
    .param p2, "capability"    # Ljava/security/DrbgParameters$Capability;
    .param p3, "personalizationString"    # [B

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const/4 v0, -0x1

    if-lt p1, v0, :cond_17

    .line 392
    iput p1, p0, Ljava/security/DrbgParameters$Instantiation;->strength:I

    .line 393
    iput-object p2, p0, Ljava/security/DrbgParameters$Instantiation;->capability:Ljava/security/DrbgParameters$Capability;

    .line 394
    if-nez p3, :cond_e

    .line 395
    const/4 v0, 0x0

    goto :goto_14

    :cond_e
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_14
    iput-object v0, p0, Ljava/security/DrbgParameters$Instantiation;->personalizationString:[B

    .line 396
    return-void

    .line 389
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

.method synthetic constructor blacklist <init>(ILjava/security/DrbgParameters$Capability;[BLjava/security/DrbgParameters-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljava/security/DrbgParameters$Instantiation;-><init>(ILjava/security/DrbgParameters$Capability;[B)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getCapability()Ljava/security/DrbgParameters$Capability;
    .registers 2

    .line 369
    iget-object v0, p0, Ljava/security/DrbgParameters$Instantiation;->capability:Ljava/security/DrbgParameters$Capability;

    return-object v0
.end method

.method public whitelist test-api getPersonalizationString()[B
    .registers 2

    .line 382
    iget-object v0, p0, Ljava/security/DrbgParameters$Instantiation;->personalizationString:[B

    if-nez v0, :cond_6

    .line 383
    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Ljava/security/DrbgParameters$Instantiation;->personalizationString:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 382
    :goto_e
    return-object v0
.end method

.method public whitelist test-api getStrength()I
    .registers 2

    .line 357
    iget v0, p0, Ljava/security/DrbgParameters$Instantiation;->strength:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljava/security/DrbgParameters$Instantiation;->strength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljava/security/DrbgParameters$Instantiation;->capability:Ljava/security/DrbgParameters$Capability;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/DrbgParameters$Instantiation;->personalizationString:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
