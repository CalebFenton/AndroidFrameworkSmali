.class public Lorg/xml/sax/ext/Locator2Impl;
.super Lorg/xml/sax/helpers/LocatorImpl;
.source "Locator2Impl.java"

# interfaces
.implements Lorg/xml/sax/ext/Locator2;


# instance fields
.field private greylist encoding:Ljava/lang/String;

.field private greylist version:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/xml/sax/Locator;)V
    .registers 4
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 54
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>(Lorg/xml/sax/Locator;)V

    .line 55
    instance-of v0, p1, Lorg/xml/sax/ext/Locator2;

    if-eqz v0, :cond_16

    .line 56
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/Locator2;

    .line 58
    .local v0, "l2":Lorg/xml/sax/ext/Locator2;
    invoke-interface {v0}, Lorg/xml/sax/ext/Locator2;->getXMLVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xml/sax/ext/Locator2Impl;->version:Ljava/lang/String;

    .line 59
    invoke-interface {v0}, Lorg/xml/sax/ext/Locator2;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xml/sax/ext/Locator2Impl;->encoding:Ljava/lang/String;

    .line 61
    .end local v0    # "l2":Lorg/xml/sax/ext/Locator2;
    :cond_16
    return-void
.end method


# virtual methods
.method public whitelist test-api getEncoding()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lorg/xml/sax/ext/Locator2Impl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getXMLVersion()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/xml/sax/ext/Locator2Impl;->version:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lorg/xml/sax/ext/Locator2Impl;->encoding:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api setXMLVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lorg/xml/sax/ext/Locator2Impl;->version:Ljava/lang/String;

    return-void
.end method
