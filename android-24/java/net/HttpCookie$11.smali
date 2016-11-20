.class final Ljava/net/HttpCookie$11;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/net/HttpCookie$CookieAttributeAssignor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/HttpCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1099
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getMaxAge()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, -0x1

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1100
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->-wrap0(Ljava/net/HttpCookie;Ljava/lang/String;)J

    #@d
    move-result-wide v0

    #@e
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpCookie;->setMaxAge(J)V

    #@11
    .line 1098
    :cond_0
    return-void
.end method
