.class public Lorg/apache/xpath/objects/XBoolean;
.super Lorg/apache/xpath/objects/XObject;
.source "XBoolean.java"


# static fields
.field public static final greylist S_FALSE:Lorg/apache/xpath/objects/XBoolean;

.field public static final greylist S_TRUE:Lorg/apache/xpath/objects/XBoolean;

.field static final whitelist serialVersionUID:J = -0x29258ee87c86ba91L


# instance fields
.field private final greylist m_val:Z


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lorg/apache/xpath/objects/XBooleanStatic;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XBooleanStatic;-><init>(Z)V

    sput-object v0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    .line 42
    new-instance v0, Lorg/apache/xpath/objects/XBooleanStatic;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XBooleanStatic;-><init>(Z)V

    sput-object v0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Boolean;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor greylist <init>(Z)V
    .registers 2

    .line 56
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 58
    iput-boolean p1, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    return-void
.end method


# virtual methods
.method public greylist bool()Z
    .registers 1

    .line 114
    iget-boolean p0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    return p0
.end method

.method public greylist equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 4

    .line 155
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 156
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    return p0

    .line 160
    :cond_c
    :try_start_c
    iget-boolean p0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p1
    :try_end_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_12} :catch_18

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0

    :catch_18
    move-exception p0

    .line 164
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist getType()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist getTypeString()Ljava/lang/String;
    .registers 1

    .line 94
    const-string p0, "#BOOLEAN"

    return-object p0
.end method

.method public greylist num()D
    .registers 3

    .line 104
    iget-boolean p0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    if-eqz p0, :cond_7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_7
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist object()Ljava/lang/Object;
    .registers 3

    .line 135
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_e

    .line 136
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    .line 137
    :cond_e
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    return-object p0
.end method

.method public greylist str()Ljava/lang/String;
    .registers 1

    .line 124
    iget-boolean p0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    if-eqz p0, :cond_7

    const-string p0, "true"

    return-object p0

    :cond_7
    const-string p0, "false"

    return-object p0
.end method
