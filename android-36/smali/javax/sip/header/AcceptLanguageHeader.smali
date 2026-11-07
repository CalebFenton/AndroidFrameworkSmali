.class public interface abstract Ljavax/sip/header/AcceptLanguageHeader;
.super Ljava/lang/Object;
.source "AcceptLanguageHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Accept-Language"


# virtual methods
.method public abstract blacklist getAcceptLanguage()Ljava/util/Locale;
.end method

.method public abstract blacklist getQValue()F
.end method

.method public abstract blacklist hasQValue()Z
.end method

.method public abstract blacklist removeQValue()V
.end method

.method public abstract blacklist setAcceptLanguage(Ljava/util/Locale;)V
.end method

.method public abstract blacklist setLanguageRange(Ljava/lang/String;)V
.end method

.method public abstract blacklist setQValue(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
