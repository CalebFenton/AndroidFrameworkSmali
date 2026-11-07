.class Ljava/net/HttpCookie$11;
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

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .line 997
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    .line 1003
    invoke-static {p3}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1004
    .local v0, "date":Ljava/util/Date;
    const-wide/16 v4, 0x0

    .line 1005
    .local v4, "maxAgeInSeconds":J
    if-eqz v0, :cond_25

    .line 1006
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {p1}, Ljava/net/HttpCookie;->-$$Nest$fgetwhenCreated(Ljava/net/HttpCookie;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 1008
    cmp-long v1, v4, v2

    if-nez v1, :cond_25

    .line 1009
    const-wide/16 v4, 0x0

    .line 1012
    :cond_25
    invoke-virtual {p1, v4, v5}, Ljava/net/HttpCookie;->setMaxAge(J)V

    .line 1015
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "maxAgeInSeconds":J
    :cond_28
    return-void
.end method
