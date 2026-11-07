.class public interface abstract Lgov/nist/javax/sip/header/extensions/ReferencesHeader;
.super Ljava/lang/Object;
.source "ReferencesHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;
.implements Ljavax/sip/header/Header;


# static fields
.field public static final greylist CHAIN:Ljava/lang/String; = "chain"

.field public static final greylist INQUIRY:Ljava/lang/String; = "inquiry"

.field public static final greylist NAME:Ljava/lang/String; = "References"

.field public static final greylist REFER:Ljava/lang/String; = "refer"

.field public static final greylist REL:Ljava/lang/String; = "rel"

.field public static final greylist SEQUEL:Ljava/lang/String; = "sequel"

.field public static final greylist SERVICE:Ljava/lang/String; = "service"

.field public static final greylist XFER:Ljava/lang/String; = "xfer"


# virtual methods
.method public abstract greylist getCallId()Ljava/lang/String;
.end method

.method public abstract greylist getRel()Ljava/lang/String;
.end method

.method public abstract greylist setCallId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setRel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
