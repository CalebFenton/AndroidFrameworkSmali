.class Lsun/misc/URLClassPath$2;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath;->getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Lsun/misc/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist cache:[I

.field private blacklist index:I

.field private blacklist res:Lsun/misc/Resource;

.field final synthetic blacklist this$0:Lsun/misc/URLClassPath;

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

    .line 304
    iput-object p1, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    iput-object p2, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lsun/misc/URLClassPath$2;->val$check:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/4 p2, 0x0

    iput p2, p0, Lsun/misc/URLClassPath$2;->index:I

    .line 306
    iget-object p2, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    iget-object p3, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    invoke-static {p2, p3}, Lsun/misc/URLClassPath;->-$$Nest$mgetLookupCache(Lsun/misc/URLClassPath;Ljava/lang/String;)[I

    move-result-object p2

    iput-object p2, p0, Lsun/misc/URLClassPath$2;->cache:[I

    .line 307
    const/4 p2, 0x0

    iput-object p2, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    return-void
.end method

.method private blacklist next()Z
    .registers 6

    .line 310
    iget-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 311
    return v1

    .line 314
    :cond_6
    iget-object v0, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    iget-object v2, p0, Lsun/misc/URLClassPath$2;->cache:[I

    iget v3, p0, Lsun/misc/URLClassPath$2;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun/misc/URLClassPath$2;->index:I

    invoke-static {v0, v2, v3}, Lsun/misc/URLClassPath;->-$$Nest$mgetNextLoader(Lsun/misc/URLClassPath;[II)Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    move-object v2, v0

    .local v2, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v0, :cond_26

    .line 315
    iget-object v0, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    iget-boolean v3, p0, Lsun/misc/URLClassPath$2;->val$check:Z

    invoke-virtual {v2, v0, v3}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 316
    iget-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    if-eqz v0, :cond_6

    .line 317
    return v1

    .line 320
    :cond_26
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 325
    invoke-direct {p0}, Lsun/misc/URLClassPath$2;->next()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 304
    invoke-virtual {p0}, Lsun/misc/URLClassPath$2;->nextElement()Lsun/misc/Resource;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Lsun/misc/Resource;
    .registers 3

    .line 329
    invoke-direct {p0}, Lsun/misc/URLClassPath$2;->next()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 332
    iget-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 333
    .local v0, "r":Lsun/misc/Resource;
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    .line 334
    return-object v0

    .line 330
    .end local v0    # "r":Lsun/misc/Resource;
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
