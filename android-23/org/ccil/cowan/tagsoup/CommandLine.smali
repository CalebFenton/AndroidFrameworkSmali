.class public Lorg/ccil/cowan/tagsoup/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# static fields
.field static options:Ljava/util/Hashtable;

.field private static theOutputEncoding:Ljava/lang/String;

.field private static theParser:Lorg/ccil/cowan/tagsoup/Parser;

.field private static theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 33
    new-instance v0, Ljava/util/Hashtable;

    #@3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@6
    sput-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@8
    .line 34
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@a
    const-string/jumbo v1, "--nocdata"

    #@d
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 35
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@14
    const-string/jumbo v1, "--files"

    #@17
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 36
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@1e
    const-string/jumbo v1, "--reuse"

    #@21
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@23
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 37
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@28
    const-string/jumbo v1, "--nons"

    #@2b
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 38
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@32
    const-string/jumbo v1, "--nobogons"

    #@35
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@37
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 39
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@3c
    const-string/jumbo v1, "--any"

    #@3f
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@41
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 40
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@46
    const-string/jumbo v1, "--emptybogons"

    #@49
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@4b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 41
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@50
    const-string/jumbo v1, "--norootbogons"

    #@53
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@55
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 42
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@5a
    const-string/jumbo v1, "--pyxin"

    #@5d
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@5f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 43
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@64
    const-string/jumbo v1, "--lexical"

    #@67
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@69
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    .line 44
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@6e
    const-string/jumbo v1, "--pyx"

    #@71
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@73
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 45
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@78
    const-string/jumbo v1, "--html"

    #@7b
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@7d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    .line 46
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@82
    const-string/jumbo v1, "--method="

    #@85
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@87
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    .line 47
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@8c
    const-string/jumbo v1, "--doctype-public="

    #@8f
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@91
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    .line 48
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@96
    const-string/jumbo v1, "--doctype-system="

    #@99
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@9b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    .line 49
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@a0
    const-string/jumbo v1, "--output-encoding="

    #@a3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@a5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    .line 50
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@aa
    const-string/jumbo v1, "--omit-xml-declaration"

    #@ad
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@af
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b2
    .line 51
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@b4
    const-string/jumbo v1, "--encoding="

    #@b7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@b9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    .line 52
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@be
    const-string/jumbo v1, "--help"

    #@c1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@c3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c6
    .line 53
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@c8
    const-string/jumbo v1, "--version"

    #@cb
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@cd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d0
    .line 54
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@d2
    const-string/jumbo v1, "--nodefaults"

    #@d5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@d7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    .line 55
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@dc
    const-string/jumbo v1, "--nocolons"

    #@df
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@e1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e4
    .line 56
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@e6
    const-string/jumbo v1, "--norestart"

    #@e9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@eb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ee
    .line 57
    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@f0
    const-string/jumbo v1, "--ignorable"

    #@f3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@f5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f8
    .line 121
    sput-object v3, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    #@fa
    .line 122
    sput-object v3, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    #@fc
    .line 123
    sput-object v3, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    #@fe
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static chooseContentHandler(Ljava/io/Writer;)Lorg/xml/sax/ContentHandler;
    .locals 6
    .param p0, "w"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 213
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@2
    const-string/jumbo v5, "--pyx"

    #@5
    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 214
    new-instance v4, Lorg/ccil/cowan/tagsoup/PYXWriter;

    #@d
    invoke-direct {v4, p0}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    #@10
    return-object v4

    #@11
    .line 217
    :cond_0
    new-instance v3, Lorg/ccil/cowan/tagsoup/XMLWriter;

    #@13
    invoke-direct {v3, p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;-><init>(Ljava/io/Writer;)V

    #@16
    .line 218
    .local v3, "x":Lorg/ccil/cowan/tagsoup/XMLWriter;
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@18
    const-string/jumbo v5, "--html"

    #@1b
    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 219
    const-string/jumbo v4, "method"

    #@24
    const-string/jumbo v5, "html"

    #@27
    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    .line 220
    const-string/jumbo v4, "omit-xml-declaration"

    #@2d
    const-string/jumbo v5, "yes"

    #@30
    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 222
    :cond_1
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@35
    const-string/jumbo v5, "--method="

    #@38
    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_2

    #@3e
    .line 223
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@40
    const-string/jumbo v5, "--method="

    #@43
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Ljava/lang/String;

    #@49
    .line 224
    .local v2, "method":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@4b
    .line 225
    const-string/jumbo v4, "method"

    #@4e
    invoke-virtual {v3, v4, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    .line 228
    .end local v2    # "method":Ljava/lang/String;
    :cond_2
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@53
    const-string/jumbo v5, "--doctype-public="

    #@56
    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_3

    #@5c
    .line 229
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@5e
    const-string/jumbo v5, "--doctype-public="

    #@61
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v0

    #@65
    check-cast v0, Ljava/lang/String;

    #@67
    .line 230
    .local v0, "doctype_public":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@69
    .line 231
    const-string/jumbo v4, "doctype-public"

    #@6c
    invoke-virtual {v3, v4, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6f
    .line 234
    .end local v0    # "doctype_public":Ljava/lang/String;
    :cond_3
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@71
    const-string/jumbo v5, "--doctype-system="

    #@74
    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@77
    move-result v4

    #@78
    if-eqz v4, :cond_4

    #@7a
    .line 235
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@7c
    const-string/jumbo v5, "--doctype-system="

    #@7f
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    move-result-object v1

    #@83
    check-cast v1, Ljava/lang/String;

    #@85
    .line 236
    .local v1, "doctype_system":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@87
    .line 237
    const-string/jumbo v4, "doctype-system"

    #@8a
    invoke-virtual {v3, v4, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@8d
    .line 240
    .end local v1    # "doctype_system":Ljava/lang/String;
    :cond_4
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@8f
    const-string/jumbo v5, "--output-encoding="

    #@92
    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@95
    move-result v4

    #@96
    if-eqz v4, :cond_5

    #@98
    .line 241
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@9a
    const-string/jumbo v5, "--output-encoding="

    #@9d
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a0
    move-result-object v4

    #@a1
    check-cast v4, Ljava/lang/String;

    #@a3
    sput-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    #@a5
    .line 243
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    #@a7
    if-eqz v4, :cond_5

    #@a9
    .line 244
    const-string/jumbo v4, "encoding"

    #@ac
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    #@ae
    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@b1
    .line 247
    :cond_5
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@b3
    const-string/jumbo v5, "--omit-xml-declaration"

    #@b6
    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@b9
    move-result v4

    #@ba
    if-eqz v4, :cond_6

    #@bc
    .line 248
    const-string/jumbo v4, "omit-xml-declaration"

    #@bf
    const-string/jumbo v5, "yes"

    #@c2
    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@c5
    .line 250
    :cond_6
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    #@c7
    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->getURI()Ljava/lang/String;

    #@ca
    move-result-object v4

    #@cb
    const-string/jumbo v5, ""

    #@ce
    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@d1
    .line 251
    return-object v3
.end method

.method private static doHelp()V
    .locals 5

    #@0
    .prologue
    .line 104
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v4, "usage: java -jar tagsoup-*.jar "

    #@5
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@8
    .line 105
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v4, " [ "

    #@d
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@10
    .line 106
    const/4 v1, 0x1

    #@11
    .line 107
    .local v1, "first":Z
    sget-object v3, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@13
    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@16
    move-result-object v0

    #@17
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_2

    #@1d
    .line 108
    if-nez v1, :cond_0

    #@1f
    .line 109
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@21
    const-string/jumbo v4, "| "

    #@24
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@27
    .line 111
    :cond_0
    const/4 v1, 0x0

    #@28
    .line 112
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Ljava/lang/String;

    #@2e
    .line 113
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@30
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@33
    .line 114
    const-string/jumbo v3, "="

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 115
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3e
    const-string/jumbo v4, "?"

    #@41
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@44
    .line 116
    :cond_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@46
    const-string/jumbo v4, " "

    #@49
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@4c
    goto :goto_0

    #@4d
    .line 118
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4f
    const-string/jumbo v4, "]*"

    #@52
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@55
    .line 103
    return-void
.end method

.method private static getopts(Ljava/util/Hashtable;[Ljava/lang/String;)I
    .locals 7
    .param p0, "options"    # Ljava/util/Hashtable;
    .param p1, "argv"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 258
    const/4 v2, 0x0

    #@2
    .local v2, "optind":I
    :goto_0
    array-length v4, p1

    #@3
    if-ge v2, v4, :cond_0

    #@5
    .line 259
    aget-object v0, p1, v2

    #@7
    .line 260
    .local v0, "arg":Ljava/lang/String;
    const/4 v3, 0x0

    #@8
    .line 261
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v4

    #@c
    const/16 v5, 0x2d

    #@e
    if-eq v4, v5, :cond_1

    #@10
    .line 278
    .end local v0    # "arg":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return v2

    #@11
    .line 262
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x3d

    #@13
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v1

    #@17
    .line 263
    .local v1, "eqsign":I
    const/4 v4, -0x1

    #@18
    if-eq v1, v4, :cond_2

    #@1a
    .line 264
    add-int/lit8 v4, v1, 0x1

    #@1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1f
    move-result v5

    #@20
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    .line 265
    .local v3, "value":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    #@26
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 267
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_4

    #@30
    .line 268
    if-nez v3, :cond_3

    #@32
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@34
    invoke-virtual {p0, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 258
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 269
    :cond_3
    invoke-virtual {p0, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    goto :goto_1

    #@3e
    .line 273
    :cond_4
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@40
    const-string/jumbo v5, "Unknown option "

    #@43
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@46
    .line 274
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@48
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4b
    .line 275
    const/4 v4, 0x1

    #@4c
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    #@4f
    goto :goto_1
.end method

.method private static hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z
    .locals 3
    .param p0, "options"    # Ljava/util/Hashtable;
    .param p1, "option"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 284
    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    return v2

    #@8
    .line 285
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@e
    if-eq v0, v1, :cond_1

    #@10
    return v2

    #@11
    .line 286
    :cond_1
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@2
    invoke-static {v6, p0}, Lorg/ccil/cowan/tagsoup/CommandLine;->getopts(Ljava/util/Hashtable;[Ljava/lang/String;)I

    #@5
    move-result v3

    #@6
    .line 66
    .local v3, "optind":I
    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@8
    const-string/jumbo v7, "--help"

    #@b
    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_0

    #@11
    .line 67
    invoke-static {}, Lorg/ccil/cowan/tagsoup/CommandLine;->doHelp()V

    #@14
    .line 68
    return-void

    #@15
    .line 70
    :cond_0
    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@17
    const-string/jumbo v7, "--version"

    #@1a
    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_1

    #@20
    .line 71
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v7, "TagSoup version 1.2"

    #@25
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 72
    return-void

    #@29
    .line 74
    :cond_1
    array-length v6, p0

    #@2a
    if-ne v6, v3, :cond_3

    #@2c
    .line 75
    const-string/jumbo v6, ""

    #@2f
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@31
    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->process(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@34
    .line 64
    :cond_2
    return-void

    #@35
    .line 77
    :cond_3
    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@37
    const-string/jumbo v7, "--files"

    #@3a
    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@3d
    move-result v6

    #@3e
    if-eqz v6, :cond_6

    #@40
    .line 78
    move v1, v3

    #@41
    .local v1, "i":I
    :goto_0
    array-length v6, p0

    #@42
    if-ge v1, v6, :cond_2

    #@44
    .line 79
    aget-object v5, p0, v1

    #@46
    .line 81
    .local v5, "src":Ljava/lang/String;
    const/16 v6, 0x2e

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    #@4b
    move-result v2

    #@4c
    .line 82
    .local v2, "j":I
    const/4 v6, -0x1

    #@4d
    if-ne v2, v6, :cond_4

    #@4f
    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    const-string/jumbo v7, ".xhtml"

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    .line 88
    .local v0, "dst":Ljava/lang/String;
    :goto_1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@65
    new-instance v7, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v8, "src: "

    #@6d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    const-string/jumbo v8, " dst: "

    #@78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v7

    #@84
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    .line 89
    new-instance v4, Ljava/io/FileOutputStream;

    #@89
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@8c
    .line 90
    .local v4, "os":Ljava/io/OutputStream;
    invoke-static {v5, v4}, Lorg/ccil/cowan/tagsoup/CommandLine;->process(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@8f
    .line 78
    add-int/lit8 v1, v1, 0x1

    #@91
    goto :goto_0

    #@92
    .line 84
    .end local v0    # "dst":Ljava/lang/String;
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_4
    const-string/jumbo v6, ".xhtml"

    #@95
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@98
    move-result v6

    #@99
    if-eqz v6, :cond_5

    #@9b
    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v6

    #@a4
    const-string/jumbo v7, "_"

    #@a7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v6

    #@ab
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    .restart local v0    # "dst":Ljava/lang/String;
    goto :goto_1

    #@b0
    .line 87
    .end local v0    # "dst":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const/4 v7, 0x0

    #@b6
    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b9
    move-result-object v7

    #@ba
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v6

    #@be
    const-string/jumbo v7, ".xhtml"

    #@c1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v6

    #@c5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v0

    #@c9
    .restart local v0    # "dst":Ljava/lang/String;
    goto :goto_1

    #@ca
    .line 94
    .end local v0    # "dst":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v5    # "src":Ljava/lang/String;
    :cond_6
    move v1, v3

    #@cb
    .restart local v1    # "i":I
    :goto_2
    array-length v6, p0

    #@cc
    if-ge v1, v6, :cond_2

    #@ce
    .line 95
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d0
    new-instance v7, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v8, "src: "

    #@d8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v7

    #@dc
    aget-object v8, p0, v1

    #@de
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v7

    #@e2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e9
    .line 96
    aget-object v6, p0, v1

    #@eb
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ed
    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->process(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@f0
    .line 94
    add-int/lit8 v1, v1, 0x1

    #@f2
    goto :goto_2
.end method

.method private static process(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 9
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 130
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@4
    const-string/jumbo v6, "--reuse"

    #@7
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_e

    #@d
    .line 131
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    #@f
    if-nez v5, :cond_0

    #@11
    new-instance v5, Lorg/ccil/cowan/tagsoup/Parser;

    #@13
    invoke-direct {v5}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    #@16
    sput-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    #@18
    .line 132
    :cond_0
    sget-object v2, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    #@1a
    .line 137
    .local v2, "r":Lorg/xml/sax/XMLReader;
    :goto_0
    new-instance v5, Lorg/ccil/cowan/tagsoup/HTMLSchema;

    #@1c
    invoke-direct {v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    #@1f
    sput-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    #@21
    .line 138
    const-string/jumbo v5, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    #@24
    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    #@26
    invoke-interface {v2, v5, v6}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@29
    .line 140
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@2b
    const-string/jumbo v6, "--nocdata"

    #@2e
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_1

    #@34
    .line 141
    const-string/jumbo v5, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    #@37
    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@3a
    .line 144
    :cond_1
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@3c
    const-string/jumbo v6, "--nons"

    #@3f
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@42
    move-result v5

    #@43
    if-nez v5, :cond_2

    #@45
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@47
    const-string/jumbo v6, "--html"

    #@4a
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_3

    #@50
    .line 145
    :cond_2
    const-string/jumbo v5, "http://xml.org/sax/features/namespaces"

    #@53
    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@56
    .line 148
    :cond_3
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@58
    const-string/jumbo v6, "--nobogons"

    #@5b
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_4

    #@61
    .line 149
    const-string/jumbo v5, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    #@64
    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@67
    .line 152
    :cond_4
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@69
    const-string/jumbo v6, "--any"

    #@6c
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@6f
    move-result v5

    #@70
    if-eqz v5, :cond_f

    #@72
    .line 153
    const-string/jumbo v5, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    #@75
    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@78
    .line 159
    :cond_5
    :goto_1
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@7a
    const-string/jumbo v6, "--norootbogons"

    #@7d
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@80
    move-result v5

    #@81
    if-eqz v5, :cond_6

    #@83
    .line 160
    const-string/jumbo v5, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    #@86
    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@89
    .line 163
    :cond_6
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@8b
    const-string/jumbo v6, "--nodefaults"

    #@8e
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_7

    #@94
    .line 164
    const-string/jumbo v5, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    #@97
    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@9a
    .line 166
    :cond_7
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@9c
    const-string/jumbo v6, "--nocolons"

    #@9f
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@a2
    move-result v5

    #@a3
    if-eqz v5, :cond_8

    #@a5
    .line 167
    const-string/jumbo v5, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    #@a8
    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@ab
    .line 170
    :cond_8
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@ad
    const-string/jumbo v6, "--norestart"

    #@b0
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@b3
    move-result v5

    #@b4
    if-eqz v5, :cond_9

    #@b6
    .line 171
    const-string/jumbo v5, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    #@b9
    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@bc
    .line 174
    :cond_9
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@be
    const-string/jumbo v6, "--ignorable"

    #@c1
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@c4
    move-result v5

    #@c5
    if-eqz v5, :cond_a

    #@c7
    .line 175
    const-string/jumbo v5, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    #@ca
    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@cd
    .line 178
    :cond_a
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@cf
    const-string/jumbo v6, "--pyxin"

    #@d2
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@d5
    move-result v5

    #@d6
    if-eqz v5, :cond_b

    #@d8
    .line 179
    const-string/jumbo v5, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    #@db
    new-instance v6, Lorg/ccil/cowan/tagsoup/PYXScanner;

    #@dd
    invoke-direct {v6}, Lorg/ccil/cowan/tagsoup/PYXScanner;-><init>()V

    #@e0
    invoke-interface {v2, v5, v6}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@e3
    .line 183
    :cond_b
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    #@e5
    if-nez v5, :cond_10

    #@e7
    .line 184
    new-instance v4, Ljava/io/OutputStreamWriter;

    #@e9
    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@ec
    .line 189
    .local v4, "w":Ljava/io/Writer;
    :goto_2
    invoke-static {v4}, Lorg/ccil/cowan/tagsoup/CommandLine;->chooseContentHandler(Ljava/io/Writer;)Lorg/xml/sax/ContentHandler;

    #@ef
    move-result-object v1

    #@f0
    .line 190
    .local v1, "h":Lorg/xml/sax/ContentHandler;
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@f3
    .line 191
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@f5
    const-string/jumbo v6, "--lexical"

    #@f8
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@fb
    move-result v5

    #@fc
    if-eqz v5, :cond_c

    #@fe
    instance-of v5, v1, Lorg/xml/sax/ext/LexicalHandler;

    #@100
    if-eqz v5, :cond_c

    #@102
    .line 192
    const-string/jumbo v5, "http://xml.org/sax/properties/lexical-handler"

    #@105
    invoke-interface {v2, v5, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@108
    .line 194
    :cond_c
    new-instance v3, Lorg/xml/sax/InputSource;

    #@10a
    invoke-direct {v3}, Lorg/xml/sax/InputSource;-><init>()V

    #@10d
    .line 195
    .local v3, "s":Lorg/xml/sax/InputSource;
    const-string/jumbo v5, ""

    #@110
    if-eq p0, v5, :cond_11

    #@112
    .line 196
    invoke-virtual {v3, p0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    #@115
    .line 201
    :goto_3
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@117
    const-string/jumbo v6, "--encoding="

    #@11a
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@11d
    move-result v5

    #@11e
    if-eqz v5, :cond_d

    #@120
    .line 203
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@122
    const-string/jumbo v6, "--encoding="

    #@125
    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@128
    move-result-object v0

    #@129
    check-cast v0, Ljava/lang/String;

    #@12b
    .line 204
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_d

    #@12d
    invoke-virtual {v3, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    #@130
    .line 206
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_d
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    #@133
    .line 128
    return-void

    #@134
    .line 135
    .end local v1    # "h":Lorg/xml/sax/ContentHandler;
    .end local v2    # "r":Lorg/xml/sax/XMLReader;
    .end local v3    # "s":Lorg/xml/sax/InputSource;
    .end local v4    # "w":Ljava/io/Writer;
    :cond_e
    new-instance v2, Lorg/ccil/cowan/tagsoup/Parser;

    #@136
    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    #@139
    .restart local v2    # "r":Lorg/xml/sax/XMLReader;
    goto/16 :goto_0

    #@13b
    .line 155
    :cond_f
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    #@13d
    const-string/jumbo v6, "--emptybogons"

    #@140
    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    #@143
    move-result v5

    #@144
    if-eqz v5, :cond_5

    #@146
    .line 156
    const-string/jumbo v5, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    #@149
    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    #@14c
    goto/16 :goto_1

    #@14e
    .line 187
    :cond_10
    new-instance v4, Ljava/io/OutputStreamWriter;

    #@150
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    #@152
    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@155
    .restart local v4    # "w":Ljava/io/Writer;
    goto :goto_2

    #@156
    .line 199
    .restart local v1    # "h":Lorg/xml/sax/ContentHandler;
    .restart local v3    # "s":Lorg/xml/sax/InputSource;
    :cond_11
    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@158
    invoke-virtual {v3, v5}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    #@15b
    goto :goto_3
.end method
