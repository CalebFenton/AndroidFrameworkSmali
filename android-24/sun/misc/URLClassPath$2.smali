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
        "Ljava/util/Enumeration",
        "<",
        "Lsun/misc/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private res:Lsun/misc/Resource;

.field final synthetic this$0:Lsun/misc/URLClassPath;

.field final synthetic val$check:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lsun/misc/URLClassPath;
    .param p2, "val$name"    # Ljava/lang/String;
    .param p3, "val$check"    # Z

    #@0
    .prologue
    .line 264
    iput-object p1, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    #@2
    iput-object p2, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    #@4
    iput-boolean p3, p0, Lsun/misc/URLClassPath$2;->val$check:Z

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 265
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lsun/misc/URLClassPath$2;->index:I

    #@c
    .line 266
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    #@f
    .line 264
    return-void
.end method

.method private next()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 269
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 270
    return v4

    #@6
    .line 273
    :cond_0
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->this$0:Lsun/misc/URLClassPath;

    #@8
    iget v2, p0, Lsun/misc/URLClassPath$2;->index:I

    #@a
    add-int/lit8 v3, v2, 0x1

    #@c
    iput v3, p0, Lsun/misc/URLClassPath$2;->index:I

    #@e
    invoke-static {v1, v2}, Lsun/misc/URLClassPath;->-wrap0(Lsun/misc/URLClassPath;I)Lsun/misc/URLClassPath$Loader;

    #@11
    move-result-object v0

    #@12
    .local v0, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v0, :cond_1

    #@14
    .line 274
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->val$name:Ljava/lang/String;

    #@16
    iget-boolean v2, p0, Lsun/misc/URLClassPath$2;->val$check:Z

    #@18
    invoke-virtual {v0, v1, v2}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    #@1e
    .line 275
    iget-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 276
    return v4

    #@23
    .line 279
    :cond_1
    const/4 v1, 0x0

    #@24
    return v1
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 284
    invoke-direct {p0}, Lsun/misc/URLClassPath$2;->next()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 287
    invoke-virtual {p0}, Lsun/misc/URLClassPath$2;->nextElement()Lsun/misc/Resource;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Lsun/misc/Resource;
    .locals 2

    #@0
    .prologue
    .line 288
    invoke-direct {p0}, Lsun/misc/URLClassPath$2;->next()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 289
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 291
    :cond_0
    iget-object v0, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    #@e
    .line 292
    .local v0, "r":Lsun/misc/Resource;
    const/4 v1, 0x0

    #@f
    iput-object v1, p0, Lsun/misc/URLClassPath$2;->res:Lsun/misc/Resource;

    #@11
    .line 293
    return-object v0
.end method
