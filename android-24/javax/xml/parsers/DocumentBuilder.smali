.class public abstract Ljavax/xml/parsers/DocumentBuilder;
.super Ljava/lang/Object;
.source "DocumentBuilder.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 3

    #@0
    .prologue
    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "This parser does not support specification \""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 282
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 283
    const-string/jumbo v2, "\" version \""

    #@21
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 284
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 285
    const-string/jumbo v2, "\""

    #@38
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 280
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method

.method public abstract isNamespaceAware()Z
.end method

.method public abstract isValidating()Z
.end method

.method public isXIncludeAware()Z
    .locals 3

    #@0
    .prologue
    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "This parser does not support specification \""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 310
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 311
    const-string/jumbo v2, "\" version \""

    #@21
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 312
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 313
    const-string/jumbo v2, "\""

    #@38
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 308
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method

.method public abstract newDocument()Lorg/w3c/dom/Document;
.end method

.method public parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    if-nez p1, :cond_0

    #@2
    .line 173
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "File cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 176
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-static {v2}, Ljavax/xml/parsers/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 182
    .local v0, "escapedURI":Ljava/lang/String;
    new-instance v1, Lorg/xml/sax/InputSource;

    #@15
    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@18
    .line 183
    .local v1, "in":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    #@1b
    move-result-object v2

    #@1c
    return-object v2
.end method

.method public parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    if-nez p1, :cond_0

    #@2
    .line 103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "InputStream cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 106
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    #@10
    .line 107
    .local v0, "in":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    if-nez p1, :cond_0

    #@2
    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "InputStream cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 130
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    #@10
    .line 131
    .local v0, "in":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    #@13
    .line 132
    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public parse(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    if-nez p1, :cond_0

    #@2
    .line 151
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "URI cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 154
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    #@d
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@10
    .line 155
    .local v0, "in":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public abstract parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "This DocumentBuilder, \""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "\", does not support the reset functionality."

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 81
    const-string/jumbo v2, "  Specification \""

    #@24
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 81
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->getClass()Ljava/lang/Class;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 81
    const-string/jumbo v2, "\""

    #@3b
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 82
    const-string/jumbo v2, " version \""

    #@42
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 82
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->getClass()Ljava/lang/Class;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    .line 82
    const-string/jumbo v2, "\""

    #@59
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@64
    throw v0
.end method

.method public abstract setEntityResolver(Lorg/xml/sax/EntityResolver;)V
.end method

.method public abstract setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
.end method
