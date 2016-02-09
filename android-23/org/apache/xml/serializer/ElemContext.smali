.class final Lorg/apache/xml/serializer/ElemContext;
.super Ljava/lang/Object;
.source "ElemContext.java"


# instance fields
.field final m_currentElemDepth:I

.field m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

.field m_elementLocalName:Ljava/lang/String;

.field m_elementName:Ljava/lang/String;

.field m_elementURI:Ljava/lang/String;

.field m_isCdataSection:Z

.field m_isRaw:Z

.field private m_next:Lorg/apache/xml/serializer/ElemContext;

.field final m_prev:Lorg/apache/xml/serializer/ElemContext;

.field m_startTagOpen:Z


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 63
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    #@7
    .line 68
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    #@9
    .line 73
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@b
    .line 81
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@d
    .line 92
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    #@f
    .line 115
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@11
    .line 124
    iput-object p0, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    #@13
    .line 126
    iput v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@15
    .line 121
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/serializer/ElemContext;)V
    .locals 2
    .param p1, "previous"    # Lorg/apache/xml/serializer/ElemContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 63
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    #@7
    .line 68
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    #@9
    .line 73
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@b
    .line 81
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@d
    .line 92
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    #@f
    .line 115
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@11
    .line 141
    iput-object p1, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    #@13
    .line 142
    iget v0, p1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    iput v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@19
    .line 139
    return-void
.end method


# virtual methods
.method final pop()Lorg/apache/xml/serializer/ElemContext;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    #@2
    return-object v0
.end method

.method final push()Lorg/apache/xml/serializer/ElemContext;
    .locals 2

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    #@2
    .line 168
    .local v0, "frame":Lorg/apache/xml/serializer/ElemContext;
    if-nez v0, :cond_0

    #@4
    .line 173
    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    #@6
    .end local v0    # "frame":Lorg/apache/xml/serializer/ElemContext;
    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ElemContext;-><init>(Lorg/apache/xml/serializer/ElemContext;)V

    #@9
    .line 174
    .restart local v0    # "frame":Lorg/apache/xml/serializer/ElemContext;
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    #@b
    .line 182
    :cond_0
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@e
    .line 183
    return-object v0
.end method

.method final push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    #@2
    .line 202
    .local v0, "frame":Lorg/apache/xml/serializer/ElemContext;
    if-nez v0, :cond_0

    #@4
    .line 207
    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    #@6
    .end local v0    # "frame":Lorg/apache/xml/serializer/ElemContext;
    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ElemContext;-><init>(Lorg/apache/xml/serializer/ElemContext;)V

    #@9
    .line 208
    .restart local v0    # "frame":Lorg/apache/xml/serializer/ElemContext;
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    #@b
    .line 212
    :cond_0
    iput-object p3, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@d
    .line 213
    iput-object p2, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    #@f
    .line 214
    iput-object p1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@11
    .line 215
    const/4 v1, 0x0

    #@12
    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    #@14
    .line 216
    const/4 v1, 0x1

    #@15
    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@17
    .line 220
    return-object v0
.end method
