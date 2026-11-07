.class public final enum Landroid/icu/impl/StandardPlural;
.super Ljava/lang/Enum;
.source "StandardPlural.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/StandardPlural;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/StandardPlural;

.field public static final blacklist COUNT:I

.field public static final enum blacklist EQ_0:Landroid/icu/impl/StandardPlural;

.field public static final enum blacklist EQ_1:Landroid/icu/impl/StandardPlural;

.field public static final enum blacklist FEW:Landroid/icu/impl/StandardPlural;

.field public static final enum blacklist MANY:Landroid/icu/impl/StandardPlural;

.field public static final enum blacklist ONE:Landroid/icu/impl/StandardPlural;

.field public static final enum blacklist OTHER:Landroid/icu/impl/StandardPlural;

.field public static final blacklist OTHER_INDEX:I

.field public static final enum blacklist TWO:Landroid/icu/impl/StandardPlural;

.field public static final blacklist VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/StandardPlural;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum blacklist ZERO:Landroid/icu/impl/StandardPlural;


# instance fields
.field private final greylist-max-o keyword:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/StandardPlural;
    .registers 8

    .line 21
    sget-object v0, Landroid/icu/impl/StandardPlural;->ZERO:Landroid/icu/impl/StandardPlural;

    sget-object v1, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    sget-object v2, Landroid/icu/impl/StandardPlural;->TWO:Landroid/icu/impl/StandardPlural;

    sget-object v3, Landroid/icu/impl/StandardPlural;->FEW:Landroid/icu/impl/StandardPlural;

    sget-object v4, Landroid/icu/impl/StandardPlural;->MANY:Landroid/icu/impl/StandardPlural;

    sget-object v5, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    sget-object v6, Landroid/icu/impl/StandardPlural;->EQ_0:Landroid/icu/impl/StandardPlural;

    sget-object v7, Landroid/icu/impl/StandardPlural;->EQ_1:Landroid/icu/impl/StandardPlural;

    filled-new-array/range {v0 .. v7}, [Landroid/icu/impl/StandardPlural;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 22
    new-instance v0, Landroid/icu/impl/StandardPlural;

    const/4 v1, 0x0

    const-string v2, "zero"

    const-string v3, "ZERO"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->ZERO:Landroid/icu/impl/StandardPlural;

    .line 23
    new-instance v0, Landroid/icu/impl/StandardPlural;

    const/4 v1, 0x1

    const-string v2, "one"

    const-string v3, "ONE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    .line 24
    new-instance v0, Landroid/icu/impl/StandardPlural;

    const/4 v1, 0x2

    const-string v2, "two"

    const-string v3, "TWO"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->TWO:Landroid/icu/impl/StandardPlural;

    .line 25
    new-instance v0, Landroid/icu/impl/StandardPlural;

    const/4 v1, 0x3

    const-string v2, "few"

    const-string v3, "FEW"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->FEW:Landroid/icu/impl/StandardPlural;

    .line 26
    new-instance v0, Landroid/icu/impl/StandardPlural;

    const/4 v1, 0x4

    const-string v2, "many"

    const-string v3, "MANY"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->MANY:Landroid/icu/impl/StandardPlural;

    .line 27
    new-instance v0, Landroid/icu/impl/StandardPlural;

    const/4 v1, 0x5

    const-string v2, "other"

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    .line 28
    new-instance v0, Landroid/icu/impl/StandardPlural;

    const/4 v1, 0x6

    const-string v2, "=0"

    const-string v3, "EQ_0"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->EQ_0:Landroid/icu/impl/StandardPlural;

    .line 29
    new-instance v0, Landroid/icu/impl/StandardPlural;

    const/4 v1, 0x7

    const-string v2, "=1"

    const-string v3, "EQ_1"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->EQ_1:Landroid/icu/impl/StandardPlural;

    .line 21
    invoke-static {}, Landroid/icu/impl/StandardPlural;->$values()[Landroid/icu/impl/StandardPlural;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/StandardPlural;->$VALUES:[Landroid/icu/impl/StandardPlural;

    .line 34
    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    sput v0, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    .line 41
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    .line 46
    sget-object v0, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "kw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Landroid/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static final blacklist fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;
    .registers 4
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    .line 123
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    .line 124
    .local v0, "p":Landroid/icu/impl/StandardPlural;
    if-eqz v0, :cond_7

    .line 125
    return-object v0

    .line 127
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final blacklist indexFromString(Ljava/lang/CharSequence;)I
    .registers 4
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    .line 155
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    .line 156
    .local v0, "p":Landroid/icu/impl/StandardPlural;
    if-eqz v0, :cond_b

    .line 157
    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    return v1

    .line 159
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final blacklist indexOrNegativeFromString(Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    .line 136
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    .line 137
    .local v0, "p":Landroid/icu/impl/StandardPlural;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, -0x1

    :goto_c
    return v1
.end method

.method public static final blacklist indexOrOtherIndexFromString(Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    .line 145
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    .line 146
    .local v0, "p":Landroid/icu/impl/StandardPlural;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    goto :goto_11

    :cond_b
    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    :goto_11
    return v1
.end method

.method public static final blacklist orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;
    .registers 4
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    .line 66
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_7a

    goto :goto_77

    .line 98
    :pswitch_8
    const-string v0, "other"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 99
    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    return-object v0

    .line 91
    :pswitch_13
    const-string v0, "many"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 92
    sget-object v0, Landroid/icu/impl/StandardPlural;->MANY:Landroid/icu/impl/StandardPlural;

    return-object v0

    .line 93
    :cond_1e
    const-string v0, "zero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 94
    sget-object v0, Landroid/icu/impl/StandardPlural;->ZERO:Landroid/icu/impl/StandardPlural;

    return-object v0

    .line 82
    :pswitch_29
    const-string v0, "one"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 83
    sget-object v0, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    return-object v0

    .line 84
    :cond_34
    const-string v0, "two"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 85
    sget-object v0, Landroid/icu/impl/StandardPlural;->TWO:Landroid/icu/impl/StandardPlural;

    return-object v0

    .line 86
    :cond_3f
    const-string v0, "few"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 87
    sget-object v0, Landroid/icu/impl/StandardPlural;->FEW:Landroid/icu/impl/StandardPlural;

    return-object v0

    .line 75
    :pswitch_4a
    const-string v0, "=0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 76
    sget-object v0, Landroid/icu/impl/StandardPlural;->EQ_0:Landroid/icu/impl/StandardPlural;

    return-object v0

    .line 77
    :cond_55
    const-string v0, "=1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 78
    sget-object v0, Landroid/icu/impl/StandardPlural;->EQ_1:Landroid/icu/impl/StandardPlural;

    return-object v0

    .line 68
    :pswitch_60
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_6c

    .line 69
    sget-object v0, Landroid/icu/impl/StandardPlural;->EQ_0:Landroid/icu/impl/StandardPlural;

    return-object v0

    .line 70
    :cond_6c
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_77

    .line 71
    sget-object v0, Landroid/icu/impl/StandardPlural;->EQ_1:Landroid/icu/impl/StandardPlural;

    return-object v0

    .line 105
    :cond_77
    :goto_77
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_60
        :pswitch_4a
        :pswitch_29
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method

.method public static final blacklist orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;
    .registers 3
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    .line 113
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    .line 114
    .local v0, "p":Landroid/icu/impl/StandardPlural;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_a

    :cond_8
    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    :goto_a
    return-object v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/StandardPlural;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    const-class v0, Landroid/icu/impl/StandardPlural;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/StandardPlural;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/StandardPlural;
    .registers 1

    .line 21
    sget-object v0, Landroid/icu/impl/StandardPlural;->$VALUES:[Landroid/icu/impl/StandardPlural;

    invoke-virtual {v0}, [Landroid/icu/impl/StandardPlural;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/StandardPlural;

    return-object v0
.end method


# virtual methods
.method public final blacklist getKeyword()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    return-object v0
.end method
