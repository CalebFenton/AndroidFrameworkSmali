.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/RawEncodedKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "RawEncodedKeySpec.java"


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 20
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    .line 21
    return-void
.end method


# virtual methods
.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 25
    const-string v0, "RAW"

    return-object v0
.end method
