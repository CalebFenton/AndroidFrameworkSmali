.class public Lorg/apache/xpath/Arg;
.super Ljava/lang/Object;
.source "Arg.java"


# instance fields
.field private m_expression:Ljava/lang/String;

.field private m_isFromWithParam:Z

.field private m_isVisible:Z

.field private m_qname:Lorg/apache/xml/utils/QName;

.field private m_val:Lorg/apache/xpath/objects/XObject;


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 182
    new-instance v0, Lorg/apache/xml/utils/QName;

    #@6
    const-string/jumbo v1, ""

    #@9
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    #@c
    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    #@e
    .line 184
    iput-object v2, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    #@10
    .line 185
    iput-object v2, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    #@12
    .line 186
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    #@15
    .line 187
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    #@18
    .line 179
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/QName;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;
    .param p2, "expression"    # Ljava/lang/String;
    .param p3, "isFromWithParam"    # Z

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 200
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    #@5
    .line 201
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    #@8
    .line 202
    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    #@a
    .line 203
    iput-boolean p3, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    #@c
    .line 204
    if-eqz p3, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    :goto_0
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    #@11
    .line 197
    return-void

    #@12
    .line 204
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V
    .locals 1
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;
    .param p2, "val"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 217
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    #@5
    .line 218
    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    #@7
    .line 219
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    #@a
    .line 220
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    #@d
    .line 221
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    #@10
    .line 214
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V
    .locals 1
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;
    .param p2, "val"    # Lorg/apache/xpath/objects/XObject;
    .param p3, "isFromWithParam"    # Z

    #@0
    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 252
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    #@5
    .line 253
    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    #@7
    .line 254
    iput-boolean p3, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    #@9
    .line 255
    if-eqz p3, :cond_0

    #@b
    const/4 v0, 0x0

    #@c
    :goto_0
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    #@e
    .line 256
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    #@11
    .line 249
    return-void

    #@12
    .line 255
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method


# virtual methods
.method public detach()V
    .locals 2

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 98
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    #@a
    .line 99
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    #@c
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->detach()V

    #@f
    .line 94
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 234
    instance-of v0, p1, Lorg/apache/xml/utils/QName;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 236
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    #@6
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 239
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getQName()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method

.method public final getVal()Lorg/apache/xpath/objects/XObject;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    #@2
    return-object v0
.end method

.method public isFromWithParam()Z
    .locals 1

    #@0
    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    #@2
    return v0
.end method

.method public isVisible()Z
    .locals 1

    #@0
    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    #@2
    return v0
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "expr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    #@2
    .line 129
    return-void
.end method

.method public setIsVisible(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 171
    iput-boolean p1, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    #@2
    .line 169
    return-void
.end method

.method public final setQName(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "name"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    .line 57
    return-void
.end method

.method public final setVal(Lorg/apache/xpath/objects/XObject;)V
    .locals 0
    .param p1, "val"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    .line 87
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    #@2
    .line 85
    return-void
.end method
