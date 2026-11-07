.class public interface abstract Ljavax/sip/header/CallInfoHeader;
.super Ljava/lang/Object;
.source "CallInfoHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Call-Info"


# virtual methods
.method public abstract blacklist getInfo()Ljavax/sip/address/URI;
.end method

.method public abstract blacklist getPurpose()Ljava/lang/String;
.end method

.method public abstract blacklist setInfo(Ljavax/sip/address/URI;)V
.end method

.method public abstract blacklist setPurpose(Ljava/lang/String;)V
.end method
