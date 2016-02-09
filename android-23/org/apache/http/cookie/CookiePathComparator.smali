.class public Lorg/apache/http/cookie/CookiePathComparator;
.super Ljava/lang/Object;
.source "CookiePathComparator.java"

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
.field private static final serialVersionUID:J = 0x68695b9a07ff953aL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private normalizePath(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;
    .locals 3
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    #@0
    .prologue
    .line 61
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 62
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 63
    const-string/jumbo v0, "/"

    #@9
    .line 65
    :cond_0
    const-string/jumbo v1, "/"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const/16 v2, 0x2f

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 68
    :cond_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 71
    check-cast p1, Lorg/apache/http/cookie/Cookie;

    #@2
    .end local p1    # "c1":Ljava/lang/Object;
    check-cast p2, Lorg/apache/http/cookie/Cookie;

    #@4
    .end local p2    # "c2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/cookie/CookiePathComparator;->compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I
    .locals 4
    .param p1, "c1"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "c2"    # Lorg/apache/http/cookie/Cookie;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 72
    invoke-direct {p0, p1}, Lorg/apache/http/cookie/CookiePathComparator;->normalizePath(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 73
    .local v0, "path1":Ljava/lang/String;
    invoke-direct {p0, p2}, Lorg/apache/http/cookie/CookiePathComparator;->normalizePath(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 74
    .local v1, "path2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 75
    return v3

    #@10
    .line 76
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 77
    const/4 v2, -0x1

    #@17
    return v2

    #@18
    .line 78
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 79
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 82
    :cond_2
    return v3
.end method
