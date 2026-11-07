.class public Lorg/apache/xpath/objects/XNull;
.super Lorg/apache/xpath/objects/XNodeSet;
.source "XNull.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x5ef28b163716bc5dL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist bool()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 2

    .line 128
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getType()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getTypeString()Ljava/lang/String;
    .registers 1

    .line 61
    const-string p0, "#CLASS_NULL"

    return-object p0
.end method

.method public greylist num()D
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist rtf(Lorg/apache/xpath/XPathContext;)I
    .registers 2

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist str()Ljava/lang/String;
    .registers 1

    .line 92
    const-string p0, ""

    return-object p0
.end method
