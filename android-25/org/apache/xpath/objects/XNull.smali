.class public Lorg/apache/xpath/objects/XNull;
.super Lorg/apache/xpath/objects/XNodeSet;
.source "XNull.java"


# static fields
.field static final serialVersionUID:J = -0x5ef28b163716bc5dL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    #@3
    .line 38
    return-void
.end method


# virtual methods
.method public bool()Z
    .locals 1

    #@0
    .prologue
    .line 82
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 2
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    .line 128
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 50
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 61
    const-string/jumbo v0, "#CLASS_NULL"

    #@3
    return-object v0
.end method

.method public num()D
    .locals 2

    #@0
    .prologue
    .line 72
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public rtf(Lorg/apache/xpath/XPathContext;)I
    .locals 1
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 106
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public str()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 92
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method
