.class final Ljava/net/HttpCookie$10;
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
    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1090
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result v1

    #@4
    .line 1091
    .local v1, "version":I
    invoke-virtual {p1, v1}, Ljava/net/HttpCookie;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1088
    .end local v1    # "version":I
    :goto_0
    return-void

    #@8
    .line 1092
    :catch_0
    move-exception v0

    #@9
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
