.class public final Lcom/android/okhttp/internal/http/RequestException;
.super Ljava/lang/Exception;
.source "RequestException.java"


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 26
    return-void
.end method


# virtual methods
.method public getCause()Ljava/io/IOException;
    .locals 1

    #@0
    .prologue
    .line 32
    invoke-super {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/io/IOException;

    #@6
    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
