.class abstract Lorg/apache/harmony/xml/ExpatAttributes;
.super Ljava/lang/Object;
.source "ExpatAttributes.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# static fields
.field private static final blacklist CDATA:Ljava/lang/String; = "CDATA"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static native blacklist getIndex(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native blacklist getIndexForQName(JLjava/lang/String;)I
.end method

.method private static native blacklist getLocalName(JJI)Ljava/lang/String;
.end method

.method private static native blacklist getQName(JJI)Ljava/lang/String;
.end method

.method private static native blacklist getURI(JJI)Ljava/lang/String;
.end method

.method private static native blacklist getValue(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native blacklist getValueByIndex(JI)Ljava/lang/String;
.end method

.method private static native blacklist getValueForQName(JLjava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method protected native blacklist freeAttributes(J)V
.end method

.method public whitelist test-api getIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .line 98
    if-eqz p1, :cond_13

    .line 101
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    .line 102
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    .line 103
    const/4 v2, -0x1

    return v2

    .line 105
    :cond_e
    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndexForQName(JLjava/lang/String;)I

    move-result v2

    return v2

    .line 99
    .end local v0    # "pointer":J
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "qName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 84
    if-eqz p1, :cond_1d

    .line 87
    if-eqz p2, :cond_15

    .line 90
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    .line 91
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 92
    const/4 v2, -0x1

    return v2

    .line 94
    :cond_10
    invoke-static {v0, v1, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 88
    .end local v0    # "pointer":J
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api getLength()I
.end method

.method public whitelist test-api getLocalName(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .line 62
    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_16

    .line 64
    :cond_9
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getLocalName(JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 63
    :cond_16
    :goto_16
    const/4 v0, 0x0

    .line 62
    :goto_17
    return-object v0
.end method

.method abstract blacklist getParserPointer()J
.end method

.method public abstract blacklist getPointer()J
.end method

.method public whitelist test-api getQName(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .line 68
    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_16

    .line 70
    :cond_9
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getQName(JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 69
    :cond_16
    :goto_16
    const/4 v0, 0x0

    .line 68
    :goto_17
    return-object v0
.end method

.method public whitelist test-api getType(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 74
    if-ltz p1, :cond_c

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_c

    :cond_9
    const-string v0, "CDATA"

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public whitelist test-api getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "qName"    # Ljava/lang/String;

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    const-string v0, "CDATA"

    :goto_b
    return-object v0
.end method

.method public whitelist test-api getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 109
    if-eqz p1, :cond_18

    .line 112
    if-eqz p2, :cond_10

    .line 115
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    goto :goto_f

    :cond_d
    const-string v0, "CDATA"

    :goto_f
    return-object v0

    .line 113
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getURI(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .line 55
    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_16

    .line 58
    :cond_9
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getURI(JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 78
    if-ltz p1, :cond_12

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_12

    .line 80
    :cond_9
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getValueByIndex(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 79
    :cond_12
    :goto_12
    const/4 v0, 0x0

    .line 78
    :goto_13
    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .line 137
    if-eqz p1, :cond_13

    .line 140
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    .line 141
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    .line 142
    const/4 v2, 0x0

    return-object v2

    .line 144
    :cond_e
    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getValueForQName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 138
    .end local v0    # "pointer":J
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "qName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 123
    if-eqz p1, :cond_1d

    .line 126
    if-eqz p2, :cond_15

    .line 129
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    .line 130
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 131
    const/4 v2, 0x0

    return-object v2

    .line 133
    :cond_10
    invoke-static {v0, v1, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getValue(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 127
    .end local v0    # "pointer":J
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
