.class abstract Lorg/apache/harmony/xml/ExpatAttributes;
.super Ljava/lang/Object;
.source "ExpatAttributes.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# static fields
.field private static final CDATA:Ljava/lang/String; = "CDATA"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static native getIndex(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native getIndexForQName(JLjava/lang/String;)I
.end method

.method private static native getLocalName(JJI)Ljava/lang/String;
.end method

.method private static native getQName(JJI)Ljava/lang/String;
.end method

.method private static native getURI(JJI)Ljava/lang/String;
.end method

.method private static native getValue(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getValueByIndex(JI)Ljava/lang/String;
.end method

.method private static native getValueForQName(JLjava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method protected native freeAttributes(J)V
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    if-nez p1, :cond_0

    #@2
    .line 93
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "qName == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    #@e
    move-result-wide v0

    #@f
    .line 96
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    #@11
    cmp-long v2, v0, v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 97
    const/4 v2, -0x1

    #@16
    return v2

    #@17
    .line 99
    :cond_1
    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndexForQName(JLjava/lang/String;)I

    #@1a
    move-result v2

    #@1b
    return v2
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    if-nez p1, :cond_0

    #@2
    .line 79
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "uri == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 81
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 82
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v3, "localName == null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 84
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    #@19
    move-result-wide v0

    #@1a
    .line 85
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    #@1c
    cmp-long v2, v0, v2

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 86
    const/4 v2, -0x1

    #@21
    return v2

    #@22
    .line 88
    :cond_2
    invoke-static {v0, v1, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(JLjava/lang/String;Ljava/lang/String;)I

    #@25
    move-result v2

    #@26
    return v2
.end method

.method public abstract getLength()I
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 56
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 57
    :cond_0
    const/4 v0, 0x0

    #@9
    .line 56
    :goto_0
    return-object v0

    #@a
    .line 58
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    #@d
    move-result-wide v0

    #@e
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    #@11
    move-result-wide v2

    #@12
    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getLocalName(JJI)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    goto :goto_0
.end method

.method abstract getParserPointer()J
.end method

.method public abstract getPointer()J
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 62
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 63
    :cond_0
    const/4 v0, 0x0

    #@9
    .line 62
    :goto_0
    return-object v0

    #@a
    .line 64
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    #@d
    move-result-wide v0

    #@e
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    #@11
    move-result-wide v2

    #@12
    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getQName(JJI)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 68
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    :goto_0
    return-object v0

    #@a
    :cond_1
    const-string/jumbo v0, "CDATA"

    #@d
    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    const-string/jumbo v0, "CDATA"

    #@c
    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 103
    if-nez p1, :cond_0

    #@3
    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "uri == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 106
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v1, "localName == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 109
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    move-result v1

    #@1b
    const/4 v2, -0x1

    #@1c
    if-ne v1, v2, :cond_2

    #@1e
    :goto_0
    return-object v0

    #@1f
    :cond_2
    const-string/jumbo v0, "CDATA"

    #@22
    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 49
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 50
    :cond_0
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 52
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    #@d
    move-result-wide v0

    #@e
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    #@11
    move-result-wide v2

    #@12
    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getURI(JJI)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 72
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 73
    :cond_0
    const/4 v0, 0x0

    #@9
    .line 72
    :goto_0
    return-object v0

    #@a
    .line 74
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    #@d
    move-result-wide v0

    #@e
    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getValueByIndex(JI)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 131
    if-nez p1, :cond_0

    #@3
    .line 132
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "qName == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    #@f
    move-result-wide v0

    #@10
    .line 135
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    #@12
    cmp-long v2, v0, v2

    #@14
    if-nez v2, :cond_1

    #@16
    .line 136
    return-object v4

    #@17
    .line 138
    :cond_1
    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getValueForQName(JLjava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 117
    if-nez p1, :cond_0

    #@3
    .line 118
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "uri == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 120
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 121
    new-instance v2, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v3, "localName == null"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 123
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    #@1a
    move-result-wide v0

    #@1b
    .line 124
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    #@1d
    cmp-long v2, v0, v2

    #@1f
    if-nez v2, :cond_2

    #@21
    .line 125
    return-object v4

    #@22
    .line 127
    :cond_2
    invoke-static {v0, v1, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getValue(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    return-object v2
.end method
