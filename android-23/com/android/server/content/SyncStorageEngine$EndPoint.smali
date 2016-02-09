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

.field final service:Landroid/content/ComponentName;

.field final target_provider:Z

.field final target_service:Z

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 228
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@7
    .line 227
    sput-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@9
    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 246
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@5
    .line 247
    iput-object p2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@7
    .line 248
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@9
    .line 249
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@c
    .line 250
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@f
    .line 251
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@12
    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 237
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@6
    .line 238
    iput p2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@8
    .line 239
    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@a
    .line 240
    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@c
    .line 241
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@f
    .line 242
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@12
    .line 236
    return-void
.end method


# virtual methods
.method public matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 6
    .param p1, "spec"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 261
    iget v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@4
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@6
    if-eq v3, v4, :cond_0

    #@8
    .line 262
    iget v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@a
    if-eq v3, v5, :cond_0

    #@c
    .line 263
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@e
    if-eq v3, v5, :cond_0

    #@10
    .line 264
    return v2

    #@11
    .line 266
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@13
    if-eqz v3, :cond_1

    #@15
    iget-boolean v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 267
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@1b
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@1d
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    return v2

    #@22
    .line 268
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@24
    if-eqz v3, :cond_5

    #@26
    iget-boolean v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@28
    if-eqz v3, :cond_5

    #@2a
    .line 270
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@2c
    if-nez v3, :cond_2

    #@2e
    .line 271
    const/4 v0, 0x1

    #@2f
    .line 276
    :goto_0
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@31
    if-nez v3, :cond_3

    #@33
    .line 277
    const/4 v1, 0x1

    #@34
    .line 281
    :goto_1
    if-eqz v0, :cond_4

    #@36
    :goto_2
    return v1

    #@37
    .line 273
    :cond_2
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@39
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@3b
    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    .local v0, "accountsMatch":Z
    goto :goto_0

    #@40
    .line 279
    .end local v0    # "accountsMatch":Z
    :cond_3
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@42
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v1

    #@48
    .local v1, "providersMatch":Z
    goto :goto_1

    #@49
    .end local v1    # "providersMatch":Z
    :cond_4
    move v1, v2

    #@4a
    .line 281
    goto :goto_2

    #@4b
    .line 283
    :cond_5
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 288
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 289
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@b
    if-nez v1, :cond_0

    #@d
    const-string/jumbo v1, "ALL ACCS"

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 290
    const-string/jumbo v2, "/"

    #@17
    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 291
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@1d
    if-nez v1, :cond_1

    #@1f
    const-string/jumbo v1, "ALL PDRS"

    #@22
    .line 289
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 298
    :goto_2
    const-string/jumbo v1, ":u"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    return-object v1

    #@36
    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@38
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@3a
    goto :goto_0

    #@3b
    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@3d
    goto :goto_1

    #@3e
    .line 292
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@40
    if-eqz v1, :cond_3

    #@42
    .line 293
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@44
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    const-string/jumbo v2, "/"

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    .line 294
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@55
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    goto :goto_2

    #@5d
    .line 296
    :cond_3
    const-string/jumbo v1, "invalid target"

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    goto :goto_2
.end method
