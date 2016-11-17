.class Ljava/net/CookieManager$CookiePathComparator;
.super Ljava/lang/Object;
.source "CookieManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/CookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CookiePathComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/net/HttpCookie;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 448
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
    .line 449
    check-cast p1, Ljava/net/HttpCookie;

    #@2
    .end local p1    # "c1":Ljava/lang/Object;
    check-cast p2, Ljava/net/HttpCookie;

    #@4
    .end local p2    # "c2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/net/CookieManager$CookiePathComparator;->compare(Ljava/net/HttpCookie;Ljava/net/HttpCookie;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/net/HttpCookie;Ljava/net/HttpCookie;)I
    .locals 7
    .param p1, "c1"    # Ljava/net/HttpCookie;
    .param p2, "c2"    # Ljava/net/HttpCookie;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, -0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 450
    if-ne p1, p2, :cond_0

    #@5
    return v4

    #@6
    .line 451
    :cond_0
    if-nez p1, :cond_1

    #@8
    return v5

    #@9
    .line 452
    :cond_1
    if-nez p2, :cond_2

    #@b
    return v6

    #@c
    .line 455
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_3

    #@1a
    return v4

    #@1b
    .line 457
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v2}, Ljava/net/CookieManager;->-wrap0(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 458
    .local v0, "c1Path":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v2}, Ljava/net/CookieManager;->-wrap0(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 461
    .local v1, "c2Path":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_4

    #@31
    .line 462
    return v5

    #@32
    .line 463
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_5

    #@38
    .line 464
    return v6

    #@39
    .line 466
    :cond_5
    return v4
.end method
