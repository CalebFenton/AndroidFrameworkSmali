.class public abstract Landroid/icu/number/NumberRangeFormatterSettings;
.super Ljava/lang/Object;
.source "NumberRangeFormatterSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/icu/number/NumberRangeFormatterSettings<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final blacklist KEY_COLLAPSE:I = 0x5

.field static final blacklist KEY_FORMATTER_1:I = 0x2

.field static final blacklist KEY_FORMATTER_2:I = 0x3

.field static final blacklist KEY_IDENTITY_FALLBACK:I = 0x6

.field static final blacklist KEY_LOCALE:I = 0x1

.field static final blacklist KEY_MACROS:I = 0x0

.field static final blacklist KEY_MAX:I = 0x7

.field static final blacklist KEY_SAME_FORMATTERS:I = 0x4


# instance fields
.field private final blacklist key:I

.field private final blacklist parent:Landroid/icu/number/NumberRangeFormatterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/number/NumberRangeFormatterSettings<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile blacklist resolvedMacros:Landroid/icu/impl/number/range/RangeMacroProps;

.field private final blacklist value:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Landroid/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V
    .registers 4
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberRangeFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 35
    .local p0, "this":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<TT;>;"
    .local p1, "parent":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/icu/number/NumberRangeFormatterSettings;->parent:Landroid/icu/number/NumberRangeFormatterSettings;

    .line 37
    iput p2, p0, Landroid/icu/number/NumberRangeFormatterSettings;->key:I

    .line 38
    iput-object p3, p0, Landroid/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist test-api collapse(Landroid/icu/number/NumberRangeFormatter$RangeCollapse;)Landroid/icu/number/NumberRangeFormatterSettings;
    .registers 3
    .param p1, "collapse"    # Landroid/icu/number/NumberRangeFormatter$RangeCollapse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberRangeFormatter$RangeCollapse;",
            ")TT;"
        }
    .end annotation

    .line 110
    .local p0, "this":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<TT;>;"
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberRangeFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist create(ILjava/lang/Object;)Landroid/icu/number/NumberRangeFormatterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 208
    .local p0, "this":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<TT;>;"
    if-ne p0, p1, :cond_4

    .line 209
    const/4 v0, 0x1

    return v0

    .line 211
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 212
    return v0

    .line 214
    :cond_8
    instance-of v1, p1, Landroid/icu/number/NumberRangeFormatterSettings;

    if-nez v1, :cond_d

    .line 215
    return v0

    .line 217
    :cond_d
    invoke-virtual {p0}, Landroid/icu/number/NumberRangeFormatterSettings;->resolve()Landroid/icu/impl/number/range/RangeMacroProps;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/icu/number/NumberRangeFormatterSettings;

    invoke-virtual {v1}, Landroid/icu/number/NumberRangeFormatterSettings;->resolve()Landroid/icu/impl/number/range/RangeMacroProps;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/range/RangeMacroProps;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 200
    .local p0, "this":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<TT;>;"
    invoke-virtual {p0}, Landroid/icu/number/NumberRangeFormatterSettings;->resolve()Landroid/icu/impl/number/range/RangeMacroProps;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/number/range/RangeMacroProps;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api identityFallback(Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;)Landroid/icu/number/NumberRangeFormatterSettings;
    .registers 3
    .param p1, "identityFallback"    # Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;",
            ")TT;"
        }
    .end annotation

    .line 133
    .local p0, "this":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<TT;>;"
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberRangeFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api numberFormatterBoth(Landroid/icu/number/UnlocalizedNumberFormatter;)Landroid/icu/number/NumberRangeFormatterSettings;
    .registers 4
    .param p1, "formatter"    # Landroid/icu/number/UnlocalizedNumberFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/UnlocalizedNumberFormatter;",
            ")TT;"
        }
    .end annotation

    .line 56
    .local p0, "this":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<TT;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberRangeFormatterSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberRangeFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api numberFormatterFirst(Landroid/icu/number/UnlocalizedNumberFormatter;)Landroid/icu/number/NumberRangeFormatterSettings;
    .registers 4
    .param p1, "formatterFirst"    # Landroid/icu/number/UnlocalizedNumberFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/UnlocalizedNumberFormatter;",
            ")TT;"
        }
    .end annotation

    .line 73
    .local p0, "this":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberRangeFormatterSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberRangeFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api numberFormatterSecond(Landroid/icu/number/UnlocalizedNumberFormatter;)Landroid/icu/number/NumberRangeFormatterSettings;
    .registers 4
    .param p1, "formatterSecond"    # Landroid/icu/number/UnlocalizedNumberFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/UnlocalizedNumberFormatter;",
            ")TT;"
        }
    .end annotation

    .line 90
    .local p0, "this":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberRangeFormatterSettings;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/icu/number/NumberRangeFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberRangeFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method blacklist resolve()Landroid/icu/impl/number/range/RangeMacroProps;
    .registers 11

    .line 139
    .local p0, "this":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<TT;>;"
    iget-object v0, p0, Landroid/icu/number/NumberRangeFormatterSettings;->resolvedMacros:Landroid/icu/impl/number/range/RangeMacroProps;

    if-eqz v0, :cond_7

    .line 140
    iget-object v0, p0, Landroid/icu/number/NumberRangeFormatterSettings;->resolvedMacros:Landroid/icu/impl/number/range/RangeMacroProps;

    return-object v0

    .line 146
    :cond_7
    new-instance v0, Landroid/icu/impl/number/range/RangeMacroProps;

    invoke-direct {v0}, Landroid/icu/impl/number/range/RangeMacroProps;-><init>()V

    .line 148
    .local v0, "macros":Landroid/icu/impl/number/range/RangeMacroProps;
    const-wide/16 v1, 0x0

    .line 149
    .local v1, "seen":J
    move-object v3, p0

    .line 150
    .local v3, "current":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<*>;"
    :goto_f
    if-eqz v3, :cond_74

    .line 151
    const-wide/16 v4, 0x1

    iget v6, v3, Landroid/icu/number/NumberRangeFormatterSettings;->key:I

    shl-long/2addr v4, v6

    .line 152
    .local v4, "keyBitmask":J
    const-wide/16 v6, 0x0

    and-long v8, v1, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_21

    .line 153
    iget-object v3, v3, Landroid/icu/number/NumberRangeFormatterSettings;->parent:Landroid/icu/number/NumberRangeFormatterSettings;

    .line 154
    goto :goto_f

    .line 156
    :cond_21
    or-long/2addr v1, v4

    .line 157
    iget v6, v3, Landroid/icu/number/NumberRangeFormatterSettings;->key:I

    packed-switch v6, :pswitch_data_94

    .line 180
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/icu/number/NumberRangeFormatterSettings;->key:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 177
    :pswitch_42
    iget-object v6, v3, Landroid/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    iput-object v6, v0, Landroid/icu/impl/number/range/RangeMacroProps;->identityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 178
    goto :goto_71

    .line 174
    :pswitch_49
    iget-object v6, v3, Landroid/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    iput-object v6, v0, Landroid/icu/impl/number/range/RangeMacroProps;->collapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 175
    goto :goto_71

    .line 171
    :pswitch_50
    iget-object v6, v3, Landroid/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput v6, v0, Landroid/icu/impl/number/range/RangeMacroProps;->sameFormatters:I

    .line 172
    goto :goto_71

    .line 168
    :pswitch_5b
    iget-object v6, v3, Landroid/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/UnlocalizedNumberFormatter;

    iput-object v6, v0, Landroid/icu/impl/number/range/RangeMacroProps;->formatter2:Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 169
    goto :goto_71

    .line 165
    :pswitch_62
    iget-object v6, v3, Landroid/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/UnlocalizedNumberFormatter;

    iput-object v6, v0, Landroid/icu/impl/number/range/RangeMacroProps;->formatter1:Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 166
    goto :goto_71

    .line 162
    :pswitch_69
    iget-object v6, v3, Landroid/icu/number/NumberRangeFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/util/ULocale;

    iput-object v6, v0, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    .line 163
    goto :goto_71

    .line 160
    :pswitch_70
    nop

    .line 182
    :goto_71
    iget-object v3, v3, Landroid/icu/number/NumberRangeFormatterSettings;->parent:Landroid/icu/number/NumberRangeFormatterSettings;

    .line 183
    .end local v4    # "keyBitmask":J
    goto :goto_f

    .line 185
    :cond_74
    iget-object v4, v0, Landroid/icu/impl/number/range/RangeMacroProps;->formatter1:Landroid/icu/number/UnlocalizedNumberFormatter;

    if-eqz v4, :cond_82

    .line 186
    iget-object v4, v0, Landroid/icu/impl/number/range/RangeMacroProps;->formatter1:Landroid/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v4}, Landroid/icu/number/UnlocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v4

    iget-object v5, v0, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    iput-object v5, v4, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    .line 188
    :cond_82
    iget-object v4, v0, Landroid/icu/impl/number/range/RangeMacroProps;->formatter2:Landroid/icu/number/UnlocalizedNumberFormatter;

    if-eqz v4, :cond_90

    .line 189
    iget-object v4, v0, Landroid/icu/impl/number/range/RangeMacroProps;->formatter2:Landroid/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v4}, Landroid/icu/number/UnlocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v4

    iget-object v5, v0, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    iput-object v5, v4, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    .line 191
    :cond_90
    iput-object v0, p0, Landroid/icu/number/NumberRangeFormatterSettings;->resolvedMacros:Landroid/icu/impl/number/range/RangeMacroProps;

    .line 192
    return-object v0

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_70
        :pswitch_69
        :pswitch_62
        :pswitch_5b
        :pswitch_50
        :pswitch_49
        :pswitch_42
    .end packed-switch
.end method
