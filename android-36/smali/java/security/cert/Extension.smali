.class public interface abstract Ljava/security/cert/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# virtual methods
.method public abstract whitelist test-api encode(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getId()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getValue()[B
.end method

.method public abstract whitelist test-api isCritical()Z
.end method
