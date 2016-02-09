.class public Landroid/icu/text/NumberFormat$Field;
.super Ljava/text/Format$Field;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final CURRENCY:Landroid/icu/text/NumberFormat$Field;

.field public static final DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

.field public static final EXPONENT:Landroid/icu/text/NumberFormat$Field;

.field public static final EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

.field public static final EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

.field public static final FRACTION:Landroid/icu/text/NumberFormat$Field;

.field public static final GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

.field public static final INTEGER:Landroid/icu/text/NumberFormat$Field;

.field public static final PERCENT:Landroid/icu/text/NumberFormat$Field;

.field public static final PERMILLE:Landroid/icu/text/NumberFormat$Field;

.field public static final SIGN:Landroid/icu/text/NumberFormat$Field;

.field static final serialVersionUID:J = -0x3ead070c1cf65f72L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1804
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    #@2
    const-string/jumbo v1, "sign"

    #@5
    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    #@a
    .line 1809
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    #@c
    const-string/jumbo v1, "integer"

    #@f
    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@14
    .line 1814
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    #@16
    const-string/jumbo v1, "fraction"

    #@19
    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@1e
    .line 1819
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    #@20
    const-string/jumbo v1, "exponent"

    #@23
    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@28
    .line 1824
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    #@2a
    const-string/jumbo v1, "exponent sign"

    #@2d
    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@32
    .line 1829
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    #@34
    const-string/jumbo v1, "exponent symbol"

    #@37
    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@3c
    .line 1834
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    #@3e
    const-string/jumbo v1, "decimal separator"

    #@41
    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@46
    .line 1838
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    #@48
    const-string/jumbo v1, "grouping separator"

    #@4b
    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@4e
    sput-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@50
    .line 1843
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    #@52
    const-string/jumbo v1, "percent"

    #@55
    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@58
    sput-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    #@5a
    .line 1848
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    #@5c
    const-string/jumbo v1, "per mille"

    #@5f
    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@62
    sput-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    #@64
    .line 1853
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    #@66
    const-string/jumbo v1, "currency"

    #@69
    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@6c
    sput-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    #@6e
    .line 1797
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1861
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    #@3
    .line 1860
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 1871
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@6
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1872
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@12
    return-object v0

    #@13
    .line 1873
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 1874
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@25
    return-object v0

    #@26
    .line 1875
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@2c
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_2

    #@36
    .line 1876
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@38
    return-object v0

    #@39
    .line 1877
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@3f
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_3

    #@49
    .line 1878
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@4b
    return-object v0

    #@4c
    .line 1879
    :cond_3
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@52
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_4

    #@5c
    .line 1880
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@5e
    return-object v0

    #@5f
    .line 1881
    :cond_4
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    #@65
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_5

    #@6f
    .line 1882
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    #@71
    return-object v0

    #@72
    .line 1883
    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@78
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v0

    #@80
    if-eqz v0, :cond_6

    #@82
    .line 1884
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@84
    return-object v0

    #@85
    .line 1885
    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@8b
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v0

    #@93
    if-eqz v0, :cond_7

    #@95
    .line 1886
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@97
    return-object v0

    #@98
    .line 1887
    :cond_7
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    #@9e
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v0

    #@a6
    if-eqz v0, :cond_8

    #@a8
    .line 1888
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    #@aa
    return-object v0

    #@ab
    .line 1889
    :cond_8
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    #@b1
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@b4
    move-result-object v1

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v0

    #@b9
    if-eqz v0, :cond_9

    #@bb
    .line 1890
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    #@bd
    return-object v0

    #@be
    .line 1891
    :cond_9
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@c1
    move-result-object v0

    #@c2
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    #@c4
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v0

    #@cc
    if-eqz v0, :cond_a

    #@ce
    .line 1892
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    #@d0
    return-object v0

    #@d1
    .line 1894
    :cond_a
    new-instance v0, Ljava/io/InvalidObjectException;

    #@d3
    const-string/jumbo v1, "An invalid object."

    #@d6
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@d9
    throw v0
.end method
