.class public Lcom/android/server/wifi/IMSIParameter;
.super Ljava/lang/Object;
.source "IMSIParameter.java"


# instance fields
.field private final mImsi:Ljava/lang/String;

.field private final mPrefix:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 15
    if-eqz p1, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 16
    :cond_0
    new-instance v2, Ljava/io/IOException;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Bad IMSI: \'"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    const-string/jumbo v4, "\'"

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 20
    :cond_1
    const/4 v1, 0x0

    #@2e
    .line 21
    .local v1, "stopChar":C
    const/4 v0, 0x0

    #@2f
    .end local v1    # "stopChar":C
    .local v0, "nonDigit":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@32
    move-result v2

    #@33
    if-ge v0, v2, :cond_2

    #@35
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v1

    #@39
    .line 23
    .local v1, "stopChar":C
    const/16 v2, 0x30

    #@3b
    if-lt v1, v2, :cond_2

    #@3d
    const/16 v2, 0x39

    #@3f
    if-le v1, v2, :cond_3

    #@41
    .line 28
    .end local v1    # "stopChar":C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@44
    move-result v2

    #@45
    if-ne v0, v2, :cond_4

    #@47
    .line 29
    iput-object p1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@49
    .line 30
    iput-boolean v3, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    #@4b
    .line 14
    :goto_1
    return-void

    #@4c
    .line 21
    .restart local v1    # "stopChar":C
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 32
    .end local v1    # "stopChar":C
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@52
    move-result v2

    #@53
    add-int/lit8 v2, v2, -0x1

    #@55
    if-ne v0, v2, :cond_5

    #@57
    const/16 v2, 0x2a

    #@59
    if-ne v1, v2, :cond_5

    #@5b
    .line 33
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@61
    .line 34
    const/4 v2, 0x1

    #@62
    iput-boolean v2, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    #@64
    goto :goto_1

    #@65
    .line 37
    :cond_5
    new-instance v2, Ljava/io/IOException;

    #@67
    new-instance v3, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v4, "Bad IMSI: \'"

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    const-string/jumbo v4, "\'"

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@85
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "prefix"    # Z

    #@0
    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 10
    iput-object p1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@5
    .line 11
    iput-boolean p2, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    #@7
    .line 9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 75
    if-ne p0, p1, :cond_0

    #@3
    .line 76
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 78
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/IMSIParameter;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 79
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 82
    check-cast v0, Lcom/android/server/wifi/IMSIParameter;

    #@15
    .line 83
    .local v0, "that":Lcom/android/server/wifi/IMSIParameter;
    iget-boolean v2, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    #@17
    iget-boolean v3, v0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    #@19
    if-ne v2, v3, :cond_3

    #@1b
    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@1d
    iget-object v2, v0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    :cond_3
    return v1
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    .line 89
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    #@c
    iget-boolean v1, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    #@e
    if-eqz v1, :cond_1

    #@10
    const/4 v1, 0x1

    #@11
    :goto_1
    add-int v0, v2, v1

    #@13
    .line 90
    return v0

    #@14
    .line 88
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    #@15
    .restart local v0    # "result":I
    goto :goto_0

    #@16
    .line 89
    :cond_1
    const/4 v1, 0x0

    #@17
    goto :goto_1
.end method

.method public isPrefix()Z
    .locals 1

    #@0
    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    #@2
    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 6
    .param p1, "fullIMSI"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 42
    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@7
    iget-object v2, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@c
    move-result v5

    #@d
    move v2, v1

    #@e
    move-object v3, p1

    #@f
    move v4, v1

    #@10
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public matchesMccMnc(Ljava/lang/String;)Z
    .locals 6
    .param p1, "mccMnc"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 51
    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@7
    iget-object v2, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@c
    move-result v5

    #@d
    move v2, v1

    #@e
    move-object v3, p1

    #@f
    move v4, v1

    #@10
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1a
    move-result v5

    #@1b
    move v2, v1

    #@1c
    move-object v3, p1

    #@1d
    move v4, v1

    #@1e
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@21
    move-result v0

    #@22
    return v0
.end method

.method public prefixLength()I
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const/16 v1, 0x2a

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    #@1c
    return-object v0
.end method
