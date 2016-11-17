.class Lcom/android/server/accounts/TokenCache$TokenLruCache;
.super Landroid/util/LruCache;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/TokenCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenLruCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Lcom/android/server/accounts/TokenCache$Key;",
        "Lcom/android/server/accounts/TokenCache$Value;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountEvictors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;",
            ">;"
        }
    .end annotation
.end field

.field private mTokenEvictors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 112
    const v0, 0xfa00

    #@3
    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    #@6
    .line 108
    new-instance v0, Ljava/util/HashMap;

    #@8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    #@d
    .line 109
    new-instance v0, Ljava/util/HashMap;

    #@f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    #@14
    .line 111
    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;Lcom/android/server/accounts/TokenCache$Value;)V
    .locals 3
    .param p1, "evicted"    # Z
    .param p2, "k"    # Lcom/android/server/accounts/TokenCache$Key;
    .param p3, "oldVal"    # Lcom/android/server/accounts/TokenCache$Value;
    .param p4, "newVal"    # Lcom/android/server/accounts/TokenCache$Value;

    #@0
    .prologue
    .line 123
    if-eqz p3, :cond_0

    #@2
    if-nez p4, :cond_0

    #@4
    .line 128
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    #@6
    iget-object v2, p3, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    #@8
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    #@e
    .line 129
    .local v0, "evictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    if-eqz v0, :cond_0

    #@10
    .line 130
    invoke-virtual {v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    #@13
    .line 121
    .end local v0    # "evictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "oldVal"    # Ljava/lang/Object;
    .param p4, "newVal"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 121
    check-cast p2, Lcom/android/server/accounts/TokenCache$Key;

    #@2
    .end local p2    # "k":Ljava/lang/Object;
    check-cast p3, Lcom/android/server/accounts/TokenCache$Value;

    #@4
    .end local p3    # "oldVal":Ljava/lang/Object;
    check-cast p4, Lcom/android/server/accounts/TokenCache$Value;

    #@6
    .end local p4    # "newVal":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->entryRemoved(ZLcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;Lcom/android/server/accounts/TokenCache$Value;)V

    #@9
    return-void
.end method

.method public evict(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    #@8
    .line 166
    .local v0, "evictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    if-eqz v0, :cond_0

    #@a
    .line 167
    invoke-virtual {v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    #@d
    .line 164
    :cond_0
    return-void
.end method

.method public evict(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    #@2
    new-instance v2, Landroid/util/Pair;

    #@4
    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    #@d
    .line 158
    .local v0, "evictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    if-eqz v0, :cond_0

    #@f
    .line 159
    invoke-virtual {v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    #@12
    .line 156
    :cond_0
    return-void
.end method

.method public putToken(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)V
    .locals 6
    .param p1, "k"    # Lcom/android/server/accounts/TokenCache$Key;
    .param p2, "v"    # Lcom/android/server/accounts/TokenCache$Value;

    #@0
    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    #@2
    iget-object v3, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    #@4
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    #@a
    .line 138
    .local v1, "tokenEvictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    if-nez v1, :cond_0

    #@c
    .line 139
    new-instance v1, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    #@e
    .end local v1    # "tokenEvictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    invoke-direct {v1, p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;-><init>(Lcom/android/server/accounts/TokenCache$TokenLruCache;)V

    #@11
    .line 141
    .restart local v1    # "tokenEvictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->add(Lcom/android/server/accounts/TokenCache$Key;)V

    #@14
    .line 142
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    #@16
    new-instance v3, Landroid/util/Pair;

    #@18
    iget-object v4, p1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    #@1a
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@1c
    iget-object v5, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    #@1e
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@21
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 145
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    #@26
    iget-object v3, p1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    #@28
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    #@2e
    .line 146
    .local v0, "accountEvictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    if-nez v0, :cond_1

    #@30
    .line 147
    new-instance v0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    #@32
    .end local v0    # "accountEvictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    invoke-direct {v0, p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;-><init>(Lcom/android/server/accounts/TokenCache$TokenLruCache;)V

    #@35
    .line 149
    .restart local v0    # "accountEvictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->add(Lcom/android/server/accounts/TokenCache$Key;)V

    #@38
    .line 150
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    #@3a
    iget-object v3, p1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    #@3c
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 135
    return-void
.end method

.method protected sizeOf(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)I
    .locals 1
    .param p1, "k"    # Lcom/android/server/accounts/TokenCache$Key;
    .param p2, "v"    # Lcom/android/server/accounts/TokenCache$Value;

    #@0
    .prologue
    .line 117
    iget-object v0, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 116
    check-cast p1, Lcom/android/server/accounts/TokenCache$Key;

    #@2
    .end local p1    # "k":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/accounts/TokenCache$Value;

    #@4
    .end local p2    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->sizeOf(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
