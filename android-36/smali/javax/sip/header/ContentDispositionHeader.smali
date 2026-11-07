.class public interface abstract Ljavax/sip/header/ContentDispositionHeader;
.super Ljava/lang/Object;
.source "ContentDispositionHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist ALERT:Ljava/lang/String; = "Alert"

.field public static final blacklist ICON:Ljava/lang/String; = "Icon"

.field public static final blacklist NAME:Ljava/lang/String; = "Content-Disposition"

.field public static final blacklist RENDER:Ljava/lang/String; = "Render"

.field public static final blacklist SESSION:Ljava/lang/String; = "Session"


# virtual methods
.method public abstract blacklist getDispositionType()Ljava/lang/String;
.end method

.method public abstract blacklist getHandling()Ljava/lang/String;
.end method

.method public abstract blacklist setDispositionType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setHandling(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
