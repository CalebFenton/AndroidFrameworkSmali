.class public Lorg/xml/sax/SAXException;
.super Ljava/lang/Exception;
.source "SAXException.java"


# instance fields
.field private greylist exception:Ljava/lang/Exception;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 48
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 72
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 74
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 59
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 89
    iput-object p2, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist test-api getException()Ljava/lang/Exception;
    .registers 2

    .line 121
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 104
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_11

    iget-object v1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_11

    .line 107
    iget-object v1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    :cond_11
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_b

    .line 133
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_b
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
