.class public final enum Landroid/icu/impl/StandardPlural;
.super Ljava/lang/Enum;
.source "StandardPlural.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/StandardPlural;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/StandardPlural;

.field public static final COUNT:I

.field public static final enum FEW:Landroid/icu/impl/StandardPlural;

.field public static final enum MANY:Landroid/icu/impl/StandardPlural;

.field public static final enum ONE:Landroid/icu/impl/StandardPlural;

.field public static final enum OTHER:Landroid/icu/impl/StandardPlural;

.field public static final OTHER_INDEX:I

.field public static final enum TWO:Landroid/icu/impl/StandardPlural;

.field public static final VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/StandardPlural;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ZERO:Landroid/icu/impl/StandardPlural;


# instance fields
.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 20
    new-instance v0, Landroid/icu/impl/StandardPlural;

    #@7
    const-string/jumbo v1, "ZERO"

    #@a
    const-string/jumbo v2, "zero"

    #@d
    invoke-direct {v0, v1, v4, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@10
    sput-object v0, Landroid/icu/impl/StandardPlural;->ZERO:Landroid/icu/impl/StandardPlural;

    #@12
    .line 21
    new-instance v0, Landroid/icu/impl/StandardPlural;

    #@14
    const-string/jumbo v1, "ONE"

    #@17
    const-string/jumbo v2, "one"

    #@1a
    invoke-direct {v0, v1, v5, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1d
    sput-object v0, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    #@1f
    .line 22
    new-instance v0, Landroid/icu/impl/StandardPlural;

    #@21
    const-string/jumbo v1, "TWO"

    #@24
    const-string/jumbo v2, "two"

    #@27
    invoke-direct {v0, v1, v6, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@2a
    sput-object v0, Landroid/icu/impl/StandardPlural;->TWO:Landroid/icu/impl/StandardPlural;

    #@2c
    .line 23
    new-instance v0, Landroid/icu/impl/StandardPlural;

    #@2e
    const-string/jumbo v1, "FEW"

    #@31
    const-string/jumbo v2, "few"

    #@34
    invoke-direct {v0, v1, v7, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@37
    sput-object v0, Landroid/icu/impl/StandardPlural;->FEW:Landroid/icu/impl/StandardPlural;

    #@39
    .line 24
    new-instance v0, Landroid/icu/impl/StandardPlural;

    #@3b
    const-string/jumbo v1, "MANY"

    #@3e
    const-string/jumbo v2, "many"

    #@41
    invoke-direct {v0, v1, v8, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@44
    sput-object v0, Landroid/icu/impl/StandardPlural;->MANY:Landroid/icu/impl/StandardPlural;

    #@46
    .line 25
    new-instance v0, Landroid/icu/impl/StandardPlural;

    #@48
    const-string/jumbo v1, "OTHER"

    #@4b
    const-string/jumbo v2, "other"

    #@4e
    const/4 v3, 0x5

    #@4f
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@52
    sput-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    #@54
    .line 19
    const/4 v0, 0x6

    #@55
    new-array v0, v0, [Landroid/icu/impl/StandardPlural;

    #@57
    sget-object v1, Landroid/icu/impl/StandardPlural;->ZERO:Landroid/icu/impl/StandardPlural;

    #@59
    aput-object v1, v0, v4

    #@5b
    sget-object v1, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    #@5d
    aput-object v1, v0, v5

    #@5f
    sget-object v1, Landroid/icu/impl/StandardPlural;->TWO:Landroid/icu/impl/StandardPlural;

    #@61
    aput-object v1, v0, v6

    #@63
    sget-object v1, Landroid/icu/impl/StandardPlural;->FEW:Landroid/icu/impl/StandardPlural;

    #@65
    aput-object v1, v0, v7

    #@67
    sget-object v1, Landroid/icu/impl/StandardPlural;->MANY:Landroid/icu/impl/StandardPlural;

    #@69
    aput-object v1, v0, v8

    #@6b
    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    #@6d
    const/4 v2, 0x5

    #@6e
    aput-object v1, v0, v2

    #@70
    sput-object v0, Landroid/icu/impl/StandardPlural;->$VALUES:[Landroid/icu/impl/StandardPlural;

    #@72
    .line 30
    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    #@74
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    #@77
    move-result v0

    #@78
    sput v0, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    #@7a
    .line 37
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    #@7d
    move-result-object v0

    #@7e
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@81
    move-result-object v0

    #@82
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@85
    move-result-object v0

    #@86
    .line 36
    sput-object v0, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    #@88
    .line 42
    sget-object v0, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    #@8a
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8d
    move-result v0

    #@8e
    sput v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    #@90
    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "kw"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 47
    iput-object p3, p0, Landroid/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    #@5
    .line 46
    return-void
.end method

.method public static final fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 105
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    #@3
    move-result-object v0

    #@4
    .line 106
    .local v0, "p":Landroid/icu/impl/StandardPlural;
    if-eqz v0, :cond_0

    #@6
    .line 107
    return-object v0

    #@7
    .line 109
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method

.method public static final indexFromString(Ljava/lang/CharSequence;)I
    .locals 3
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 137
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    #@3
    move-result-object v0

    #@4
    .line 138
    .local v0, "p":Landroid/icu/impl/StandardPlural;
    if-eqz v0, :cond_0

    #@6
    .line 139
    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 141
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1
.end method

.method public static final indexOrNegativeFromString(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 118
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    #@3
    move-result-object v0

    #@4
    .line 119
    .local v0, "p":Landroid/icu/impl/StandardPlural;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, -0x1

    #@c
    goto :goto_0
.end method

.method public static final indexOrOtherIndexFromString(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 127
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    #@3
    move-result-object v0

    #@4
    .line 128
    .local v0, "p":Landroid/icu/impl/StandardPlural;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    #@d
    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@10
    move-result v1

    #@11
    goto :goto_0
.end method

.method public static final orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 62
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 87
    :cond_0
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 64
    :pswitch_0
    const-string/jumbo v0, "one"

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 65
    sget-object v0, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    #@14
    return-object v0

    #@15
    .line 66
    :cond_1
    const-string/jumbo v0, "two"

    #@18
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 67
    sget-object v0, Landroid/icu/impl/StandardPlural;->TWO:Landroid/icu/impl/StandardPlural;

    #@20
    return-object v0

    #@21
    .line 68
    :cond_2
    const-string/jumbo v0, "few"

    #@24
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 69
    sget-object v0, Landroid/icu/impl/StandardPlural;->FEW:Landroid/icu/impl/StandardPlural;

    #@2c
    return-object v0

    #@2d
    .line 73
    :pswitch_1
    const-string/jumbo v0, "many"

    #@30
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_3

    #@36
    .line 74
    sget-object v0, Landroid/icu/impl/StandardPlural;->MANY:Landroid/icu/impl/StandardPlural;

    #@38
    return-object v0

    #@39
    .line 75
    :cond_3
    const-string/jumbo v0, "zero"

    #@3c
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_0

    #@42
    .line 76
    sget-object v0, Landroid/icu/impl/StandardPlural;->ZERO:Landroid/icu/impl/StandardPlural;

    #@44
    return-object v0

    #@45
    .line 80
    :pswitch_2
    const-string/jumbo v0, "other"

    #@48
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_0

    #@4e
    .line 81
    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    #@50
    return-object v0

    #@51
    .line 62
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 95
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    #@3
    move-result-object v0

    #@4
    .line 96
    .local v0, "p":Landroid/icu/impl/StandardPlural;
    if-eqz v0, :cond_0

    #@6
    .end local v0    # "p":Landroid/icu/impl/StandardPlural;
    :goto_0
    return-object v0

    #@7
    .restart local v0    # "p":Landroid/icu/impl/StandardPlural;
    :cond_0
    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    #@9
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/StandardPlural;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 19
    const-class v0, Landroid/icu/impl/StandardPlural;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/StandardPlural;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/impl/StandardPlural;
    .locals 1

    #@0
    .prologue
    .line 19
    sget-object v0, Landroid/icu/impl/StandardPlural;->$VALUES:[Landroid/icu/impl/StandardPlural;

    #@2
    return-object v0
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Landroid/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    #@2
    return-object v0
.end method
