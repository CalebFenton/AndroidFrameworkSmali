.class public final Lorg/apache/xml/serializer/dom3/DOMErrorImpl;
.super Ljava/lang/Object;
.source "DOMErrorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMError;


# instance fields
.field private greylist fException:Ljava/lang/Exception;

.field private greylist fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

.field private greylist fMessage:Ljava/lang/String;

.field private greylist fRelatedData:Ljava/lang/Object;

.field private greylist fSeverity:S

.field private greylist fType:Ljava/lang/String;


# direct methods
.method constructor greylist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    return-void
.end method

.method public constructor greylist <init>(SLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    .line 74
    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    .line 75
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    .line 87
    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    .line 88
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor greylist <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V
    .registers 8

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 55
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    .line 103
    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    .line 104
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 107
    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 108
    iput-object p6, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    return-void
.end method


# virtual methods
.method public whitelist test-api getLocation()Lorg/w3c/dom/DOMLocator;
    .registers 1

    .line 137
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    return-object p0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 1

    .line 128
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getRelatedData()Ljava/lang/Object;
    .registers 1

    .line 164
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist test-api getRelatedException()Ljava/lang/Object;
    .registers 1

    .line 146
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    return-object p0
.end method

.method public whitelist test-api getSeverity()S
    .registers 1

    .line 119
    iget-short p0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    return p0
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 1

    .line 155
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    return-object p0
.end method

.method public greylist reset()V
    .registers 2

    const/4 v0, 0x1

    .line 168
    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 170
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 173
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    return-void
.end method
