.class public Ljava/sql/Time;
.super Ljava/util/Date;
.source "Time.java"


# static fields
.field private static final PADDING:Ljava/lang/String; = "00"

.field private static final serialVersionUID:J = 0x74894a0dd932c471L


# direct methods
.method public constructor <init>(III)V
    .locals 7
    .param p1, "theHour"    # I
    .param p2, "theMinute"    # I
    .param p3, "theSecond"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 53
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
    .line 52
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "theTime"    # J

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    #@3
    .line 64
    return-void
.end method

.method private format(IILjava/lang/StringBuilder;)V
    .locals 4
    .param p1, "date"    # I
    .param p2, "digits"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 203
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 204
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    sub-int v1, p2, v1

    #@b
    if-lez v1, :cond_0

    #@d
    .line 205
    const-string/jumbo v1, "00"

    #@10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@13
    move-result v2

    #@14
    sub-int v2, p2, v2

    #@16
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 207
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 202
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Time;
    .locals 8
    .param p0, "timeString"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x3a

    #@2
    const/4 v7, 0x0

    #@3
    .line 225
    if-nez p0, :cond_0

    #@5
    .line 226
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v6, "timeString == null"

    #@a
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v5

    #@e
    .line 228
    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@11
    move-result v0

    #@12
    .line 229
    .local v0, "firstIndex":I
    add-int/lit8 v5, v0, 0x1

    #@14
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    #@17
    move-result v4

    #@18
    .line 235
    .local v4, "secondIndex":I
    const/4 v5, -0x1

    #@19
    if-eq v4, v5, :cond_1

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 237
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1f
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@22
    throw v5

    #@23
    .line 236
    :cond_2
    add-int/lit8 v5, v4, 0x1

    #@25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@28
    move-result v6

    #@29
    if-eq v5, v6, :cond_1

    #@2b
    .line 240
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@32
    move-result v1

    #@33
    .line 241
    .local v1, "hour":I
    add-int/lit8 v5, v0, 0x1

    #@35
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3c
    move-result v2

    #@3d
    .line 243
    .local v2, "minute":I
    add-int/lit8 v5, v4, 0x1

    #@3f
    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@42
    move-result v6

    #@43
    .line 243
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4a
    move-result v3

    #@4b
    .line 245
    .local v3, "second":I
    new-instance v5, Ljava/sql/Time;

    #@4d
    invoke-direct {v5, v1, v2, v3}, Ljava/sql/Time;-><init>(III)V

    #@50
    return-object v5
.end method


# virtual methods
.method public getDate()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getDay()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getMonth()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getYear()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setDate(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setMonth(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    #@3
    .line 173
    return-void
.end method

.method public setYear(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x3a

    #@2
    const/4 v2, 0x2

    #@3
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const/16 v1, 0x8

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    .line 188
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/sql/Time;->getHours()I

    #@d
    move-result v1

    #@e
    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Time;->format(IILjava/lang/StringBuilder;)V

    #@11
    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    .line 190
    invoke-virtual {p0}, Ljava/sql/Time;->getMinutes()I

    #@17
    move-result v1

    #@18
    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Time;->format(IILjava/lang/StringBuilder;)V

    #@1b
    .line 191
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 192
    invoke-virtual {p0}, Ljava/sql/Time;->getSeconds()I

    #@21
    move-result v1

    #@22
    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Time;->format(IILjava/lang/StringBuilder;)V

    #@25
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method
