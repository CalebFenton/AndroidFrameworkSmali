.class public interface abstract Lgov/nist/javax/sip/header/extensions/SessionExpiresHeader;
.super Ljava/lang/Object;
.source "SessionExpiresHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field public static final greylist NAME:Ljava/lang/String; = "Session-Expires"


# virtual methods
.method public abstract greylist getExpires()I
.end method

.method public abstract greylist getRefresher()Ljava/lang/String;
.end method

.method public abstract greylist setExpires(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract greylist setRefresher(Ljava/lang/String;)V
.end method
