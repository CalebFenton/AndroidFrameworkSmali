.class public Ljava/sql/Time;
.super Ljava/util/Date;
.source "Time.java"


# static fields
.field static final serialVersionUID:J = 0x74894a0dd932c471L


# direct methods
.method public constructor <init>(III)V
    .locals 7
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 59
    const/16 v1, 0x46

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    move-object v0, p0

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    move v6, p3

    #@8
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    #@b
    .line 58
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    #@3
    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Time;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x3a

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 97
    if-nez p0, :cond_0

    #@6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v5

    #@c
    .line 99
    :cond_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v0

    #@10
    .line 100
    .local v0, "firstColon":I
    add-int/lit8 v5, v0, 0x1

    #@12
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    #@15
    move-result v4

    #@16
    .line 101
    .local v4, "secondColon":I
    if-lez v0, :cond_1

    #@18
    move v8, v6

    #@19
    :goto_0
    if-lez v4, :cond_2

    #@1b
    move v5, v6

    #@1c
    :goto_1
    and-int/2addr v5, v8

    #@1d
    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v8

    #@21
    add-int/lit8 v8, v8, -0x1

    #@23
    if-ge v4, v8, :cond_3

    #@25
    .line 101
    :goto_2
    and-int/2addr v5, v6

    #@26
    if-eqz v5, :cond_4

    #@28
    .line 103
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f
    move-result v1

    #@30
    .line 105
    .local v1, "hour":I
    add-int/lit8 v5, v0, 0x1

    #@32
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@39
    move-result v2

    #@3a
    .line 106
    .local v2, "minute":I
    add-int/lit8 v5, v4, 0x1

    #@3c
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@43
    move-result v3

    #@44
    .line 111
    .local v3, "second":I
    new-instance v5, Ljava/sql/Time;

    #@46
    invoke-direct {v5, v1, v2, v3}, Ljava/sql/Time;-><init>(III)V

    #@49
    return-object v5

    #@4a
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    .end local v3    # "second":I
    :cond_1
    move v8, v7

    #@4b
    .line 101
    goto :goto_0

    #@4c
    :cond_2
    move v5, v7

    #@4d
    goto :goto_1

    #@4e
    :cond_3
    move v6, v7

    #@4f
    .line 102
    goto :goto_2

    #@50
    .line 108
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@52
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@55
    throw v5
.end method


# virtual methods
.method public getDate()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public getDay()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public getMonth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public getYear()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public setDate(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public setMonth(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    #@3
    .line 80
    return-void
.end method

.method public setYear(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    .line 120
    invoke-super {p0}, Ljava/util/Date;->getHours()I

    #@5
    move-result v0

    #@6
    .line 121
    .local v0, "hour":I
    invoke-super {p0}, Ljava/util/Date;->getMinutes()I

    #@9
    move-result v2

    #@a
    .line 122
    .local v2, "minute":I
    invoke-super {p0}, Ljava/util/Date;->getSeconds()I

    #@d
    move-result v4

    #@e
    .line 127
    .local v4, "second":I
    if-ge v0, v8, :cond_0

    #@10
    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v7, "0"

    #@18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 132
    .local v1, "hourString":Ljava/lang/String;
    :goto_0
    if-ge v2, v8, :cond_1

    #@26
    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v7, "0"

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 137
    .local v3, "minuteString":Ljava/lang/String;
    :goto_1
    if-ge v4, v8, :cond_2

    #@3c
    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v7, "0"

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 142
    .local v5, "secondString":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    const-string/jumbo v7, ":"

    #@5c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    const-string/jumbo v7, ":"

    #@67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    return-object v6

    #@74
    .line 130
    .end local v1    # "hourString":Ljava/lang/String;
    .end local v3    # "minuteString":Ljava/lang/String;
    .end local v5    # "secondString":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    .restart local v1    # "hourString":Ljava/lang/String;
    goto :goto_0

    #@79
    .line 135
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    .restart local v3    # "minuteString":Ljava/lang/String;
    goto :goto_1

    #@7e
    .line 140
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    .restart local v5    # "secondString":Ljava/lang/String;
    goto :goto_2
.end method
