.class public interface abstract Ljavax/sip/address/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract whitelist test-api clone()Ljava/lang/Object;
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public abstract blacklist getDisplayName()Ljava/lang/String;
.end method

.method public abstract blacklist getHost()Ljava/lang/String;
.end method

.method public abstract blacklist getPort()I
.end method

.method public abstract blacklist getURI()Ljavax/sip/address/URI;
.end method

.method public abstract blacklist getUserAtHostPort()Ljava/lang/String;
.end method

.method public abstract blacklist hasDisplayName()Z
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public abstract blacklist isSIPAddress()Z
.end method

.method public abstract blacklist isWildcard()Z
.end method

.method public abstract blacklist setDisplayName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setURI(Ljavax/sip/address/URI;)V
.end method

.method public abstract blacklist setWildCardFlag()V
.end method
