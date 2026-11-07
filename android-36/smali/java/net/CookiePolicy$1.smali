.class Ljava/net/CookiePolicy$1;
.super Ljava/lang/Object;
.source "CookiePolicy.java"

# interfaces
.implements Ljava/net/CookiePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/CookiePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api shouldAccept(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .line 44
    const/4 v0, 0x1

    return v0
.end method
