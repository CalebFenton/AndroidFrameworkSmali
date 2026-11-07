.class public Ljava/security/spec/ECGenParameterSpec;
.super Ljava/security/spec/NamedParameterSpec;
.source "ECGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "stdName"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Ljava/security/spec/NamedParameterSpec;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 69
    invoke-super {p0}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
