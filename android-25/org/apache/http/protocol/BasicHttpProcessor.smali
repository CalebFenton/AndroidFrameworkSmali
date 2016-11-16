.class public final Lorg/apache/http/protocol/BasicHttpProcessor;
.super Ljava/lang/Object;
.source "BasicHttpProcessor.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpProcessor;
.implements Lorg/apache/http/protocol/HttpRequestInterceptorList;
.implements Lorg/apache/http/protocol/HttpResponseInterceptorList;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected requestInterceptors:Ljava/util/List;

.field protected responseInterceptors:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@6
    .line 64
    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@8
    .line 60
    return-void
.end method


# virtual methods
.method public final addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpRequestInterceptor;

    #@0
    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@3
    .line 152
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    #@3
    .line 158
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpResponseInterceptor;

    #@0
    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    #@3
    .line 205
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 211
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V

    #@3
    .line 210
    return-void
.end method

.method public addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;

    #@0
    .prologue
    .line 70
    if-nez p1, :cond_0

    #@2
    .line 71
    return-void

    #@3
    .line 73
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@e
    .line 76
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 68
    return-void
.end method

.method public addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    .locals 2
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 82
    if-gez p2, :cond_0

    #@2
    .line 83
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 85
    :cond_0
    if-nez p1, :cond_1

    #@e
    .line 86
    return-void

    #@f
    .line 89
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@11
    if-nez v0, :cond_3

    #@13
    .line 90
    if-lez p2, :cond_2

    #@15
    .line 91
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@17
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 93
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@26
    .line 95
    :cond_3
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@28
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@2b
    .line 81
    return-void
.end method

.method public addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;

    #@0
    .prologue
    .line 190
    if-nez p1, :cond_0

    #@2
    .line 191
    return-void

    #@3
    .line 193
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 194
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@e
    .line 196
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 189
    return-void
.end method

.method public addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    .locals 2
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 101
    if-gez p2, :cond_0

    #@2
    .line 102
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 104
    :cond_0
    if-nez p1, :cond_1

    #@e
    .line 105
    return-void

    #@f
    .line 108
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@11
    if-nez v0, :cond_3

    #@13
    .line 109
    if-lez p2, :cond_2

    #@15
    .line 110
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@17
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 112
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@26
    .line 114
    :cond_3
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@28
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@2b
    .line 100
    return-void
.end method

.method public clearInterceptors()V
    .locals 0

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    #@3
    .line 283
    invoke-virtual {p0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    #@6
    .line 281
    return-void
.end method

.method public clearRequestInterceptors()V
    .locals 1

    #@0
    .prologue
    .line 183
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@3
    .line 182
    return-void
.end method

.method public clearResponseInterceptors()V
    .locals 1

    #@0
    .prologue
    .line 236
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@3
    .line 235
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 337
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    #@6
    .line 338
    .local v0, "clone":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V

    #@9
    .line 339
    return-object v0
.end method

.method public copy()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    #@0
    .prologue
    .line 331
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    #@2
    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    #@5
    .line 332
    .local v0, "clone":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V

    #@8
    .line 333
    return-object v0
.end method

.method protected copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V
    .locals 2
    .param p1, "target"    # Lorg/apache/http/protocol/BasicHttpProcessor;

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 317
    new-instance v0, Ljava/util/ArrayList;

    #@6
    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    .line 316
    iput-object v0, p1, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@d
    .line 319
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 321
    new-instance v0, Ljava/util/ArrayList;

    #@13
    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@18
    .line 320
    iput-object v0, p1, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@1a
    .line 314
    :cond_1
    return-void
.end method

.method public getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 173
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 174
    if-gez p1, :cond_1

    #@7
    .line 175
    :cond_0
    return-object v1

    #@8
    .line 174
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@a
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@d
    move-result v0

    #@e
    if-ge p1, v0, :cond_0

    #@10
    .line 177
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@12
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lorg/apache/http/HttpRequestInterceptor;

    #@18
    return-object v0
.end method

.method public getRequestInterceptorCount()I
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 166
    const/4 v0, 0x0

    #@5
    .line 165
    :goto_0
    return v0

    #@6
    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 226
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 227
    if-gez p1, :cond_1

    #@7
    .line 228
    :cond_0
    return-object v1

    #@8
    .line 227
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@a
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@d
    move-result v0

    #@e
    if-ge p1, v0, :cond_0

    #@10
    .line 230
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@12
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lorg/apache/http/HttpResponseInterceptor;

    #@18
    return-object v0
.end method

.method public getResponseInterceptorCount()I
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 219
    const/4 v0, 0x0

    #@5
    .line 218
    :goto_0
    return v0

    #@6
    .line 219
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    .line 291
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 292
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    if-ge v0, v2, :cond_0

    #@d
    .line 294
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@f
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lorg/apache/http/HttpRequestInterceptor;

    #@15
    .line 295
    .local v1, "interceptor":Lorg/apache/http/HttpRequestInterceptor;
    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpRequestInterceptor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    #@18
    .line 292
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 290
    .end local v0    # "i":I
    .end local v1    # "interceptor":Lorg/apache/http/HttpRequestInterceptor;
    :cond_0
    return-void
.end method

.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    .line 305
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 306
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    if-ge v0, v2, :cond_0

    #@d
    .line 308
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@f
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lorg/apache/http/HttpResponseInterceptor;

    #@15
    .line 309
    .local v1, "interceptor":Lorg/apache/http/HttpResponseInterceptor;
    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpResponseInterceptor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    #@18
    .line 306
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 304
    .end local v0    # "i":I
    .end local v1    # "interceptor":Lorg/apache/http/HttpResponseInterceptor;
    :cond_0
    return-void
.end method

.method public removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 120
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 121
    return-void

    #@5
    .line 123
    :cond_0
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 124
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    .line 123
    if-eqz v2, :cond_2

    #@11
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    .line 126
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@22
    goto :goto_0

    #@23
    .line 119
    .end local v1    # "request":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 134
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 135
    return-void

    #@5
    .line 137
    :cond_0
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 138
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    .line 137
    if-eqz v2, :cond_2

    #@11
    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    .line 140
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@22
    goto :goto_0

    #@23
    .line 133
    .end local v1    # "request":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public setInterceptors(Ljava/util/List;)V
    .locals 4
    .param p1, "list"    # Ljava/util/List;

    #@0
    .prologue
    .line 258
    if-nez p1, :cond_0

    #@2
    .line 259
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "List must not be null."

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 261
    :cond_0
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 262
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    #@11
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@14
    .line 264
    :cond_1
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@16
    if-eqz v2, :cond_2

    #@18
    .line 265
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    #@1a
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@1d
    .line 267
    :cond_2
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@21
    move-result v2

    #@22
    if-ge v0, v2, :cond_5

    #@24
    .line 268
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    .line 269
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/http/HttpRequestInterceptor;

    #@2a
    if-eqz v2, :cond_3

    #@2c
    move-object v2, v1

    #@2d
    .line 270
    check-cast v2, Lorg/apache/http/HttpRequestInterceptor;

    #@2f
    invoke-virtual {p0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@32
    .line 272
    :cond_3
    instance-of v2, v1, Lorg/apache/http/HttpResponseInterceptor;

    #@34
    if-eqz v2, :cond_4

    #@36
    .line 273
    check-cast v1, Lorg/apache/http/HttpResponseInterceptor;

    #@38
    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    #@3b
    .line 267
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 257
    :cond_5
    return-void
.end method
