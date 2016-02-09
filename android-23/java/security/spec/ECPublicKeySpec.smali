.class public Ljava/security/spec/ECPublicKeySpec;
.super Ljava/lang/Object;
.source "ECPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final params:Ljava/security/spec/ECParameterSpec;

.field private final w:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V
    .locals 2
    .param p1, "w"    # Ljava/security/spec/ECPoint;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    #@5
    .line 42
    iput-object p2, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    #@7
    .line 44
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "w == null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 47
    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    #@16
    if-nez v0, :cond_1

    #@18
    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v1, "params == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 51
    :cond_1
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    #@23
    sget-object v1, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    #@25
    invoke-virtual {v0, v1}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v1, "the w parameter is point at infinity"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 40
    :cond_2
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    #@2
    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    #@2
    return-object v0
.end method
