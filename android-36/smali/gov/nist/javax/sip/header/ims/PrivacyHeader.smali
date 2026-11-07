.class public interface abstract Lgov/nist/javax/sip/header/ims/PrivacyHeader;
.super Ljava/lang/Object;
.source "PrivacyHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final greylist NAME:Ljava/lang/String; = "Privacy"


# virtual methods
.method public abstract greylist getPrivacy()Ljava/lang/String;
.end method

.method public abstract greylist setPrivacy(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
