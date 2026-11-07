.class Lsun/misc/URLClassPath$1;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist cache:[I

.field private blacklist index:I

.field final synthetic blacklist this$0:Lsun/misc/URLClassPath;

.field private blacklist url:Ljava/net/URL;

.field final synthetic blacklist val$check:Z

.field final synthetic blacklist val$name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "this$0"    # Lsun/misc/URLClassPath;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lsun/misc/URLClassPath$1;->this$0:Lsun/misc/URLClassPath;

    iput-object p2, p0, Lsun/misc/URLClassPath$1;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lsun/misc/URLClassPath$1;->val$check:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const/4 p2, 0x0

    iput p2, p0, Lsun/misc/URLClassPath$1;->index:I

    .line 258
    iget-object p2, p0, Lsun/misc/URLClassPath$1;->this$0:Lsun/misc/URLClassPath;

    iget-object p3, p0, Lsun/misc/URLClassPath$1;->val$name:Ljava/lang/String;

    invoke-static {p2, p3}, Lsun/misc/URLClassPath;->-$$Nest$mgetLookupCache(Lsun/misc/URLClassPath;Ljava/lang/String;)[I

    move-result-object p2

    iput-object p2, p0, Lsun/misc/URLClassPath$1;->cache:[I

    .line 259
    const/4 p2, 0x0

    iput-object p2, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    return-void
.end method

.method private blacklist next()Z
    .registers 6

    .line 262
    iget-object v0, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 263
    return v1

    .line 266
    :cond_6
    iget-object v0, p0, Lsun/misc/URLClassPath$1;->this$0:Lsun/misc/URLClassPath;

    iget-object v2, p0, Lsun/misc/URLClassPath$1;->cache:[I

    iget v3, p0, Lsun/misc/URLClassPath$1;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun/misc/URLClassPath$1;->index:I

    invoke-static {v0, v2, v3}, Lsun/misc/URLClassPath;->-$$Nest$mgetNextLoader(Lsun/misc/URLClassPath;[II)Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    move-object v2, v0

    .local v2, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v0, :cond_26

    .line 267
    iget-object v0, p0, Lsun/misc/URLClassPath$1;->val$name:Ljava/lang/String;

    iget-boolean v3, p0, Lsun/misc/URLClassPath$1;->val$check:Z

    invoke-virtual {v2, v0, v3}, Lsun/misc/URLClassPath$Loader;->findResource(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 268
    iget-object v0, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    if-eqz v0, :cond_6

    .line 269
    return v1

    .line 272
    :cond_26
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 277
    invoke-direct {p0}, Lsun/misc/URLClassPath$1;->next()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 256
    invoke-virtual {p0}, Lsun/misc/URLClassPath$1;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/net/URL;
    .registers 3

    .line 281
    invoke-direct {p0}, Lsun/misc/URLClassPath$1;->next()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 284
    iget-object v0, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 285
    .local v0, "u":Ljava/net/URL;
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/misc/URLClassPath$1;->url:Ljava/net/URL;

    .line 286
    return-object v0

    .line 282
    .end local v0    # "u":Ljava/net/URL;
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
