.class public interface abstract Lorg/apache/xml/utils/XMLString;
.super Ljava/lang/Object;
.source "XMLString.java"


# virtual methods
.method public abstract greylist charAt(I)C
.end method

.method public abstract greylist compareTo(Lorg/apache/xml/utils/XMLString;)I
.end method

.method public abstract greylist compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
.end method

.method public abstract greylist concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract greylist dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist endsWith(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public abstract greylist equals(Ljava/lang/String;)Z
.end method

.method public abstract greylist equals(Lorg/apache/xml/utils/XMLString;)Z
.end method

.method public abstract greylist equalsIgnoreCase(Ljava/lang/String;)Z
.end method

.method public abstract greylist fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract greylist getChars(II[CI)V
.end method

.method public abstract greylist hasString()Z
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public abstract greylist indexOf(I)I
.end method

.method public abstract greylist indexOf(II)I
.end method

.method public abstract greylist indexOf(Ljava/lang/String;)I
.end method

.method public abstract greylist indexOf(Ljava/lang/String;I)I
.end method

.method public abstract greylist indexOf(Lorg/apache/xml/utils/XMLString;)I
.end method

.method public abstract greylist lastIndexOf(I)I
.end method

.method public abstract greylist lastIndexOf(II)I
.end method

.method public abstract greylist lastIndexOf(Ljava/lang/String;)I
.end method

.method public abstract greylist lastIndexOf(Ljava/lang/String;I)I
.end method

.method public abstract greylist length()I
.end method

.method public abstract greylist startsWith(Ljava/lang/String;)Z
.end method

.method public abstract greylist startsWith(Ljava/lang/String;I)Z
.end method

.method public abstract greylist startsWith(Lorg/apache/xml/utils/XMLString;)Z
.end method

.method public abstract greylist startsWith(Lorg/apache/xml/utils/XMLString;I)Z
.end method

.method public abstract greylist substring(I)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract greylist substring(II)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract greylist toDouble()D
.end method

.method public abstract greylist toLowerCase()Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract greylist toLowerCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public abstract greylist toUpperCase()Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract greylist toUpperCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract greylist trim()Lorg/apache/xml/utils/XMLString;
.end method
