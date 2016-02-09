.class public final enum Landroid/icu/text/PluralRules$StandardPluralCategories;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StandardPluralCategories"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/PluralRules$StandardPluralCategories;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/PluralRules$StandardPluralCategories;

.field public static final COUNT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/PluralRules$StandardPluralCategories;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum few:Landroid/icu/text/PluralRules$StandardPluralCategories;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum many:Landroid/icu/text/PluralRules$StandardPluralCategories;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum one:Landroid/icu/text/PluralRules$StandardPluralCategories;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum other:Landroid/icu/text/PluralRules$StandardPluralCategories;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum two:Landroid/icu/text/PluralRules$StandardPluralCategories;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum zero:Landroid/icu/text/PluralRules$StandardPluralCategories;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 1790
    new-instance v0, Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@7
    const-string/jumbo v1, "zero"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/PluralRules$StandardPluralCategories;-><init>(Ljava/lang/String;I)V

    #@d
    .line 1795
    sput-object v0, Landroid/icu/text/PluralRules$StandardPluralCategories;->zero:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@f
    .line 1796
    new-instance v0, Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@11
    const-string/jumbo v1, "one"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/text/PluralRules$StandardPluralCategories;-><init>(Ljava/lang/String;I)V

    #@17
    .line 1801
    sput-object v0, Landroid/icu/text/PluralRules$StandardPluralCategories;->one:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@19
    .line 1802
    new-instance v0, Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@1b
    const-string/jumbo v1, "two"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/text/PluralRules$StandardPluralCategories;-><init>(Ljava/lang/String;I)V

    #@21
    .line 1807
    sput-object v0, Landroid/icu/text/PluralRules$StandardPluralCategories;->two:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@23
    .line 1808
    new-instance v0, Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@25
    const-string/jumbo v1, "few"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/text/PluralRules$StandardPluralCategories;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 1813
    sput-object v0, Landroid/icu/text/PluralRules$StandardPluralCategories;->few:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@2d
    .line 1814
    new-instance v0, Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@2f
    const-string/jumbo v1, "many"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/text/PluralRules$StandardPluralCategories;-><init>(Ljava/lang/String;I)V

    #@35
    .line 1819
    sput-object v0, Landroid/icu/text/PluralRules$StandardPluralCategories;->many:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@37
    .line 1820
    new-instance v0, Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@39
    const-string/jumbo v1, "other"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$StandardPluralCategories;-><init>(Ljava/lang/String;I)V

    #@40
    .line 1825
    sput-object v0, Landroid/icu/text/PluralRules$StandardPluralCategories;->other:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@42
    .line 1789
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@45
    sget-object v1, Landroid/icu/text/PluralRules$StandardPluralCategories;->zero:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Landroid/icu/text/PluralRules$StandardPluralCategories;->one:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Landroid/icu/text/PluralRules$StandardPluralCategories;->two:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Landroid/icu/text/PluralRules$StandardPluralCategories;->few:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Landroid/icu/text/PluralRules$StandardPluralCategories;->many:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Landroid/icu/text/PluralRules$StandardPluralCategories;->other:Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Landroid/icu/text/PluralRules$StandardPluralCategories;->$VALUES:[Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@60
    .line 1832
    invoke-static {}, Landroid/icu/text/PluralRules$StandardPluralCategories;->values()[Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@63
    move-result-object v0

    #@64
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@67
    move-result-object v0

    #@68
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@6b
    move-result-object v0

    #@6c
    .line 1831
    sput-object v0, Landroid/icu/text/PluralRules$StandardPluralCategories;->VALUES:Ljava/util/List;

    #@6e
    .line 1838
    invoke-static {}, Landroid/icu/text/PluralRules$StandardPluralCategories;->values()[Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@71
    move-result-object v0

    #@72
    array-length v0, v0

    #@73
    sput v0, Landroid/icu/text/PluralRules$StandardPluralCategories;->COUNT:I

    #@75
    .line 1789
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 1789
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static forString(Ljava/lang/String;)Landroid/icu/text/PluralRules$StandardPluralCategories;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1843
    :try_start_0
    invoke-static {p0}, Landroid/icu/text/PluralRules$StandardPluralCategories;->valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$StandardPluralCategories;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v0

    #@4
    .line 1847
    .local v0, "a":Landroid/icu/text/PluralRules$StandardPluralCategories;
    return-object v0

    #@5
    .line 1844
    .end local v0    # "a":Landroid/icu/text/PluralRules$StandardPluralCategories;
    :catch_0
    move-exception v1

    #@6
    .line 1845
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@7
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$StandardPluralCategories;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1789
    const-class v0, Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/PluralRules$StandardPluralCategories;
    .locals 1

    #@0
    .prologue
    .line 1789
    sget-object v0, Landroid/icu/text/PluralRules$StandardPluralCategories;->$VALUES:[Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@2
    return-object v0
.end method
