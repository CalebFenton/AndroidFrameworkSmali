.class public final Ljava/security/spec/EdECPublicKeySpec;
.super Ljava/lang/Object;
.source "EdECPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final blacklist params:Ljava/security/spec/NamedParameterSpec;

.field private final blacklist point:Ljava/security/spec/EdECPoint;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/spec/NamedParameterSpec;Ljava/security/spec/EdECPoint;)V
    .registers 4
    .param p1, "params"    # Ljava/security/spec/NamedParameterSpec;
    .param p2, "point"    # Ljava/security/spec/EdECPoint;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "params must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    const-string v0, "point must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Ljava/security/spec/EdECPublicKeySpec;->params:Ljava/security/spec/NamedParameterSpec;

    .line 58
    iput-object p2, p0, Ljava/security/spec/EdECPublicKeySpec;->point:Ljava/security/spec/EdECPoint;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/NamedParameterSpec;
    .registers 2

    .line 67
    iget-object v0, p0, Ljava/security/spec/EdECPublicKeySpec;->params:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getPoint()Ljava/security/spec/EdECPoint;
    .registers 2

    .line 76
    iget-object v0, p0, Ljava/security/spec/EdECPublicKeySpec;->point:Ljava/security/spec/EdECPoint;

    return-object v0
.end method
