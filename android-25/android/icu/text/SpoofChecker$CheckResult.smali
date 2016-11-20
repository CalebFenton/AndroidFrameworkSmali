.class public Landroid/icu/text/SpoofChecker$CheckResult;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckResult"
.end annotation


# instance fields
.field public checks:I

.field public numerics:Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public position:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1522
    iput v0, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@6
    .line 1523
    iput v0, p0, Landroid/icu/text/SpoofChecker$CheckResult;->position:I

    #@8
    .line 1521
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 1532
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "checks:"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 1533
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@e
    if-nez v1, :cond_1

    #@10
    .line 1534
    const-string/jumbo v1, " none"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 1563
    :cond_0
    :goto_0
    const-string/jumbo v1, ", numerics: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$CheckResult;->numerics:Landroid/icu/text/UnicodeSet;

    #@1f
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 1564
    const-string/jumbo v1, ", position: "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget v2, p0, Landroid/icu/text/SpoofChecker$CheckResult;->position:I

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    .line 1565
    const-string/jumbo v1, ", restrictionLevel: "

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    .line 1566
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    return-object v1

    #@43
    .line 1535
    :cond_1
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@45
    const/4 v2, -0x1

    #@46
    if-ne v1, v2, :cond_2

    #@48
    .line 1536
    const-string/jumbo v1, " all"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    goto :goto_0

    #@4f
    .line 1538
    :cond_2
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@51
    and-int/lit8 v1, v1, 0x1

    #@53
    if-eqz v1, :cond_3

    #@55
    .line 1539
    const-string/jumbo v1, " SINGLE_SCRIPT_CONFUSABLE"

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 1541
    :cond_3
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@5d
    and-int/lit8 v1, v1, 0x2

    #@5f
    if-eqz v1, :cond_4

    #@61
    .line 1542
    const-string/jumbo v1, " MIXED_SCRIPT_CONFUSABLE"

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 1544
    :cond_4
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@69
    and-int/lit8 v1, v1, 0x4

    #@6b
    if-eqz v1, :cond_5

    #@6d
    .line 1545
    const-string/jumbo v1, " WHOLE_SCRIPT_CONFUSABLE"

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 1547
    :cond_5
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@75
    and-int/lit8 v1, v1, 0x8

    #@77
    if-eqz v1, :cond_6

    #@79
    .line 1548
    const-string/jumbo v1, " ANY_CASE"

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 1550
    :cond_6
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@81
    and-int/lit8 v1, v1, 0x10

    #@83
    if-eqz v1, :cond_7

    #@85
    .line 1551
    const-string/jumbo v1, " RESTRICTION_LEVEL"

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 1553
    :cond_7
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@8d
    and-int/lit8 v1, v1, 0x20

    #@8f
    if-eqz v1, :cond_8

    #@91
    .line 1554
    const-string/jumbo v1, " INVISIBLE"

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 1556
    :cond_8
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@99
    and-int/lit8 v1, v1, 0x40

    #@9b
    if-eqz v1, :cond_9

    #@9d
    .line 1557
    const-string/jumbo v1, " CHAR_LIMIT"

    #@a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 1559
    :cond_9
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@a5
    and-int/lit16 v1, v1, 0x80

    #@a7
    if-eqz v1, :cond_0

    #@a9
    .line 1560
    const-string/jumbo v1, " MIXED_NUMBERS"

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    goto/16 :goto_0
.end method
