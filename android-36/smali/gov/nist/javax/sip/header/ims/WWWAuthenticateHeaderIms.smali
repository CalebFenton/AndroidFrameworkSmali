.class public interface abstract Lgov/nist/javax/sip/header/ims/WWWAuthenticateHeaderIms;
.super Ljava/lang/Object;
.source "WWWAuthenticateHeaderIms.java"

# interfaces
.implements Ljavax/sip/header/WWWAuthenticateHeader;


# static fields
.field public static final greylist CK:Ljava/lang/String; = "ck"

.field public static final greylist IK:Ljava/lang/String; = "ik"


# virtual methods
.method public abstract greylist getCK()Ljava/lang/String;
.end method

.method public abstract greylist getIK()Ljava/lang/String;
.end method

.method public abstract greylist setCK(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setIK(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
