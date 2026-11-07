.class public interface abstract Ljava/net/CookieStore;
.super Ljava/lang/Object;
.source "CookieStore.java"


# virtual methods
.method public abstract whitelist test-api add(Ljava/net/URI;Ljava/net/HttpCookie;)V
.end method

.method public abstract whitelist test-api get(Ljava/net/URI;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getCookies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getURIs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
.end method

.method public abstract whitelist test-api removeAll()Z
.end method
