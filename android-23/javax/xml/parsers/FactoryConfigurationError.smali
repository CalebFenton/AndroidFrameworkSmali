.class public Ljavax/xml/parsers/FactoryConfigurationError;
.super Ljava/lang/Error;
.source "FactoryConfigurationError.java"


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@6
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@7
    .line 71
    iput-object p1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@9
    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@3
    .line 85
    iput-object p1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@5
    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@3
    .line 57
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@6
    .line 55
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 100
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 102
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    iget-object v1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 103
    iget-object v1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    #@c
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 106
    :cond_0
    return-object v0
.end method
