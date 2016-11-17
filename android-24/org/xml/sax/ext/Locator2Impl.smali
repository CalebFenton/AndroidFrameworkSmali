.class public Lorg/xml/sax/ext/Locator2Impl;
.super Lorg/xml/sax/helpers/LocatorImpl;
.source "Locator2Impl.java"

# interfaces
.implements Lorg/xml/sax/ext/Locator2;


# instance fields
.field private encoding:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>(Lorg/xml/sax/Locator;)V

    #@3
    .line 51
    instance-of v1, p1, Lorg/xml/sax/ext/Locator2;

    #@5
    if-eqz v1, :cond_0

    #@7
    move-object v0, p1

    #@8
    .line 52
    check-cast v0, Lorg/xml/sax/ext/Locator2;

    #@a
    .line 54
    .local v0, "l2":Lorg/xml/sax/ext/Locator2;
    invoke-interface {v0}, Lorg/xml/sax/ext/Locator2;->getXMLVersion()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Lorg/xml/sax/ext/Locator2Impl;->version:Ljava/lang/String;

    #@10
    .line 55
    invoke-interface {v0}, Lorg/xml/sax/ext/Locator2;->getEncoding()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Lorg/xml/sax/ext/Locator2Impl;->encoding:Ljava/lang/String;

    #@16
    .line 48
    .end local v0    # "l2":Lorg/xml/sax/ext/Locator2;
    :cond_0
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lorg/xml/sax/ext/Locator2Impl;->encoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lorg/xml/sax/ext/Locator2Impl;->version:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 104
    iput-object p1, p0, Lorg/xml/sax/ext/Locator2Impl;->encoding:Ljava/lang/String;

    #@2
    .line 103
    return-void
.end method

.method public setXMLVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    iput-object p1, p0, Lorg/xml/sax/ext/Locator2Impl;->version:Ljava/lang/String;

    #@2
    .line 94
    return-void
.end method
