.class Ljava/net/HttpCookie$10;
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

    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .line 986
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 987
    .local v0, "version":I
    invoke-virtual {p1, v0}, Ljava/net/HttpCookie;->setVersion(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 990
    .end local v0    # "version":I
    goto :goto_9

    .line 988
    :catch_8
    move-exception v0

    .line 991
    :goto_9
    return-void
.end method
