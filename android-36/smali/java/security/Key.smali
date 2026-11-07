.class public interface abstract Ljava/security/Key;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final whitelist test-api serialVersionUID:J = 0x5ba3eee69414eea6L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract whitelist test-api getAlgorithm()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getEncoded()[B
.end method

.method public abstract whitelist test-api getFormat()Ljava/lang/String;
.end method
