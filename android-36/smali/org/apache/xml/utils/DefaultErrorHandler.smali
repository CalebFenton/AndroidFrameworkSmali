.class public Lorg/apache/xml/utils/DefaultErrorHandler;
.super Ljava/lang/Object;
.source "DefaultErrorHandler.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;
.implements Ljavax/xml/transform/ErrorListener;


# instance fields
.field greylist m_pw:Ljava/io/PrintWriter;

.field greylist m_throwExceptionOnError:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 74
    invoke-direct {p0, v0}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/io/PrintStream;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    .line 66
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor greylist <init>(Ljava/io/PrintWriter;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    .line 58
    iput-object p1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor greylist <init>(Z)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    return-void
.end method

.method public static greylist ensureLocationSet(Ljavax/xml/transform/TransformerException;)V
    .registers 5

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 287
    :cond_3
    instance-of v3, v1, Lorg/xml/sax/SAXParseException;

    if-eqz v3, :cond_10

    .line 289
    new-instance v2, Lorg/apache/xml/utils/SAXSourceLocator;

    move-object v3, v1

    check-cast v3, Lorg/xml/sax/SAXParseException;

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    goto :goto_1e

    .line 291
    :cond_10
    instance-of v3, v1, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_1e

    .line 293
    move-object v3, v1

    check-cast v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    if-eqz v3, :cond_1e

    move-object v2, v3

    .line 298
    :cond_1e
    :goto_1e
    instance-of v3, v1, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_29

    .line 299
    check-cast v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_35

    .line 300
    :cond_29
    instance-of v3, v1, Lorg/xml/sax/SAXException;

    if-eqz v3, :cond_34

    .line 301
    check-cast v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    goto :goto_35

    :cond_34
    move-object v1, v0

    :goto_35
    if-nez v1, :cond_3

    .line 307
    invoke-virtual {p0, v2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public static greylist printLocation(Ljava/io/PrintStream;Ljavax/xml/transform/TransformerException;)V
    .registers 3

    .line 312
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static greylist printLocation(Ljava/io/PrintStream;Lorg/xml/sax/SAXParseException;)V
    .registers 3

    .line 317
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static greylist printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    .registers 6

    const/4 v0, 0x0

    move-object v1, v0

    .line 328
    :cond_2
    instance-of v2, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v2, :cond_f

    .line 330
    new-instance v1, Lorg/apache/xml/utils/SAXSourceLocator;

    move-object v2, p1

    check-cast v2, Lorg/xml/sax/SAXParseException;

    invoke-direct {v1, v2}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    goto :goto_1d

    .line 332
    :cond_f
    instance-of v2, p1, Ljavax/xml/transform/TransformerException;

    if-eqz v2, :cond_1d

    .line 334
    move-object v2, p1

    check-cast v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    if-eqz v2, :cond_1d

    move-object v1, v2

    .line 338
    :cond_1d
    :goto_1d
    instance-of v2, p1, Ljavax/xml/transform/TransformerException;

    if-eqz v2, :cond_28

    .line 339
    check-cast p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_3f

    .line 340
    :cond_28
    instance-of v2, p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v2, :cond_33

    .line 341
    check-cast p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual {p1}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p1

    goto :goto_3f

    .line 342
    :cond_33
    instance-of v2, p1, Lorg/xml/sax/SAXException;

    if-eqz v2, :cond_3e

    .line 343
    check-cast p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p1

    goto :goto_3f

    :cond_3e
    move-object p1, v0

    :goto_3f
    if-nez p1, :cond_2

    if-eqz v1, :cond_9a

    .line 352
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 353
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object p1

    goto :goto_5f

    .line 354
    :cond_4e
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 355
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    goto :goto_5f

    :cond_59
    const-string p1, "ER_SYSTEMID_UNKNOWN"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 357
    :goto_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "line"

    invoke-static {v3, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "column"

    .line 358
    invoke-static {v3, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 357
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 361
    :cond_9a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ER_LOCATION_UNKNOWN"

    invoke-static {v1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api error(Ljavax/xml/transform/TransformerException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 232
    iget-boolean v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    if-nez v0, :cond_13

    .line 236
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 238
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 239
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 233
    :cond_13
    throw p1
.end method

.method public whitelist test-api error(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 151
    throw p1
.end method

.method public whitelist test-api fatalError(Ljavax/xml/transform/TransformerException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 267
    iget-boolean v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    if-nez v0, :cond_13

    .line 271
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 273
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 274
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 268
    :cond_13
    throw p1
.end method

.method public whitelist test-api fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 178
    throw p1
.end method

.method public greylist getErrorWriter()Ljava/io/PrintWriter;
    .registers 4

    .line 95
    iget-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    if-nez v0, :cond_e

    .line 96
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    .line 98
    :cond_e
    iget-object p0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public whitelist test-api warning(Ljavax/xml/transform/TransformerException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 202
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 203
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api warning(Lorg/xml/sax/SAXParseException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 121
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parser warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
