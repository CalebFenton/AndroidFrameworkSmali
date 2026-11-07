.class public interface abstract Ljavax/sip/address/AddressFactory;
.super Ljava/lang/Object;
.source "AddressFactory.java"


# virtual methods
.method public abstract blacklist createAddress()Ljavax/sip/address/Address;
.end method

.method public abstract blacklist createAddress(Ljava/lang/String;)Ljavax/sip/address/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createAddress(Ljava/lang/String;Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
.end method

.method public abstract blacklist createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createTelURL(Ljava/lang/String;)Ljavax/sip/address/TelURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createURI(Ljava/lang/String;)Ljavax/sip/address/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
