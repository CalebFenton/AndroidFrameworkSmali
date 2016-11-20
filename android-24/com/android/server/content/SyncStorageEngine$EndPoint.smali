.class public Lcom/android/server/content/SyncStorageEngine$EndPoint;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndPoint"
.end annotation


# static fields
.field public static final USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# instance fields
.field final account:Landroid/accounts/Account;

.field final provider:Ljava/lang/String;

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 164
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@7
    .line 163
    sput-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@9
    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 170
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@5
    .line 171
    iput-object p2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@7
    .line 172
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@9
    .line 169
    return-void
.end method


# virtual methods
.method public matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 6
    .param p1, "spec"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 182
    iget v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@4
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@6
    if-eq v3, v4, :cond_0

    #@8
    .line 183
    iget v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@a
    if-eq v3, v5, :cond_0

    #@c
    .line 184
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@e
    if-eq v3, v5, :cond_0

    #@10
    .line 185
    return v2

    #@11
    .line 188
    :cond_0
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@13
    if-nez v3, :cond_1

    #@15
    .line 189
    const/4 v0, 0x1

    #@16
    .line 194
    :goto_0
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@18
    if-nez v3, :cond_2

    #@1a
    .line 195
    const/4 v1, 0x1

    #@1b
    .line 199
    :goto_1
    if-eqz v0, :cond_3

    #@1d
    :goto_2
    return v1

    #@1e
    .line 191
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@20
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@22
    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .local v0, "accountsMatch":Z
    goto :goto_0

    #@27
    .line 197
    .end local v0    # "accountsMatch":Z
    :cond_2
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@29
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    .local v1, "providersMatch":Z
    goto :goto_1

    #@30
    .end local v1    # "providersMatch":Z
    :cond_3
    move v1, v2

    #@31
    .line 199
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 204
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@7
    if-nez v1, :cond_0

    #@9
    const-string/jumbo v1, "ALL ACCS"

    #@c
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    .line 205
    const-string/jumbo v2, "/"

    #@13
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 206
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@19
    if-nez v1, :cond_1

    #@1b
    const-string/jumbo v1, "ALL PDRS"

    #@1e
    .line 204
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 207
    const-string/jumbo v1, ":u"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    return-object v1

    #@32
    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@34
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@36
    goto :goto_0

    #@37
    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@39
    goto :goto_1
.end method
