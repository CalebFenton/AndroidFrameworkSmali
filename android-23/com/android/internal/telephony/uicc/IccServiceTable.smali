.class public abstract Lcom/android/internal/telephony/uicc/IccServiceTable;
.super Ljava/lang/Object;
.source "IccServiceTable.java"


# instance fields
.field protected final mServiceTable:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 0
    .param p1, "table"    # [B

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    #@5
    .line 27
    return-void
.end method


# virtual methods
.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected abstract getValues()[Ljava/lang/Object;
.end method

.method protected isAvailable(I)Z
    .locals 6
    .param p1, "service"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 43
    div-int/lit8 v1, p1, 0x8

    #@4
    .line 44
    .local v1, "offset":I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    #@6
    array-length v4, v4

    #@7
    if-lt v1, v4, :cond_0

    #@9
    .line 46
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getTag()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "isAvailable for service "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    add-int/lit8 v5, p1, 0x1

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    const-string/jumbo v5, " fails, max service is "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 47
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    #@28
    array-length v5, v5

    #@29
    mul-int/lit8 v5, v5, 0x8

    #@2b
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 48
    return v3

    #@37
    .line 50
    :cond_0
    rem-int/lit8 v0, p1, 0x8

    #@39
    .line 51
    .local v0, "bit":I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    #@3b
    aget-byte v4, v4, v1

    #@3d
    shl-int v5, v2, v0

    #@3f
    and-int/2addr v4, v5

    #@40
    if-eqz v4, :cond_1

    #@42
    :goto_0
    return v2

    #@43
    :cond_1
    move v2, v3

    #@44
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getValues()[Ljava/lang/Object;

    #@3
    move-result-object v7

    #@4
    .line 57
    .local v7, "values":[Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    #@6
    array-length v5, v8

    #@7
    .line 58
    .local v5, "numBytes":I
    new-instance v8, Ljava/lang/StringBuilder;

    #@9
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getTag()Ljava/lang/String;

    #@c
    move-result-object v9

    #@d
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    const/16 v9, 0x5b

    #@12
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    move-result-object v8

    #@16
    .line 59
    mul-int/lit8 v9, v5, 0x8

    #@18
    .line 58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v8

    #@1c
    .line 59
    const-string/jumbo v9, "]={ "

    #@1f
    .line 58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 61
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@24
    .line 62
    .local v0, "addComma":Z
    const/4 v4, 0x0

    #@25
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    #@27
    .line 63
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    #@29
    aget-byte v3, v8, v4

    #@2b
    .line 64
    .local v3, "currentByte":B
    const/4 v1, 0x0

    #@2c
    .local v1, "bit":I
    :goto_1
    const/16 v8, 0x8

    #@2e
    if-ge v1, v8, :cond_3

    #@30
    .line 65
    const/4 v8, 0x1

    #@31
    shl-int/2addr v8, v1

    #@32
    and-int/2addr v8, v3

    #@33
    if-eqz v8, :cond_0

    #@35
    .line 66
    if-eqz v0, :cond_1

    #@37
    .line 67
    const-string/jumbo v8, ", "

    #@3a
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 71
    :goto_2
    mul-int/lit8 v8, v4, 0x8

    #@3f
    add-int v6, v8, v1

    #@41
    .line 72
    .local v6, "ordinal":I
    array-length v8, v7

    #@42
    if-ge v6, v8, :cond_2

    #@44
    .line 73
    aget-object v8, v7, v6

    #@46
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    .line 64
    .end local v6    # "ordinal":I
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 69
    :cond_1
    const/4 v0, 0x1

    #@4d
    goto :goto_2

    #@4e
    .line 75
    .restart local v6    # "ordinal":I
    :cond_2
    const/16 v8, 0x23

    #@50
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    move-result-object v8

    #@54
    add-int/lit8 v9, v6, 0x1

    #@56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    goto :goto_3

    #@5a
    .line 62
    .end local v6    # "ordinal":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 80
    .end local v1    # "bit":I
    .end local v3    # "currentByte":B
    :cond_4
    const-string/jumbo v8, " }"

    #@60
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v8

    #@68
    return-object v8
.end method
