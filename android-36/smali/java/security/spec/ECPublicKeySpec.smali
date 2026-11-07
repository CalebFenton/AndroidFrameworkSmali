.class public Ljava/security/spec/ECPublicKeySpec;
.super Ljava/lang/Object;
.source "ECPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private greylist-max-o params:Ljava/security/spec/ECParameterSpec;

.field private greylist-max-o w:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V
    .registers 5
    .param p1, "w"    # Ljava/security/spec/ECPoint;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_20

    .line 59
    if-eqz p2, :cond_18

    .line 62
    sget-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    if-eq p1, v0, :cond_10

    .line 65
    iput-object p1, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    .line 66
    iput-object p2, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    .line 67
    return-void

    .line 63
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "w is ECPoint.POINT_INFINITY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "w is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .line 83
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getW()Ljava/security/spec/ECPoint;
    .registers 2

    .line 74
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    return-object v0
.end method
