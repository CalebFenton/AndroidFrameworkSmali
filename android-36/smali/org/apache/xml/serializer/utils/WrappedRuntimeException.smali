.class public final Lorg/apache/xml/serializer/utils/WrappedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "WrappedRuntimeException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x6317d91de98a8119L


# instance fields
.field private greylist m_exception:Ljava/lang/Exception;


# direct methods
.method public constructor greylist <init>(Ljava/lang/Exception;)V
    .registers 3

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public greylist getException()Ljava/lang/Exception;
    .registers 1

    .line 79
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    return-object p0
.end method
