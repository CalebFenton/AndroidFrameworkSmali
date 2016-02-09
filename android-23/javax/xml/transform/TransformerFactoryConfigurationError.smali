.class public Ljavax/xml/transform/TransformerFactoryConfigurationError;
.super Ljava/lang/Error;
.source "TransformerFactoryConfigurationError.java"


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    #@3
    .line 41
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@6
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@7
    .line 68
    iput-object p1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@9
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@3
    .line 83
    iput-object p1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@5
    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@3
    .line 54
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@6
    .line 50
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 95
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 97
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    iget-object v1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 98
    iget-object v1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@c
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 101
    :cond_0
    return-object v0
.end method
