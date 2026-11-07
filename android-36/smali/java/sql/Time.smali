.class public Ljava/sql/Time;
.super Ljava/util/Date;
.source "Time.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x74894a0dd932c471L


# direct methods
.method public constructor whitelist test-api <init>(III)V
    .registers 11
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v1, 0x46

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "hour":I
    .end local p2    # "minute":I
    .end local p3    # "second":I
    .local v4, "hour":I
    .local v5, "minute":I
    .local v6, "second":I
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 60
    return-void
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 3
    .param p1, "time"    # J

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 71
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/sql/Time;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 97
    if-eqz p0, :cond_4f

    .line 99
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 100
    .local v1, "firstColon":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 101
    .local v0, "secondColon":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_14

    move v4, v3

    goto :goto_15

    :cond_14
    move v4, v2

    :goto_15
    if-lez v0, :cond_19

    move v5, v3

    goto :goto_1a

    :cond_19
    move v5, v2

    :goto_1a
    and-int/2addr v4, v5

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v0, v5, :cond_23

    goto :goto_24

    :cond_23
    move v3, v2

    :goto_24
    and-int/2addr v3, v4

    if-eqz v3, :cond_49

    .line 103
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, "hour":I
    add-int/lit8 v3, v1, 0x1

    .line 105
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, "minute":I
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 111
    .local v4, "second":I
    new-instance v5, Ljava/sql/Time;

    invoke-direct {v5, v2, v3, v4}, Ljava/sql/Time;-><init>(III)V

    return-object v5

    .line 108
    .end local v2    # "hour":I
    .end local v3    # "minute":I
    .end local v4    # "second":I
    :cond_49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 97
    .end local v0    # "secondColon":I
    .end local v1    # "firstColon":I
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getDate()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getDay()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getMonth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getYear()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setDate(I)V
    .registers 3
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setMonth(I)V
    .registers 3
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setTime(J)V
    .registers 3
    .param p1, "time"    # J

    .line 81
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 82
    return-void
.end method

.method public whitelist test-api setYear(I)V
    .registers 3
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 120
    invoke-super {p0}, Ljava/util/Date;->getHours()I

    move-result v0

    .line 121
    .local v0, "hour":I
    invoke-super {p0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    .line 122
    .local v1, "minute":I
    invoke-super {p0}, Ljava/util/Date;->getSeconds()I

    move-result v2

    .line 127
    .local v2, "second":I
    const-string v3, "0"

    const/16 v4, 0xa

    if-ge v0, v4, :cond_24

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "hourString":Ljava/lang/String;
    goto :goto_28

    .line 130
    .end local v5    # "hourString":Ljava/lang/String;
    :cond_24
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 132
    .restart local v5    # "hourString":Ljava/lang/String;
    :goto_28
    if-ge v1, v4, :cond_3c

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "minuteString":Ljava/lang/String;
    goto :goto_40

    .line 135
    .end local v6    # "minuteString":Ljava/lang/String;
    :cond_3c
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 137
    .restart local v6    # "minuteString":Ljava/lang/String;
    :goto_40
    if-ge v2, v4, :cond_54

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "secondString":Ljava/lang/String;
    goto :goto_58

    .line 140
    .end local v3    # "secondString":Ljava/lang/String;
    :cond_54
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 142
    .restart local v3    # "secondString":Ljava/lang/String;
    :goto_58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
