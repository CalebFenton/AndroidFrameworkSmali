.class public interface abstract Ljavax/sip/address/SipURI;
.super Ljava/lang/Object;
.source "SipURI.java"

# interfaces
.implements Ljavax/sip/address/URI;
.implements Ljavax/sip/header/Parameters;


# virtual methods
.method public abstract blacklist getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getHeaderNames()Ljava/util/Iterator;
.end method

.method public abstract blacklist getHost()Ljava/lang/String;
.end method

.method public abstract blacklist getLrParam()Ljava/lang/String;
.end method

.method public abstract blacklist getMAddrParam()Ljava/lang/String;
.end method

.method public abstract blacklist getMethodParam()Ljava/lang/String;
.end method

.method public abstract blacklist getPort()I
.end method

.method public abstract blacklist getTTLParam()I
.end method

.method public abstract blacklist getTransportParam()Ljava/lang/String;
.end method

.method public abstract blacklist getUser()Ljava/lang/String;
.end method

.method public abstract blacklist getUserAtHost()Ljava/lang/String;
.end method

.method public abstract blacklist getUserAtHostPort()Ljava/lang/String;
.end method

.method public abstract blacklist getUserParam()Ljava/lang/String;
.end method

.method public abstract blacklist getUserPassword()Ljava/lang/String;
.end method

.method public abstract blacklist getUserType()Ljava/lang/String;
.end method

.method public abstract blacklist hasLrParam()Z
.end method

.method public abstract blacklist hasTransport()Z
.end method

.method public abstract blacklist isSecure()Z
.end method

.method public abstract blacklist removeUserType()V
.end method

.method public abstract blacklist setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist setHost(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setLrParam()V
.end method

.method public abstract blacklist setMAddrParam(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setMethodParam(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setPort(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setSecure(Z)V
.end method

.method public abstract blacklist setTTLParam(I)V
.end method

.method public abstract blacklist setTransportParam(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setUser(Ljava/lang/String;)V
.end method

.method public abstract blacklist setUserParam(Ljava/lang/String;)V
.end method

.method public abstract blacklist setUserPassword(Ljava/lang/String;)V
.end method
