.class public Lorg/apache/xml/utils/WrappedRuntimeException;
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
    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    .line 47
    iput-object p1, p0, Lorg/apache/xml/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    #@9
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 62
    iput-object p2, p0, Lorg/apache/xml/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    #@5
    .line 57
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/xml/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    #@2
    return-object v0
.end method
