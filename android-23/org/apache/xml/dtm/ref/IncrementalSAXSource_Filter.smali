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
.field DEBUG:Z

.field private clientContentHandler:Lorg/xml/sax/ContentHandler;

.field private clientDTDHandler:Lorg/xml/sax/DTDHandler;

.field private clientErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private eventcounter:I

.field private fControllerCoroutineID:I

.field private fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

.field private fNoMoreEvents:Z

.field private fSourceCoroutineID:I

.field private fXMLReader:Lorg/xml/sax/XMLReader;

.field private fXMLReaderInputSource:Lorg/xml/sax/InputSource;

.field private frequency:I


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 70
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    #@8
    .line 75
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@a
    .line 76
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    #@c
    .line 77
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@e
    .line 79
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@10
    .line 80
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@12
    .line 81
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    #@14
    .line 82
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@16
    .line 84
    const/4 v0, 0x5

    #@17
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@19
    .line 89
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    #@1b
    .line 92
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    #@1d
    .line 93
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    #@1f
    .line 100
    new-instance v0, Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@21
    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/CoroutineManager;-><init>()V

    #@24
    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    #@27
    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/ref/CoroutineManager;I)V
    .locals 4
    .param p1, "co"    # Lorg/apache/xml/dtm/ref/CoroutineManager;
    .param p2, "controllerCoroutineID"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 70
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    #@8
    .line 75
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@a
    .line 76
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    #@c
    .line 77
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@e
    .line 79
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@10
    .line 80
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@12
    .line 81
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    #@14
    .line 82
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@16
    .line 84
    const/4 v0, 0x5

    #@17
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@19
    .line 89
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    #@1b
    .line 92
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    #@1d
    .line 93
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    #@1f
    .line 108
    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    #@22
    .line 106
    return-void
.end method

