.class Ljava/util/prefs/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/XMLParser$1;,
        Ljava/util/prefs/XMLParser$2;
    }
.end annotation


# static fields
.field static final DOCTYPE:Ljava/lang/String; = "<!DOCTYPE preferences SYSTEM"

.field private static final FILE_PREFS:Ljava/lang/String; = "<!DOCTYPE map SYSTEM \'http://java.sun.com/dtd/preferences.dtd\'>"

.field static final HEADER:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

.field static final PREFS_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT preferences (root)>    <!ATTLIST preferences EXTERNAL_XML_VERSION CDATA \"0.0\" >    <!ELEMENT root (map, node*) >    <!ATTLIST root type (system|user) #REQUIRED >    <!ELEMENT node (map, node*) >    <!ATTLIST node name CDATA #REQUIRED >    <!ELEMENT map (entry*) >    <!ELEMENT entry EMPTY >    <!ATTLIST entry key   CDATA #REQUIRED value CDATA #REQUIRED >"

.field static final PREFS_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/preferences.dtd"

.field private static final XML_VERSION:F = 1.0f

.field private static final builder:Ljavax/xml/parsers/DocumentBuilder;

.field private static indent:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 101
    const/4 v2, -0x1

    #@1
    sput v2, Ljava/util/prefs/XMLParser;->indent:I

    #@3
    .line 107
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@6
    move-result-object v1

    #@7
    .line 108
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    #@8
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    #@b
    .line 110
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@e
    move-result-object v2

    #@f
    sput-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 114
    sget-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    #@13
    new-instance v3, Ljava/util/prefs/XMLParser$1;

    #@15
    invoke-direct {v3}, Ljava/util/prefs/XMLParser$1;-><init>()V

    #@18
    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    #@1b
    .line 126
    sget-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    #@1d
    new-instance v3, Ljava/util/prefs/XMLParser$2;

    #@1f
    invoke-direct {v3}, Ljava/util/prefs/XMLParser$2;-><init>()V

    #@22
    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@25
    .line 52
    return-void

    #@26
    .line 111
    :catch_0
    move-exception v0

    #@27
    .line 112
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/Error;

    #@29
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@2c
    throw v2
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V
    .locals 5
    .param p0, "prefs"    # Ljava/util/prefs/Preferences;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 213
    .local v1, "keys":[Ljava/lang/String;
    array-length v3, v1

    #@5
    new-array v2, v3, [Ljava/lang/String;

    #@7
    .line 214
    .local v2, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@9
    if-ge v0, v3, :cond_0

    #@b
    .line 215
    aget-object v3, v1, v0

    #@d
    const/4 v4, 0x0

    #@e
    invoke-virtual {p0, v3, v4}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    aput-object v3, v2, v0

    #@14
    .line 214
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 217
    :cond_0
    invoke-static {v1, v2, p1}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@1a
    .line 211
    return-void
.end method

.method private static exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 8
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 222
    array-length v1, p0

    #@4
    if-nez v1, :cond_0

    #@6
    .line 223
    const-string/jumbo v1, "map"

    #@9
    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@c
    .line 224
    return-void

    #@d
    .line 226
    :cond_0
    const-string/jumbo v1, "map"

    #@10
    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@13
    .line 227
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@15
    if-ge v0, v1, :cond_2

    #@17
    .line 228
    aget-object v1, p1, v0

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 229
    const-string/jumbo v1, "entry"

    #@1e
    new-array v2, v7, [Ljava/lang/String;

    #@20
    const-string/jumbo v3, "key"

    #@23
    aput-object v3, v2, v5

    #@25
    const-string/jumbo v3, "value"

    #@28
    aput-object v3, v2, v6

    #@2a
    .line 230
    new-array v3, v7, [Ljava/lang/String;

    #@2c
    aget-object v4, p0, v0

    #@2e
    aput-object v4, v3, v5

    #@30
    aget-object v4, p1, v0

    #@32
    aput-object v4, v3, v6

    #@34
    .line 229
    invoke-static {v1, v2, v3, p2}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@37
    .line 227
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 233
    :cond_2
    const-string/jumbo v1, "map"

    #@3d
    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@40
    .line 221
    return-void
.end method

.method private static exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V
    .locals 6
    .param p0, "ancestors"    # Ljava/util/StringTokenizer;
    .param p1, "prefs"    # Ljava/util/prefs/Preferences;
    .param p2, "withSubTree"    # Z
    .param p3, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 180
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 181
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 182
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "node"

    #@f
    new-array v2, v5, [Ljava/lang/String;

    #@11
    const-string/jumbo v3, "name"

    #@14
    aput-object v3, v2, v4

    #@16
    new-array v3, v5, [Ljava/lang/String;

    #@18
    aput-object v0, v3, v4

    #@1a
    invoke-static {v1, v2, v3, p3}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@1d
    .line 183
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 184
    const-string/jumbo v1, "map"

    #@26
    invoke-static {v1, p3}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@29
    .line 185
    invoke-static {p0, p1, p2, p3}, Ljava/util/prefs/XMLParser;->exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V

    #@2c
    .line 192
    :cond_0
    :goto_0
    const-string/jumbo v1, "node"

    #@2f
    invoke-static {v1, p3}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@32
    .line 179
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return-void

    #@33
    .line 187
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-static {p1, p3}, Ljava/util/prefs/XMLParser;->exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    #@36
    .line 188
    if-eqz p2, :cond_0

    #@38
    .line 189
    invoke-static {p1, p3}, Ljava/util/prefs/XMLParser;->exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    #@3b
    goto :goto_0
.end method

.method static exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V
    .locals 8
    .param p0, "prefs"    # Ljava/util/prefs/Preferences;
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "withSubTree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 149
    const/4 v2, -0x1

    #@3
    sput v2, Ljava/util/prefs/XMLParser;->indent:I

    #@5
    .line 150
    new-instance v1, Ljava/io/BufferedWriter;

    #@7
    new-instance v2, Ljava/io/OutputStreamWriter;

    #@9
    const-string/jumbo v3, "UTF-8"

    #@c
    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@f
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@12
    .line 151
    .local v1, "out":Ljava/io/BufferedWriter;
    const-string/jumbo v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    #@15
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@18
    .line 152
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    #@1b
    .line 153
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    #@1e
    .line 155
    const-string/jumbo v2, "<!DOCTYPE preferences SYSTEM"

    #@21
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@24
    .line 156
    const-string/jumbo v2, " \'"

    #@27
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@2a
    .line 157
    const-string/jumbo v2, "http://java.sun.com/dtd/preferences.dtd"

    #@2d
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@30
    .line 158
    const-string/jumbo v2, "\'>"

    #@33
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@36
    .line 159
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    #@39
    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    #@3c
    .line 162
    const-string/jumbo v2, "preferences"

    #@3f
    new-array v3, v7, [Ljava/lang/String;

    #@41
    const-string/jumbo v4, "EXTERNAL_XML_VERSION"

    #@44
    aput-object v4, v3, v6

    #@46
    .line 163
    new-array v4, v7, [Ljava/lang/String;

    #@48
    const/high16 v5, 0x3f800000    # 1.0f

    #@4a
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    aput-object v5, v4, v6

    #@50
    .line 162
    invoke-static {v2, v3, v4, v1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@53
    .line 164
    const-string/jumbo v3, "root"

    #@56
    new-array v4, v7, [Ljava/lang/String;

    #@58
    const-string/jumbo v2, "type"

    #@5b
    aput-object v2, v4, v6

    #@5d
    .line 165
    new-array v5, v7, [Ljava/lang/String;

    #@5f
    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->isUserNode()Z

    #@62
    move-result v2

    #@63
    if-eqz v2, :cond_0

    #@65
    const-string/jumbo v2, "user"

    #@68
    :goto_0
    aput-object v2, v5, v6

    #@6a
    .line 164
    invoke-static {v3, v4, v5, v1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@6d
    .line 166
    const-string/jumbo v2, "map"

    #@70
    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@73
    .line 168
    new-instance v0, Ljava/util/StringTokenizer;

    #@75
    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->absolutePath()Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    const-string/jumbo v3, "/"

    #@7c
    invoke-direct {v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@7f
    .line 169
    .local v0, "ancestors":Ljava/util/StringTokenizer;
    invoke-static {v0, p0, p2, v1}, Ljava/util/prefs/XMLParser;->exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V

    #@82
    .line 171
    const-string/jumbo v2, "root"

    #@85
    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@88
    .line 172
    const-string/jumbo v2, "preferences"

    #@8b
    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@8e
    .line 173
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    #@91
    .line 174
    const/4 v1, 0x0

    #@92
    .line 148
    .local v1, "out":Ljava/io/BufferedWriter;
    return-void

    #@93
    .line 165
    .end local v0    # "ancestors":Ljava/util/StringTokenizer;
    .local v1, "out":Ljava/io/BufferedWriter;
    :cond_0
    const-string/jumbo v2, "system"

    #@96
    goto :goto_0
.end method

.method private static exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V
    .locals 9
    .param p0, "prefs"    # Ljava/util/prefs/Preferences;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 198
    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->childrenNames()[Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 199
    .local v2, "names":[Ljava/lang/String;
    array-length v3, v2

    #@7
    if-lez v3, :cond_0

    #@9
    .line 200
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@b
    if-ge v1, v3, :cond_0

    #@d
    .line 201
    aget-object v3, v2, v1

    #@f
    invoke-virtual {p0, v3}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    #@12
    move-result-object v0

    #@13
    .line 202
    .local v0, "child":Ljava/util/prefs/Preferences;
    const-string/jumbo v3, "node"

    #@16
    new-array v4, v8, [Ljava/lang/String;

    #@18
    const-string/jumbo v5, "name"

    #@1b
    aput-object v5, v4, v7

    #@1d
    new-array v5, v8, [Ljava/lang/String;

    #@1f
    aget-object v6, v2, v1

    #@21
    aput-object v6, v5, v7

    #@23
    invoke-static {v3, v4, v5, p1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@26
    .line 203
    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    #@29
    .line 204
    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    #@2c
    .line 205
    const-string/jumbo v3, "node"

    #@2f
    invoke-static {v3, p1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@32
    .line 200
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 197
    .end local v0    # "child":Ljava/util/prefs/Preferences;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    #@6
    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    #@9
    .line 248
    const-string/jumbo v0, "<"

    #@c
    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@f
    .line 249
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@12
    .line 250
    const-string/jumbo v0, " />"

    #@15
    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@18
    .line 251
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    #@1b
    .line 252
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    #@1d
    add-int/lit8 v0, v0, -0x1

    #@1f
    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    #@21
    .line 246
    return-void
.end method

.method private static flushEmptyElement(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "attrKeys"    # [Ljava/lang/String;
    .param p2, "attrValues"    # [Ljava/lang/String;
    .param p3, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    #@6
    invoke-static {v0, p3}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    #@9
    .line 258
    const-string/jumbo v0, "<"

    #@c
    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@f
    .line 259
    invoke-virtual {p3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@12
    .line 260
    invoke-static {p1, p2, p3}, Ljava/util/prefs/XMLParser;->flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@15
    .line 261
    const-string/jumbo v0, " />"

    #@18
    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@1b
    .line 262
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    #@1e
    .line 263
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    #@20
    add-int/lit8 v0, v0, -0x1

    #@22
    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    #@24
    .line 256
    return-void
.end method

.method private static flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    #@2
    add-int/lit8 v1, v0, -0x1

    #@4
    sput v1, Ljava/util/prefs/XMLParser;->indent:I

    #@6
    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    #@9
    .line 239
    const-string/jumbo v0, "</"

    #@c
    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@f
    .line 240
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@12
    .line 241
    const-string/jumbo v0, ">"

    #@15
    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@18
    .line 242
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    #@1b
    .line 237
    return-void
.end method

.method private static flushIndent(ILjava/io/BufferedWriter;)V
    .locals 2
    .param p0, "ind"    # I
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 280
    const-string/jumbo v1, "  "

    #@6
    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@9
    .line 279
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 278
    :cond_0
    return-void
.end method

.method private static flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 2
    .param p0, "attrKeys"    # [Ljava/lang/String;
    .param p1, "attrValues"    # [Ljava/lang/String;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 269
    const-string/jumbo v1, " "

    #@7
    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@a
    .line 270
    aget-object v1, p0, v0

    #@c
    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@f
    .line 271
    const-string/jumbo v1, "=\""

    #@12
    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@15
    .line 272
    aget-object v1, p1, v0

    #@17
    invoke-static {v1}, Ljava/util/prefs/XMLParser;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@1e
    .line 273
    const-string/jumbo v1, "\""

    #@21
    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@24
    .line 268
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 267
    :cond_0
    return-void
.end method

.method private static flushStartTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    #@6
    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    #@9
    .line 297
    const-string/jumbo v0, "<"

    #@c
    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@f
    .line 298
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@12
    .line 299
    const-string/jumbo v0, ">"

    #@15
    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@18
    .line 300
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    #@1b
    .line 295
    return-void
.end method

.method private static flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "attrKeys"    # [Ljava/lang/String;
    .param p2, "attrValues"    # [Ljava/lang/String;
    .param p3, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    #@6
    invoke-static {v0, p3}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    #@9
    .line 287
    const-string/jumbo v0, "<"

    #@c
    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@f
    .line 288
    invoke-virtual {p3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@12
    .line 289
    invoke-static {p1, p2, p3}, Ljava/util/prefs/XMLParser;->flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@15
    .line 290
    const-string/jumbo v0, ">"

    #@18
    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@1b
    .line 291
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    #@1e
    .line 285
    return-void
.end method

.method private static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 305
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    if-ge v1, v3, :cond_0

    #@c
    .line 306
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 307
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@13
    .line 321
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 305
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 309
    :sswitch_0
    const-string/jumbo v3, "&lt;"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    goto :goto_1

    #@20
    .line 312
    :sswitch_1
    const-string/jumbo v3, "&gt;"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_1

    #@27
    .line 315
    :sswitch_2
    const-string/jumbo v3, "&amp;"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    goto :goto_1

    #@2e
    .line 318
    :sswitch_3
    const-string/jumbo v3, "&quot;"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    goto :goto_1

    #@35
    .line 324
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    return-object v3

    #@3a
    .line 307
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method static importPrefs(Ljava/io/InputStream;)V
    .locals 11
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 333
    :try_start_0
    sget-object v8, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    #@2
    new-instance v9, Lorg/xml/sax/InputSource;

    #@4
    invoke-direct {v9, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    #@7
    invoke-virtual {v8, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    #@a
    move-result-object v0

    #@b
    .line 337
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@e
    move-result-object v3

    #@f
    .line 338
    .local v3, "preferences":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "EXTERNAL_XML_VERSION"

    #@12
    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    .line 339
    .local v7, "version":Ljava/lang/String;
    if-eqz v7, :cond_0

    #@18
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@1b
    move-result v8

    #@1c
    const/high16 v9, 0x3f800000    # 1.0f

    #@1e
    cmpl-float v8, v8, v9

    #@20
    if-lez v8, :cond_0

    #@22
    .line 340
    new-instance v8, Ljava/util/prefs/InvalidPreferencesFormatException;

    #@24
    new-instance v9, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v10, "Preferences version "

    #@2c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v9

    #@34
    .line 341
    const-string/jumbo v10, " is not supported"

    #@37
    .line 340
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    invoke-direct {v8, v9}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    #@42
    throw v8
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    #@43
    .line 357
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "preferences":Lorg/w3c/dom/Element;
    .end local v7    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@44
    .line 358
    .local v1, "e":Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v8, Ljava/util/prefs/InvalidPreferencesFormatException;

    #@46
    invoke-direct {v8, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    #@49
    throw v8

    #@4a
    .line 346
    .end local v1    # "e":Ljavax/xml/parsers/FactoryConfigurationError;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v3    # "preferences":Lorg/w3c/dom/Element;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v8, "root"

    #@4d
    .line 345
    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    #@50
    move-result-object v8

    #@51
    .line 346
    const/4 v9, 0x0

    #@52
    .line 345
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@55
    move-result-object v5

    #@56
    check-cast v5, Lorg/w3c/dom/Element;

    #@58
    .line 347
    .local v5, "root":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    #@59
    .line 348
    .local v4, "prefsRoot":Ljava/util/prefs/Preferences;
    const-string/jumbo v8, "type"

    #@5c
    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    .line 349
    .local v6, "type":Ljava/lang/String;
    const-string/jumbo v8, "user"

    #@63
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v8

    #@67
    if-eqz v8, :cond_1

    #@69
    .line 350
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    #@6c
    move-result-object v4

    #@6d
    .line 356
    .local v4, "prefsRoot":Ljava/util/prefs/Preferences;
    :goto_0
    invoke-static {v4, v5}, Ljava/util/prefs/XMLParser;->loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    #@70
    .line 330
    return-void

    #@71
    .line 352
    .local v4, "prefsRoot":Ljava/util/prefs/Preferences;
    :cond_1
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;
    :try_end_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    #@74
    move-result-object v4

    #@75
    .local v4, "prefsRoot":Ljava/util/prefs/Preferences;
    goto :goto_0

    #@76
    .line 359
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "preferences":Lorg/w3c/dom/Element;
    .end local v4    # "prefsRoot":Ljava/util/prefs/Preferences;
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@77
    .line 360
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v8, Ljava/util/prefs/InvalidPreferencesFormatException;

    #@79
    invoke-direct {v8, v2}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    #@7c
    throw v8
.end method

.method private static loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V
    .locals 14
    .param p0, "prefs"    # Ljava/util/prefs/Preferences;
    .param p1, "node"    # Lorg/w3c/dom/Element;

    #@0
    .prologue
    .line 366
    const-string/jumbo v12, "node"

    #@3
    invoke-static {p1, v12}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    #@6
    move-result-object v3

    #@7
    .line 367
    .local v3, "children":Lorg/w3c/dom/NodeList;
    const-string/jumbo v12, "map/entry"

    #@a
    invoke-static {p1, v12}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    #@d
    move-result-object v4

    #@e
    .line 368
    .local v4, "entries":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    #@11
    move-result v2

    #@12
    .line 369
    .local v2, "childNumber":I
    new-array v10, v2, [Ljava/util/prefs/Preferences;

    #@14
    .line 370
    .local v10, "prefChildren":[Ljava/util/prefs/Preferences;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    #@17
    move-result v6

    #@18
    .local v6, "entryNumber":I
    move-object v12, p0

    #@19
    .line 371
    check-cast v12, Ljava/util/prefs/AbstractPreferences;

    #@1b
    iget-object v13, v12, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@1d
    monitor-enter v13

    #@1e
    .line 372
    :try_start_0
    move-object v0, p0

    #@1f
    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    #@21
    move-object v12, v0

    #@22
    invoke-virtual {v12}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v12

    #@26
    if-eqz v12, :cond_0

    #@28
    monitor-exit v13

    #@29
    .line 373
    return-void

    #@2a
    .line 375
    :cond_0
    const/4 v7, 0x0

    #@2b
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    #@2d
    .line 376
    :try_start_1
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Lorg/w3c/dom/Element;

    #@33
    .line 377
    .local v5, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v12, "key"

    #@36
    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    .line 378
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v12, "value"

    #@3d
    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v11

    #@41
    .line 379
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {p0, v8, v11}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@44
    .line 375
    add-int/lit8 v7, v7, 0x1

    #@46
    goto :goto_0

    #@47
    .line 382
    .end local v5    # "entry":Lorg/w3c/dom/Element;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    #@48
    :goto_1
    if-ge v7, v2, :cond_2

    #@4a
    .line 383
    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Lorg/w3c/dom/Element;

    #@50
    .line 384
    .local v1, "child":Lorg/w3c/dom/Element;
    const-string/jumbo v12, "name"

    #@53
    invoke-interface {v1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@56
    move-result-object v9

    #@57
    .line 385
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    #@5a
    move-result-object v12

    #@5b
    aput-object v12, v10, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    .line 382
    add-int/lit8 v7, v7, 0x1

    #@5f
    goto :goto_1

    #@60
    .end local v1    # "child":Lorg/w3c/dom/Element;
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    monitor-exit v13

    #@61
    .line 390
    const/4 v7, 0x0

    #@62
    :goto_2
    if-ge v7, v2, :cond_3

    #@64
    .line 391
    aget-object v13, v10, v7

    #@66
    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@69
    move-result-object v12

    #@6a
    check-cast v12, Lorg/w3c/dom/Element;

    #@6c
    invoke-static {v13, v12}, Ljava/util/prefs/XMLParser;->loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    #@6f
    .line 390
    add-int/lit8 v7, v7, 0x1

    #@71
    goto :goto_2

    #@72
    .line 371
    .end local v7    # "i":I
    :catchall_0
    move-exception v12

    #@73
    monitor-exit v13

    #@74
    throw v12

    #@75
    .line 364
    .restart local v7    # "i":I
    :cond_3
    return-void
.end method

.method static readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;
    .locals 14
    .param p0, "xmlFile"    # Ljava/io/File;

    #@0
    .prologue
    .line 445
    new-instance v10, Ljava/util/Properties;

    #@2
    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    #@5
    .line 446
    .local v10, "result":Ljava/util/Properties;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@8
    move-result v12

    #@9
    if-nez v12, :cond_0

    #@b
    .line 447
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@e
    move-result-object v12

    #@f
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    #@12
    .line 470
    :goto_0
    return-object v10

    #@13
    .line 448
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    #@16
    move-result v12

    #@17
    if-eqz v12, :cond_2

    #@19
    .line 449
    const/4 v8, 0x0

    #@1a
    .line 451
    .local v8, "reader":Ljava/io/Reader;
    :try_start_0
    new-instance v9, Ljava/io/InputStreamReader;

    #@1c
    new-instance v12, Ljava/io/FileInputStream;

    #@1e
    invoke-direct {v12, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@21
    const-string/jumbo v13, "UTF-8"

    #@24
    invoke-direct {v9, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 452
    .end local v8    # "reader":Ljava/io/Reader;
    .local v9, "reader":Ljava/io/Reader;
    :try_start_1
    sget-object v12, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    #@29
    new-instance v13, Lorg/xml/sax/InputSource;

    #@2b
    invoke-direct {v13, v9}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    #@2e
    invoke-virtual {v12, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    #@31
    move-result-object v0

    #@32
    .line 453
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@35
    move-result-object v12

    #@36
    const-string/jumbo v13, "entry"

    #@39
    invoke-static {v12, v13}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    #@3c
    move-result-object v1

    #@3d
    .line 454
    .local v1, "entries":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    #@40
    move-result v6

    #@41
    .line 455
    .local v6, "length":I
    const/4 v2, 0x0

    #@42
    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_1

    #@44
    .line 456
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@47
    move-result-object v7

    #@48
    check-cast v7, Lorg/w3c/dom/Element;

    #@4a
    .line 457
    .local v7, "node":Lorg/w3c/dom/Element;
    const-string/jumbo v12, "key"

    #@4d
    invoke-interface {v7, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    .line 458
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v12, "value"

    #@54
    invoke-interface {v7, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v11

    #@58
    .line 459
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v10, v5, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5b
    .line 455
    add-int/lit8 v2, v2, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 464
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "node":Lorg/w3c/dom/Element;
    .end local v11    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@61
    goto :goto_0

    #@62
    .line 462
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "entries":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v6    # "length":I
    .end local v9    # "reader":Ljava/io/Reader;
    .restart local v8    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v4

    #@63
    .line 464
    .end local v8    # "reader":Ljava/io/Reader;
    .local v4, "ignored":Lorg/xml/sax/SAXException;
    :goto_2
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@66
    goto :goto_0

    #@67
    .line 461
    .end local v4    # "ignored":Lorg/xml/sax/SAXException;
    .restart local v8    # "reader":Ljava/io/Reader;
    :catch_1
    move-exception v3

    #@68
    .line 464
    .end local v8    # "reader":Ljava/io/Reader;
    .local v3, "ignored":Ljava/io/IOException;
    :goto_3
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6b
    goto :goto_0

    #@6c
    .line 463
    .end local v3    # "ignored":Ljava/io/IOException;
    .restart local v8    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v12

    #@6d
    .line 464
    .end local v8    # "reader":Ljava/io/Reader;
    :goto_4
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@70
    .line 463
    throw v12

    #@71
    .line 468
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@74
    goto :goto_0

    #@75
    .line 463
    .restart local v9    # "reader":Ljava/io/Reader;
    :catchall_1
    move-exception v12

    #@76
    move-object v8, v9

    #@77
    .end local v9    # "reader":Ljava/io/Reader;
    .local v8, "reader":Ljava/io/Reader;
    goto :goto_4

    #@78
    .line 461
    .end local v8    # "reader":Ljava/io/Reader;
    .restart local v9    # "reader":Ljava/io/Reader;
    :catch_2
    move-exception v3

    #@79
    .restart local v3    # "ignored":Ljava/io/IOException;
    move-object v8, v9

    #@7a
    .end local v9    # "reader":Ljava/io/Reader;
    .restart local v8    # "reader":Ljava/io/Reader;
    goto :goto_3

    #@7b
    .line 462
    .end local v3    # "ignored":Ljava/io/IOException;
    .end local v8    # "reader":Ljava/io/Reader;
    .restart local v9    # "reader":Ljava/io/Reader;
    :catch_3
    move-exception v4

    #@7c
    .restart local v4    # "ignored":Lorg/xml/sax/SAXException;
    move-object v8, v9

    #@7d
    .end local v9    # "reader":Ljava/io/Reader;
    .restart local v8    # "reader":Ljava/io/Reader;
    goto :goto_2
.end method

.method private static selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 13
    .param p0, "documentElement"    # Lorg/w3c/dom/Element;
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 399
    const/4 v7, 0x0

    #@3
    .line 401
    .local v7, "result":Lorg/w3c/dom/NodeList;
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 403
    .local v2, "input":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const-string/jumbo v9, "/"

    #@b
    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    .line 405
    .local v6, "path":[Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@12
    move-result-object v0

    #@13
    .line 407
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    aget-object v9, v6, v11

    #@15
    const-string/jumbo v10, "entry"

    #@18
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v9

    #@1c
    if-nez v9, :cond_0

    #@1e
    aget-object v9, v6, v11

    #@20
    const-string/jumbo v10, "node"

    #@23
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v9

    #@27
    if-eqz v9, :cond_2

    #@29
    .line 408
    :cond_0
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    #@2d
    move-result v9

    #@2e
    if-ge v1, v9, :cond_5

    #@30
    .line 409
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@33
    move-result-object v4

    #@34
    .line 410
    .local v4, "next":Ljava/lang/Object;
    instance-of v9, v4, Lorg/w3c/dom/Element;

    #@36
    if-eqz v9, :cond_1

    #@38
    move-object v9, v4

    #@39
    .line 411
    check-cast v9, Lorg/w3c/dom/Element;

    #@3b
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    aget-object v10, v6, v11

    #@41
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v9

    #@45
    if-eqz v9, :cond_1

    #@47
    .line 412
    check-cast v4, Lorg/w3c/dom/Node;

    #@49
    .end local v4    # "next":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 408
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 416
    .end local v1    # "i":I
    :cond_2
    aget-object v9, v6, v11

    #@51
    const-string/jumbo v10, "map"

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v9

    #@58
    if-eqz v9, :cond_5

    #@5a
    aget-object v9, v6, v12

    #@5c
    const-string/jumbo v10, "entry"

    #@5f
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v9

    #@63
    if-eqz v9, :cond_5

    #@65
    .line 417
    const/4 v1, 0x0

    #@66
    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    #@69
    move-result v9

    #@6a
    if-ge v1, v9, :cond_5

    #@6c
    .line 418
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@6f
    move-result-object v4

    #@70
    .line 419
    .restart local v4    # "next":Ljava/lang/Object;
    instance-of v9, v4, Lorg/w3c/dom/Element;

    #@72
    if-eqz v9, :cond_4

    #@74
    move-object v9, v4

    #@75
    .line 420
    check-cast v9, Lorg/w3c/dom/Element;

    #@77
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    #@7a
    move-result-object v9

    #@7b
    aget-object v10, v6, v11

    #@7d
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v9

    #@81
    if-eqz v9, :cond_4

    #@83
    .line 421
    check-cast v4, Lorg/w3c/dom/Node;

    #@85
    .end local v4    # "next":Ljava/lang/Object;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@88
    move-result-object v5

    #@89
    .line 422
    .local v5, "nextChildNodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    #@8a
    .local v3, "j":I
    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    #@8d
    move-result v9

    #@8e
    if-ge v3, v9, :cond_4

    #@90
    .line 423
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@93
    move-result-object v8

    #@94
    .line 424
    .local v8, "subnext":Ljava/lang/Object;
    instance-of v9, v8, Lorg/w3c/dom/Element;

    #@96
    if-eqz v9, :cond_3

    #@98
    move-object v9, v8

    #@99
    .line 425
    check-cast v9, Lorg/w3c/dom/Element;

    #@9b
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    #@9e
    move-result-object v9

    #@9f
    aget-object v10, v6, v12

    #@a1
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v9

    #@a5
    if-eqz v9, :cond_3

    #@a7
    .line 426
    check-cast v8, Lorg/w3c/dom/Node;

    #@a9
    .end local v8    # "subnext":Ljava/lang/Object;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ac
    .line 422
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@ae
    goto :goto_2

    #@af
    .line 417
    .end local v3    # "j":I
    .end local v5    # "nextChildNodes":Lorg/w3c/dom/NodeList;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@b1
    goto :goto_1

    #@b2
    .line 435
    .end local v1    # "i":I
    :cond_5
    new-instance v7, Ljava/util/prefs/NodeSet;

    #@b4
    .end local v7    # "result":Lorg/w3c/dom/NodeList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@b7
    move-result-object v9

    #@b8
    invoke-direct {v7, v9}, Ljava/util/prefs/NodeSet;-><init>(Ljava/util/Iterator;)V

    #@bb
    .line 437
    .local v7, "result":Lorg/w3c/dom/NodeList;
    return-object v7
.end method

.method static writeXmlPreferences(Ljava/io/File;Ljava/util/Properties;)V
    .locals 11
    .param p0, "xmlFile"    # Ljava/io/File;
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@3
    move-result-object v5

    #@4
    .line 478
    .local v5, "parent":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    #@6
    new-instance v8, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v9, "prefs-"

    #@e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v8

    #@12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@15
    move-result-object v9

    #@16
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v8

    #@1a
    const-string/jumbo v9, ".xml.tmp"

    #@1d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    .line 480
    .local v6, "temporaryForWriting":Ljava/io/File;
    const/4 v3, 0x0

    #@29
    .line 482
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    #@2b
    new-instance v8, Ljava/io/OutputStreamWriter;

    #@2d
    .line 483
    new-instance v9, Ljava/io/FileOutputStream;

    #@2f
    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@32
    const-string/jumbo v10, "UTF-8"

    #@35
    .line 482
    invoke-direct {v8, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@38
    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3b
    .line 484
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    const-string/jumbo v8, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    #@3e
    .end local v3    # "out":Ljava/io/BufferedWriter;
    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@41
    .line 485
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    #@44
    .line 486
    const-string/jumbo v8, "<!DOCTYPE map SYSTEM \'http://java.sun.com/dtd/preferences.dtd\'>"

    #@47
    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@4a
    .line 487
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    #@4d
    .line 488
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    #@54
    move-result v9

    #@55
    new-array v9, v9, [Ljava/lang/String;

    #@57
    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5a
    move-result-object v1

    #@5b
    check-cast v1, [Ljava/lang/String;

    #@5d
    .line 489
    .local v1, "keys":[Ljava/lang/String;
    array-length v2, v1

    #@5e
    .line 490
    .local v2, "length":I
    new-array v7, v2, [Ljava/lang/String;

    #@60
    .line 491
    .local v7, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    #@61
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@63
    .line 492
    aget-object v8, v1, v0

    #@65
    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    aput-object v8, v7, v0

    #@6b
    .line 491
    add-int/lit8 v0, v0, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 494
    :cond_0
    invoke-static {v1, v7, v4}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    #@71
    .line 495
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    #@74
    .line 496
    invoke-virtual {v6, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@77
    move-result v8

    #@78
    if-nez v8, :cond_1

    #@7a
    .line 497
    new-instance v8, Ljava/io/IOException;

    #@7c
    new-instance v9, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v10, "Failed to write preferences to "

    #@84
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v9

    #@8c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v9

    #@90
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@93
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@94
    .line 499
    .end local v0    # "i":I
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "length":I
    .end local v7    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v8

    #@95
    move-object v3, v4

    #@96
    .line 500
    .end local v4    # "out":Ljava/io/BufferedWriter;
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@99
    .line 501
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    #@9c
    .line 499
    throw v8

    #@9d
    .line 500
    .restart local v0    # "i":I
    .restart local v1    # "keys":[Ljava/lang/String;
    .restart local v2    # "length":I
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a0
    .line 501
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    #@a3
    .line 476
    return-void

    #@a4
    .line 499
    .end local v0    # "i":I
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "length":I
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .end local v7    # "values":[Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v8

    #@a5
    goto :goto_1
.end method
