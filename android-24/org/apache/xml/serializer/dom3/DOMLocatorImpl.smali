.class final Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;
.super Ljava/lang/Object;
.source "DOMLocatorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMLocator;


# instance fields
.field private final fByteOffset:I

.field private final fColumnNumber:I

.field private final fLineNumber:I

.field private final fRelatedNode:Lorg/w3c/dom/Node;

.field private final fUri:Ljava/lang/String;

.field private final fUtf16Offset:I


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 84
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    #@7
    .line 85
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    #@9
    .line 86
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    #@b
    .line 87
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    #@d
    .line 88
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    #@f
    .line 89
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    #@11
    .line 83
    return-void
.end method

.method constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .param p1, "lineNumber"    # I
    .param p2, "columnNumber"    # I
    .param p3, "utf16Offset"    # I
    .param p4, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    #@5
    .line 104
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    #@7
    .line 105
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    #@9
    .line 106
    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    #@b
    .line 109
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    #@e
    .line 110
    const/4 v0, -0x1

    #@f
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    #@11
    .line 102
    return-void
.end method

.method constructor <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1
    .param p1, "lineNumber"    # I
    .param p2, "columnNumber"    # I
    .param p3, "byteoffset"    # I
    .param p4, "relatedData"    # Lorg/w3c/dom/Node;
    .param p5, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    #@5
    .line 115
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    #@7
    .line 116
    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    #@9
    .line 117
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    #@b
    .line 118
    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    #@d
    .line 120
    const/4 v0, -0x1

    #@e
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    #@10
    .line 113
    return-void
.end method

.method constructor <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;I)V
    .locals 0
    .param p1, "lineNumber"    # I
    .param p2, "columnNumber"    # I
    .param p3, "byteoffset"    # I
    .param p4, "relatedData"    # Lorg/w3c/dom/Node;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "utf16Offset"    # I

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    #@5
    .line 125
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    #@7
    .line 126
    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    #@9
    .line 127
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    #@b
    .line 128
    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    #@d
    .line 129
    iput p6, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    #@f
    .line 123
    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "lineNumber"    # I
    .param p2, "columnNumber"    # I
    .param p3, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 93
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    #@6
    .line 94
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    #@8
    .line 95
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    #@a
    .line 97
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    #@d
    .line 98
    iput v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    #@f
    .line 99
    iput v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    #@11
    .line 92
    return-void
.end method


# virtual methods
.method public getByteOffset()I
    .locals 1

    #@0
    .prologue
    .line 168
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    #@2
    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    #@2
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    #@2
    return v0
.end method

.method public getRelatedNode()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    #@2
    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUtf16Offset()I
    .locals 1

    #@0
    .prologue
    .line 177
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    #@2
    return v0
.end method
