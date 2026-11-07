.class public interface abstract Ljavax/sip/address/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract whitelist test-api clone()Ljava/lang/Object;
.end method

.method public abstract blacklist getScheme()Ljava/lang/String;
.end method

.method public abstract blacklist isSipURI()Z
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
