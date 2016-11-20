.class public Landroid/text/util/Rfc822Token;
.super Ljava/lang/Object;
.source "Rfc822Token.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    #@5
    .line 35
    iput-object p2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    #@7
    .line 36
    iput-object p3, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    #@9
    .line 33
    return-void
.end method

.method public static quoteComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "comment"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x5c

    #@2
    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    .line 163
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 165
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@e
    .line 166
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 168
    .local v0, "c":C
    const/16 v4, 0x28

    #@14
    if-eq v0, v4, :cond_0

    #@16
    const/16 v4, 0x29

    #@18
    if-ne v0, v4, :cond_2

    #@1a
    .line 169
    :cond_0
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 172
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 165
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 168
    :cond_2
    if-ne v0, v5, :cond_1

    #@25
    goto :goto_1

    #@26
    .line 175
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    return-object v4
.end method

.method public static quoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x5c

    #@2
    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 142
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    .line 143
    .local v2, "len":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@e
    .line 144
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 146
    .local v0, "c":C
    if-eq v0, v5, :cond_0

    #@14
    const/16 v4, 0x22

    #@16
    if-ne v0, v4, :cond_1

    #@18
    .line 147
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 150
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 143
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 153
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    return-object v4
.end method

.method public static quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x22

    #@2
    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    .line 120
    .local v2, "len":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    #@9
    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 123
    .local v0, "c":C
    const/16 v3, 0x41

    #@f
    if-lt v0, v3, :cond_0

    #@11
    const/16 v3, 0x5a

    #@13
    if-le v0, v3, :cond_3

    #@15
    .line 124
    :cond_0
    const/16 v3, 0x61

    #@17
    if-lt v0, v3, :cond_1

    #@19
    const/16 v3, 0x7a

    #@1b
    if-le v0, v3, :cond_3

    #@1d
    .line 125
    :cond_1
    const/16 v3, 0x20

    #@1f
    if-eq v0, v3, :cond_3

    #@21
    .line 126
    const/16 v3, 0x30

    #@23
    if-lt v0, v3, :cond_2

    #@25
    const/16 v3, 0x39

    #@27
    if-le v0, v3, :cond_3

    #@29
    .line 127
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-static {p0}, Landroid/text/util/Rfc822Token;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    return-object v3

    #@43
    .line 120
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_0

    #@46
    .line 131
    .end local v0    # "c":C
    :cond_4
    return-object p0
.end method

.method private static stringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    #@0
    .prologue
    .line 187
    if-nez p0, :cond_1

    #@2
    .line 188
    if-nez p1, :cond_0

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

    #@8
    .line 190
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 195
    instance-of v2, p1, Landroid/text/util/Rfc822Token;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 196
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 198
    check-cast v0, Landroid/text/util/Rfc822Token;

    #@9
    .line 199
    .local v0, "other":Landroid/text/util/Rfc822Token;
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    #@b
    iget-object v3, v0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    #@d
    invoke-static {v2, v3}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 200
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    #@15
    iget-object v3, v0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    #@17
    invoke-static {v2, v3}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@1a
    move-result v2

    #@1b
    .line 199
    if-eqz v2, :cond_1

    #@1d
    .line 201
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    #@1f
    iget-object v2, v0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    #@21
    invoke-static {v1, v2}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@24
    move-result v1

    #@25
    .line 199
    :cond_1
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 179
    const/16 v0, 0x11

    #@2
    .line 180
    .local v0, "result":I
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/lit16 v0, v1, 0x20f

    #@e
    .line 181
    :cond_0
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    #@10
    if-eqz v1, :cond_1

    #@12
    mul-int/lit8 v1, v0, 0x1f

    #@14
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    #@16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@19
    move-result v2

    #@1a
    add-int v0, v1, v2

    #@1c
    .line 182
    :cond_1
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    #@1e
    if-eqz v1, :cond_2

    #@20
    mul-int/lit8 v1, v0, 0x1f

    #@22
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    #@24
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@27
    move-result v2

    #@28
    add-int v0, v1, v2

    #@2a
    .line 183
    :cond_2
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    #@2
    .line 73
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    #@2
    .line 80
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    #@2
    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    #@b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 93
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    #@13
    invoke-static {v1}, Landroid/text/util/Rfc822Token;->quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 94
    const/16 v1, 0x20

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 97
    :cond_0
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    #@21
    if-eqz v1, :cond_1

    #@23
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    #@25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 98
    const/16 v1, 0x28

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 99
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    #@32
    invoke-static {v1}, Landroid/text/util/Rfc822Token;->quoteComment(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 100
    const-string/jumbo v1, ") "

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 103
    :cond_1
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    #@41
    if-eqz v1, :cond_2

    #@43
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    #@45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_2

    #@4b
    .line 104
    const/16 v1, 0x3c

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@50
    .line 105
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 106
    const/16 v1, 0x3e

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    .line 109
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    return-object v1
.end method
