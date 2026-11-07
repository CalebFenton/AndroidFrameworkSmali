.class Landroid/icu/impl/StaticUnicodeSets$ParseDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "StaticUnicodeSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/StaticUnicodeSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParseDataSink"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 184
    const-class v0, Landroid/icu/impl/StaticUnicodeSets;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 15
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 187
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 188
    .local v0, "contextsTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 189
    const-string v2, "date"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_110

    .line 192
    :cond_15
    nop

    .line 193
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    .line 194
    .local v2, "strictnessTable":Landroid/icu/impl/UResource$Table;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1b
    invoke-interface {v2, v3, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 195
    const-string v4, "lenient"

    invoke-virtual {p1, v4}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 196
    .local v4, "isLenient":Z
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v5

    .line 197
    .local v5, "array":Landroid/icu/impl/UResource$Array;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2c
    invoke-interface {v5}, Landroid/icu/impl/UResource$Array;->getSize()I

    move-result v7

    if-ge v6, v7, :cond_10c

    .line 198
    invoke-interface {v5, v6, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 199
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "str":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4e

    .line 203
    if-eqz v4, :cond_47

    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->PERIOD:Landroid/icu/impl/StaticUnicodeSets$Key;

    goto :goto_49

    :cond_47
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->STRICT_PERIOD:Landroid/icu/impl/StaticUnicodeSets$Key;

    :goto_49
    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto/16 :goto_ef

    .line 204
    :cond_4e
    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_62

    .line 205
    if-eqz v4, :cond_5b

    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->COMMA:Landroid/icu/impl/StaticUnicodeSets$Key;

    goto :goto_5d

    :cond_5b
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->STRICT_COMMA:Landroid/icu/impl/StaticUnicodeSets$Key;

    :goto_5d
    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto/16 :goto_ef

    .line 206
    :cond_62
    const/16 v8, 0x2b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_71

    .line 207
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->PLUS_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto/16 :goto_ef

    .line 208
    :cond_71
    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_80

    .line 209
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->MINUS_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto/16 :goto_ef

    .line 210
    :cond_80
    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_8e

    .line 211
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->DOLLAR_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_ef

    .line 212
    :cond_8e
    const/16 v8, 0xa3

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_9c

    .line 213
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->POUND_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_ef

    .line 214
    :cond_9c
    const/16 v8, 0x20b9

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_aa

    .line 215
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->RUPEE_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_ef

    .line 216
    :cond_aa
    const/16 v8, 0xa5

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_b8

    .line 217
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->YEN_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_ef

    .line 218
    :cond_b8
    const/16 v8, 0x20a9

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_c6

    .line 219
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->WON_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_ef

    .line 220
    :cond_c6
    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_d4

    .line 221
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->PERCENT_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_ef

    .line 222
    :cond_d4
    const/16 v8, 0x2030

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_e2

    .line 223
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->PERMILLE_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_ef

    .line 224
    :cond_e2
    const/16 v8, 0x2019

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_f3

    .line 225
    sget-object v8, Landroid/icu/impl/StaticUnicodeSets$Key;->APOSTROPHE_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Landroid/icu/impl/StaticUnicodeSets;->-$$Nest$smsaveSet(Landroid/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    .line 197
    .end local v7    # "str":Ljava/lang/String;
    :goto_ef
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2c

    .line 228
    .restart local v7    # "str":Ljava/lang/String;
    :cond_f3
    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown class of parse lenients: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 194
    .end local v4    # "isLenient":Z
    .end local v5    # "array":Landroid/icu/impl/UResource$Array;
    .end local v6    # "k":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_10c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1b

    .line 188
    .end local v2    # "strictnessTable":Landroid/icu/impl/UResource$Table;
    .end local v3    # "j":I
    :cond_110
    :goto_110
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 234
    .end local v1    # "i":I
    :cond_114
    return-void
.end method
