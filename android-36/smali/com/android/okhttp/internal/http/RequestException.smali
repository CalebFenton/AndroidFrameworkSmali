.class public final Lcom/android/okhttp/internal/http/RequestException;
.super Ljava/lang/Exception;
.source "RequestException.java"


# direct methods
.method public constructor greylist-max-o <init>(Ljava/io/IOException;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist getCause()Ljava/io/IOException;
    .registers 1

    .line 34
    invoke-super {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method
