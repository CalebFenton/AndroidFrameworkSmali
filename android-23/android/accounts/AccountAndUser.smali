.class public Landroid/accounts/AccountAndUser;
.super Ljava/lang/Object;
.source "AccountAndUser.java"


# instance fields
.field public account:Landroid/accounts/Account;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;I)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@5
    .line 30
    iput p2, p0, Landroid/accounts/AccountAndUser;->userId:I

    #@7
    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 34
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 35
    :cond_0
    instance-of v3, p1, Landroid/accounts/AccountAndUser;

    #@7
    if-nez v3, :cond_1

    #@9
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 36
    check-cast v0, Landroid/accounts/AccountAndUser;

    #@d
    .line 37
    .local v0, "other":Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@f
    iget-object v4, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@11
    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 38
    iget v3, p0, Landroid/accounts/AccountAndUser;->userId:I

    #@19
    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    #@1b
    if-ne v3, v4, :cond_2

    #@1d
    .line 37
    :goto_0
    return v1

    #@1e
    :cond_2
    move v1, v2

    #@1f
    .line 38
    goto :goto_0

    #@20
    :cond_3
    move v1, v2

    #@21
    .line 37
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@2
    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/accounts/AccountAndUser;->userId:I

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@7
    invoke-virtual {v1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, " u"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Landroid/accounts/AccountAndUser;->userId:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method
