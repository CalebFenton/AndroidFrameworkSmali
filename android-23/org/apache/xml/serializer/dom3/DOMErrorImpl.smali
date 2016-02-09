.class public final Lorg/apache/xml/serializer/dom3/DOMErrorImpl;
.super Ljava/lang/Object;
.source "DOMErrorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMError;


# instance fields
.field private fException:Ljava/lang/Exception;

.field private fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

.field private fMessage:Ljava/lang/String;

.field private fRelatedData:Ljava/lang/Object;

.field private fSeverity:S

.field private fType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 40
    const/4 v0, 0x1

    #@5
    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    #@7
    .line 43
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    #@9
    .line 49
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    #@b
    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@d
    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    #@10
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@12
    .line 65
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "severity"    # S
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 40
    const/4 v0, 0x1

    #@5
    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    #@7
    .line 43
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    #@9
    .line 49
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    #@b
    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@d
    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    #@10
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@12
    .line 74
    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    #@14
    .line 75
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    #@16
    .line 76
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    #@18
    .line 73
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "severity"    # S
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 40
    const/4 v0, 0x1

    #@5
    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    #@7
    .line 43
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    #@9
    .line 49
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    #@b
    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@d
    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    #@10
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@12
    .line 87
    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    #@14
    .line 88
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    #@16
    .line 89
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    #@18
    .line 90
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    #@1a
    .line 86
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V
    .locals 2
    .param p1, "severity"    # S
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;
    .param p5, "relatedData"    # Ljava/lang/Object;
    .param p6, "location"    # Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 40
    const/4 v0, 0x1

    #@5
    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    #@7
    .line 43
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    #@9
    .line 49
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    #@b
    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@d
    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    #@10
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@12
    .line 103
    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    #@14
    .line 104
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    #@16
    .line 105
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    #@18
    .line 106
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    #@1a
    .line 107
    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    #@1c
    .line 108
    iput-object p6, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@1e
    .line 102
    return-void
.end method


# virtual methods
.method public getLocation()Lorg/w3c/dom/DOMLocator;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRelatedData()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getRelatedException()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    #@2
    return-object v0
.end method

.method public getSeverity()S
    .locals 1

    #@0
    .prologue
    .line 119
    iget-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    #@2
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 168
    const/4 v0, 0x1

    #@2
    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    #@4
    .line 169
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    #@6
    .line 170
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    #@8
    .line 171
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    #@a
    .line 172
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    #@c
    .line 173
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    #@e
    .line 167
    return-void
.end method
