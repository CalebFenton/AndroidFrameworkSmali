.class public final Lorg/apache/harmony/xml/dom/DOMErrorImpl;
.super Ljava/lang/Object;
.source "DOMErrorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMError;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/DOMErrorImpl$1;
    }
.end annotation


# static fields
.field private static final NULL_DOM_LOCATOR:Lorg/w3c/dom/DOMLocator;


# instance fields
.field private final severity:S

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 24
    new-instance v0, Lorg/apache/harmony/xml/dom/DOMErrorImpl$1;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/DOMErrorImpl$1;-><init>()V

    #@5
    sput-object v0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->NULL_DOM_LOCATOR:Lorg/w3c/dom/DOMLocator;

    #@7
    .line 23
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "severity"    # S
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-short p1, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->severity:S

    #@5
    .line 50
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->type:Ljava/lang/String;

    #@7
    .line 48
    return-void
.end method


# virtual methods
.method public getLocation()Lorg/w3c/dom/DOMLocator;
    .locals 1

    #@0
    .prologue
    .line 74
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->NULL_DOM_LOCATOR:Lorg/w3c/dom/DOMLocator;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRelatedData()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getRelatedException()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSeverity()S
    .locals 1

    #@0
    .prologue
    .line 54
    iget-short v0, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->severity:S

    #@2
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method
