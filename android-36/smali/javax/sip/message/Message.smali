.class public interface abstract Ljavax/sip/message/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract blacklist addFirst(Ljavax/sip/header/Header;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract blacklist addHeader(Ljavax/sip/header/Header;)V
.end method

.method public abstract blacklist addLast(Ljavax/sip/header/Header;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api clone()Ljava/lang/Object;
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public abstract blacklist getApplicationData()Ljava/lang/Object;
.end method

.method public abstract blacklist getContent()Ljava/lang/Object;
.end method

.method public abstract blacklist getContentDisposition()Ljavax/sip/header/ContentDispositionHeader;
.end method

.method public abstract blacklist getContentEncoding()Ljavax/sip/header/ContentEncodingHeader;
.end method

.method public abstract blacklist getContentLanguage()Ljavax/sip/header/ContentLanguageHeader;
.end method

.method public abstract blacklist getContentLength()Ljavax/sip/header/ContentLengthHeader;
.end method

.method public abstract blacklist getExpires()Ljavax/sip/header/ExpiresHeader;
.end method

.method public abstract blacklist getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
.end method

.method public abstract blacklist getHeaderNames()Ljava/util/ListIterator;
.end method

.method public abstract blacklist getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;
.end method

.method public abstract blacklist getRawContent()[B
.end method

.method public abstract blacklist getSIPVersion()Ljava/lang/String;
.end method

.method public abstract blacklist getUnrecognizedHeaders()Ljava/util/ListIterator;
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public abstract blacklist removeContent()V
.end method

.method public abstract blacklist removeFirst(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract blacklist removeHeader(Ljava/lang/String;)V
.end method

.method public abstract blacklist removeLast(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract blacklist setApplicationData(Ljava/lang/Object;)V
.end method

.method public abstract blacklist setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setContentDisposition(Ljavax/sip/header/ContentDispositionHeader;)V
.end method

.method public abstract blacklist setContentEncoding(Ljavax/sip/header/ContentEncodingHeader;)V
.end method

.method public abstract blacklist setContentLanguage(Ljavax/sip/header/ContentLanguageHeader;)V
.end method

.method public abstract blacklist setContentLength(Ljavax/sip/header/ContentLengthHeader;)V
.end method

.method public abstract blacklist setExpires(Ljavax/sip/header/ExpiresHeader;)V
.end method

.method public abstract blacklist setHeader(Ljavax/sip/header/Header;)V
.end method

.method public abstract blacklist setSIPVersion(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
