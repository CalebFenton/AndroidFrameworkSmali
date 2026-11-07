.class public Ljava/security/spec/NamedParameterSpec;
.super Ljava/lang/Object;
.source "NamedParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final whitelist test-api ED25519:Ljava/security/spec/NamedParameterSpec;

.field public static final whitelist test-api ED448:Ljava/security/spec/NamedParameterSpec;

.field public static final whitelist test-api X25519:Ljava/security/spec/NamedParameterSpec;

.field public static final whitelist test-api X448:Ljava/security/spec/NamedParameterSpec;


# instance fields
.field private blacklist name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Ljava/security/spec/NamedParameterSpec;

    const-string v1, "X25519"

    invoke-direct {v0, v1}, Ljava/security/spec/NamedParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    .line 52
    new-instance v0, Ljava/security/spec/NamedParameterSpec;

    const-string v1, "X448"

    invoke-direct {v0, v1}, Ljava/security/spec/NamedParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/NamedParameterSpec;->X448:Ljava/security/spec/NamedParameterSpec;

    .line 60
    new-instance v0, Ljava/security/spec/NamedParameterSpec;

    const-string v1, "Ed25519"

    invoke-direct {v0, v1}, Ljava/security/spec/NamedParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    .line 68
    new-instance v0, Ljava/security/spec/NamedParameterSpec;

    const-string v1, "Ed448"

    invoke-direct {v0, v1}, Ljava/security/spec/NamedParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/NamedParameterSpec;->ED448:Ljava/security/spec/NamedParameterSpec;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "stdName"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "stdName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Ljava/security/spec/NamedParameterSpec;->name:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Ljava/security/spec/NamedParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
