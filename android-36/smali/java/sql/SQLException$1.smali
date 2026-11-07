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
        "Ljava/util/Iterator<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist cause:Ljava/lang/Throwable;

.field blacklist firstException:Ljava/sql/SQLException;

.field blacklist nextException:Ljava/sql/SQLException;

.field final synthetic blacklist this$0:Ljava/sql/SQLException;


# direct methods
.method constructor blacklist <init>(Ljava/sql/SQLException;)V
    .registers 3
    .param p1, "this$0"    # Ljava/sql/SQLException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 316
    iput-object p1, p0, Ljava/sql/SQLException$1;->this$0:Ljava/sql/SQLException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iget-object v0, p0, Ljava/sql/SQLException$1;->this$0:Ljava/sql/SQLException;

    iput-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    .line 319
    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    iput-object v0, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    .line 320
    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 323
    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    if-nez v0, :cond_f

    iget-object v0, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    if-nez v0, :cond_f

    iget-object v0, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_d

    goto :goto_f

    .line 325
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 324
    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 316
    invoke-virtual {p0}, Ljava/sql/SQLException$1;->next()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/lang/Throwable;
    .registers 3

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    if-eqz v1, :cond_b

    .line 331
    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    .line 332
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    goto :goto_30

    .line 334
    :cond_b
    iget-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_1a

    .line 335
    iget-object v0, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    .line 336
    iget-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    goto :goto_30

    .line 338
    :cond_1a
    iget-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    if-eqz v1, :cond_31

    .line 339
    iget-object v0, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    .line 340
    iget-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/sql/SQLException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    .line 341
    iget-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v1

    iput-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    .line 345
    :goto_30
    return-object v0

    .line 344
    :cond_31
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
