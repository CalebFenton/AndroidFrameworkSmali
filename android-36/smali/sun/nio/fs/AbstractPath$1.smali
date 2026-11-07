.class Lsun/nio/fs/AbstractPath$1;
.super Ljava/lang/Object;
.source "AbstractPath.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/AbstractPath;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist i:I

.field final synthetic blacklist this$0:Lsun/nio/fs/AbstractPath;


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/AbstractPath;)V
    .registers 3
    .param p1, "this$0"    # Lsun/nio/fs/AbstractPath;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lsun/nio/fs/AbstractPath$1;->this$0:Lsun/nio/fs/AbstractPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 75
    iget v0, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    iget-object v1, p0, Lsun/nio/fs/AbstractPath$1;->this$0:Lsun/nio/fs/AbstractPath;

    invoke-virtual {v1}, Lsun/nio/fs/AbstractPath;->getNameCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 71
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPath$1;->next()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/nio/file/Path;
    .registers 3

    .line 79
    iget v0, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    iget-object v1, p0, Lsun/nio/fs/AbstractPath$1;->this$0:Lsun/nio/fs/AbstractPath;

    invoke-virtual {v1}, Lsun/nio/fs/AbstractPath;->getNameCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 80
    iget-object v0, p0, Lsun/nio/fs/AbstractPath$1;->this$0:Lsun/nio/fs/AbstractPath;

    iget v1, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    invoke-virtual {v0, v1}, Lsun/nio/fs/AbstractPath;->getName(I)Ljava/nio/file/Path;

    move-result-object v0

    .line 81
    .local v0, "result":Ljava/nio/file/Path;
    iget v1, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    .line 82
    return-object v0

    .line 84
    .end local v0    # "result":Ljava/nio/file/Path;
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
