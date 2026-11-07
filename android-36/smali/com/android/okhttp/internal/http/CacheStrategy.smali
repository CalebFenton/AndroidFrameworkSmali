.class public final Lcom/android/okhttp/internal/http/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final greylist-max-o cacheResponse:Lcom/android/okhttp/Response;

.field public final greylist-max-o networkRequest:Lcom/android/okhttp/Request;


# direct methods
.method private constructor greylist-max-o <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    .line 43
    iput-object p2, p0, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V

    return-void
.end method

.method public static greylist-max-o isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z
    .registers 5

    .line 53
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_5a

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_5a

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x133

    if-eq v0, v1, :cond_31

    const/16 v1, 0x134

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x194

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x195

    if-eq v0, v1, :cond_5a

    packed-switch v0, :pswitch_data_72

    goto :goto_59

    .line 73
    :cond_31
    :pswitch_31
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    .line 74
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5a

    .line 75
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->isPublic()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 76
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_5a

    :cond_59
    :goto_59
    return v2

    .line 87
    :cond_5a
    :goto_5a
    :pswitch_5a
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_70

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_70

    const/4 p0, 0x1

    return p0

    :cond_70
    return v2

    nop

    :pswitch_data_72
    .packed-switch 0x12c
        :pswitch_5a
        :pswitch_5a
        :pswitch_31
    .end packed-switch
.end method
