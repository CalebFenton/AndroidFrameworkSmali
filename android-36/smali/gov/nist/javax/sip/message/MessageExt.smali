.class public interface abstract Lgov/nist/javax/sip/message/MessageExt;
.super Ljava/lang/Object;
.source "MessageExt.java"

# interfaces
.implements Ljavax/sip/message/Message;


# virtual methods
.method public abstract greylist getApplicationData()Ljava/lang/Object;
.end method

.method public abstract greylist getCSeqHeader()Ljavax/sip/header/CSeqHeader;
.end method

.method public abstract greylist getCallIdHeader()Ljavax/sip/header/CallIdHeader;
.end method

.method public abstract greylist getContentLengthHeader()Ljavax/sip/header/ContentLengthHeader;
.end method

.method public abstract greylist getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
.end method

.method public abstract greylist getFirstLine()Ljava/lang/String;
.end method

.method public abstract greylist getFromHeader()Ljavax/sip/header/FromHeader;
.end method

.method public abstract greylist getMultipartMimeContent()Lgov/nist/javax/sip/message/MultipartMimeContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist getToHeader()Ljavax/sip/header/ToHeader;
.end method

.method public abstract greylist getTopmostViaHeader()Ljavax/sip/header/ViaHeader;
.end method

.method public abstract greylist setApplicationData(Ljava/lang/Object;)V
.end method
