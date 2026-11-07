.class final Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;
.super Ljava/lang/Object;
.source "DOMLocatorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMLocator;


# instance fields
.field private final greylist fByteOffset:I

.field private final greylist fColumnNumber:I

.field private final greylist fLineNumber:I

.field private final greylist fRelatedNode:Lorg/w3c/dom/Node;

.field private final greylist fUri:Ljava/lang/String;

.field private final greylist fUtf16Offset:I


# direct methods
.method constructor greylist <init>()V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    .line 85
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    .line 87
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 88
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    .line 89
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method constructor greylist <init>(IIILjava/lang/String;)V
    .registers 5

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    .line 104
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    .line 105
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 106
    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const/4 p1, -0x1

    .line 110
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    return-void
.end method

.method constructor greylist <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 6

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    .line 115
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    .line 116
    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    .line 117
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    .line 118
    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    const/4 p1, -0x1

    .line 120
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method constructor greylist <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;I)V
    .registers 7

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    .line 125
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    .line 126
    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    .line 127
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    .line 128
    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 129
    iput p6, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method constructor greylist <init>(IILjava/lang/String;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    .line 94
    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    .line 95
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const/4 p1, -0x1

    .line 98
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    .line 99
    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method


# virtual methods
.method public whitelist test-api getByteOffset()I
    .registers 1

    .line 168
    iget p0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    return p0
.end method

.method public whitelist test-api getColumnNumber()I
    .registers 1

    .line 146
    iget p0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    return p0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 1

    .line 138
    iget p0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    return p0
.end method

.method public whitelist test-api getRelatedNode()Lorg/w3c/dom/Node;
    .registers 1

    .line 159
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public whitelist test-api getUri()Ljava/lang/String;
    .registers 1

    .line 154
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getUtf16Offset()I
    .registers 1

    .line 177
    iget p0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    return p0
.end method
