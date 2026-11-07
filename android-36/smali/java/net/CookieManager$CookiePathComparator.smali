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
        "Ljava/util/Comparator<",
        "Ljava/net/HttpCookie;",
        ">;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 466
    check-cast p1, Ljava/net/HttpCookie;

    check-cast p2, Ljava/net/HttpCookie;

    invoke-virtual {p0, p1, p2}, Ljava/net/CookieManager$CookiePathComparator;->compare(Ljava/net/HttpCookie;Ljava/net/HttpCookie;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o compare(Ljava/net/HttpCookie;Ljava/net/HttpCookie;)I
    .registers 9
    .param p1, "c1"    # Ljava/net/HttpCookie;
    .param p2, "c2"    # Ljava/net/HttpCookie;

    .line 468
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return v0

    .line 469
    :cond_4
    const/4 v1, -0x1

    if-nez p1, :cond_8

    return v1

    .line 470
    :cond_8
    const/4 v2, 0x1

    if-nez p2, :cond_c

    return v2

    .line 473
    :cond_c
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    return v0

    .line 476
    :cond_1b
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/CookieManager;->-$$Nest$smnormalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "c1Path":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/CookieManager;->-$$Nest$smnormalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "c2Path":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 481
    return v1

    .line 482
    :cond_32
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 483
    return v2

    .line 485
    :cond_39
    return v0
.end method
