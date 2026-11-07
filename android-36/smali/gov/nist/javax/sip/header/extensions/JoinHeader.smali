.class public interface abstract Lgov/nist/javax/sip/header/extensions/JoinHeader;
.super Ljava/lang/Object;
.source "JoinHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;
.implements Ljavax/sip/header/Header;


# static fields
.field public static final greylist NAME:Ljava/lang/String; = "Join"


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
