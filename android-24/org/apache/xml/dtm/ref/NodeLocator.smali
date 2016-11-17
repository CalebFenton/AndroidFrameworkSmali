.class public Lorg/apache/xml/dtm/ref/NodeLocator;
.super Ljava/lang/Object;
.source "NodeLocator.java"

# interfaces
.implements Ljavax/xml/transform/SourceLocator;


# instance fields
.field protected m_columnNumber:I

.field protected m_lineNumber:I

.field protected m_publicId:Ljava/lang/String;

.field protected m_systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "columnNumber"    # I

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_publicId:Ljava/lang/String;

    #@5
    .line 52
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    #@7
    .line 53
    iput p3, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_lineNumber:I

    #@9
    .line 54
    iput p4, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_columnNumber:I

    #@b
    .line 49
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 95
    iget v0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_columnNumber:I

    #@2
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget v0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_lineNumber:I

    #@2
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_publicId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "file \'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 107
    const-string/jumbo v1, "\', line #"

    #@15
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 107
    iget v1, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_lineNumber:I

    #@1b
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 108
    const-string/jumbo v1, ", column #"

    #@22
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 108
    iget v1, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_columnNumber:I

    #@28
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method
