.class public interface abstract Ljavax/sip/header/AuthenticationInfoHeader;
.super Ljava/lang/Object;
.source "AuthenticationInfoHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Authentication-Info"


# virtual methods
.method public abstract blacklist getCNonce()Ljava/lang/String;
.end method

.method public abstract blacklist getNextNonce()Ljava/lang/String;
.end method

.method public abstract blacklist getNonceCount()I
.end method

.method public abstract blacklist getQop()Ljava/lang/String;
.end method

.method public abstract blacklist getResponse()Ljava/lang/String;
.end method

.method public abstract blacklist setCNonce(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setNextNonce(Ljava/lang/String;)V
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

.method public abstract blacklist setQop(Ljava/lang/String;)V
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
