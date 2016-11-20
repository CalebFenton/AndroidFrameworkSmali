.class public Lorg/apache/http/cookie/CookieIdentityComparator;
.super Ljava/lang/Object;
.source "CookieIdentityComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/http/cookie/Cookie;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3dfc6d99bbaa936cL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 56
    check-cast p1, Lorg/apache/http/cookie/Cookie;

    #@2
    .end local p1    # "c1":Ljava/lang/Object;
    check-cast p2, Lorg/apache/http/cookie/Cookie;

    #@4
    .end local p2    # "c2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/cookie/CookieIdentityComparator;->compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I
    .locals 5
    .param p1, "c1"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "c2"    # Lorg/apache/http/cookie/Cookie;

    #@0
    .prologue
    .line 57
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b
    move-result v2

    #@c
    .line 58
    .local v2, "res":I
    if-nez v2, :cond_2

    #@e
    .line 60
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 61
    .local v0, "d1":Ljava/lang/String;
    if-nez v0, :cond_0

    #@14
    .line 62
    const-string/jumbo v0, ""

    #@17
    .line 64
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 65
    .local v1, "d2":Ljava/lang/String;
    if-nez v1, :cond_1

    #@1d
    .line 66
    const-string/jumbo v1, ""

    #@20
    .line 68
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@23
    move-result v2

    #@24
    .line 70
    .end local v0    # "d1":Ljava/lang/String;
    .end local v1    # "d2":Ljava/lang/String;
    :cond_2
    return v2
.end method
