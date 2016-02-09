.class public Lorg/apache/xpath/objects/XBoolean;
.super Lorg/apache/xpath/objects/XObject;
.source "XBoolean.java"


# static fields
.field public static final S_FALSE:Lorg/apache/xpath/objects/XBoolean;

.field public static final S_TRUE:Lorg/apache/xpath/objects/XBoolean;

.field static final serialVersionUID:J = -0x29258ee87c86ba91L


# instance fields
.field private final m_val:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 36
    new-instance v0, Lorg/apache/xpath/objects/XBooleanStatic;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XBooleanStatic;-><init>(Z)V

    #@6
    sput-object v0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    #@8
    .line 42
    new-instance v0, Lorg/apache/xpath/objects/XBooleanStatic;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XBooleanStatic;-><init>(Z)V

    #@e
    sput-object v0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@10
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "b"    # Ljava/lang/Boolean;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    #@3
    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@6
    move-result v0

    #@7
    iput-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    #@9
    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XBoolean;->setObject(Ljava/lang/Object;)V

    #@c
    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    #@3
    .line 58
    iput-boolean p1, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    #@5
    .line 53
    return-void
.end method


# virtual methods
.method public bool()Z
    .locals 1

    #@0
    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    #@2
    return v0
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 3
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    .line 155
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x4

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 156
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 160
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    #@e
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    if-ne v1, v2, :cond_1

    #@14
    const/4 v1, 0x1

    #@15
    :goto_0
    return v1

    #@16
    :cond_1
    const/4 v1, 0x0

    #@17
    goto :goto_0

    #@18
    .line 163
    :catch_0
    move-exception v0

    #@19
    .line 164
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@1b
    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@1e
    throw v1
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    const-string/jumbo v0, "#BOOLEAN"

    #@3
    return-object v0
.end method

.method public num()D
    .locals 2

    #@0
    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    const-wide/16 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public object()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_obj:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 136
    new-instance v0, Ljava/lang/Boolean;

    #@6
    iget-boolean v1, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    #@8
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@b
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XBoolean;->setObject(Ljava/lang/Object;)V

    #@e
    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_obj:Ljava/lang/Object;

    #@10
    return-object v0
.end method

.method public str()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "true"

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    const-string/jumbo v0, "false"

    #@b
    goto :goto_0
.end method
