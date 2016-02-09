.class public final Lorg/apache/xml/serializer/utils/WrappedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "WrappedRuntimeException.java"


# static fields
.field static final serialVersionUID:J = 0x6317d91de98a8119L


# instance fields
.field private m_exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    .line 54
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    #@9
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 69
    iput-object p2, p0, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    #@5
    .line 64
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    #@2
    return-object v0
.end method
