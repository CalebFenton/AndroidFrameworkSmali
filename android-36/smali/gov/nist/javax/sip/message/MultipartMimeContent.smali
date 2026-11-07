.class public interface abstract Lgov/nist/javax/sip/message/MultipartMimeContent;
.super Ljava/lang/Object;
.source "MultipartMimeContent.java"


# virtual methods
.method public abstract greylist add(Lgov/nist/javax/sip/message/Content;)Z
.end method

.method public abstract greylist addContent(Lgov/nist/javax/sip/message/Content;)V
.end method

.method public abstract greylist getContentCount()I
.end method

.method public abstract greylist getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
.end method

.method public abstract greylist getContents()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lgov/nist/javax/sip/message/Content;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
