.class final Landroid/icu/impl/number/CompactData$CompactDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "CompactData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/CompactData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompactDataSink"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field greylist-max-o data:Landroid/icu/impl/number/CompactData;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 176
    const-class v0, Landroid/icu/impl/number/CompactData;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/impl/number/CompactData;)V
    .registers 2
    .param p1, "data"    # Landroid/icu/impl/number/CompactData;

    .line 180
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 181
    iput-object p1, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    .line 182
    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 14
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "isRoot"    # Z

    .line 187
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 188
    .local v0, "powersOfTenTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i3":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 192
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    .line 193
    .local v2, "magnitude":B
    const/16 v3, 0x14

    if-lt v2, v3, :cond_18

    .line 194
    goto/16 :goto_93

    .line 196
    :cond_18
    iget-object v3, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v3}, Landroid/icu/impl/number/CompactData;->-$$Nest$fgetmultipliers(Landroid/icu/impl/number/CompactData;)[B

    move-result-object v3

    aget-byte v3, v3, v2

    .line 199
    .local v3, "multiplier":B
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v4

    .line 200
    .local v4, "pluralVariantsTable":Landroid/icu/impl/UResource$Table;
    const/4 v5, 0x0

    .local v5, "i4":I
    :goto_25
    invoke-interface {v4, v5, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 203
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v6

    .line 204
    .local v6, "plural":Landroid/icu/impl/StandardPlural;
    iget-object v7, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v7}, Landroid/icu/impl/number/CompactData;->-$$Nest$fgetpatterns(Landroid/icu/impl/number/CompactData;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6}, Landroid/icu/impl/number/CompactData;->-$$Nest$smgetIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result v8

    aget-object v7, v7, v8

    if-eqz v7, :cond_42

    .line 205
    goto :goto_69

    .line 210
    :cond_42
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "patternString":Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 212
    const-string v7, "<USE FALLBACK>"

    .line 216
    :cond_50
    iget-object v8, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v8}, Landroid/icu/impl/number/CompactData;->-$$Nest$fgetpatterns(Landroid/icu/impl/number/CompactData;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v6}, Landroid/icu/impl/number/CompactData;->-$$Nest$smgetIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result v9

    aput-object v7, v8, v9

    .line 220
    if-nez v3, :cond_69

    .line 221
    invoke-static {v7}, Landroid/icu/impl/number/CompactData;->-$$Nest$smcountZeros(Ljava/lang/String;)I

    move-result v8

    .line 222
    .local v8, "numZeros":I
    if-lez v8, :cond_69

    .line 223
    sub-int v9, v8, v2

    add-int/lit8 v9, v9, -0x1

    int-to-byte v3, v9

    .line 200
    .end local v6    # "plural":Landroid/icu/impl/StandardPlural;
    .end local v7    # "patternString":Ljava/lang/String;
    .end local v8    # "numZeros":I
    :cond_69
    :goto_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 229
    .end local v5    # "i4":I
    :cond_6c
    iget-object v5, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v5}, Landroid/icu/impl/number/CompactData;->-$$Nest$fgetmultipliers(Landroid/icu/impl/number/CompactData;)[B

    move-result-object v5

    aget-byte v5, v5, v2

    if-nez v5, :cond_92

    .line 230
    iget-object v5, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v5}, Landroid/icu/impl/number/CompactData;->-$$Nest$fgetmultipliers(Landroid/icu/impl/number/CompactData;)[B

    move-result-object v5

    aput-byte v3, v5, v2

    .line 231
    iget-object v5, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v5}, Landroid/icu/impl/number/CompactData;->-$$Nest$fgetlargestMagnitude(Landroid/icu/impl/number/CompactData;)B

    move-result v5

    if-le v2, v5, :cond_8b

    .line 232
    iget-object v5, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v5, v2}, Landroid/icu/impl/number/CompactData;->-$$Nest$fputlargestMagnitude(Landroid/icu/impl/number/CompactData;B)V

    .line 234
    :cond_8b
    iget-object v5, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/icu/impl/number/CompactData;->-$$Nest$fputisEmpty(Landroid/icu/impl/number/CompactData;Z)V

    goto :goto_93

    .line 236
    :cond_92
    nop

    .line 188
    .end local v2    # "magnitude":B
    .end local v3    # "multiplier":B
    .end local v4    # "pluralVariantsTable":Landroid/icu/impl/UResource$Table;
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 239
    .end local v1    # "i3":I
    :cond_97
    return-void
.end method
