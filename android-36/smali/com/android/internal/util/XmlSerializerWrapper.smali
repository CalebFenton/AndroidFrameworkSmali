.class public Lcom/android/internal/util/XmlSerializerWrapper;
.super Ljava/lang/Object;
.source "XmlSerializerWrapper.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# instance fields
.field private final blacklist mWrapped:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor blacklist <init>(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 3
    .param p1, "wrapped"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlpull/v1/XmlSerializer;

    iput-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api cdsect(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public whitelist test-api comment(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public whitelist test-api docdecl(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 70
    return-void
.end method

.method public whitelist test-api endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api entityRef(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 140
    return-void
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getDepth()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z

    .line 77
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ignorableWhitespace(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .line 40
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method public whitelist test-api setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public whitelist test-api setOutput(Ljava/io/Writer;)V
    .registers 3
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 62
    return-void
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public whitelist test-api startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 66
    return-void
.end method

.method public whitelist test-api startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/internal/util/XmlSerializerWrapper;->mWrapped:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->text([CII)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method
