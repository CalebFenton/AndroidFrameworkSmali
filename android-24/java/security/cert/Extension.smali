.class public interface abstract Ljava/security/cert/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# virtual methods
.method public abstract encode(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getValue()[B
.end method

.method public abstract isCritical()Z
.end method
