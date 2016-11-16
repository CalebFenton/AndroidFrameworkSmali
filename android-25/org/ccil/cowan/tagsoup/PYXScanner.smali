.class public Lorg/ccil/cowan/tagsoup/PYXScanner;
.super Ljava/lang/Object;
.source "PYXScanner.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/Scanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    new-instance v1, Lorg/ccil/cowan/tagsoup/PYXScanner;

    #@2
    invoke-direct {v1}, Lorg/ccil/cowan/tagsoup/PYXScanner;-><init>()V

    #@5
    .line 120
    .local v1, "s":Lorg/ccil/cowan/tagsoup/Scanner;
    new-instance v0, Ljava/io/InputStreamReader;

    #@7
    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@9
    const-string/jumbo v4, "UTF-8"

    #@c
    invoke-direct {v0, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@f
    .line 121
    .local v0, "r":Ljava/io/Reader;
    new-instance v2, Ljava/io/BufferedWriter;

    #@11
    new-instance v3, Ljava/io/OutputStreamWriter;

    #@13
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15
    const-string/jumbo v5, "UTF-8"

    #@18
    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@1b
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@1e
    .line 122
    .local v2, "w":Ljava/io/Writer;
    new-instance v3, Lorg/ccil/cowan/tagsoup/PYXWriter;

    #@20
    invoke-direct {v3, v2}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    #@23
    invoke-interface {v1, v0, v3}, Lorg/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@26
    .line 118
    return-void
.end method


# virtual methods
.method public resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "publicid"    # Ljava/lang/String;
    .param p2, "systemid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    return-void
.end method

.method public scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 10
    .param p1, "r"    # Ljava/io/Reader;
    .param p2, "h"    # Lorg/ccil/cowan/tagsoup/ScanHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 46
    new-instance v0, Ljava/io/BufferedReader;

    #@4
    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@7
    .line 48
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    #@8
    .line 49
    .local v1, "buff":[C
    const/4 v2, 0x0

    #@9
    .line 50
    .end local v1    # "buff":[C
    .local v2, "instag":Z
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_8

    #@f
    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@12
    move-result v4

    #@13
    .line 52
    .local v4, "size":I
    if-eqz v1, :cond_0

    #@15
    array-length v6, v1

    #@16
    if-ge v6, v4, :cond_1

    #@18
    .line 53
    :cond_0
    new-array v1, v4, [C

    #@1a
    .line 55
    :cond_1
    invoke-virtual {v3, v8, v4, v1, v8}, Ljava/lang/String;->getChars(II[CI)V

    #@1d
    .line 56
    aget-char v6, v1, v8

    #@1f
    sparse-switch v6, :sswitch_data_0

    #@22
    goto :goto_0

    #@23
    .line 58
    :sswitch_0
    if-eqz v2, :cond_2

    #@25
    .line 59
    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    #@28
    .line 60
    const/4 v2, 0x0

    #@29
    .line 62
    :cond_2
    add-int/lit8 v6, v4, -0x1

    #@2b
    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    #@2e
    .line 63
    const/4 v2, 0x1

    #@2f
    .line 64
    goto :goto_0

    #@30
    .line 66
    :sswitch_1
    if-eqz v2, :cond_3

    #@32
    .line 67
    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    #@35
    .line 68
    const/4 v2, 0x0

    #@36
    .line 70
    :cond_3
    add-int/lit8 v6, v4, -0x1

    #@38
    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->etag([CII)V

    #@3b
    goto :goto_0

    #@3c
    .line 73
    :sswitch_2
    if-eqz v2, :cond_4

    #@3e
    .line 74
    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    #@41
    .line 75
    const/4 v2, 0x0

    #@42
    .line 77
    :cond_4
    add-int/lit8 v6, v4, -0x1

    #@44
    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    #@47
    goto :goto_0

    #@48
    .line 80
    :sswitch_3
    const/16 v6, 0x20

    #@4a
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@4d
    move-result v5

    #@4e
    .line 81
    .local v5, "sp":I
    add-int/lit8 v6, v5, -0x1

    #@50
    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    #@53
    .line 82
    add-int/lit8 v6, v5, 0x1

    #@55
    sub-int v7, v4, v5

    #@57
    add-int/lit8 v7, v7, -0x1

    #@59
    invoke-interface {p2, v1, v6, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    #@5c
    goto :goto_0

    #@5d
    .line 85
    .end local v5    # "sp":I
    :sswitch_4
    if-eqz v2, :cond_5

    #@5f
    .line 86
    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    #@62
    .line 87
    const/4 v2, 0x0

    #@63
    .line 89
    :cond_5
    const-string/jumbo v6, "-\\n"

    #@66
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v6

    #@6a
    if-eqz v6, :cond_6

    #@6c
    .line 90
    const/16 v6, 0xa

    #@6e
    aput-char v6, v1, v8

    #@70
    .line 91
    invoke-interface {p2, v1, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    #@73
    goto :goto_0

    #@74
    .line 96
    :cond_6
    add-int/lit8 v6, v4, -0x1

    #@76
    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    #@79
    goto :goto_0

    #@7a
    .line 100
    :sswitch_5
    if-eqz v2, :cond_7

    #@7c
    .line 101
    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    #@7f
    .line 102
    const/4 v2, 0x0

    #@80
    .line 104
    :cond_7
    add-int/lit8 v6, v4, -0x1

    #@82
    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->entity([CII)V

    #@85
    goto :goto_0

    #@86
    .line 113
    .end local v4    # "size":I
    :cond_8
    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->eof([CII)V

    #@89
    .line 45
    return-void

    #@8a
    .line 56
    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2d -> :sswitch_4
        0x3f -> :sswitch_2
        0x41 -> :sswitch_3
        0x45 -> :sswitch_5
    .end sparse-switch
.end method

.method public startCDATA()V
    .locals 0

    #@0
    .prologue
    .line 116
    return-void
.end method
