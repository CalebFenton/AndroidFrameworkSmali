.class public Lcom/android/internal/util/XmlPullParserWrapper;
.super Ljava/lang/Object;
.source "XmlPullParserWrapper.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# instance fields
.field private final blacklist mWrapped:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor blacklist <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p1, "wrapped"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    iput-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist test-api defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public whitelist test-api getAttributeCount()I
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getAttributeName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 143
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 139
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributePrefix(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 147
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeType(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 151
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 159
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNamespaceCount(I)I
    .registers 3
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getNamespacePrefix(I)Ljava/lang/String;
    .registers 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNamespaceUri(I)Ljava/lang/String;
    .registers 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPositionDescription()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getText()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTextCharacters([I)[C
    .registers 3
    .param p1, "holderForStartAndLength"    # [I

    .line 115
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isAttributeDefault(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 155
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->isAttributeDefault(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmptyElementTag()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isWhitespace()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextText()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api nextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v0

    return v0
.end method

.method public whitelist test-api require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public whitelist test-api setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public whitelist test-api setInput(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 58
    return-void
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/android/internal/util/XmlPullParserWrapper;->mWrapped:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method
