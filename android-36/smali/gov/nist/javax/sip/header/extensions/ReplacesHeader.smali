.class public interface abstract Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
.super Ljava/lang/Object;
.source "ReplacesHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final greylist NAME:Ljava/lang/String; = "Replaces"


# virtual methods
.method public abstract greylist getCallId()Ljava/lang/String;
.end method

.method public abstract greylist getFromTag()Ljava/lang/String;
.end method

.method public abstract greylist getToTag()Ljava/lang/String;
.end method

.method public abstract greylist setCallId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setFromTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setToTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
