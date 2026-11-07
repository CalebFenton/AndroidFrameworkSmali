.class public interface abstract Ljavax/sip/header/RAckHeader;
.super Ljava/lang/Object;
.source "RAckHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "RAck"


# virtual methods
.method public abstract blacklist getCSeqNumber()I
.end method

.method public abstract blacklist getCSequenceNumber()J
.end method

.method public abstract blacklist getMethod()Ljava/lang/String;
.end method

.method public abstract blacklist getRSeqNumber()I
.end method

.method public abstract blacklist getRSequenceNumber()J
.end method

.method public abstract blacklist setCSeqNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setCSequenceNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setMethod(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setRSeqNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setRSequenceNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
