.class public Lorg/apache/xml/utils/DefaultErrorHandler;
.super Ljava/lang/Object;
.source "DefaultErrorHandler.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;
.implements Ljavax/xml/transform/ErrorListener;


# instance fields
.field m_pw:Ljava/io/PrintWriter;

.field m_throwExceptionOnError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 74
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    #@4
    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintStream;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 51
    iput-boolean v1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    #@6
    .line 66
    new-instance v0, Ljava/io/PrintWriter;

    #@8
    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@b
    iput-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    #@d
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    #@6
    .line 58
    iput-object p1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    #@8
    .line 56
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "throwExceptionOnError"    # Z

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    #@6
    .line 83
    iput-boolean p1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    #@8
    .line 80
    return-void
.end method

.method public static ensureLocationSet(Ljavax/xml/transform/TransformerException;)V
    .locals 4
    .param p0, "exception"    # Ljavax/xml/transform/TransformerException;

    #@0
    .prologue
    .line 281
    const/4 v2, 0x0

    #@1
    .line 282
    .local v2, "locator":Ljavax/xml/transform/SourceLocator;
    move-object v0, p0

    #@2
    .line 287
    .end local v2    # "locator":Ljavax/xml/transform/SourceLocator;
    :cond_0
    instance-of v3, v0, Lorg/xml/sax/SAXParseException;

    #@4
    if-eqz v3, :cond_2

    #@6
    .line 289
    new-instance v2, Lorg/apache/xml/utils/SAXSourceLocator;

    #@8
    move-object v3, v0

    #@9
    check-cast v3, Lorg/xml/sax/SAXParseException;

    #@b
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    #@e
    .line 298
    :cond_1
    :goto_0
    instance-of v3, v0, Ljavax/xml/transform/TransformerException;

    #@10
    if-eqz v3, :cond_3

    #@12
    .line 299
    check-cast v0, Ljavax/xml/transform/TransformerException;

    #@14
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    #@17
    move-result-object v0

    #@18
    .line 305
    :goto_1
    if-nez v0, :cond_0

    #@1a
    .line 307
    invoke-virtual {p0, v2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    #@1d
    .line 278
    return-void

    #@1e
    .line 291
    :cond_2
    instance-of v3, v0, Ljavax/xml/transform/TransformerException;

    #@20
    if-eqz v3, :cond_1

    #@22
    move-object v3, v0

    #@23
    .line 293
    check-cast v3, Ljavax/xml/transform/TransformerException;

    #@25
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    #@28
    move-result-object v1

    #@29
    .line 294
    .local v1, "causeLocator":Ljavax/xml/transform/SourceLocator;
    if-eqz v1, :cond_1

    #@2b
    .line 295
    move-object v2, v1

    #@2c
    .local v2, "locator":Ljavax/xml/transform/SourceLocator;
    goto :goto_0

    #@2d
    .line 300
    .end local v1    # "causeLocator":Ljavax/xml/transform/SourceLocator;
    .end local v2    # "locator":Ljavax/xml/transform/SourceLocator;
    :cond_3
    instance-of v3, v0, Lorg/xml/sax/SAXException;

    #@2f
    if-eqz v3, :cond_4

    #@31
    .line 301
    check-cast v0, Lorg/xml/sax/SAXException;

    #@33
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    #@36
    move-result-object v0

    #@37
    .local v0, "cause":Ljava/lang/Throwable;
    goto :goto_1

    #@38
    .line 303
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    #@39
    .local v0, "cause":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method public static printLocation(Ljava/io/PrintStream;Ljavax/xml/transform/TransformerException;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintStream;
    .param p1, "exception"    # Ljavax/xml/transform/TransformerException;

    #@0
    .prologue
    .line 312
    new-instance v0, Ljava/io/PrintWriter;

    #@2
    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@5
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    #@8
    .line 310
    return-void
.end method

.method public static printLocation(Ljava/io/PrintStream;Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintStream;
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    #@0
    .prologue
    .line 317
    new-instance v0, Ljava/io/PrintWriter;

    #@2
    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@5
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    #@8
    .line 315
    return-void
.end method

.method public static printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 322
    const/4 v3, 0x0

    #@2
    .line 323
    .local v3, "locator":Ljavax/xml/transform/SourceLocator;
    move-object v0, p1

    #@3
    .line 328
    .end local v3    # "locator":Ljavax/xml/transform/SourceLocator;
    :cond_0
    instance-of v4, v0, Lorg/xml/sax/SAXParseException;

    #@5
    if-eqz v4, :cond_2

    #@7
    .line 330
    new-instance v3, Lorg/apache/xml/utils/SAXSourceLocator;

    #@9
    move-object v4, v0

    #@a
    check-cast v4, Lorg/xml/sax/SAXParseException;

    #@c
    invoke-direct {v3, v4}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    #@f
    .line 338
    :cond_1
    :goto_0
    instance-of v4, v0, Ljavax/xml/transform/TransformerException;

    #@11
    if-eqz v4, :cond_3

    #@13
    .line 339
    check-cast v0, Ljavax/xml/transform/TransformerException;

    #@15
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    #@18
    move-result-object v0

    #@19
    .line 347
    :goto_1
    if-nez v0, :cond_0

    #@1b
    .line 349
    if-eqz v3, :cond_8

    #@1d
    .line 352
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    if-eqz v4, :cond_6

    #@23
    .line 353
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 357
    .local v2, "id":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v5, "; "

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, "line"

    #@3a
    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    #@45
    move-result v5

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 358
    const-string/jumbo v5, "; "

    #@4d
    .line 357
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    .line 358
    const-string/jumbo v5, "column"

    #@54
    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    .line 357
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 358
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    #@5f
    move-result v5

    #@60
    .line 357
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    .line 358
    const-string/jumbo v5, "; "

    #@67
    .line 357
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72
    .line 320
    .end local v2    # "id":Ljava/lang/String;
    :goto_3
    return-void

    #@73
    .line 332
    :cond_2
    instance-of v4, v0, Ljavax/xml/transform/TransformerException;

    #@75
    if-eqz v4, :cond_1

    #@77
    move-object v4, v0

    #@78
    .line 334
    check-cast v4, Ljavax/xml/transform/TransformerException;

    #@7a
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    #@7d
    move-result-object v1

    #@7e
    .line 335
    .local v1, "causeLocator":Ljavax/xml/transform/SourceLocator;
    if-eqz v1, :cond_1

    #@80
    .line 336
    move-object v3, v1

    #@81
    .local v3, "locator":Ljavax/xml/transform/SourceLocator;
    goto :goto_0

    #@82
    .line 340
    .end local v1    # "causeLocator":Ljavax/xml/transform/SourceLocator;
    .end local v3    # "locator":Ljavax/xml/transform/SourceLocator;
    :cond_3
    instance-of v4, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@84
    if-eqz v4, :cond_4

    #@86
    .line 341
    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@88
    invoke-virtual {v0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    #@8b
    move-result-object v0

    #@8c
    .local v0, "cause":Ljava/lang/Throwable;
    goto :goto_1

    #@8d
    .line 342
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v4, v0, Lorg/xml/sax/SAXException;

    #@8f
    if-eqz v4, :cond_5

    #@91
    .line 343
    check-cast v0, Lorg/xml/sax/SAXException;

    #@93
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    #@96
    move-result-object v0

    #@97
    .restart local v0    # "cause":Ljava/lang/Throwable;
    goto :goto_1

    #@98
    .line 345
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_5
    const/4 v0, 0x0

    #@99
    .local v0, "cause":Ljava/lang/Throwable;
    goto :goto_1

    #@9a
    .line 354
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    if-eqz v4, :cond_7

    #@a0
    .line 355
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@a3
    move-result-object v2

    #@a4
    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_2

    #@a5
    .end local v2    # "id":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "ER_SYSTEMID_UNKNOWN"

    #@a8
    invoke-static {v4, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ab
    move-result-object v2

    #@ac
    .restart local v2    # "id":Ljava/lang/String;
    goto/16 :goto_2

    #@ae
    .line 361
    .end local v2    # "id":Ljava/lang/String;
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v5, "("

    #@b6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v4

    #@ba
    const-string/jumbo v5, "ER_LOCATION_UNKNOWN"

    #@bd
    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c0
    move-result-object v5

    #@c1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v4

    #@c5
    const-string/jumbo v5, ")"

    #@c8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v4

    #@cc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v4

    #@d0
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d3
    goto :goto_3
.end method


# virtual methods
.method public error(Ljavax/xml/transform/TransformerException;)V
    .locals 2
    .param p1, "exception"    # Ljavax/xml/transform/TransformerException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    iget-boolean v1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 233
    throw p1

    #@5
    .line 236
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    #@8
    move-result-object v0

    #@9
    .line 238
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    #@c
    .line 239
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 228
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    throw p1
.end method

.method public fatalError(Ljavax/xml/transform/TransformerException;)V
    .locals 2
    .param p1, "exception"    # Ljavax/xml/transform/TransformerException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    iget-boolean v1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 268
    throw p1

    #@5
    .line 271
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    #@8
    move-result-object v0

    #@9
    .line 273
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    #@c
    .line 274
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 263
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    throw p1
.end method

.method public getErrorWriter()Ljava/io/PrintWriter;
    .locals 3

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 96
    new-instance v0, Ljava/io/PrintWriter;

    #@6
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@c
    iput-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    #@e
    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    #@10
    return-object v0
.end method

.method public warning(Ljavax/xml/transform/TransformerException;)V
    .locals 2
    .param p1, "exception"    # Ljavax/xml/transform/TransformerException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 202
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    #@7
    .line 203
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e
    .line 198
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 121
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    #@7
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Parser warning: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 117
    return-void
.end method
