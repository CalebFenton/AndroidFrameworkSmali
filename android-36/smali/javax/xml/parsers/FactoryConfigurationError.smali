.class public Ljavax/xml/parsers/FactoryConfigurationError;
.super Ljava/lang/Error;
.source "FactoryConfigurationError.java"


# instance fields
.field private greylist-max-o exception:Ljava/lang/Exception;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 46
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 72
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 86
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist test-api getException()Ljava/lang/Exception;
    .registers 2

    .line 117
    iget-object v0, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 100
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_11

    iget-object v1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_11

    .line 103
    iget-object v1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->exception:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 106
    :cond_11
    return-object v0
.end method
