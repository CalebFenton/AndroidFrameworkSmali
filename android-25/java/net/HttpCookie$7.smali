.class final Ljava/net/HttpCookie$7;
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
    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1074
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_1

    #@6
    if-nez p3, :cond_0

    #@8
    const-string/jumbo p3, ""

    #@b
    .end local p3    # "attrValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, p3}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    #@e
    .line 1073
    :cond_1
    return-void
.end method
