.class Ljava/sql/SQLException$InternalIterator;
.super Ljava/lang/Object;
.source "SQLException.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/sql/SQLException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalIterator"
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
.field private current:Ljava/sql/SQLException;


# direct methods
.method constructor <init>(Ljava/sql/SQLException;)V
    .locals 0
    .param p1, "e"    # Ljava/sql/SQLException;

    #@0
    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 240
    iput-object p1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    #@5
    .line 239
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/sql/SQLException$InternalIterator;->next()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/lang/Throwable;
    .locals 2

    #@0
    .prologue
    .line 248
    iget-object v1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 249
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v1

    #@a
    .line 251
    :cond_0
    iget-object v0, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    #@c
    .line 252
    .local v0, "ret":Ljava/sql/SQLException;
    iget-object v1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    #@e
    invoke-static {v1}, Ljava/sql/SQLException;->-get0(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    #@14
    .line 253
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
