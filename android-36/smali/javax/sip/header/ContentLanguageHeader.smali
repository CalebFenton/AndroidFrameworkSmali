.class public interface abstract Ljavax/sip/header/ContentLanguageHeader;
.super Ljava/lang/Object;
.source "ContentLanguageHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Content-Language"


# virtual methods
.method public abstract blacklist getContentLanguage()Ljava/util/Locale;
.end method

.method public abstract blacklist getLanguageTag()Ljava/lang/String;
.end method

.method public abstract blacklist setContentLanguage(Ljava/util/Locale;)V
.end method

.method public abstract blacklist setLanguageTag(Ljava/lang/String;)V
.end method
