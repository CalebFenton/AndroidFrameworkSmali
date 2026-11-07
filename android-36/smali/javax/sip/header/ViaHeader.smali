.class public interface abstract Ljavax/sip/header/ViaHeader;
.super Ljava/lang/Object;
.source "ViaHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Via"


# virtual methods
.method public abstract blacklist getBranch()Ljava/lang/String;
.end method

.method public abstract blacklist getHost()Ljava/lang/String;
.end method

.method public abstract blacklist getMAddr()Ljava/lang/String;
.end method

.method public abstract blacklist getPort()I
.end method

.method public abstract blacklist getProtocol()Ljava/lang/String;
.end method

.method public abstract blacklist getRPort()I
.end method

.method public abstract blacklist getReceived()Ljava/lang/String;
.end method

.method public abstract blacklist getSentByField()Ljava/lang/String;
.end method

.method public abstract blacklist getSentProtocolField()Ljava/lang/String;
.end method

.method public abstract blacklist getTTL()I
.end method

.method public abstract blacklist getTransport()Ljava/lang/String;
.end method

.method public abstract blacklist setBranch(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setHost(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setMAddr(Ljava/lang/String;)V
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

.method public abstract blacklist setProtocol(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setRPort()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setReceived(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setTTL(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setTransport(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
