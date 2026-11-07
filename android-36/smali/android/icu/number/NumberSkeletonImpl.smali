.class Landroid/icu/number/NumberSkeletonImpl;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/NumberSkeletonImpl$StemEnum;,
        Landroid/icu/number/NumberSkeletonImpl$ParseState;,
        Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;,
        Landroid/icu/number/NumberSkeletonImpl$StemToObject;,
        Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;,
        Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist ALT_WILDCARD_CHAR:C = '+'

.field static final blacklist SERIALIZED_STEM_TRIE:Ljava/lang/String;

.field static final blacklist STEM_ENUM_VALUES:[Landroid/icu/number/NumberSkeletonImpl$StemEnum;

.field static final blacklist WILDCARD_CHAR:C = '*'

.field private static final blacklist cache:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/number/UnlocalizedNumberFormatter;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smappendMultiple(Ljava/lang/StringBuilder;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberSkeletonImpl;->appendMultiple(Ljava/lang/StringBuilder;II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    nop

    .line 150
    invoke-static {}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->values()[Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl;->STEM_ENUM_VALUES:[Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    .line 153
    invoke-static {}, Landroid/icu/number/NumberSkeletonImpl;->buildStemTrie()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl;->SERIALIZED_STEM_TRIE:Ljava/lang/String;

    .line 525
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$1;

    invoke-direct {v0}, Landroid/icu/number/NumberSkeletonImpl$1;-><init>()V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl;->cache:Landroid/icu/impl/CacheBase;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appendMultiple(Ljava/lang/StringBuilder;II)V
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "cp"    # I
    .param p2, "count"    # I

    .line 1712
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_9

    .line 1713
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1712
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1715
    .end local v0    # "i":I
    :cond_9
    return-void
.end method

.method static blacklist buildStemTrie()Ljava/lang/String;
    .registers 3

    .line 156
    new-instance v0, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v0}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    .line 159
    .local v0, "b":Landroid/icu/util/CharsTrieBuilder;
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_COMPACT_SHORT:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "compact-short"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 160
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_COMPACT_LONG:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "compact-long"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 161
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SCIENTIFIC:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "scientific"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 162
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ENGINEERING:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "engineering"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 163
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_NOTATION_SIMPLE:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "notation-simple"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 164
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_BASE_UNIT:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "base-unit"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 165
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PERCENT:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "percent"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 166
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PERMILLE:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "permille"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 167
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_INTEGER:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "precision-integer"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 168
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_UNLIMITED:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "precision-unlimited"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 169
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_CURRENCY_STANDARD:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "precision-currency-standard"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 170
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_CURRENCY_CASH:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "precision-currency-cash"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 171
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_CEILING:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-ceiling"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 172
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_FLOOR:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-floor"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 173
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_DOWN:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-down"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 174
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_UP:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-up"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 175
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_HALF_EVEN:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-half-even"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 176
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_HALF_DOWN:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-half-down"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 177
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_HALF_UP:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-half-up"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 178
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_UNNECESSARY:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-unnecessary"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 179
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_INTEGER_WIDTH_TRUNC:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "integer-width-trunc"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 180
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_OFF:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "group-off"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 181
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_MIN2:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "group-min2"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 182
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_AUTO:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "group-auto"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 183
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_ON_ALIGNED:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "group-on-aligned"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 184
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_THOUSANDS:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "group-thousands"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 185
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_LATIN:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "latin"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 186
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_NARROW:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-narrow"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 187
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_SHORT:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-short"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 188
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_FULL_NAME:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-full-name"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 189
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_ISO_CODE:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-iso-code"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 190
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_FORMAL:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-formal"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 191
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_VARIANT:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-variant"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 192
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_HIDDEN:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-hidden"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 193
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_AUTO:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-auto"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 194
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ALWAYS:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-always"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 195
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_NEVER:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-never"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 196
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-accounting"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 197
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_ALWAYS:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-accounting-always"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 198
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_EXCEPT_ZERO:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-except-zero"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 199
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_EXCEPT_ZERO:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-accounting-except-zero"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 200
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_NEGATIVE:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-negative"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 201
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_NEGATIVE:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-accounting-negative"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 202
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_DECIMAL_AUTO:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "decimal-auto"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 203
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_DECIMAL_ALWAYS:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "decimal-always"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 206
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_INCREMENT:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "precision-increment"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 207
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_MEASURE_UNIT:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "measure-unit"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 208
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PER_MEASURE_UNIT:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "per-measure-unit"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 209
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 210
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_USAGE:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "usage"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 211
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_CURRENCY:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "currency"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 212
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_INTEGER_WIDTH:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "integer-width"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 213
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_NUMBERING_SYSTEM:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "numbering-system"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 214
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SCALE:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "scale"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 217
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_COMPACT_SHORT:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "K"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 218
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_COMPACT_LONG:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "KK"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 219
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PERCENT:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "%"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 220
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PERCENT_100:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "%x100"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 221
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_OFF:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, ",_"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 222
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_MIN2:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, ",?"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 223
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_ON_ALIGNED:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, ",!"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 224
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ALWAYS:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "+!"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 225
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_NEVER:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "+_"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 226
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "()"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 227
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_ALWAYS:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "()!"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 228
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_EXCEPT_ZERO:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "+?"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 229
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_EXCEPT_ZERO:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "()?"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 230
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_NEGATIVE:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "+-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 231
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_NEGATIVE:Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "()-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 235
    sget-object v1, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    invoke-virtual {v0, v1}, Landroid/icu/util/CharsTrieBuilder;->buildCharSequence(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "content"    # Ljava/lang/CharSequence;

    .line 1706
    if-nez p0, :cond_3

    .line 1709
    return-void

    .line 1707
    :cond_3
    new-instance v0, Landroid/icu/number/SkeletonSyntaxException;

    const-string v1, "Duplicated setting"

    invoke-direct {v0, v1, p1}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v0
.end method

.method public static blacklist create(Ljava/lang/String;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .registers 3
    .param p0, "skeletonString"    # Ljava/lang/String;

    .line 554
    invoke-static {p0}, Landroid/icu/number/NumberSkeletonImpl;->parseSkeleton(Ljava/lang/String;)Landroid/icu/impl/number/MacroProps;

    move-result-object v0

    .line 555
    .local v0, "macros":Landroid/icu/impl/number/MacroProps;
    invoke-static {}, Landroid/icu/number/NumberFormatter;->with()Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/number/UnlocalizedNumberFormatter;->macros(Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v1

    check-cast v1, Landroid/icu/number/UnlocalizedNumberFormatter;

    return-object v1
.end method

.method public static blacklist generate(Landroid/icu/impl/number/MacroProps;)Ljava/lang/String;
    .registers 3
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/icu/number/NumberSkeletonImpl;->generateSkeleton(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)V

    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist generateSkeleton(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 950
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    const/16 v1, 0x20

    if-eqz v0, :cond_f

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smnotation(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 951
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 953
    :cond_f
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    if-eqz v0, :cond_1c

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smunit(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 954
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 956
    :cond_1c
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-eqz v0, :cond_29

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smusage(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 957
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 959
    :cond_29
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    if-eqz v0, :cond_36

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smprecision(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 960
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 962
    :cond_36
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    if-eqz v0, :cond_43

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smroundingMode(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 963
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 965
    :cond_43
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    if-eqz v0, :cond_50

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smgrouping(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 966
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 968
    :cond_50
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    if-eqz v0, :cond_5d

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smintegerWidth(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 969
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 971
    :cond_5d
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    if-eqz v0, :cond_6a

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smsymbols(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 972
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 974
    :cond_6a
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-eqz v0, :cond_77

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smunitWidth(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 975
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 977
    :cond_77
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-eqz v0, :cond_84

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smsign(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 978
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 980
    :cond_84
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-eqz v0, :cond_91

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smdecimal(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 981
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 983
    :cond_91
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    if-eqz v0, :cond_9e

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->-$$Nest$smscale(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 984
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 988
    :cond_9e
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    if-nez v0, :cond_df

    .line 992
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    if-eqz v0, :cond_b7

    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_af

    goto :goto_b7

    .line 993
    :cond_af
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot generate number skeleton with custom unit display case"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_b7
    :goto_b7
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    if-nez v0, :cond_d7

    .line 1000
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    if-nez v0, :cond_cf

    .line 1006
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_ce

    .line 1007
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1009
    :cond_ce
    return-void

    .line 1001
    :cond_cf
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot generate number skeleton with custom plural rules"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_d7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot generate number skeleton with custom affix provider"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_df
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot generate number skeleton with custom padder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getOrCreate(Ljava/lang/String;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .registers 3
    .param p0, "skeletonString"    # Ljava/lang/String;

    .line 543
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl;->cache:Landroid/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    return-object v0
.end method

.method static blacklist isWildcardChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 146
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_b

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static blacklist parseOption(Landroid/icu/number/NumberSkeletonImpl$ParseState;Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberSkeletonImpl$ParseState;
    .registers 5
    .param p0, "stem"    # Landroid/icu/number/NumberSkeletonImpl$ParseState;
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 866
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_84

    .line 901
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_9a

    goto :goto_57

    .line 892
    :pswitch_f
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseScaleOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 893
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 889
    :pswitch_15
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseNumberingSystemOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 890
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 886
    :pswitch_1b
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseIntegerWidthOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 887
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 868
    :pswitch_21
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseCurrencyOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 869
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 880
    :pswitch_27
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseUnitUsageOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 881
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 877
    :pswitch_2d
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseIdentifierUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 878
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 874
    :pswitch_33
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseMeasurePerUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 875
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 871
    :pswitch_39
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseMeasureUnitOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 872
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 883
    :pswitch_3f
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseIncrementOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 884
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 903
    :pswitch_45
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseExponentWidthOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 904
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCIENTIFIC:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 906
    :cond_4e
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseExponentSignOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 907
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCIENTIFIC:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 915
    :cond_57
    :goto_57
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_a0

    goto :goto_6b

    .line 917
    :pswitch_5f
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseFracSigOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 918
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 921
    :cond_68
    sget-object p0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 922
    nop

    .line 928
    :goto_6b
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_a6

    goto :goto_7c

    .line 930
    :pswitch_73
    invoke-static {p1, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseTrailingZeroOption(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 931
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 939
    :cond_7c
    :goto_7c
    new-instance v0, Landroid/icu/number/SkeletonSyntaxException;

    const-string v1, "Invalid option"

    invoke-direct {v0, v1, p1}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v0

    :pswitch_data_84
    .packed-switch 0x4
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_1b
        :pswitch_15
        :pswitch_f
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_45
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_5f
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x3
        :pswitch_73
    .end packed-switch
.end method

.method private static blacklist parseSkeleton(Ljava/lang/String;)Landroid/icu/impl/number/MacroProps;
    .registers 11
    .param p0, "skeletonString"    # Ljava/lang/String;

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 580
    new-instance v0, Landroid/icu/impl/number/MacroProps;

    invoke-direct {v0}, Landroid/icu/impl/number/MacroProps;-><init>()V

    .line 581
    .local v0, "macros":Landroid/icu/impl/number/MacroProps;
    new-instance v1, Landroid/icu/impl/StringSegment;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/icu/impl/StringSegment;-><init>(Ljava/lang/String;Z)V

    .line 582
    .local v1, "segment":Landroid/icu/impl/StringSegment;
    new-instance v3, Landroid/icu/util/CharsTrie;

    sget-object v4, Landroid/icu/number/NumberSkeletonImpl;->SERIALIZED_STEM_TRIE:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 583
    .local v3, "stemTrie":Landroid/icu/util/CharsTrie;
    sget-object v4, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 584
    .local v4, "stem":Landroid/icu/number/NumberSkeletonImpl$ParseState;
    const/4 v5, 0x0

    .line 587
    .local v5, "offset":I
    :cond_28
    :goto_28
    invoke-virtual {v1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v6

    if-ge v5, v6, :cond_bc

    .line 588
    invoke-virtual {v1, v5}, Landroid/icu/impl/StringSegment;->codePointAt(I)I

    move-result v6

    .line 589
    .local v6, "cp":I
    invoke-static {v6}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v7

    .line 590
    .local v7, "isTokenSeparator":Z
    const/16 v8, 0x2f

    if-ne v6, v8, :cond_3c

    const/4 v8, 0x1

    goto :goto_3d

    :cond_3c
    move v8, v2

    .line 592
    .local v8, "isOptionSeparator":Z
    :goto_3d
    if-nez v7, :cond_4e

    if-nez v8, :cond_4e

    .line 594
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v5, v9

    .line 595
    sget-object v9, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    if-ne v4, v9, :cond_28

    .line 598
    invoke-virtual {v3, v6}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    goto :goto_28

    .line 606
    :cond_4e
    if-eqz v5, :cond_6b

    .line 607
    invoke-virtual {v1, v5}, Landroid/icu/impl/StringSegment;->setLength(I)V

    .line 608
    sget-object v9, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    if-ne v4, v9, :cond_5f

    .line 610
    invoke-static {v1, v3, v0}, Landroid/icu/number/NumberSkeletonImpl;->parseStem(Landroid/icu/impl/StringSegment;Landroid/icu/util/CharsTrie;Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberSkeletonImpl$ParseState;

    move-result-object v4

    .line 611
    invoke-virtual {v3}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    goto :goto_63

    .line 614
    :cond_5f
    invoke-static {v4, v1, v0}, Landroid/icu/number/NumberSkeletonImpl;->parseOption(Landroid/icu/number/NumberSkeletonImpl$ParseState;Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberSkeletonImpl$ParseState;

    move-result-object v4

    .line 616
    :goto_63
    invoke-virtual {v1}, Landroid/icu/impl/StringSegment;->resetLength()V

    .line 619
    invoke-virtual {v1, v5}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 620
    const/4 v5, 0x0

    goto :goto_6f

    .line 622
    :cond_6b
    sget-object v9, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    if-ne v4, v9, :cond_ad

    .line 632
    :goto_6f
    if-eqz v8, :cond_85

    sget-object v9, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    if-eq v4, v9, :cond_76

    goto :goto_85

    .line 633
    :cond_76
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/StringSegment;->setLength(I)V

    .line 634
    new-instance v2, Landroid/icu/number/SkeletonSyntaxException;

    const-string v9, "Unexpected option separator"

    invoke-direct {v2, v9, v1}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v2

    .line 638
    :cond_85
    :goto_85
    if-eqz v7, :cond_a4

    sget-object v9, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    if-eq v4, v9, :cond_a4

    .line 639
    invoke-virtual {v4}, Landroid/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v9

    packed-switch v9, :pswitch_data_be

    .line 654
    sget-object v4, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    goto :goto_a4

    .line 649
    :pswitch_95
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/StringSegment;->setLength(I)V

    .line 650
    new-instance v2, Landroid/icu/number/SkeletonSyntaxException;

    const-string v9, "Stem requires an option"

    invoke-direct {v2, v9, v1}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v2

    .line 658
    :cond_a4
    :goto_a4
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 659
    .end local v6    # "cp":I
    .end local v7    # "isTokenSeparator":Z
    .end local v8    # "isOptionSeparator":Z
    goto/16 :goto_28

    .line 624
    .restart local v6    # "cp":I
    .restart local v7    # "isTokenSeparator":Z
    .restart local v8    # "isOptionSeparator":Z
    :cond_ad
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/StringSegment;->setLength(I)V

    .line 625
    new-instance v2, Landroid/icu/number/SkeletonSyntaxException;

    const-string v9, "Unexpected separator character"

    invoke-direct {v2, v9, v1}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v2

    .line 660
    .end local v6    # "cp":I
    .end local v7    # "isTokenSeparator":Z
    .end local v8    # "isOptionSeparator":Z
    :cond_bc
    nop

    .line 661
    return-object v0

    :pswitch_data_be
    .packed-switch 0x4
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
    .end packed-switch
.end method

.method private static blacklist parseStem(Landroid/icu/impl/StringSegment;Landroid/icu/util/CharsTrie;Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberSkeletonImpl$ParseState;
    .registers 7
    .param p0, "segment"    # Landroid/icu/impl/StringSegment;
    .param p1, "stemTrie"    # Landroid/icu/util/CharsTrie;
    .param p2, "macros"    # Landroid/icu/impl/number/MacroProps;

    .line 671
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/StringSegment;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_178

    .line 691
    invoke-virtual {p1}, Landroid/icu/util/CharsTrie;->current()Landroid/icu/util/BytesTrie$Result;

    move-result-object v1

    .line 693
    .local v1, "stemResult":Landroid/icu/util/BytesTrie$Result;
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-eq v1, v2, :cond_49

    sget-object v2, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v1, v2, :cond_41

    goto :goto_49

    .line 681
    .end local v1    # "stemResult":Landroid/icu/util/BytesTrie$Result;
    :sswitch_15
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 682
    invoke-static {p0, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseScientificStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 683
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 677
    :sswitch_20
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 678
    invoke-static {p0, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseDigitsStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 679
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 685
    :sswitch_2b
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 686
    invoke-static {p0, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseIntegerStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 687
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 673
    :sswitch_36
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 674
    invoke-static {p0, p2}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smparseFractionStem(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/MacroProps;)V

    .line 675
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_FRACTION_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 695
    .restart local v1    # "stemResult":Landroid/icu/util/BytesTrie$Result;
    :cond_41
    new-instance v0, Landroid/icu/number/SkeletonSyntaxException;

    const-string v2, "Unknown stem"

    invoke-direct {v0, v2, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v0

    .line 698
    :cond_49
    :goto_49
    sget-object v2, Landroid/icu/number/NumberSkeletonImpl;->STEM_ENUM_VALUES:[Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {p1}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v3

    aget-object v2, v2, v3

    .line 699
    .local v2, "stem":Landroid/icu/number/NumberSkeletonImpl$StemEnum;
    invoke-virtual {v2}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_18a

    .line 852
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 848
    :pswitch_5e
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 849
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCALE:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 844
    :pswitch_66
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 845
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NUMBERING_SYSTEM:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 840
    :pswitch_6e
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 841
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_INTEGER_WIDTH:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 835
    :pswitch_76
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 836
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 837
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_CURRENCY_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 831
    :pswitch_83
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 832
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_UNIT_USAGE:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 826
    :pswitch_8b
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 828
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_IDENTIFIER_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 819
    :pswitch_98
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    instance-of v0, v0, Landroid/icu/util/Currency;

    if-nez v0, :cond_a6

    .line 822
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 823
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_PER_MEASURE_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 820
    :cond_a6
    new-instance v0, Landroid/icu/number/SkeletonSyntaxException;

    const-string v3, "Duplicated setting"

    invoke-direct {v0, v3, p0}, Landroid/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v0

    .line 813
    :pswitch_ae
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 814
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_MEASURE_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 809
    :pswitch_b6
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 810
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_INCREMENT_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 802
    :pswitch_be
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 803
    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->-$$Nest$smdecimalSeparatorDisplay(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 804
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 796
    :pswitch_cc
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 797
    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->-$$Nest$smsignDisplay(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$SignDisplay;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 798
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 783
    :pswitch_da
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 784
    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->-$$Nest$smunitWidth(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$UnitWidth;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 785
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 772
    :pswitch_e8
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 773
    sget-object v0, Landroid/icu/text/NumberingSystem;->LATIN:Landroid/icu/text/NumberingSystem;

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 774
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 767
    :pswitch_f4
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 768
    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->-$$Nest$smgroupingStrategy(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$GroupingStrategy;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    .line 769
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 758
    :pswitch_102
    iget-object v3, p2, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    invoke-static {v3, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 759
    invoke-static {v0}, Landroid/icu/number/IntegerWidth;->zeroFillTo(I)Landroid/icu/number/IntegerWidth;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/icu/number/IntegerWidth;->truncateAt(I)Landroid/icu/number/IntegerWidth;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 760
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 753
    :pswitch_114
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 754
    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->-$$Nest$smroundingMode(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Ljava/math/RoundingMode;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    .line 755
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 736
    :pswitch_122
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 737
    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->-$$Nest$smprecision(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/Precision;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    .line 738
    invoke-virtual {v2}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1fc

    .line 742
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 740
    :pswitch_137
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_FRACTION_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 726
    :pswitch_13a
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 728
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/icu/number/Scale;->powerOfTen(I)Landroid/icu/number/Scale;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    .line 729
    sget-object v0, Landroid/icu/util/NoUnit;->PERCENT:Landroid/icu/util/MeasureUnit;

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 730
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 721
    :pswitch_152
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 722
    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->-$$Nest$smunit(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 723
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 708
    :pswitch_160
    iget-object v0, p2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    invoke-static {v0, p0}, Landroid/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 709
    invoke-static {v2}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->-$$Nest$smnotation(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/Notation;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    .line 710
    invoke-virtual {v2}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_202

    .line 715
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    .line 713
    :pswitch_175
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCIENTIFIC:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0

    :sswitch_data_178
    .sparse-switch
        0x2e -> :sswitch_36
        0x30 -> :sswitch_2b
        0x40 -> :sswitch_20
        0x45 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_160
        :pswitch_160
        :pswitch_160
        :pswitch_160
        :pswitch_160
        :pswitch_152
        :pswitch_152
        :pswitch_152
        :pswitch_13a
        :pswitch_122
        :pswitch_122
        :pswitch_122
        :pswitch_122
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_102
        :pswitch_f4
        :pswitch_f4
        :pswitch_f4
        :pswitch_f4
        :pswitch_f4
        :pswitch_e8
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_cc
        :pswitch_cc
        :pswitch_cc
        :pswitch_cc
        :pswitch_cc
        :pswitch_cc
        :pswitch_cc
        :pswitch_cc
        :pswitch_cc
        :pswitch_be
        :pswitch_be
        :pswitch_b6
        :pswitch_ae
        :pswitch_98
        :pswitch_8b
        :pswitch_83
        :pswitch_76
        :pswitch_6e
        :pswitch_66
        :pswitch_5e
    .end packed-switch

    :pswitch_data_1fc
    .packed-switch 0x9
        :pswitch_137
    .end packed-switch

    :pswitch_data_202
    .packed-switch 0x2
        :pswitch_175
        :pswitch_175
    .end packed-switch
.end method
