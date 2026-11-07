.class public Lorg/apache/xml/dtm/ref/NodeLocator;
.super Ljava/lang/Object;
.source "NodeLocator.java"

# interfaces
.implements Ljavax/xml/transform/SourceLocator;


# instance fields
.field protected greylist m_columnNumber:I

.field protected greylist m_lineNumber:I

.field protected greylist m_publicId:Ljava/lang/String;

.field protected greylist m_systemId:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_publicId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    .line 53
    iput p3, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_lineNumber:I

    .line 54
    iput p4, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_columnNumber:I

    return-void
.end method


# virtual methods
.method public whitelist test-api getColumnNumber()I
    .registers 1

    .line 95
    iget p0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_columnNumber:I

    return p0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 1

    .line 84
    iget p0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_lineNumber:I

    return p0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_publicId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/xml/dtm/ref/NodeLocator;->m_columnNumber:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
