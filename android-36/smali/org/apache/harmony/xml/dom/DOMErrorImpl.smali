.class public final Lorg/apache/harmony/xml/dom/DOMErrorImpl;
.super Ljava/lang/Object;
.source "DOMErrorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMError;


# static fields
.field private static final blacklist NULL_DOM_LOCATOR:Lorg/w3c/dom/DOMLocator;


# instance fields
.field private final blacklist severity:S

.field private final blacklist type:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lorg/apache/harmony/xml/dom/DOMErrorImpl$1;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/DOMErrorImpl$1;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->NULL_DOM_LOCATOR:Lorg/w3c/dom/DOMLocator;

    return-void
.end method

.method public constructor blacklist <init>(SLjava/lang/String;)V
    .registers 3
    .param p1, "severity"    # S
    .param p2, "type"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-short p1, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->severity:S

    .line 50
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->type:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist test-api getLocation()Lorg/w3c/dom/DOMLocator;
    .registers 2

    .line 74
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->NULL_DOM_LOCATOR:Lorg/w3c/dom/DOMLocator;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getRelatedData()Ljava/lang/Object;
    .registers 2

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getRelatedException()Ljava/lang/Object;
    .registers 2

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getSeverity()S
    .registers 2

    .line 54
    iget-short v0, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->severity:S

    return v0
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->type:Ljava/lang/String;

    return-object v0
.end method
