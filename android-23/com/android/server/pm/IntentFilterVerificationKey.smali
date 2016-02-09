.class Lcom/android/server/pm/IntentFilterVerificationKey;
.super Ljava/lang/Object;
.source "IntentFilterVerificationKey.java"


# instance fields
.field public className:Ljava/lang/String;

.field public domains:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "domains"    # [Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 32
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@9
    array-length v3, p1

    #@a
    :goto_0
    if-ge v2, v3, :cond_0

    #@c
    aget-object v0, p1, v2

    #@e
    .line 33
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 32
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 35
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    iput-object v2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    #@1a
    .line 36
    iput-object p2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    #@1c
    .line 37
    iput-object p3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    #@1e
    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 42
    if-ne p0, p1, :cond_0

    #@4
    return v4

    #@5
    .line 43
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/android/server/pm/IntentFilterVerificationKey;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 45
    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationKey;

    #@15
    .line 47
    .local v0, "that":Lcom/android/server/pm/IntentFilterVerificationKey;
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    #@17
    if-eqz v1, :cond_6

    #@19
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    #@1b
    iget-object v2, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_7

    #@23
    .line 48
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    #@25
    if-eqz v1, :cond_8

    #@27
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    #@29
    iget-object v2, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_9

    #@31
    .line 50
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    #@33
    if-eqz v1, :cond_a

    #@35
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    #@37
    iget-object v2, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_b

    #@3f
    .line 53
    :cond_5
    return v4

    #@40
    .line 47
    :cond_6
    iget-object v1, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    #@42
    if-eqz v1, :cond_3

    #@44
    :cond_7
    return v3

    #@45
    .line 48
    :cond_8
    iget-object v1, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    #@47
    if-eqz v1, :cond_4

    #@49
    .line 49
    :cond_9
    return v3

    #@4a
    .line 50
    :cond_a
    iget-object v1, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    #@4c
    if-eqz v1, :cond_5

    #@4e
    .line 51
    :cond_b
    return v3
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 58
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@a
    move-result v0

    #@b
    .line 59
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    #@d
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    #@f
    if-eqz v1, :cond_2

    #@11
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    #@13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@16
    move-result v1

    #@17
    :goto_1
    add-int v0, v3, v1

    #@19
    .line 60
    mul-int/lit8 v1, v0, 0x1f

    #@1b
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    #@1d
    if-eqz v3, :cond_0

    #@1f
    iget-object v2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    #@21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@24
    move-result v2

    #@25
    :cond_0
    add-int v0, v1, v2

    #@27
    .line 61
    return v0

    #@28
    .line 58
    .end local v0    # "result":I
    :cond_1
    const/4 v0, 0x0

    #@29
    .restart local v0    # "result":I
    goto :goto_0

    #@2a
    :cond_2
    move v1, v2

    #@2b
    .line 59
    goto :goto_1
.end method
