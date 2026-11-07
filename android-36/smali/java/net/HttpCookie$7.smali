.class Ljava/net/HttpCookie$7;
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

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .line 963
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 964
    if-nez p3, :cond_b

    const-string v0, ""

    goto :goto_c

    :cond_b
    move-object v0, p3

    :goto_c
    invoke-virtual {p1, v0}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 965
    :cond_f
    return-void
.end method
