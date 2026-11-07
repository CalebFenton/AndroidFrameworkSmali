.class final Lorg/apache/xml/serializer/ElemContext;
.super Ljava/lang/Object;
.source "ElemContext.java"


# instance fields
.field final greylist m_currentElemDepth:I

.field greylist m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

.field greylist m_elementLocalName:Ljava/lang/String;

.field greylist m_elementName:Ljava/lang/String;

.field greylist m_elementURI:Ljava/lang/String;

.field greylist m_isCdataSection:Z

.field greylist m_isRaw:Z

.field private greylist m_next:Lorg/apache/xml/serializer/ElemContext;

.field final greylist m_prev:Lorg/apache/xml/serializer/ElemContext;

.field greylist m_startTagOpen:Z


# direct methods
.method constructor greylist <init>()V
    .registers 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    .line 68
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 124
    iput-object p0, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    .line 126
    iput v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    return-void
.end method

.method private constructor greylist <init>(Lorg/apache/xml/serializer/ElemContext;)V
    .registers 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    .line 68
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 141
    iput-object p1, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    .line 142
    iget p1, p1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    return-void
.end method


# virtual methods
.method final greylist pop()Lorg/apache/xml/serializer/ElemContext;
    .registers 1

    .line 155
    iget-object p0, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    return-object p0
.end method

.method final greylist push()Lorg/apache/xml/serializer/ElemContext;
    .registers 2

    .line 167
    iget-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    if-nez v0, :cond_b

    .line 173
    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ElemContext;-><init>(Lorg/apache/xml/serializer/ElemContext;)V

    .line 174
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    :cond_b
    const/4 p0, 0x1

    .line 182
    iput-boolean p0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    return-object v0
.end method

.method final greylist push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;
    .registers 5

    .line 201
    iget-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    if-nez v0, :cond_b

    .line 207
    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ElemContext;-><init>(Lorg/apache/xml/serializer/ElemContext;)V

    .line 208
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    .line 212
    :cond_b
    iput-object p3, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 213
    iput-object p2, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 214
    iput-object p1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    const/4 p0, 0x0

    .line 215
    iput-boolean p0, v0, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    const/4 p0, 0x1

    .line 216
    iput-boolean p0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    return-object v0
.end method
