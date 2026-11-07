.class public interface abstract Ljavax/sip/header/ErrorInfoHeader;
.super Ljava/lang/Object;
.source "ErrorInfoHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Error-Info"


# virtual methods
.method public abstract blacklist getErrorInfo()Ljavax/sip/address/URI;
.end method

.method public abstract blacklist getErrorMessage()Ljava/lang/String;
.end method

.method public abstract blacklist setErrorInfo(Ljavax/sip/address/URI;)V
.end method

.method public abstract blacklist setErrorMessage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
