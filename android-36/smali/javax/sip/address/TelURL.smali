.class public interface abstract Ljavax/sip/address/TelURL;
.super Ljava/lang/Object;
.source "TelURL.java"

# interfaces
.implements Ljavax/sip/address/URI;
.implements Ljavax/sip/header/Parameters;


# virtual methods
.method public abstract blacklist getIsdnSubAddress()Ljava/lang/String;
.end method

.method public abstract blacklist getPhoneContext()Ljava/lang/String;
.end method

.method public abstract blacklist getPhoneNumber()Ljava/lang/String;
.end method

.method public abstract blacklist getPostDial()Ljava/lang/String;
.end method

.method public abstract blacklist isGlobal()Z
.end method

.method public abstract blacklist setGlobal(Z)V
.end method

.method public abstract blacklist setIsdnSubAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setPhoneContext(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setPhoneNumber(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setPostDial(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
