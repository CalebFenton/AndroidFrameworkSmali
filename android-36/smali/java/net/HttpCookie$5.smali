.class Ljava/net/HttpCookie$5;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/net/HttpCookie$CookieAttributeAssignor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/HttpCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .line 942
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 943
    .local v0, "maxage":J
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    .line 944
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpCookie;->setMaxAge(J)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_11} :catch_13

    .line 948
    .end local v0    # "maxage":J
    :cond_11
    nop

    .line 949
    return-void

    .line 945
    :catch_13
    move-exception v0

    .line 946
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal cookie max-age attribute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
