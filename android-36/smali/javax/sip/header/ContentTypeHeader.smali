.class public interface abstract Ljavax/sip/header/ContentTypeHeader;
.super Ljava/lang/Object;
.source "ContentTypeHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/MediaType;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Content-Type"


# virtual methods
.method public abstract blacklist getCharset()Ljava/lang/String;
.end method

.method public abstract blacklist setContentType(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
