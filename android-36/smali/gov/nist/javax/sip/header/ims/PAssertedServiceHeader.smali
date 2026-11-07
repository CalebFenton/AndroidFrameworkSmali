.class public interface abstract Lgov/nist/javax/sip/header/ims/PAssertedServiceHeader;
.super Ljava/lang/Object;
.source "PAssertedServiceHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final greylist NAME:Ljava/lang/String; = "P-Asserted-Service"


# virtual methods
.method public abstract greylist getApplicationIdentifiers()Ljava/lang/String;
.end method

.method public abstract greylist getSubserviceIdentifiers()Ljava/lang/String;
.end method

.method public abstract greylist setApplicationIdentifiers(Ljava/lang/String;)V
.end method

.method public abstract greylist setSubserviceIdentifiers(Ljava/lang/String;)V
.end method
