.class public interface abstract Ljavax/sip/header/AlertInfoHeader;
.super Ljava/lang/Object;
.source "AlertInfoHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Alert-Info"


# virtual methods
.method public abstract blacklist getAlertInfo()Ljavax/sip/address/URI;
.end method

.method public abstract blacklist setAlertInfo(Ljava/lang/String;)V
.end method

.method public abstract blacklist setAlertInfo(Ljavax/sip/address/URI;)V
.end method
