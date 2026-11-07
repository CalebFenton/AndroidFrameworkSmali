.class public Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
.super Ljava/lang/Object;
.source "IncrementalSAXSource_Filter.java"

# interfaces
.implements Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;
    }
.end annotation


# instance fields
.field greylist DEBUG:Z

.field private greylist clientContentHandler:Lorg/xml/sax/ContentHandler;

.field private greylist clientDTDHandler:Lorg/xml/sax/DTDHandler;

.field private greylist clientErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private greylist clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private greylist eventcounter:I

.field private greylist fControllerCoroutineID:I

.field private greylist fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

.field private greylist fNoMoreEvents:Z

.field private greylist fSourceCoroutineID:I

.field private greylist fXMLReader:Lorg/xml/sax/XMLReader;

.field private greylist fXMLReaderInputSource:Lorg/xml/sax/InputSource;

.field private greylist frequency:I


# direct methods
.method public constructor greylist <init>()V
    .registers 5

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    const/4 v2, -0x1

    .line 76
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    .line 77
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    .line 79
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    .line 80
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 81
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 82
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    const/4 v3, 0x5

    .line 84
    iput v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    .line 89
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 92
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    .line 93
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    .line 100
    new-instance v0, Lorg/apache/xml/dtm/ref/CoroutineManager;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/CoroutineManager;-><init>()V

    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/CoroutineManager;I)V
    .registers 7

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    const/4 v2, -0x1

    .line 76
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    .line 77
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    .line 79
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    .line 80
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 81
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 82
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    const/4 v3, 0x5

    .line 84
    iput v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    .line 89
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 92
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    .line 93
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    .line 108
    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    return-void
.end method

