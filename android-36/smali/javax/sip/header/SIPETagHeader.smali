.class public interface abstract Ljavax/sip/header/SIPETagHeader;
.super Ljava/lang/Object;
.source "SIPETagHeader.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "SIP-ETag"


# virtual methods
.method public abstract blacklist getETag()Ljava/lang/String;
.end method

.method public abstract blacklist setETag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
