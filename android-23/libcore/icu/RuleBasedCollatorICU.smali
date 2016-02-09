.class public final Llibcore/icu/RuleBasedCollatorICU;
.super Ljava/lang/Object;
.source "RuleBasedCollatorICU.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ALTERNATE_HANDLING:I = 0x1

.field public static final CASE_FIRST:I = 0x2

.field public static final CASE_LEVEL:I = 0x3

.field public static final DECOMPOSITION_MODE:I = 0x4

.field public static final FRENCH_COLLATION:I = 0x0

.field public static final STRENGTH:I = 0x5

.field public static final VALUE_ATTRIBUTE_VALUE_COUNT:I = 0x1d

.field public static final VALUE_DEFAULT:I = -0x1

.field public static final VALUE_DEFAULT_STRENGTH:I = 0x2

.field public static final VALUE_IDENTICAL:I = 0xf

.field public static final VALUE_LOWER_FIRST:I = 0x18

.field public static final VALUE_NON_IGNORABLE:I = 0x15

.field public static final VALUE_OFF:I = 0x10

.field public static final VALUE_ON:I = 0x11

.field public static final VALUE_ON_WITHOUT_HANGUL:I = 0x1c

.field public static final VALUE_PRIMARY:I = 0x0

.field public static final VALUE_QUATERNARY:I = 0x3

.field public static final VALUE_SECONDARY:I = 0x1

.field public static final VALUE_SHIFTED:I = 0x14

.field public static final VALUE_TERTIARY:I = 0x2

.field public static final VALUE_UPPER_FIRST:I = 0x19


# instance fields
.field private final address:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "address"    # J

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    iput-wide p1, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@5
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    if-nez p1, :cond_0

    #@5
    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "rules == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 51
    :cond_0
    const/16 v0, 0x10

    #@10
    const/4 v1, 0x2

    #@11
    invoke-static {p1, v0, v1}, Llibcore/icu/NativeCollation;->openCollatorFromRules(Ljava/lang/String;II)J

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@17
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    invoke-static {p1}, Llibcore/icu/NativeCollation;->openCollator(Ljava/util/Locale;)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@9
    .line 54
    return-void
.end method

.method private characterIteratorToString(Ljava/text/CharacterIterator;)Ljava/lang/String;
    .locals 3
    .param p1, "it"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 120
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    #@8
    move-result v0

    #@9
    .local v0, "ch":C
    :goto_0
    const v2, 0xffff

    #@c
    if-eq v0, v2, :cond_0

    #@e
    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    .line 120
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    #@14
    move-result v0

    #@15
    goto :goto_0

    #@16
    .line 123
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 63
    new-instance v0, Llibcore/icu/RuleBasedCollatorICU;

    #@2
    iget-wide v2, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@4
    invoke-static {v2, v3}, Llibcore/icu/NativeCollation;->safeClone(J)J

    #@7
    move-result-wide v2

    #@8
    invoke-direct {v0, v2, v3}, Llibcore/icu/RuleBasedCollatorICU;-><init>(J)V

    #@b
    return-object v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    iget-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@2
    invoke-static {v0, v1, p1, p2}, Llibcore/icu/NativeCollation;->compare(JLjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 135
    if-ne p1, p0, :cond_0

    #@4
    .line 136
    return v1

    #@5
    .line 138
    :cond_0
    instance-of v3, p1, Llibcore/icu/RuleBasedCollatorICU;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 139
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 141
    check-cast v0, Llibcore/icu/RuleBasedCollatorICU;

    #@d
    .line 142
    .local v0, "rhs":Llibcore/icu/RuleBasedCollatorICU;
    invoke-virtual {p0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_3

    #@1b
    .line 143
    invoke-virtual {p0}, Llibcore/icu/RuleBasedCollatorICU;->getStrength()I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getStrength()I

    #@22
    move-result v4

    #@23
    if-ne v3, v4, :cond_3

    #@25
    .line 144
    invoke-virtual {p0}, Llibcore/icu/RuleBasedCollatorICU;->getDecomposition()I

    #@28
    move-result v3

    #@29
    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getDecomposition()I

    #@2c
    move-result v4

    #@2d
    if-ne v3, v4, :cond_2

    #@2f
    .line 142
    :goto_0
    return v1

    #@30
    :cond_2
    move v1, v2

    #@31
    .line 144
    goto :goto_0

    #@32
    :cond_3
    move v1, v2

    #@33
    .line 142
    goto :goto_0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 131
    invoke-virtual {p0, p1, p2}, Llibcore/icu/RuleBasedCollatorICU;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@2
    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->closeCollator(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 151
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 147
    return-void

    #@9
    .line 150
    :catchall_0
    move-exception v0

    #@a
    .line 151
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 150
    throw v0
.end method

.method public getAttribute(I)I
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    .line 91
    iget-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@2
    invoke-static {v0, v1, p1}, Llibcore/icu/NativeCollation;->getAttribute(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Llibcore/icu/CollationElementIteratorICU;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    iget-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@2
    invoke-static {v0, v1, p1}, Llibcore/icu/CollationElementIteratorICU;->getInstance(JLjava/lang/String;)Llibcore/icu/CollationElementIteratorICU;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Llibcore/icu/CollationElementIteratorICU;
    .locals 1
    .param p1, "it"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 115
    invoke-direct {p0, p1}, Llibcore/icu/RuleBasedCollatorICU;->characterIteratorToString(Ljava/text/CharacterIterator;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Llibcore/icu/RuleBasedCollatorICU;->getCollationElementIterator(Ljava/lang/String;)Llibcore/icu/CollationElementIteratorICU;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 95
    if-nez p1, :cond_0

    #@3
    .line 96
    return-object v1

    #@4
    .line 98
    :cond_0
    iget-wide v2, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@6
    invoke-static {v2, v3, p1}, Llibcore/icu/NativeCollation;->getSortKey(JLjava/lang/String;)[B

    #@9
    move-result-object v0

    #@a
    .line 99
    .local v0, "key":[B
    if-nez v0, :cond_1

    #@c
    .line 100
    return-object v1

    #@d
    .line 102
    :cond_1
    new-instance v1, Llibcore/icu/CollationKeyICU;

    #@f
    invoke-direct {v1, p1, v0}, Llibcore/icu/CollationKeyICU;-><init>(Ljava/lang/String;[B)V

    #@12
    return-object v1
.end method

.method public getDecomposition()I
    .locals 3

    #@0
    .prologue
    .line 71
    iget-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@2
    const/4 v2, 0x4

    #@3
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeCollation;->getAttribute(JI)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 106
    iget-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@2
    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->getRules(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStrength()I
    .locals 3

    #@0
    .prologue
    .line 79
    iget-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@2
    const/4 v2, 0x5

    #@3
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeCollation;->getAttribute(JI)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 127
    const/16 v0, 0x2a

    #@2
    return v0
.end method

.method public setAttribute(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 87
    iget-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@2
    invoke-static {v0, v1, p1, p2}, Llibcore/icu/NativeCollation;->setAttribute(JII)V

    #@5
    .line 86
    return-void
.end method

.method public setDecomposition(I)V
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 75
    iget-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@2
    const/4 v2, 0x4

    #@3
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeCollation;->setAttribute(JII)V

    #@6
    .line 74
    return-void
.end method

.method public setStrength(I)V
    .locals 3
    .param p1, "strength"    # I

    #@0
    .prologue
    .line 83
    iget-wide v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:J

    #@2
    const/4 v2, 0x5

    #@3
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeCollation;->setAttribute(JII)V

    #@6
    .line 82
    return-void
.end method
