.class public Ljava/sql/Date;
.super Ljava/util/Date;
.source "Date.java"


# annotations
.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "NM_SAME_SIMPLE_NAME_AS_SUPERCLASS"
    }
.end annotation


# static fields
.field private static final PADDING:Ljava/lang/String; = "0000"

.field private static final serialVersionUID:J = 0x14fa46683f356697L


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "theYear"    # I
    .param p2, "theMonth"    # I
    .param p3, "theDay"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Date;-><init>(III)V

    #@3
    .line 55
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "theDate"    # J

    #@0
    .prologue
    .line 71
    invoke-static {p1, p2}, Ljava/sql/Date;->normalizeTime(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@7
    .line 70
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
    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 196
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    sub-int v1, p2, v1

    #@b
    if-lez v1, :cond_0

    #@d
    .line 197
    const-string/jumbo v1, "0000"

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
    .line 199
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 194
    return-void
.end method

.method private static normalizeTime(J)J
    .locals 0
    .param p0, "theTime"    # J

    #@0
    .prologue
    .line 240
    return-wide p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Date;
    .locals 7
    .param p0, "dateString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 214
    if-nez p0, :cond_0

    #@2
    .line 215
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "dateString == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 217
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v4

    #@f
    const/16 v5, 0xa

    #@11
    if-le v4, v5, :cond_1

    #@13
    .line 219
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@15
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@18
    throw v4

    #@19
    .line 222
    :cond_1
    const-string/jumbo v4, "-"

    #@1c
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 223
    .local v2, "parts":[Ljava/lang/String;
    array-length v4, v2

    #@21
    const/4 v5, 0x3

    #@22
    if-eq v4, v5, :cond_2

    #@24
    .line 224
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@26
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@29
    throw v4

    #@2a
    .line 227
    :cond_2
    const/4 v4, 0x0

    #@2b
    aget-object v4, v2, v4

    #@2d
    invoke-static {v4}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;)I

    #@30
    move-result v3

    #@31
    .line 228
    .local v3, "year":I
    const/4 v4, 0x1

    #@32
    aget-object v4, v2, v4

    #@34
    invoke-static {v4}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;)I

    #@37
    move-result v1

    #@38
    .line 229
    .local v1, "month":I
    const/4 v4, 0x2

    #@39
    aget-object v4, v2, v4

    #@3b
    invoke-static {v4}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;)I

    #@3e
    move-result v0

    #@3f
    .line 230
    .local v0, "day":I
    new-instance v4, Ljava/sql/Date;

    #@41
    add-int/lit16 v5, v3, -0x76c

    #@43
    add-int/lit8 v6, v1, -0x1

    #@45
    invoke-direct {v4, v5, v6, v0}, Ljava/sql/Date;-><init>(III)V

    #@48
    return-object v4
.end method


# virtual methods
.method public getHours()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getMinutes()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getSeconds()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setHours(I)V
    .locals 2
    .param p1, "theHours"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setMinutes(I)V
    .locals 2
    .param p1, "theMinutes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setSeconds(I)V
    .locals 2
    .param p1, "theSeconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "unimplemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "theTime"    # J

    #@0
    .prologue
    .line 168
    invoke-static {p1, p2}, Ljava/sql/Date;->normalizeTime(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    #@7
    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x2d

    #@2
    const/4 v3, 0x2

    #@3
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const/16 v1, 0xa

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    .line 180
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/sql/Date;->getYear()I

    #@d
    move-result v1

    #@e
    add-int/lit16 v1, v1, 0x76c

    #@10
    const/4 v2, 0x4

    #@11
    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Date;->format(IILjava/lang/StringBuilder;)V

    #@14
    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 182
    invoke-virtual {p0}, Ljava/sql/Date;->getMonth()I

    #@1a
    move-result v1

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Date;->format(IILjava/lang/StringBuilder;)V

    #@20
    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 184
    invoke-virtual {p0}, Ljava/sql/Date;->getDate()I

    #@26
    move-result v1

    #@27
    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Date;->format(IILjava/lang/StringBuilder;)V

    #@2a
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1
.end method