.method private co_entry_pause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 507
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 510
    invoke-virtual {p0, v4, v3, v3}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    #@9
    .line 515
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@b
    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@d
    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_entry_pause(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    .line 516
    .local v0, "arg":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@13
    if-ne v0, v2, :cond_1

    #@15
    .line 517
    const/4 v2, 0x0

    #@16
    invoke-direct {p0, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 505
    :cond_1
    return-void

    #@1a
    .line 520
    .end local v0    # "arg":Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@1b
    .line 523
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    #@1d
    if-eqz v2, :cond_2

    #@1f
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    #@22
    .line 524
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    #@24
    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@27
    throw v2
.end method

.method private co_yield(Z)V
    .locals 7
    .param p1, "moreRemains"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 553
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 554
    return-void

    #@6
    .line 558
    :cond_0
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@8
    .line 559
    .local v0, "arg":Ljava/lang/Object;
    if-eqz p1, :cond_1

    #@a
    .line 562
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@e
    iget v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@10
    .line 563
    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    #@12
    .line 562
    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_resume(Ljava/lang/Object;II)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    .line 568
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@18
    if-ne v0, v2, :cond_3

    #@1a
    .line 570
    const/4 v2, 0x1

    #@1b
    iput-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    #@1d
    .line 572
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 573
    new-instance v2, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;

    #@23
    invoke-direct {v2, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;-><init>(Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;)V

    #@26
    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 581
    .end local v0    # "arg":Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@28
    .line 584
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    iput-boolean v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    #@2a
    .line 585
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@2c
    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@2e
    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    #@31
    .line 586
    new-instance v2, Lorg/xml/sax/SAXException;

    #@33
    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@36
    throw v2

    #@37
    .line 576
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@39
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@3b
    iget v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@3d
    .line 577
    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    #@3f
    .line 576
    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit_to(Ljava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    #@42
    .line 550
    :cond_3
    return-void
.end method

.method public static createIncrementalSAXSource(Lorg/apache/xml/dtm/ref/CoroutineManager;I)Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    .locals 1
    .param p0, "co"    # Lorg/apache/xml/dtm/ref/CoroutineManager;
    .param p1, "controllerCoroutineID"    # I

    #@0
    .prologue
    .line 115
    new-instance v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>(Lorg/apache/xml/dtm/ref/CoroutineManager;I)V

    #@5
    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 226
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@c
    .line 227
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@e
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@10
    .line 229
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 230
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@16
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@19
    .line 222
    :cond_1
    return-void
.end method

.method public comment([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 361
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@9
    .line 358
    :cond_0
    return-void
.end method

.method protected count_and_yield(Z)V
    .locals 1
    .param p1, "moreExpected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 489
    if-nez p1, :cond_0

    #@3
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@5
    .line 491
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@b
    if-gtz v0, :cond_1

    #@d
    .line 493
    const/4 v0, 0x1

    #@e
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@11
    .line 494
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@13
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@15
    .line 487
    :cond_1
    return-void
.end method

.method public deliverMoreNodes(Z)Ljava/lang/Object;
    .locals 6
    .param p1, "parsemore"    # Z

    #@0
    .prologue
    .line 711
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 712
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@6
    return-object v2

    #@7
    .line 717
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@9
    if-eqz p1, :cond_2

    #@b
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@d
    .line 718
    :goto_0
    iget v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    #@f
    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@11
    .line 717
    invoke-virtual {v3, v2, v4, v5}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_resume(Ljava/lang/Object;II)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    .line 719
    .local v1, "result":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@17
    if-ne v1, v2, :cond_1

    #@19
    .line 720
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@1b
    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    #@1d
    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    #@20
    .line 722
    :cond_1
    return-object v1

    #@21
    .line 717
    .end local v1    # "result":Ljava/lang/Object;
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    goto :goto_0

    #@24
    .line 729
    :catch_0
    move-exception v0

    #@25
    .line 730
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 367
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    #@9
    .line 364
    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 373
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    #@9
    .line 370
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 236
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 237
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@7
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@a
    .line 239
    :cond_0
    iput v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@c
    .line 240
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@f
    .line 233
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 248
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@c
    .line 249
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@e
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@10
    .line 251
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 252
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@16
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 244
    :cond_1
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 379
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    #@9
    .line 376
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 259
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@c
    .line 260
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@e
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@10
    .line 262
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 263
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@16
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@19
    .line 255
    :cond_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 433
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    #@9
    .line 430
    :cond_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 440
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 441
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@7
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    #@a
    .line 443
    :cond_0
    iput v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@c
    .line 444
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@f
    .line 436
    return-void
.end method

.method public getControllerCoroutineID()I
    .locals 1

    #@0
    .prologue
    .line 463
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    #@2
    return v0
.end method

.method public getCoroutineManager()Lorg/apache/xml/dtm/ref/CoroutineManager;
    .locals 1

    #@0
    .prologue
    .line 473
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@2
    return-object v0
.end method

.method public getSourceCoroutineID()I
    .locals 1

    #@0
    .prologue
    .line 460
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@2
    return v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 270
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@c
    .line 271
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@e
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@10
    .line 273
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 274
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@16
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    #@19
    .line 266
    :cond_1
    return-void
.end method

.method public init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V
    .locals 3
    .param p1, "co"    # Lorg/apache/xml/dtm/ref/CoroutineManager;
    .param p2, "controllerCoroutineID"    # I
    .param p3, "sourceCoroutineID"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 125
    if-nez p1, :cond_0

    #@4
    .line 126
    new-instance p1, Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@6
    .end local p1    # "co":Lorg/apache/xml/dtm/ref/CoroutineManager;
    invoke-direct {p1}, Lorg/apache/xml/dtm/ref/CoroutineManager;-><init>()V

    #@9
    .line 127
    .restart local p1    # "co":Lorg/apache/xml/dtm/ref/CoroutineManager;
    :cond_0
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@b
    .line 128
    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_joinCoroutineSet(I)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    #@11
    .line 129
    invoke-virtual {p1, p3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_joinCoroutineSet(I)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@17
    .line 130
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@1d
    if-ne v0, v1, :cond_2

    #@1f
    .line 131
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@21
    const-string/jumbo v1, "ER_COJOINROUTINESET_FAILED"

    #@24
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 133
    :cond_2
    const/4 v0, 0x0

    #@2d
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    #@2f
    .line 134
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@31
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@33
    .line 123
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 407
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 404
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 281
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@c
    .line 282
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@e
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@10
    .line 284
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 285
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@16
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 277
    :cond_1
    return-void
.end method

.method public run()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 622
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    #@3
    if-nez v6, :cond_0

    #@5
    return-void

    #@6
    .line 624
    :cond_0
    iget-boolean v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    #@8
    if-eqz v6, :cond_1

    #@a
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c
    const-string/jumbo v7, "IncrementalSAXSource_Filter parse thread launched"

    #@f
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12
    .line 627
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@14
    .line 635
    .local v0, "arg":Ljava/lang/Object;
    :try_start_0
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    #@16
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    #@18
    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 666
    :cond_2
    :goto_0
    iput-object v9, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    #@1d
    .line 671
    const/4 v6, 0x1

    #@1e
    :try_start_1
    iput-boolean v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    #@20
    .line 672
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@22
    iget v7, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@24
    .line 673
    iget v8, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    #@26
    .line 672
    invoke-virtual {v6, v0, v7, v8}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit_to(Ljava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    #@29
    .line 619
    :goto_1
    return-void

    #@2a
    .line 647
    :catch_0
    move-exception v4

    #@2b
    .line 648
    .local v4, "ex":Lorg/xml/sax/SAXException;
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    #@2e
    move-result-object v5

    #@2f
    .line 649
    .local v5, "inner":Ljava/lang/Exception;
    instance-of v6, v5, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;

    #@31
    if-eqz v6, :cond_3

    #@33
    .line 651
    iget-boolean v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    #@35
    if-eqz v6, :cond_2

    #@37
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@39
    const-string/jumbo v7, "Active IncrementalSAXSource_Filter normal stop exception"

    #@3c
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3f
    goto :goto_0

    #@40
    .line 656
    :cond_3
    iget-boolean v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    #@42
    if-eqz v6, :cond_4

    #@44
    .line 658
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@46
    new-instance v7, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v8, "Active IncrementalSAXSource_Filter UNEXPECTED SAX exception: "

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    .line 659
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    #@60
    .line 661
    :cond_4
    move-object v0, v4

    #@61
    goto :goto_0

    #@62
    .line 642
    .end local v4    # "ex":Lorg/xml/sax/SAXException;
    .end local v5    # "inner":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    #@63
    .line 644
    .local v3, "ex":Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;
    iget-boolean v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    #@65
    if-eqz v6, :cond_2

    #@67
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@69
    const-string/jumbo v7, "Active IncrementalSAXSource_Filter normal stop exception"

    #@6c
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6f
    goto :goto_0

    #@70
    .line 638
    .end local v3    # "ex":Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;
    :catch_2
    move-exception v2

    #@71
    .line 639
    .local v2, "ex":Ljava/io/IOException;
    move-object v0, v2

    #@72
    goto :goto_0

    #@73
    .line 676
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v1

    #@74
    .line 679
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@76
    invoke-virtual {v1, v6}, Ljava/lang/NoSuchMethodException;->printStackTrace(Ljava/io/PrintStream;)V

    #@79
    .line 680
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    #@7b
    iget v7, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    #@7d
    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    #@80
    goto :goto_1
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 172
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    .line 170
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    #@0
    .prologue
    .line 177
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    #@2
    .line 175
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 289
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 293
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@a
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@c
    .line 295
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 296
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@15
    .line 287
    :cond_1
    return-void
.end method

.method public setErrHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    #@0
    .prologue
    .line 191
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    .line 189
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ext/LexicalHandler;

    #@0
    .prologue
    .line 185
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    .line 183
    return-void
.end method

.method public setReturnFrequency(I)V
    .locals 1
    .param p1, "events"    # I

    #@0
    .prologue
    .line 198
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    const/4 p1, 0x1

    #@4
    .line 199
    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@6
    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@8
    .line 196
    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 3
    .param p1, "eventsource"    # Lorg/xml/sax/XMLReader;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    #@2
    .line 145
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@5
    .line 146
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@8
    .line 147
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@b
    .line 153
    :try_start_0
    const-string/jumbo v2, "http://xml.org/sax/properties/lexical-handler"

    #@e
    .line 152
    invoke-interface {p1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    #@11
    .line 142
    :goto_0
    return-void

    #@12
    .line 157
    :catch_0
    move-exception v0

    #@13
    .local v0, "e":Lorg/xml/sax/SAXNotRecognizedException;
    goto :goto_0

    #@14
    .line 161
    .end local v0    # "e":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v1

    #@15
    .local v1, "e":Lorg/xml/sax/SAXNotSupportedException;
    goto :goto_0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 303
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@c
    .line 304
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@e
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@10
    .line 306
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 307
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@16
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    #@19
    .line 299
    :cond_1
    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 385
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    #@9
    .line 382
    :cond_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 392
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 389
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_entry_pause()V

    #@3
    .line 315
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@5
    add-int/lit8 v0, v0, -0x1

    #@7
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@9
    if-gtz v0, :cond_0

    #@b
    .line 317
    const/4 v0, 0x1

    #@c
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@f
    .line 318
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@11
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@13
    .line 320
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 321
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@19
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@1c
    .line 310
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 327
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 329
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@c
    .line 330
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@e
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@10
    .line 332
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 333
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@16
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@19
    .line 325
    :cond_1
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 398
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    #@9
    .line 395
    :cond_0
    return-void
.end method

.method public startParse(Lorg/xml/sax/InputSource;)V
    .locals 3
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 605
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 606
    new-instance v0, Lorg/xml/sax/SAXException;

    #@7
    const-string/jumbo v1, "ER_INCRSAXSRCFILTER_NOT_RESTARTABLE"

    #@a
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 607
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    #@14
    if-nez v0, :cond_1

    #@16
    .line 608
    new-instance v0, Lorg/xml/sax/SAXException;

    #@18
    const-string/jumbo v1, "ER_XMLRDR_NOT_BEFORE_STARTPARSE"

    #@1b
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 610
    :cond_1
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    #@25
    .line 614
    const/4 v0, -0x1

    #@26
    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    #@29
    .line 603
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 340
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    #@c
    .line 341
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    #@e
    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    #@10
    .line 343
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 344
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    #@16
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 336
    :cond_1
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # Ljava/lang/String;
    .param p4, "d"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 412
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    #@6
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 409
    :cond_0
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 450
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 451
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@6
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    #@9
    .line 448
    :cond_0
    return-void
.end method
