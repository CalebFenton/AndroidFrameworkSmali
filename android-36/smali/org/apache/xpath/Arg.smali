.class public Lorg/apache/xpath/Arg;
.super Ljava/lang/Object;
.source "Arg.java"


# instance fields
.field private greylist m_expression:Ljava/lang/String;

.field private greylist m_isFromWithParam:Z

.field private greylist m_isVisible:Z

.field private greylist m_qname:Lorg/apache/xml/utils/QName;

.field private greylist m_val:Lorg/apache/xpath/objects/XObject;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lorg/apache/xml/utils/QName;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    .line 185
    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/utils/QName;Ljava/lang/String;Z)V
    .registers 4

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    .line 202
    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    .line 203
    iput-boolean p3, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    xor-int/lit8 p1, p3, 0x1

    .line 204
    iput-boolean p1, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V
    .registers 3

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    .line 218
    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    const/4 p1, 0x1

    .line 219
    iput-boolean p1, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    const/4 p1, 0x0

    .line 220
    iput-boolean p1, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    const/4 p1, 0x0

    .line 221
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V
    .registers 4

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    .line 253
    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    .line 254
    iput-boolean p3, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    xor-int/lit8 p1, p3, 0x1

    .line 255
    iput-boolean p1, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist detach()V
    .registers 3

    .line 96
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 99
    iget-object p0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    :cond_d
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 234
    instance-of v0, p1, Lorg/apache/xml/utils/QName;

    if-eqz v0, :cond_b

    .line 236
    iget-object p0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 239
    :cond_b
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist getExpression()Ljava/lang/String;
    .registers 1

    .line 119
    iget-object p0, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    return-object p0
.end method

.method public final greylist getQName()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 49
    iget-object p0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public final greylist getVal()Lorg/apache/xpath/objects/XObject;
    .registers 1

    .line 76
    iget-object p0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    return-object p0
.end method

.method public greylist isFromWithParam()Z
    .registers 1

    .line 146
    iget-boolean p0, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    return p0
.end method

.method public greylist isVisible()Z
    .registers 1

    .line 163
    iget-boolean p0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    return p0
.end method

.method public greylist setExpression(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    return-void
.end method

.method public greylist setIsVisible(Z)V
    .registers 2

    .line 171
    iput-boolean p1, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    return-void
.end method

.method public final greylist setQName(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public final greylist setVal(Lorg/apache/xpath/objects/XObject;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    return-void
.end method
