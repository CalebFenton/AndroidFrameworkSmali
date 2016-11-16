.class Ljava/sql/SQLException$1;
.super Ljava/lang/Object;
.source "SQLException.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/sql/SQLException;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field cause:Ljava/lang/Throwable;

.field firstException:Ljava/sql/SQLException;

.field nextException:Ljava/sql/SQLException;

.field final synthetic this$0:Ljava/sql/SQLException;


# direct methods
.method constructor <init>(Ljava/sql/SQLException;)V
    .locals 1
    .param p1, "this$0"    # Ljava/sql/SQLException;

    #@0
    .prologue
    .line 316
    iput-object p1, p0, Ljava/sql/SQLException$1;->this$0:Ljava/sql/SQLException;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 318
    iget-object v0, p0, Ljava/sql/SQLException$1;->this$0:Ljava/sql/SQLException;

    #@7
    iput-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    #@9
    .line 319
    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    #@b
    invoke-virtual {v0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    #@11
    .line 320
    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    #@13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    #@19
    .line 316
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 324
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 323
    :cond_1
    iget-object v0, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 325
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/sql/SQLException$1;->next()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/lang/Throwable;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 329
    const/4 v0, 0x0

    #@2
    .line 330
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 331
    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    #@8
    .line 332
    .local v0, "throwable":Ljava/lang/Throwable;
    iput-object v2, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    #@a
    .line 345
    :goto_0
    return-object v0

    #@b
    .line 334
    .local v0, "throwable":Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 335
    iget-object v0, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    #@11
    .line 336
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    #@13
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    #@19
    goto :goto_0

    #@1a
    .line 338
    .local v0, "throwable":Ljava/lang/Throwable;
    :cond_1
    iget-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 339
    iget-object v0, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    #@20
    .line 340
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    #@22
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    #@28
    .line 341
    iget-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    #@2a
    invoke-virtual {v1}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    #@30
    goto :goto_0

    #@31
    .line 344
    .local v0, "throwable":Ljava/lang/Throwable;
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    #@33
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@36
    throw v1
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
