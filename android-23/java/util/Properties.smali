.class public Ljava/util/Properties;
.super Ljava/util/Hashtable;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final PROP_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT properties (comment?, entry*) >    <!ATTLIST properties version CDATA #FIXED \"1.0\" >    <!ELEMENT comment (#PCDATA) >    <!ELEMENT entry (#PCDATA) >    <!ATTLIST entry key CDATA #REQUIRED >"

.field private static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field private transient builder:Ljavax/xml/parsers/DocumentBuilder;

.field protected defaults:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    #@3
    .line 69
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    #@6
    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "properties"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    #@3
    .line 69
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    #@6
    .line 103
    iput-object p1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@8
    .line 102
    return-void
.end method

.method private dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "key"    # Z

    #@0
    .prologue
    const/16 v5, 0x20

    #@2
    .line 107
    const/4 v2, 0x0

    #@3
    .line 108
    .local v2, "i":I
    if-nez p3, :cond_0

    #@5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@8
    move-result v4

    #@9
    if-lez v4, :cond_0

    #@b
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v4

    #@f
    if-ne v4, v5, :cond_0

    #@11
    .line 109
    const-string/jumbo v4, "\\ "

    #@14
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 110
    const/4 v2, 0x1

    #@18
    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@1b
    move-result v4

    #@1c
    if-ge v2, v4, :cond_5

    #@1e
    .line 114
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v0

    #@22
    .line 115
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    #@25
    .line 129
    :pswitch_0
    const-string/jumbo v4, "\\#!=:"

    #@28
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    #@2b
    move-result v4

    #@2c
    if-gez v4, :cond_1

    #@2e
    if-eqz p3, :cond_2

    #@30
    if-ne v0, v5, :cond_2

    #@32
    .line 130
    :cond_1
    const/16 v4, 0x5c

    #@34
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 132
    :cond_2
    if-lt v0, v5, :cond_3

    #@39
    const/16 v4, 0x7e

    #@3b
    if-gt v0, v4, :cond_3

    #@3d
    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 113
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_0

    #@43
    .line 117
    :pswitch_1
    const-string/jumbo v4, "\\t"

    #@46
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    goto :goto_1

    #@4a
    .line 120
    :pswitch_2
    const-string/jumbo v4, "\\n"

    #@4d
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    goto :goto_1

    #@51
    .line 123
    :pswitch_3
    const-string/jumbo v4, "\\f"

    #@54
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    goto :goto_1

    #@58
    .line 126
    :pswitch_4
    const-string/jumbo v4, "\\r"

    #@5b
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    goto :goto_1

    #@5f
    .line 135
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    .line 136
    .local v1, "hex":Ljava/lang/String;
    const-string/jumbo v4, "\\u"

    #@66
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 137
    const/4 v3, 0x0

    #@6a
    .local v3, "j":I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@6d
    move-result v4

    #@6e
    rsub-int/lit8 v4, v4, 0x4

    #@70
    if-ge v3, v4, :cond_4

    #@72
    .line 138
    const-string/jumbo v4, "0"

    #@75
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 137
    add-int/lit8 v3, v3, 0x1

    #@7a
    goto :goto_2

    #@7b
    .line 140
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    goto :goto_1

    #@7f
    .line 106
    .end local v0    # "ch":C
    .end local v1    # "hex":Ljava/lang/String;
    .end local v3    # "j":I
    :cond_5
    return-void

    #@80
    .line 115
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private listToAppendable(Ljava/lang/Appendable;)V
    .locals 8
    .param p1, "out"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 206
    if-nez p1, :cond_0

    #@2
    .line 207
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v7, "out == null"

    #@7
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 231
    :catch_0
    move-exception v1

    #@c
    .line 233
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@11
    throw v6

    #@12
    .line 209
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@14
    const/16 v6, 0x50

    #@16
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@19
    .line 210
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    #@1c
    move-result-object v3

    #@1d
    .line 211
    .local v3, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_3

    #@23
    .line 212
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Ljava/lang/String;

    #@29
    .line 213
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 214
    const/16 v6, 0x3d

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 215
    invoke-super {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Ljava/lang/String;

    #@37
    .line 216
    .local v4, "property":Ljava/lang/String;
    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@39
    .line 217
    .local v0, "def":Ljava/util/Properties;
    :goto_1
    if-nez v4, :cond_1

    #@3b
    .line 218
    invoke-virtual {v0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v4

    #@3f
    .end local v4    # "property":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    #@41
    .line 219
    .restart local v4    # "property":Ljava/lang/String;
    iget-object v0, v0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@43
    goto :goto_1

    #@44
    .line 221
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@47
    move-result v6

    #@48
    const/16 v7, 0x28

    #@4a
    if-le v6, v7, :cond_2

    #@4c
    .line 222
    const/4 v6, 0x0

    #@4d
    const/16 v7, 0x25

    #@4f
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 223
    const-string/jumbo v6, "..."

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 227
    :goto_2
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 228
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@6a
    .line 229
    const/4 v6, 0x0

    #@6b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6e
    goto :goto_0

    #@6f
    .line 225
    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@72
    goto :goto_2

    #@73
    .line 204
    .end local v0    # "def":Ljava/util/Properties;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "property":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private selectProperties(Ljava/util/Hashtable;Z)V
    .locals 4
    .param p2, "isStringOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Hashtable",
            "<TK;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 462
    .local p1, "selectProperties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;Ljava/lang/Object;>;"
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 463
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@6
    invoke-direct {v3, p1, p2}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    #@9
    .line 465
    :cond_0
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    #@c
    move-result-object v1

    #@d
    .line 466
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_3

    #@13
    .line 468
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .line 469
    .local v0, "key":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_2

    #@19
    instance-of v3, v0, Ljava/lang/String;

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 473
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    .line 474
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    goto :goto_0

    #@25
    .line 461
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 753
    const-string/jumbo v0, "&"

    #@3
    const-string/jumbo v1, "&amp;"

    #@6
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object p1

    #@a
    .line 754
    const-string/jumbo v0, "<"

    #@d
    const-string/jumbo v1, "&lt;"

    #@10
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    .line 755
    const-string/jumbo v0, ">"

    #@17
    const-string/jumbo v1, "&gt;"

    #@1a
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    .line 756
    const-string/jumbo v0, "\'"

    #@21
    const-string/jumbo v1, "&apos;"

    #@24
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object p1

    #@28
    .line 757
    const-string/jumbo v0, "\""

    #@2b
    const-string/jumbo v1, "&quot;"

    #@2e
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object p1

    #@32
    .line 758
    return-object p1
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    .line 157
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    #@6
    if-eqz v2, :cond_1

    #@8
    move-object v0, v1

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 158
    :goto_0
    if-nez v0, :cond_0

    #@d
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 159
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@13
    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 161
    :cond_0
    return-object v0

    #@18
    .line 157
    :cond_1
    const/4 v0, 0x0

    #@19
    .local v0, "property":Ljava/lang/String;
    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 177
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    .line 178
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    #@6
    if-eqz v2, :cond_1

    #@8
    move-object v0, v1

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 179
    :goto_0
    if-nez v0, :cond_0

    #@d
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 180
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@13
    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 182
    :cond_0
    if-nez v0, :cond_2

    #@19
    .line 183
    return-object p2

    #@1a
    .line 178
    :cond_1
    const/4 v0, 0x0

    #@1b
    .local v0, "property":Ljava/lang/String;
    goto :goto_0

    #@1c
    .line 185
    .end local v0    # "property":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 193
    invoke-direct {p0, p1}, Ljava/util/Properties;->listToAppendable(Ljava/lang/Appendable;)V

    #@3
    .line 192
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 201
    invoke-direct {p0, p1}, Ljava/util/Properties;->listToAppendable(Ljava/lang/Appendable;)V

    #@3
    .line 200
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 245
    if-nez p1, :cond_0

    #@3
    .line 246
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "in == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 248
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    #@11
    const-string/jumbo v1, "ISO-8859-1"

    #@14
    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@17
    invoke-virtual {p0, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 244
    return-void
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .locals 21
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 278
    if-nez p1, :cond_0

    #@3
    .line 279
    :try_start_0
    new-instance v19, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v20, "in == null"

    #@8
    invoke-direct/range {v19 .. v20}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v19

    #@d
    monitor-exit p0

    #@e
    throw v19

    #@f
    .line 281
    :cond_0
    const/4 v11, 0x0

    #@10
    .local v11, "mode":I
    const/16 v17, 0x0

    #@12
    .local v17, "unicode":I
    const/4 v5, 0x0

    #@13
    .line 282
    .local v5, "count":I
    const/16 v19, 0x28

    #@15
    :try_start_1
    move/from16 v0, v19

    #@17
    new-array v4, v0, [C

    #@19
    .line 283
    .local v4, "buf":[C
    const/4 v14, 0x0

    #@1a
    .local v14, "offset":I
    const/4 v10, -0x1

    #@1b
    .line 284
    .local v10, "keyLength":I
    const/4 v7, 0x1

    #@1c
    .line 286
    .local v7, "firstChar":Z
    new-instance v3, Ljava/io/BufferedReader;

    #@1e
    move-object/from16 v0, p1

    #@20
    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@23
    .local v3, "br":Ljava/io/BufferedReader;
    move v15, v14

    #@24
    .line 289
    .end local v14    # "offset":I
    .local v15, "offset":I
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    #@27
    move-result v8

    #@28
    .line 290
    .local v8, "intVal":I
    const/16 v19, -0x1

    #@2a
    move/from16 v0, v19

    #@2c
    if-ne v8, v0, :cond_2

    #@2e
    .line 422
    const/16 v19, 0x2

    #@30
    move/from16 v0, v19

    #@32
    if-ne v11, v0, :cond_15

    #@34
    const/16 v19, 0x4

    #@36
    move/from16 v0, v19

    #@38
    if-gt v5, v0, :cond_15

    #@3a
    .line 423
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@3c
    const-string/jumbo v20, "Invalid Unicode sequence: expected format \\uxxxx"

    #@3f
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v19

    #@43
    .line 293
    :cond_2
    int-to-char v13, v8

    #@44
    .line 295
    .local v13, "nextChar":C
    array-length v0, v4

    #@45
    move/from16 v19, v0

    #@47
    move/from16 v0, v19

    #@49
    if-ne v15, v0, :cond_3

    #@4b
    .line 296
    array-length v0, v4

    #@4c
    move/from16 v19, v0

    #@4e
    mul-int/lit8 v19, v19, 0x2

    #@50
    move/from16 v0, v19

    #@52
    new-array v12, v0, [C

    #@54
    .line 297
    .local v12, "newBuf":[C
    const/16 v19, 0x0

    #@56
    const/16 v20, 0x0

    #@58
    move/from16 v0, v19

    #@5a
    move/from16 v1, v20

    #@5c
    invoke-static {v4, v0, v12, v1, v15}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@5f
    .line 298
    move-object v4, v12

    #@60
    .line 300
    .end local v12    # "newBuf":[C
    :cond_3
    const/16 v19, 0x2

    #@62
    move/from16 v0, v19

    #@64
    if-ne v11, v0, :cond_7

    #@66
    .line 301
    const/16 v19, 0x10

    #@68
    move/from16 v0, v19

    #@6a
    invoke-static {v13, v0}, Ljava/lang/Character;->digit(CI)I

    #@6d
    move-result v6

    #@6e
    .line 302
    .local v6, "digit":I
    if-ltz v6, :cond_5

    #@70
    .line 303
    shl-int/lit8 v19, v17, 0x4

    #@72
    add-int v17, v19, v6

    #@74
    .line 304
    add-int/lit8 v5, v5, 0x1

    #@76
    const/16 v19, 0x4

    #@78
    move/from16 v0, v19

    #@7a
    if-lt v5, v0, :cond_1

    #@7c
    .line 310
    :cond_4
    const/4 v11, 0x0

    #@7d
    .line 311
    add-int/lit8 v14, v15, 0x1

    #@7f
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move/from16 v0, v17

    #@81
    int-to-char v0, v0

    #@82
    move/from16 v19, v0

    #@84
    aput-char v19, v4, v15

    #@86
    .line 312
    const/16 v19, 0xa

    #@88
    move/from16 v0, v19

    #@8a
    if-eq v13, v0, :cond_6

    #@8c
    move v15, v14

    #@8d
    .line 313
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_0

    #@8e
    .line 307
    :cond_5
    const/16 v19, 0x4

    #@90
    move/from16 v0, v19

    #@92
    if-gt v5, v0, :cond_4

    #@94
    .line 308
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@96
    const-string/jumbo v20, "Invalid Unicode sequence: illegal character"

    #@99
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v19

    #@9d
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_6
    move v15, v14

    #@9e
    .line 316
    .end local v6    # "digit":I
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_7
    const/16 v19, 0x1

    #@a0
    move/from16 v0, v19

    #@a2
    if-ne v11, v0, :cond_a

    #@a4
    .line 317
    const/4 v11, 0x0

    #@a5
    .line 318
    sparse-switch v13, :sswitch_data_0

    #@a8
    .line 415
    .end local v13    # "nextChar":C
    :cond_8
    :goto_1
    const/4 v7, 0x0

    #@a9
    .line 416
    const/16 v19, 0x4

    #@ab
    move/from16 v0, v19

    #@ad
    if-ne v11, v0, :cond_9

    #@af
    .line 417
    move v10, v15

    #@b0
    .line 418
    const/4 v11, 0x0

    #@b1
    .line 420
    :cond_9
    add-int/lit8 v14, v15, 0x1

    #@b3
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    aput-char v13, v4, v15

    #@b5
    move v15, v14

    #@b6
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    #@b8
    .line 320
    .restart local v13    # "nextChar":C
    :sswitch_0
    const/4 v11, 0x3

    #@b9
    .line 321
    goto/16 :goto_0

    #@bb
    .line 323
    :sswitch_1
    const/4 v11, 0x5

    #@bc
    .line 324
    goto/16 :goto_0

    #@be
    .line 326
    :sswitch_2
    const/16 v13, 0x8

    #@c0
    .line 327
    .local v13, "nextChar":C
    goto :goto_1

    #@c1
    .line 329
    .local v13, "nextChar":C
    :sswitch_3
    const/16 v13, 0xc

    #@c3
    .line 330
    .local v13, "nextChar":C
    goto :goto_1

    #@c4
    .line 332
    .local v13, "nextChar":C
    :sswitch_4
    const/16 v13, 0xa

    #@c6
    .line 333
    .local v13, "nextChar":C
    goto :goto_1

    #@c7
    .line 335
    .local v13, "nextChar":C
    :sswitch_5
    const/16 v13, 0xd

    #@c9
    .line 336
    .local v13, "nextChar":C
    goto :goto_1

    #@ca
    .line 338
    .local v13, "nextChar":C
    :sswitch_6
    const/16 v13, 0x9

    #@cc
    .line 339
    .local v13, "nextChar":C
    goto :goto_1

    #@cd
    .line 341
    .local v13, "nextChar":C
    :sswitch_7
    const/4 v11, 0x2

    #@ce
    .line 342
    const/4 v5, 0x0

    #@cf
    const/16 v17, 0x0

    #@d1
    .line 343
    goto/16 :goto_0

    #@d3
    .line 346
    :cond_a
    sparse-switch v13, :sswitch_data_1

    #@d6
    .line 398
    :cond_b
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    #@d9
    move-result v19

    #@da
    if-eqz v19, :cond_13

    #@dc
    .line 399
    const/16 v19, 0x3

    #@de
    move/from16 v0, v19

    #@e0
    if-ne v11, v0, :cond_c

    #@e2
    .line 400
    const/4 v11, 0x5

    #@e3
    .line 403
    :cond_c
    if-eqz v15, :cond_1

    #@e5
    if-eq v15, v10, :cond_1

    #@e7
    const/16 v19, 0x5

    #@e9
    move/from16 v0, v19

    #@eb
    if-eq v11, v0, :cond_1

    #@ed
    .line 406
    const/16 v19, -0x1

    #@ef
    move/from16 v0, v19

    #@f1
    if-ne v10, v0, :cond_13

    #@f3
    .line 407
    const/4 v11, 0x4

    #@f4
    .line 408
    goto/16 :goto_0

    #@f6
    .line 349
    :sswitch_8
    if-eqz v7, :cond_b

    #@f8
    .line 351
    :cond_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    #@fb
    move-result v8

    #@fc
    .line 352
    const/16 v19, -0x1

    #@fe
    move/from16 v0, v19

    #@100
    if-eq v8, v0, :cond_1

    #@102
    .line 355
    int-to-char v13, v8

    #@103
    .line 356
    const/16 v19, 0xd

    #@105
    move/from16 v0, v19

    #@107
    if-eq v13, v0, :cond_1

    #@109
    const/16 v19, 0xa

    #@10b
    move/from16 v0, v19

    #@10d
    if-ne v13, v0, :cond_d

    #@10f
    goto/16 :goto_0

    #@111
    .line 364
    :sswitch_9
    const/16 v19, 0x3

    #@113
    move/from16 v0, v19

    #@115
    if-ne v11, v0, :cond_e

    #@117
    .line 365
    const/4 v11, 0x5

    #@118
    .line 366
    goto/16 :goto_0

    #@11a
    .line 370
    :cond_e
    :sswitch_a
    const/4 v11, 0x0

    #@11b
    .line 371
    const/4 v7, 0x1

    #@11c
    .line 372
    if-gtz v15, :cond_f

    #@11e
    if-nez v15, :cond_11

    #@120
    if-nez v10, :cond_11

    #@122
    .line 373
    :cond_f
    const/16 v19, -0x1

    #@124
    move/from16 v0, v19

    #@126
    if-ne v10, v0, :cond_10

    #@128
    .line 374
    move v10, v15

    #@129
    .line 376
    :cond_10
    new-instance v16, Ljava/lang/String;

    #@12b
    const/16 v19, 0x0

    #@12d
    move-object/from16 v0, v16

    #@12f
    move/from16 v1, v19

    #@131
    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    #@134
    .line 377
    .local v16, "temp":Ljava/lang/String;
    const/16 v19, 0x0

    #@136
    move-object/from16 v0, v16

    #@138
    move/from16 v1, v19

    #@13a
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13d
    move-result-object v19

    #@13e
    move-object/from16 v0, v16

    #@140
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@143
    move-result-object v20

    #@144
    move-object/from16 v0, p0

    #@146
    move-object/from16 v1, v19

    #@148
    move-object/from16 v2, v20

    #@14a
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14d
    .line 380
    .end local v16    # "temp":Ljava/lang/String;
    :cond_11
    const/4 v10, -0x1

    #@14e
    .line 381
    const/4 v14, 0x0

    #@14f
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move v15, v14

    #@150
    .line 382
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    #@152
    .line 384
    :sswitch_b
    const/16 v19, 0x4

    #@154
    move/from16 v0, v19

    #@156
    if-ne v11, v0, :cond_12

    #@158
    .line 385
    move v10, v15

    #@159
    .line 387
    :cond_12
    const/4 v11, 0x1

    #@15a
    .line 388
    goto/16 :goto_0

    #@15c
    .line 391
    :sswitch_c
    const/16 v19, -0x1

    #@15e
    move/from16 v0, v19

    #@160
    if-ne v10, v0, :cond_b

    #@162
    .line 392
    const/4 v11, 0x0

    #@163
    .line 393
    move v10, v15

    #@164
    .line 394
    goto/16 :goto_0

    #@166
    .line 411
    :cond_13
    const/16 v19, 0x5

    #@168
    move/from16 v0, v19

    #@16a
    if-eq v11, v0, :cond_14

    #@16c
    const/16 v19, 0x3

    #@16e
    move/from16 v0, v19

    #@170
    if-ne v11, v0, :cond_8

    #@172
    .line 412
    :cond_14
    const/4 v11, 0x0

    #@173
    goto/16 :goto_1

    #@175
    .line 425
    .end local v13    # "nextChar":C
    :cond_15
    const/16 v19, -0x1

    #@177
    move/from16 v0, v19

    #@179
    if-ne v10, v0, :cond_16

    #@17b
    if-lez v15, :cond_16

    #@17d
    .line 426
    move v10, v15

    #@17e
    .line 428
    :cond_16
    if-ltz v10, :cond_18

    #@180
    .line 429
    new-instance v16, Ljava/lang/String;

    #@182
    const/16 v19, 0x0

    #@184
    move-object/from16 v0, v16

    #@186
    move/from16 v1, v19

    #@188
    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    #@18b
    .line 430
    .restart local v16    # "temp":Ljava/lang/String;
    const/16 v19, 0x0

    #@18d
    move-object/from16 v0, v16

    #@18f
    move/from16 v1, v19

    #@191
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@194
    move-result-object v9

    #@195
    .line 431
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    #@197
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@19a
    move-result-object v18

    #@19b
    .line 432
    .local v18, "value":Ljava/lang/String;
    const/16 v19, 0x1

    #@19d
    move/from16 v0, v19

    #@19f
    if-ne v11, v0, :cond_17

    #@1a1
    .line 433
    new-instance v19, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    move-object/from16 v0, v19

    #@1a8
    move-object/from16 v1, v18

    #@1aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v19

    #@1ae
    const-string/jumbo v20, "\u0000"

    #@1b1
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v19

    #@1b5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v18

    #@1b9
    .line 435
    :cond_17
    move-object/from16 v0, p0

    #@1bb
    move-object/from16 v1, v18

    #@1bd
    invoke-virtual {v0, v9, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c0
    .end local v9    # "key":Ljava/lang/String;
    .end local v16    # "temp":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :cond_18
    monitor-exit p0

    #@1c1
    .line 277
    return-void

    #@1c2
    .line 318
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
    .end sparse-switch

    #@1e4
    .line 346
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
    .end sparse-switch
.end method

.method public declared-synchronized loadFromXML(Ljava/io/InputStream;)V
    .locals 13
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 580
    if-nez p1, :cond_0

    #@3
    .line 581
    :try_start_0
    new-instance v11, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v12, "in == null"

    #@8
    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v11

    #@d
    monitor-exit p0

    #@e
    throw v11

    #@f
    .line 584
    :cond_0
    :try_start_1
    iget-object v11, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    #@11
    if-nez v11, :cond_1

    #@13
    .line 585
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v7

    #@17
    .line 591
    .local v7, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_2
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@1a
    move-result-object v11

    #@1b
    iput-object v11, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    .line 596
    :try_start_3
    iget-object v11, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    #@1f
    new-instance v12, Ljava/util/Properties$1;

    #@21
    invoke-direct {v12, p0}, Ljava/util/Properties$1;-><init>(Ljava/util/Properties;)V

    #@24
    invoke-virtual {v11, v12}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@27
    .line 610
    iget-object v11, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    #@29
    new-instance v12, Ljava/util/Properties$2;

    #@2b
    invoke-direct {v12, p0}, Ljava/util/Properties$2;-><init>(Ljava/util/Properties;)V

    #@2e
    invoke-virtual {v11, v12}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@31
    .line 626
    .end local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_1
    :try_start_4
    iget-object v11, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    #@33
    invoke-virtual {v11, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    #@36
    move-result-object v0

    #@37
    .line 627
    .local v0, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v11, "entry"

    #@3a
    invoke-interface {v0, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3d
    move-result-object v4

    #@3e
    .line 628
    .local v4, "entries":Lorg/w3c/dom/NodeList;
    if-nez v4, :cond_2

    #@40
    monitor-exit p0

    #@41
    .line 629
    return-void

    #@42
    .line 592
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "entries":Lorg/w3c/dom/NodeList;
    .restart local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v2

    #@43
    .line 593
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    new-instance v11, Ljava/lang/Error;

    #@45
    invoke-direct {v11, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@48
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@49
    .line 631
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "entries":Lorg/w3c/dom/NodeList;
    :cond_2
    :try_start_6
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    #@4c
    move-result v5

    #@4d
    .line 633
    .local v5, "entriesListLength":I
    const/4 v8, 0x0

    #@4e
    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_3

    #@50
    .line 634
    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@53
    move-result-object v6

    #@54
    check-cast v6, Lorg/w3c/dom/Element;

    #@56
    .line 635
    .local v6, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v11, "key"

    #@59
    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    .line 636
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    #@60
    move-result-object v10

    #@61
    .line 642
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {p0, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@64
    .line 633
    add-int/lit8 v8, v8, 0x1

    #@66
    goto :goto_0

    #@67
    .line 646
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "entries":Lorg/w3c/dom/NodeList;
    .end local v5    # "entriesListLength":I
    .end local v6    # "entry":Lorg/w3c/dom/Element;
    .end local v8    # "i":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@68
    .line 647
    .local v3, "e":Lorg/xml/sax/SAXException;
    :try_start_7
    new-instance v11, Ljava/util/InvalidPropertiesFormatException;

    #@6a
    invoke-direct {v11, v3}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/Throwable;)V

    #@6d
    throw v11

    #@6e
    .line 644
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    #@6f
    .line 645
    .local v1, "e":Ljava/io/IOException;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@70
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "entries":Lorg/w3c/dom/NodeList;
    .restart local v5    # "entriesListLength":I
    .restart local v8    # "i":I
    :cond_3
    monitor-exit p0

    #@71
    .line 579
    return-void
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 443
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 444
    .local v0, "selected":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    #@9
    .line 445
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 495
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 493
    :goto_0
    return-void

    #@4
    .line 496
    :catch_0
    move-exception v0

    #@5
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 511
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 524
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@3
    const-string/jumbo v1, "ISO-8859-1"

    #@6
    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@9
    invoke-virtual {p0, v0, p2}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 523
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public declared-synchronized store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 538
    if-eqz p2, :cond_0

    #@3
    .line 539
    :try_start_0
    const-string/jumbo v4, "#"

    #@6
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@9
    .line 540
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@c
    .line 541
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@13
    .line 543
    :cond_0
    const-string/jumbo v4, "#"

    #@16
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@19
    .line 544
    new-instance v4, Ljava/util/Date;

    #@1b
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    #@1e
    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@25
    .line 545
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@2c
    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    const/16 v4, 0xc8

    #@30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@33
    .line 548
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    #@36
    move-result-object v4

    #@37
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v1

    #@3b
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_1

    #@41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Ljava/util/Map$Entry;

    #@47
    .line 549
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4a
    move-result-object v2

    #@4b
    check-cast v2, Ljava/lang/String;

    #@4d
    .line 550
    .local v2, "key":Ljava/lang/String;
    const/4 v4, 0x1

    #@4e
    invoke-direct {p0, v3, v2, v4}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    #@51
    .line 551
    const/16 v4, 0x3d

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    .line 552
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@59
    move-result-object v4

    #@5a
    check-cast v4, Ljava/lang/String;

    #@5c
    const/4 v5, 0x0

    #@5d
    invoke-direct {p0, v3, v4, v5}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    #@60
    .line 553
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 554
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6e
    .line 555
    const/4 v4, 0x0

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@72
    goto :goto_0

    #@73
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    #@74
    monitor-exit p0

    #@75
    throw v4

    #@76
    .line 557
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@79
    monitor-exit p0

    #@7a
    .line 537
    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 669
    const-string/jumbo v0, "UTF-8"

    #@3
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 668
    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 693
    if-nez p1, :cond_0

    #@3
    .line 694
    :try_start_0
    new-instance v8, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v9, "os == null"

    #@8
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v8

    #@d
    monitor-exit p0

    #@e
    throw v8

    #@f
    .line 695
    :cond_0
    if-nez p3, :cond_1

    #@11
    .line 696
    :try_start_1
    new-instance v8, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v9, "encoding == null"

    #@16
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 708
    :cond_1
    :try_start_2
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@1d
    move-result-object v8

    #@1e
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_2
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    move-result-object v2

    #@22
    .line 719
    .local v2, "encodingCanonicalName":Ljava/lang/String;
    :goto_0
    :try_start_3
    new-instance v7, Ljava/io/PrintStream;

    #@24
    const/4 v8, 0x0

    #@25
    invoke-direct {v7, p1, v8, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    #@28
    .line 722
    .local v7, "printStream":Ljava/io/PrintStream;
    const-string/jumbo v8, "<?xml version=\"1.0\" encoding=\""

    #@2b
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@2e
    .line 723
    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@31
    .line 724
    const-string/jumbo v8, "\"?>"

    #@34
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@37
    .line 726
    const-string/jumbo v8, "<!DOCTYPE properties SYSTEM \""

    #@3a
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3d
    .line 727
    const-string/jumbo v8, "http://java.sun.com/dtd/properties.dtd"

    #@40
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@43
    .line 728
    const-string/jumbo v8, "\">"

    #@46
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@49
    .line 730
    const-string/jumbo v8, "<properties>"

    #@4c
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4f
    .line 732
    if-eqz p2, :cond_2

    #@51
    .line 733
    const-string/jumbo v8, "<comment>"

    #@54
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@57
    .line 734
    invoke-direct {p0, p2}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@5e
    .line 735
    const-string/jumbo v8, "</comment>"

    #@61
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@64
    .line 738
    :cond_2
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    #@67
    move-result-object v8

    #@68
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v4

    #@6c
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v8

    #@70
    if-eqz v8, :cond_3

    #@72
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v3

    #@76
    check-cast v3, Ljava/util/Map$Entry;

    #@78
    .line 739
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@7b
    move-result-object v6

    #@7c
    check-cast v6, Ljava/lang/String;

    #@7e
    .line 740
    .local v6, "keyValue":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@81
    move-result-object v5

    #@82
    check-cast v5, Ljava/lang/String;

    #@84
    .line 741
    .local v5, "entryValue":Ljava/lang/String;
    const-string/jumbo v8, "<entry key=\""

    #@87
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@8a
    .line 742
    invoke-direct {p0, v6}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@91
    .line 743
    const-string/jumbo v8, "\">"

    #@94
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@97
    .line 744
    invoke-direct {p0, v5}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v8

    #@9b
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@9e
    .line 745
    const-string/jumbo v8, "</entry>"

    #@a1
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a4
    goto :goto_1

    #@a5
    .line 713
    .end local v2    # "encodingCanonicalName":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "entryValue":Ljava/lang/String;
    .end local v6    # "keyValue":Ljava/lang/String;
    .end local v7    # "printStream":Ljava/io/PrintStream;
    :catch_0
    move-exception v1

    #@a6
    .line 714
    .local v1, "e":Ljava/nio/charset/UnsupportedCharsetException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a8
    new-instance v9, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v10, "Warning: encoding "

    #@b0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v9

    #@b4
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v9

    #@b8
    .line 715
    const-string/jumbo v10, " is not supported, using UTF-8 as default encoding"

    #@bb
    .line 714
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v9

    #@bf
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v9

    #@c3
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c6
    .line 716
    const-string/jumbo v2, "UTF-8"

    #@c9
    .restart local v2    # "encodingCanonicalName":Ljava/lang/String;
    goto/16 :goto_0

    #@cb
    .line 709
    .end local v1    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    .end local v2    # "encodingCanonicalName":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@cc
    .line 710
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ce
    new-instance v9, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v10, "Warning: encoding name "

    #@d6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v9

    #@da
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v9

    #@de
    .line 711
    const-string/jumbo v10, " is illegal, using UTF-8 as default encoding"

    #@e1
    .line 710
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v9

    #@e5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v9

    #@e9
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ec
    .line 712
    const-string/jumbo v2, "UTF-8"

    #@ef
    .restart local v2    # "encodingCanonicalName":Ljava/lang/String;
    goto/16 :goto_0

    #@f1
    .line 747
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    .restart local v4    # "entry$iterator":Ljava/util/Iterator;
    .restart local v7    # "printStream":Ljava/io/PrintStream;
    :cond_3
    const-string/jumbo v8, "</properties>"

    #@f4
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f7
    .line 748
    invoke-virtual {v7}, Ljava/io/PrintStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@fa
    monitor-exit p0

    #@fb
    .line 691
    return-void
.end method

.method public stringPropertyNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 456
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 457
    .local v0, "stringProperties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    #@9
    .line 458
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    #@c
    move-result-object v1

    #@d
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method
