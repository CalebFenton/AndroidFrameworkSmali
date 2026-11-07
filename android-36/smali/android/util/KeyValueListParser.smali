.class public Landroid/util/KeyValueListParser;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/KeyValueListParser$FloatValue;,
        Landroid/util/KeyValueListParser$StringValue;,
        Landroid/util/KeyValueListParser$LongValue;,
        Landroid/util/KeyValueListParser$IntValue;
    }
.end annotation


# instance fields
.field private final greylist-max-o mSplitter:Landroid/text/TextUtils$StringSplitter;

.field private final greylist-max-o mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(C)V
    .registers 3
    .param p1, "delim"    # C

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    .line 42
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Landroid/util/KeyValueListParser;->mSplitter:Landroid/text/TextUtils$StringSplitter;

    .line 43
    return-void
.end method


# virtual methods
.method public greylist-max-o getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 146
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 149
    :try_start_a
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return v1

    .line 150
    :catch_f
    move-exception v1

    .line 154
    :cond_10
    return p2
.end method

.method public greylist-max-o getDurationMillis(Ljava/lang/String;J)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 204
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 207
    :try_start_a
    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_20

    .line 210
    :cond_1b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 208
    :cond_20
    :goto_20
    invoke-static {v0}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_28} :catch_29
    .catch Ljava/time/format/DateTimeParseException; {:try_start_a .. :try_end_28} :catch_29

    return-wide v1

    .line 212
    :catch_29
    move-exception v1

    .line 216
    :cond_2a
    return-wide p2
.end method

.method public greylist-max-o getFloat(Ljava/lang/String;F)F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # F

    .line 114
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 117
    :try_start_a
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return v1

    .line 118
    :catch_f
    move-exception v1

    .line 122
    :cond_10
    return p2
.end method

.method public greylist-max-o getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 78
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 81
    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return v1

    .line 82
    :catch_f
    move-exception v1

    .line 86
    :cond_10
    return p2
.end method

.method public greylist-max-o getIntArray(Ljava/lang/String;[I)[I
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # [I

    .line 167
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 170
    :try_start_a
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_26

    .line 172
    array-length v2, v1

    new-array v2, v2, [I

    .line 173
    .local v2, "ret":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v4, v1

    if-ge v3, v4, :cond_25

    .line 174
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_22} :catch_27

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 176
    .end local v3    # "i":I
    :cond_25
    return-object v2

    .line 180
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "ret":[I
    :cond_26
    goto :goto_28

    .line 178
    :catch_27
    move-exception v1

    .line 182
    :cond_28
    :goto_28
    return-object p2
.end method

.method public greylist-max-o getLong(Ljava/lang/String;J)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 96
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 99
    :try_start_a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return-wide v1

    .line 100
    :catch_f
    move-exception v1

    .line 104
    :cond_10
    return-wide p2
.end method

.method public greylist-max-o getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 134
    return-object v0

    .line 136
    :cond_b
    return-object p2
.end method

.method public greylist-max-o keyAt(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 196
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o setString(Ljava/lang/String;)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 57
    if-eqz p1, :cond_6d

    .line 58
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mSplitter:Landroid/text/TextUtils$StringSplitter;

    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mSplitter:Landroid/text/TextUtils$StringSplitter;

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    .local v1, "pair":Ljava/lang/String;
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 61
    .local v2, "sep":I
    if-ltz v2, :cond_3f

    .line 66
    iget-object v3, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v1    # "pair":Ljava/lang/String;
    .end local v2    # "sep":I
    goto :goto_12

    .line 62
    .restart local v1    # "pair":Ljava/lang/String;
    .restart local v2    # "sep":I
    :cond_3f
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a valid key-value pair"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    .end local v1    # "pair":Ljava/lang/String;
    .end local v2    # "sep":I
    :cond_6d
    return-void
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method
