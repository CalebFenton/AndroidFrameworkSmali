.class public interface abstract Lgov/nist/javax/sip/header/ims/PChargingFunctionAddressesHeader;
.super Ljava/lang/Object;
.source "PChargingFunctionAddressesHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;
.implements Ljavax/sip/header/Header;


# static fields
.field public static final greylist NAME:Ljava/lang/String; = "P-Charging-Function-Addresses"


# virtual methods
.method public abstract greylist addChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist addEventChargingFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist getChargingCollectionFunctionAddresses()Ljava/util/ListIterator;
.end method

.method public abstract greylist getEventChargingFunctionAddresses()Ljava/util/ListIterator;
.end method

.method public abstract greylist removeChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist removeEventChargingFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setEventChargingFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
