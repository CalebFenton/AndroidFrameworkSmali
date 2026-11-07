.class final Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;
.super Landroid/icu/impl/UResource$Sink;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InflectedPluralSink"
.end annotation


# instance fields
.field blacklist caseVariant:Ljava/lang/String;

.field blacklist gender:Ljava/lang/String;

.field blacklist outArray:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "gender"    # Ljava/lang/String;
    .param p2, "caseVariant"    # Ljava/lang/String;
    .param p3, "outArray"    # [Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 180
    iput-object p1, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->gender:Ljava/lang/String;

    .line 181
    iput-object p2, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->caseVariant:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->outArray:[Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    sget v1, Landroid/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    if-ge v0, v1, :cond_14

    .line 184
    const/4 v1, 0x0

    aput-object v1, p3, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 186
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method private blacklist loadForCase(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Z
    .registers 5
    .param p1, "caseTable"    # Landroid/icu/impl/UResource$Table;
    .param p2, "caseValue"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/icu/impl/UResource$Value;

    .line 256
    invoke-interface {p1, p2, p3}, Landroid/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Landroid/icu/impl/UResource$Value;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 257
    const/4 v0, 0x0

    return v0

    .line 259
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist loadForGender(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Z
    .registers 9
    .param p1, "genderTable"    # Landroid/icu/impl/UResource$Table;
    .param p2, "genderVal"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/icu/impl/UResource$Value;

    .line 233
    invoke-interface {p1, p2, p3}, Landroid/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Landroid/icu/impl/UResource$Value;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 234
    return v1

    .line 236
    :cond_8
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 237
    .local v0, "caseTable":Landroid/icu/impl/UResource$Table;
    iget-object v2, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->caseVariant:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->caseVariant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 238
    iget-object v2, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->caseVariant:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p3}, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForCase(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 239
    return v3

    .line 241
    :cond_22
    iget-object v2, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->caseVariant:Ljava/lang/String;

    const-string v4, "nominative"

    if-eq v2, v4, :cond_2f

    .line 242
    invoke-direct {p0, v0, v4, p3}, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForCase(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 243
    return v3

    .line 247
    :cond_2f
    const-string v2, "_"

    invoke-direct {p0, v0, v2, p3}, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForCase(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 248
    return v3

    .line 250
    :cond_38
    return v1
.end method

.method private blacklist loadForPluralForm(Landroid/icu/impl/UResource$Table;Landroid/icu/impl/UResource$Value;)Z
    .registers 6
    .param p1, "genderTable"    # Landroid/icu/impl/UResource$Table;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 211
    iget-object v0, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->gender:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->gender:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 212
    iget-object v0, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->gender:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForGender(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 213
    return v1

    .line 215
    :cond_16
    iget-object v0, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->gender:Ljava/lang/String;

    const-string v2, "neuter"

    if-eq v0, v2, :cond_23

    .line 216
    invoke-direct {p0, p1, v2, p2}, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForGender(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 217
    return v1

    .line 221
    :cond_23
    const-string v0, "_"

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForGender(Landroid/icu/impl/UResource$Table;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 222
    return v1

    .line 224
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 11
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 191
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 192
    .local v0, "pluralsTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 193
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "keyString":Ljava/lang/String;
    invoke-static {v2}, Landroid/icu/impl/number/LongNameHandler;->-$$Nest$smgetIndex(Ljava/lang/String;)I

    move-result v3

    .line 195
    .local v3, "pluralIndex":I
    iget-object v4, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->outArray:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1a

    .line 197
    goto :goto_2c

    .line 199
    :cond_1a
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v4

    .line 200
    .local v4, "genderTable":Landroid/icu/impl/UResource$Table;
    invoke-direct {p0, v4, p2}, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForPluralForm(Landroid/icu/impl/UResource$Table;Landroid/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 201
    iget-object v5, p0, Landroid/icu/impl/number/LongNameHandler$InflectedPluralSink;->outArray:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 192
    .end local v2    # "keyString":Ljava/lang/String;
    .end local v3    # "pluralIndex":I
    .end local v4    # "genderTable":Landroid/icu/impl/UResource$Table;
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 204
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method
