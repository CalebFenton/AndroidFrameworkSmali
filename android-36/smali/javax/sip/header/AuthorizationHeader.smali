.class public interface abstract Ljavax/sip/header/AuthorizationHeader;
.super Ljava/lang/Object;
.source "AuthorizationHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Authorization"


# virtual methods
.method public abstract blacklist getAlgorithm()Ljava/lang/String;
.end method

.method public abstract blacklist getCNonce()Ljava/lang/String;
.end method

.method public abstract blacklist getNonce()Ljava/lang/String;
.end method

.method public abstract blacklist getNonceCount()I
.end method

.method public abstract blacklist getOpaque()Ljava/lang/String;
.end method

.method public abstract blacklist getQop()Ljava/lang/String;
.end method

.method public abstract blacklist getRealm()Ljava/lang/String;
.end method

.method public abstract blacklist getResponse()Ljava/lang/String;
.end method

.method public abstract blacklist getScheme()Ljava/lang/String;
.end method

.method public abstract blacklist getURI()Ljavax/sip/address/URI;
.end method

.method public abstract blacklist getUsername()Ljava/lang/String;
.end method

.method public abstract blacklist isStale()Z
.end method

.method public abstract blacklist setAlgorithm(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setCNonce(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setNonce(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setNonceCount(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setOpaque(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setQop(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setRealm(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setResponse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setScheme(Ljava/lang/String;)V
.end method

.method public abstract blacklist setStale(Z)V
.end method

.method public abstract blacklist setURI(Ljavax/sip/address/URI;)V
.end method

.method public abstract blacklist setUsername(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
