.class public Lorg/xml/sax/SAXException;
.super Ljava/lang/Exception;
.source "SAXException.java"


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    #@6
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    #@5
    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 56
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    #@6
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 87
    iput-object p2, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    #@5
    .line 84
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 102
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 104
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    iget-object v1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 105
    iget-object v1, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    #@c
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 107
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 131
    iget-object v0, p0, Lorg/xml/sax/SAXException;->exception:Ljava/lang/Exception;

    #@6
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 133
    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method
