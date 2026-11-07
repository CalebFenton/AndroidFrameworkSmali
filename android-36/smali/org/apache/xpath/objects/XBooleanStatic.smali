.class public Lorg/apache/xpath/objects/XBooleanStatic;
.super Lorg/apache/xpath/objects/XBoolean;
.source "XBooleanStatic.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x6fe99b38bcdd7431L


# instance fields
.field private final greylist m_val:Z


# direct methods
.method public constructor greylist <init>(Z)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XBoolean;-><init>(Z)V

    .line 46
    iput-boolean p1, p0, Lorg/apache/xpath/objects/XBooleanStatic;->m_val:Z

    return-void
.end method


# virtual methods
.method public greylist equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 2

    .line 62
    :try_start_0
    iget-boolean p0, p0, Lorg/apache/xpath/objects/XBooleanStatic;->m_val:Z

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p1
    :try_end_6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_6} :catch_c

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    :catch_c
    move-exception p0

    .line 66
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
