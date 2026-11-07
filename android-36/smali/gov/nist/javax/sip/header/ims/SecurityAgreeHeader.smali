.class public interface abstract Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;
.super Ljava/lang/Object;
.source "SecurityAgreeHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;
.implements Ljavax/sip/header/Header;


# virtual methods
.method public abstract greylist getAlgorithm()Ljava/lang/String;
.end method

.method public abstract greylist getEncryptionAlgorithm()Ljava/lang/String;
.end method

.method public abstract greylist getMode()Ljava/lang/String;
.end method

.method public abstract greylist getPortClient()I
.end method

.method public abstract greylist getPortServer()I
.end method

.method public abstract greylist getPreference()F
.end method

.method public abstract greylist getProtocol()Ljava/lang/String;
.end method

.method public abstract greylist getSPIClient()I
.end method

.method public abstract greylist getSPIServer()I
.end method

.method public abstract greylist getSecurityMechanism()Ljava/lang/String;
.end method

.method public abstract greylist setAlgorithm(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setEncryptionAlgorithm(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setPortClient(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract greylist setPortServer(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract greylist setPreference(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract greylist setProtocol(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setSPIClient(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract greylist setSPIServer(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract greylist setSecurityMechanism(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
