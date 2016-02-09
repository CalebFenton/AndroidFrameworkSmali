.class public abstract Ljava/security/spec/EncodedKeySpec;
.super Ljava/lang/Object;
.source "EncodedKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final encodedKey:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "encodedKey"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 37
    array-length v0, p1

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    #@9
    .line 39
    iget-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    #@b
    iget-object v1, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    #@d
    array-length v1, v1

    #@e
    .line 38
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 34
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 50
    iget-object v1, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 51
    .local v0, "ret":[B
    iget-object v1, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    #@8
    array-length v2, v0

    #@9
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c
    .line 52
    return-object v0
.end method

.method public abstract getFormat()Ljava/lang/String;
.end method
