.class public interface abstract Lorg/w3c/dom/DOMConfiguration;
.super Ljava/lang/Object;
.source "DOMConfiguration.java"


# virtual methods
.method public abstract whitelist test-api canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract whitelist test-api getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getParameterNames()Lorg/w3c/dom/DOMStringList;
.end method

.method public abstract whitelist test-api setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method