.method private greylist co_entry_pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 510
    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    .line 515
    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_entry_pause(I)Ljava/lang/Object;

    move-result-object v0

    .line 516
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x0

    .line 517
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception v0

    goto :goto_1d

    :cond_1c
    return-void

    .line 523
    :goto_1d
    iget-boolean p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz p0, :cond_24

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 524
    :cond_24
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method private greylist co_yield(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 553
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    if-eqz v0, :cond_5

    goto :goto_32

    :cond_5
    const/4 v0, 0x1

    .line 558
    :try_start_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p1, :cond_19

    .line 562
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iget v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {p1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_resume(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1a

    :catch_17
    move-exception p1

    goto :goto_33

    :cond_19
    move-object p1, v1

    :goto_1a
    if-ne p1, v1, :cond_32

    .line 570
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 572
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    if-nez p1, :cond_2c

    .line 576
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {p1, v1, v2, v3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit_to(Ljava/lang/Object;II)V

    return-void

    .line 573
    :cond_2c
    new-instance p1, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;-><init>(Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;)V

    throw p1
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_32} :catch_17

    :cond_32
    :goto_32
    return-void

    .line 584
    :goto_33
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 585
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v0, p0}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    .line 586
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method public static greylist createIncrementalSAXSource(Lorg/apache/xml/dtm/ref/CoroutineManager;I)Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    .registers 3

    .line 115
    new-instance v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v0, p0, p1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>(Lorg/apache/xml/dtm/ref/CoroutineManager;I)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 224
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_f

    .line 226
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 227
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 229
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_16

    .line 230
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_16
    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 360
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 361
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_7
    return-void
.end method

.method protected greylist count_and_yield(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 489
    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 491
    :cond_5
    iget p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz p1, :cond_14

    .line 493
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 494
    iget p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_14
    return-void
.end method

.method public greylist deliverMoreNodes(Z)Ljava/lang/Object;
    .registers 5

    .line 711
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    if-eqz v0, :cond_7

    .line 712
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 716
    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    if-eqz p1, :cond_e

    .line 717
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_e
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_10
    iget v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_resume(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    .line 719
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_23

    .line 720
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {v0, p0}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_23} :catch_24

    :cond_23
    return-object p1

    :catch_24
    move-exception p0

    return-object p0
.end method

.method public whitelist test-api endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 366
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 367
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_7
    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 372
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 373
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_7
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_7

    .line 237
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    :cond_7
    const/4 v0, 0x0

    .line 239
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 240
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 246
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_f

    .line 248
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 249
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 251
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_16

    .line 252
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public whitelist test-api endEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 378
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 379
    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 257
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_f

    .line 259
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 260
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 262
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_16

    .line 263
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public whitelist test-api error(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 432
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p0, :cond_7

    .line 433
    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_7

    .line 441
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_7
    const/4 p1, 0x0

    .line 443
    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 444
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    return-void
.end method

.method public greylist getControllerCoroutineID()I
    .registers 1

    .line 463
    iget p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    return p0
.end method

.method public greylist getCoroutineManager()Lorg/apache/xml/dtm/ref/CoroutineManager;
    .registers 1

    .line 473
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    return-object p0
.end method

.method public greylist getSourceCoroutineID()I
    .registers 1

    .line 460
    iget p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    return p0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 268
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_f

    .line 270
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 271
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 273
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_16

    .line 274
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    :cond_16
    return-void
.end method

.method public greylist init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V
    .registers 4

    if-nez p1, :cond_7

    .line 126
    new-instance p1, Lorg/apache/xml/dtm/ref/CoroutineManager;

    invoke-direct {p1}, Lorg/apache/xml/dtm/ref/CoroutineManager;-><init>()V

    .line 127
    :cond_7
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    .line 128
    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_joinCoroutineSet(I)I

    move-result p2

    iput p2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    .line 129
    invoke-virtual {p1, p3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_joinCoroutineSet(I)I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    .line 130
    iget p2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_24

    if-eq p1, p3, :cond_24

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 134
    iget p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    return-void

    .line 131
    :cond_24
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_COJOINROUTINESET_FAILED"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 406
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_7

    .line 407
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 279
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_f

    .line 281
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 282
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 284
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_16

    .line 285
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public whitelist test-api run()V
    .registers 6

    .line 622
    const-string v0, "Active IncrementalSAXSource_Filter normal stop exception"

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    if-nez v1, :cond_8

    goto/16 :goto_79

    .line 624
    :cond_8
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v1, :cond_13

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "IncrementalSAXSource_Filter parse thread launched"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    :cond_13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 635
    :try_start_15
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_1f
    .catch Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException; {:try_start_15 .. :try_end_1c} :catch_53
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_5c

    :catch_1d
    move-exception v2

    goto :goto_22

    :catch_1f
    move-exception v0

    move-object v1, v0

    goto :goto_5c

    .line 648
    :goto_22
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 649
    instance-of v4, v3, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;

    if-eqz v4, :cond_34

    .line 651
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v2, :cond_5c

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5c

    .line 656
    :cond_34
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v0, :cond_51

    .line 658
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active IncrementalSAXSource_Filter UNEXPECTED SAX exception: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_51
    move-object v1, v2

    goto :goto_5c

    .line 644
    :catch_53
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v2, :cond_5c

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    const/4 v0, 0x0

    .line 666
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    const/4 v0, 0x1

    .line 671
    :try_start_60
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 672
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit_to(Ljava/lang/Object;II)V
    :try_end_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_60 .. :try_end_6b} :catch_6c

    goto :goto_79

    :catch_6c
    move-exception v0

    .line 679
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/NoSuchMethodException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 680
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v0, p0}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    :goto_79
    return-void
.end method

.method public greylist setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public greylist setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3

    .line 289
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_c

    .line 293
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 295
    :cond_c
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_13

    .line 296
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_13
    return-void
.end method

.method public greylist setErrHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public greylist setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public greylist setReturnFrequency(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    move p1, v0

    .line 199
    :cond_4
    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    return-void
.end method

.method public greylist setXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 3

    .line 144
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    .line 145
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 146
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 147
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 152
    :try_start_b
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    .line 153
    invoke-interface {p1, v0, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_b .. :try_end_10} :catch_10
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_b .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 301
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_f

    .line 303
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 304
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 306
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_16

    .line 307
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 384
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 385
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_7
    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 391
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 392
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_entry_pause()V

    .line 315
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_12

    .line 317
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 318
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 320
    :cond_12
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_19

    .line 321
    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :cond_19
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 327
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_f

    .line 329
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 330
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 332
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_16

    .line 333
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_16
    return-void
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 397
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_7

    .line 398
    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public greylist startParse(Lorg/xml/sax/InputSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 605
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 607
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_10

    .line 610
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    const/4 p1, -0x1

    .line 614
    invoke-static {p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    return-void

    .line 608
    :cond_10
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_XMLRDR_NOT_BEFORE_STARTPARSE"

    invoke-static {p1, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 606
    :cond_1c
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_INCRSAXSRCFILTER_NOT_RESTARTABLE"

    invoke-static {p1, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 338
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_f

    .line 340
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 341
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 343
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p0, :cond_16

    .line 344
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public whitelist test-api unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 411
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_7

    .line 412
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public whitelist test-api warning(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 450
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p0, :cond_7

    .line 451
    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_7
    return-void
.end method
