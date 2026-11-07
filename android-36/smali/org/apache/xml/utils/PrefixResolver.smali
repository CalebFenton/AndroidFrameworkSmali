.class public interface abstract Lorg/apache/xml/utils/PrefixResolver;
.super Ljava/lang/Object;
.source "PrefixResolver.java"


# virtual methods
.method public abstract greylist getBaseIdentifier()Ljava/lang/String;
.end method

.method public abstract greylist getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
.end method

.method public abstract greylist handlesNullPrefixes()Z
.end method
