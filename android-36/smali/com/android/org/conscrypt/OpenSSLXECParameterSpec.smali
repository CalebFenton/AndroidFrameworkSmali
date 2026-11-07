.class Lcom/android/org/conscrypt/OpenSSLXECParameterSpec;
.super Ljava/lang/Object;
.source "OpenSSLXECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final blacklist X25519:Ljava/lang/String; = "1.3.101.110"


# instance fields
.field private final blacklist oid:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "oid"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLXECParameterSpec;->oid:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public blacklist getOid()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLXECParameterSpec;->oid:Ljava/lang/String;

    return-object v0
.end method
