.class final Ljava/net/HttpCookie$5;
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
    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1060
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3
    move-result-wide v2

    #@4
    .line 1061
    .local v2, "maxage":J
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getMaxAge()J

    #@7
    move-result-wide v4

    #@8
    const-wide/16 v6, -0x1

    #@a
    cmp-long v1, v4, v6

    #@c
    if-nez v1, :cond_0

    #@e
    invoke-virtual {p1, v2, v3}, Ljava/net/HttpCookie;->setMaxAge(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1058
    :cond_0
    return-void

    #@12
    .line 1062
    .end local v2    # "maxage":J
    :catch_0
    move-exception v0

    #@13
    .line 1063
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v4, "Illegal cookie max-age attribute"

    #@18
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1
.end method
