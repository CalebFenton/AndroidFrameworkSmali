.class public interface abstract Lgov/nist/javax/sip/header/ims/PChargingVectorHeader;
.super Ljava/lang/Object;
.source "PChargingVectorHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final greylist NAME:Ljava/lang/String; = "P-Charging-Vector"


# virtual methods
.method public abstract greylist getICID()Ljava/lang/String;
.end method

.method public abstract greylist getICIDGeneratedAt()Ljava/lang/String;
.end method

.method public abstract greylist getOriginatingIOI()Ljava/lang/String;
.end method

.method public abstract greylist getTerminatingIOI()Ljava/lang/String;
.end method

.method public abstract greylist setICID(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setICIDGeneratedAt(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setOriginatingIOI(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setTerminatingIOI(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
