.class public Lorg/xml/sax/helpers/LocatorImpl;
.super Ljava/lang/Object;
.source "LocatorImpl.java"

# interfaces
.implements Lorg/xml/sax/Locator;


# instance fields
.field private columnNumber:I

.field private lineNumber:I

.field private publicId:Ljava/lang/String;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    #@a
    .line 80
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    #@11
    .line 81
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    #@14
    move-result v0

    #@15
    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    #@18
    .line 82
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    #@1b
    move-result v0

    #@1c
    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    #@1f
    .line 77
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->columnNumber:I

    #@2
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->lineNumber:I

    #@2
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->publicId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->systemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setColumnNumber(I)V
    .locals 0
    .param p1, "columnNumber"    # I

    #@0
    .prologue
    .line 198
    iput p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->columnNumber:I

    #@2
    .line 196
    return-void
.end method

.method public setLineNumber(I)V
    .locals 0
    .param p1, "lineNumber"    # I

    #@0
    .prologue
    .line 186
    iput p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->lineNumber:I

    #@2
    .line 184
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    iput-object p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->publicId:Ljava/lang/String;

    #@2
    .line 159
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    iput-object p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->systemId:Ljava/lang/String;

    #@2
    .line 172
    return-void
.end method
