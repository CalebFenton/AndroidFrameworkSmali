.class public Lorg/ccil/cowan/tagsoup/PYXScanner;
.super Ljava/lang/Object;
.source "PYXScanner.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/Scanner;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 7
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/ccil/cowan/tagsoup/PYXScanner;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/PYXScanner;-><init>()V

    .line 107
    .local v0, "s":Lorg/ccil/cowan/tagsoup/Scanner;
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 108
    .local v1, "r":Ljava/io/Reader;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v4, v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 109
    .local v2, "w":Ljava/io/Writer;
    new-instance v3, Lorg/ccil/cowan/tagsoup/PYXWriter;

    invoke-direct {v3, v2}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {v0, v1, v3}, Lorg/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 110
    return-void
.end method


# virtual methods
.method public greylist resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "publicid"    # Ljava/lang/String;
    .param p2, "systemid"    # Ljava/lang/String;

    .line 30
    return-void
.end method

.method public greylist scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V
    .registers 12
    .param p1, "r"    # Ljava/io/Reader;
    .param p2, "h"    # Lorg/ccil/cowan/tagsoup/ScanHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 35
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 36
    .local v1, "buff":[C
    const/4 v2, 0x0

    .line 37
    .local v2, "instag":Z
    :goto_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "s":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_86

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 39
    .local v3, "size":I
    if-eqz v1, :cond_18

    array-length v6, v1

    if-ge v6, v3, :cond_1a

    .line 40
    :cond_18
    new-array v1, v3, [C

    .line 42
    :cond_1a
    invoke-virtual {v4, v5, v3, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 43
    aget-char v6, v1, v5

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_8a

    goto :goto_85

    .line 87
    :sswitch_24
    if-eqz v2, :cond_2a

    .line 88
    invoke-interface {p2, v1, v5, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 89
    const/4 v2, 0x0

    .line 91
    :cond_2a
    add-int/lit8 v5, v3, -0x1

    invoke-interface {p2, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->entity([CII)V

    .line 92
    goto :goto_85

    .line 67
    :sswitch_30
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 68
    .local v5, "sp":I
    add-int/lit8 v6, v5, -0x1

    invoke-interface {p2, v1, v7, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 69
    add-int/lit8 v6, v5, 0x1

    sub-int v8, v3, v5

    sub-int/2addr v8, v7

    invoke-interface {p2, v1, v6, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    .line 70
    goto :goto_85

    .line 60
    .end local v5    # "sp":I
    :sswitch_44
    if-eqz v2, :cond_4a

    .line 61
    invoke-interface {p2, v1, v5, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 62
    const/4 v2, 0x0

    .line 64
    :cond_4a
    add-int/lit8 v5, v3, -0x1

    invoke-interface {p2, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    .line 65
    goto :goto_85

    .line 72
    :sswitch_50
    if-eqz v2, :cond_56

    .line 73
    invoke-interface {p2, v1, v5, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 74
    const/4 v2, 0x0

    .line 76
    :cond_56
    const-string v6, "-\\n"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 77
    const/16 v6, 0xa

    aput-char v6, v1, v5

    .line 78
    invoke-interface {p2, v1, v5, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    goto :goto_85

    .line 83
    :cond_66
    add-int/lit8 v5, v3, -0x1

    invoke-interface {p2, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 85
    goto :goto_85

    .line 53
    :sswitch_6c
    if-eqz v2, :cond_72

    .line 54
    invoke-interface {p2, v1, v5, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 55
    const/4 v2, 0x0

    .line 57
    :cond_72
    add-int/lit8 v5, v3, -0x1

    invoke-interface {p2, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->etag([CII)V

    .line 58
    goto :goto_85

    .line 45
    :sswitch_78
    if-eqz v2, :cond_7e

    .line 46
    invoke-interface {p2, v1, v5, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 47
    const/4 v2, 0x0

    .line 49
    :cond_7e
    add-int/lit8 v5, v3, -0x1

    invoke-interface {p2, v1, v7, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 50
    const/4 v2, 0x1

    .line 51
    nop

    .line 99
    .end local v3    # "size":I
    :goto_85
    goto :goto_7

    .line 100
    :cond_86
    invoke-interface {p2, v1, v5, v5}, Lorg/ccil/cowan/tagsoup/ScanHandler;->eof([CII)V

    .line 101
    return-void

    :sswitch_data_8a
    .sparse-switch
        0x28 -> :sswitch_78
        0x29 -> :sswitch_6c
        0x2d -> :sswitch_50
        0x3f -> :sswitch_44
        0x41 -> :sswitch_30
        0x45 -> :sswitch_24
    .end sparse-switch
.end method

.method public greylist startCDATA()V
    .registers 1

    .line 103
    return-void
.end method
