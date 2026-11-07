.class public interface abstract Lorg/w3c/dom/Attr;
.super Ljava/lang/Object;
.source "Attr.java"

# interfaces
.implements Lorg/w3c/dom/Node;


# virtual methods
.method public abstract whitelist test-api getName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getOwnerElement()Lorg/w3c/dom/Element;
.end method

.method public abstract whitelist test-api getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
.end method

.method public abstract whitelist test-api getSpecified()Z
.end method

.method public abstract whitelist test-api getValue()Ljava/lang/String;
.end method

.method public abstract whitelist test-api isId()Z
.end method

.method public abstract whitelist test-api setValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method
