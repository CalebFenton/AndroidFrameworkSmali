.class Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/TokenCache$TokenLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Evictor"
.end annotation


# instance fields
.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/accounts/TokenCache$Key;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/accounts/TokenCache$TokenLruCache;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/TokenCache$TokenLruCache;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/accounts/TokenCache$TokenLruCache;

    #@0
    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->this$1:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->mKeys:Ljava/util/List;

    #@c
    .line 88
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/accounts/TokenCache$Key;)V
    .locals 1
    .param p1, "k"    # Lcom/android/server/accounts/TokenCache$Key;

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->mKeys:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 92
    return-void
.end method

.method public evict()V
    .locals 3

    #@0
    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->mKeys:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/accounts/TokenCache$Key;

    #@12
    .line 98
    .local v0, "k":Lcom/android/server/accounts/TokenCache$Key;
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->this$1:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    #@14
    invoke-virtual {v2, v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    goto :goto_0

    #@18
    .line 96
    .end local v0    # "k":Lcom/android/server/accounts/TokenCache$Key;
    :cond_0
    return-void
.end method
