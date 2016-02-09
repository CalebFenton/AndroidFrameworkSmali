.class public final Landroid/icu/text/MessagePattern;
.super Ljava/lang/Object;
.source "MessagePattern.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePattern$ApostropheMode;,
        Landroid/icu/text/MessagePattern$Part;,
        Landroid/icu/text/MessagePattern$ArgType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/MessagePattern;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ARG_NAME_NOT_NUMBER:I = -0x1

.field public static final ARG_NAME_NOT_VALID:I = -0x2

.field private static final MAX_PREFIX_LENGTH:I = 0x18

.field public static final NO_NUMERIC_VALUE:D = -1.23456789E8

.field private static final argTypes:[Landroid/icu/text/MessagePattern$ArgType;

.field private static final defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;


# instance fields
.field private aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

.field private volatile frozen:Z

.field private hasArgNames:Z

.field private hasArgNumbers:Z

.field private msg:Ljava/lang/String;

.field private needsAutoQuoting:Z

.field private numericValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/text/MessagePattern$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[Landroid/icu/text/MessagePattern$ArgType;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/MessagePattern;->argTypes:[Landroid/icu/text/MessagePattern$ArgType;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Landroid/icu/text/MessagePattern;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/MessagePattern;->-assertionsDisabled:Z

    #@b
    .line 1610
    const-string/jumbo v0, "android.icu.text.MessagePattern.ApostropheMode"

    #@e
    const-string/jumbo v1, "DOUBLE_OPTIONAL"

    #@11
    invoke-static {v0, v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 1609
    invoke-static {v0}, Landroid/icu/text/MessagePattern$ApostropheMode;->valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$ApostropheMode;

    #@18
    move-result-object v0

    #@19
    .line 1608
    sput-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@1b
    .line 1612
    invoke-static {}, Landroid/icu/text/MessagePattern$ArgType;->values()[Landroid/icu/text/MessagePattern$ArgType;

    #@1e
    move-result-object v0

    #@1f
    sput-object v0, Landroid/icu/text/MessagePattern;->argTypes:[Landroid/icu/text/MessagePattern$ArgType;

    #@21
    .line 79
    return-void

    #@22
    :cond_0
    const/4 v0, 0x1

    #@23
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1601
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@a
    .line 144
    sget-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@c
    iput-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@e
    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/icu/text/MessagePattern$ApostropheMode;

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1601
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@a
    .line 153
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@c
    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1601
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@a
    .line 167
    sget-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@c
    iput-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@e
    .line 168
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;

    #@11
    .line 166
    return-void
.end method

.method private addArgDoublePart(DII)V
    .locals 3
    .param p1, "numericValue"    # D
    .param p3, "start"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1545
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 1546
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@b
    .line 1547
    const/4 v0, 0x0

    #@c
    .line 1554
    .local v0, "numericIndex":I
    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@e
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 1555
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@17
    invoke-direct {p0, v1, p3, p4, v0}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@1a
    .line 1543
    return-void

    #@1b
    .line 1549
    .end local v0    # "numericIndex":I
    :cond_1
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v0

    #@21
    .line 1550
    .restart local v0    # "numericIndex":I
    const/16 v1, 0x7fff

    #@23
    if-le v0, v1, :cond_0

    #@25
    .line 1551
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@27
    const-string/jumbo v2, "Too many numeric values"

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1
.end method

.method private addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "type"    # Landroid/icu/text/MessagePattern$Part$Type;
    .param p3, "index"    # I
    .param p4, "length"    # I
    .param p5, "value"    # I

    #@0
    .prologue
    .line 1539
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    #@8
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v1

    #@e
    invoke-static {v0, v1}, Landroid/icu/text/MessagePattern$Part;->-set0(Landroid/icu/text/MessagePattern$Part;I)I

    #@11
    .line 1540
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@14
    .line 1538
    return-void
.end method

.method private addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V
    .locals 7
    .param p1, "type"    # Landroid/icu/text/MessagePattern$Part$Type;
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "value"    # I

    #@0
    .prologue
    .line 1535
    iget-object v6, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2
    new-instance v0, Landroid/icu/text/MessagePattern$Part;

    #@4
    const/4 v5, 0x0

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessagePattern$Part;-><init>(Landroid/icu/text/MessagePattern$Part$Type;IIILandroid/icu/text/MessagePattern$Part;)V

    #@c
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    .line 1534
    return-void
.end method

.method static appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v2, 0x27

    #@2
    .line 1422
    const/4 v0, -0x1

    #@3
    .line 1424
    .local v0, "doubleApos":I
    :goto_0
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    #@6
    move-result v1

    #@7
    .line 1425
    .local v1, "i":I
    if-ltz v1, :cond_0

    #@9
    if-lt v1, p2, :cond_1

    #@b
    .line 1426
    :cond_0
    invoke-virtual {p3, p0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@e
    .line 1421
    return-void

    #@f
    .line 1429
    :cond_1
    if-ne v1, v0, :cond_2

    #@11
    .line 1431
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    .line 1432
    add-int/lit8 p1, p1, 0x1

    #@16
    .line 1433
    const/4 v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1436
    :cond_2
    invoke-virtual {p3, p0, p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@1b
    .line 1437
    add-int/lit8 p1, v1, 0x1

    #@1d
    move v0, p1

    #@1e
    goto :goto_0
.end method

.method private inMessageFormatPattern(I)Z
    .locals 4
    .param p1, "nestingLevel"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1520
    if-gtz p1, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    #@c
    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    #@f
    move-result-object v0

    #@10
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@12
    if-ne v0, v3, :cond_1

    #@14
    :cond_0
    move v0, v1

    #@15
    :goto_0
    return v0

    #@16
    :cond_1
    move v0, v2

    #@17
    goto :goto_0
.end method

.method private inTopLevelChoiceMessage(ILandroid/icu/text/MessagePattern$ArgType;)Z
    .locals 4
    .param p1, "nestingLevel"    # I
    .param p2, "parentType"    # Landroid/icu/text/MessagePattern$ArgType;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1529
    if-ne p1, v1, :cond_1

    #@4
    .line 1530
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@6
    if-ne p2, v0, :cond_1

    #@8
    .line 1531
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    #@10
    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    #@13
    move-result-object v0

    #@14
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@16
    if-eq v0, v3, :cond_0

    #@18
    move v0, v1

    #@19
    .line 1528
    :goto_0
    return v0

    #@1a
    :cond_0
    move v0, v2

    #@1b
    .line 1531
    goto :goto_0

    #@1c
    :cond_1
    move v0, v2

    #@1d
    .line 1529
    goto :goto_0
.end method

.method private static isArgTypeChar(I)Z
    .locals 3
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1467
    const/16 v2, 0x61

    #@4
    if-gt v2, p0, :cond_1

    #@6
    const/16 v2, 0x7a

    #@8
    if-gt p0, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/16 v2, 0x41

    #@d
    if-gt v2, p0, :cond_2

    #@f
    const/16 v2, 0x5a

    #@11
    if-le p0, v2, :cond_0

    #@13
    :cond_2
    move v0, v1

    #@14
    goto :goto_0
.end method

.method private isChoice(I)Z
    .locals 7
    .param p1, "index"    # I

    #@0
    .prologue
    const/16 v6, 0x63

    #@2
    const/16 v5, 0x43

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    .line 1473
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@8
    add-int/lit8 v1, p1, 0x1

    #@a
    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .local v0, "c":C
    if-eq v0, v6, :cond_0

    #@10
    if-ne v0, v5, :cond_6

    #@12
    .line 1474
    :cond_0
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@14
    add-int/lit8 p1, v1, 0x1

    #@16
    .end local v1    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v0

    #@1a
    const/16 v4, 0x68

    #@1c
    if-eq v0, v4, :cond_1

    #@1e
    const/16 v4, 0x48

    #@20
    if-ne v0, v4, :cond_7

    #@22
    .line 1475
    :cond_1
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@24
    add-int/lit8 v1, p1, 0x1

    #@26
    .end local p1    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v0

    #@2a
    const/16 v4, 0x6f

    #@2c
    if-eq v0, v4, :cond_2

    #@2e
    const/16 v4, 0x4f

    #@30
    if-ne v0, v4, :cond_8

    #@32
    .line 1476
    :cond_2
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@34
    add-int/lit8 p1, v1, 0x1

    #@36
    .end local v1    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v0

    #@3a
    const/16 v4, 0x69

    #@3c
    if-eq v0, v4, :cond_3

    #@3e
    const/16 v4, 0x49

    #@40
    if-ne v0, v4, :cond_7

    #@42
    .line 1477
    :cond_3
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@44
    add-int/lit8 v1, p1, 0x1

    #@46
    .end local p1    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@49
    move-result v0

    #@4a
    if-eq v0, v6, :cond_4

    #@4c
    if-ne v0, v5, :cond_9

    #@4e
    .line 1478
    :cond_4
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@50
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@53
    move-result v0

    #@54
    const/16 v4, 0x65

    #@56
    if-eq v0, v4, :cond_5

    #@58
    const/16 v4, 0x45

    #@5a
    if-ne v0, v4, :cond_a

    #@5c
    :cond_5
    :goto_0
    move p1, v1

    #@5d
    .line 1472
    .end local v1    # "index":I
    .restart local p1    # "index":I
    :goto_1
    return v2

    #@5e
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_6
    move p1, v1

    #@5f
    .end local v1    # "index":I
    .restart local p1    # "index":I
    :cond_7
    :goto_2
    move v2, v3

    #@60
    .line 1473
    goto :goto_1

    #@61
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_8
    move p1, v1

    #@62
    .line 1476
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_2

    #@63
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_9
    move p1, v1

    #@64
    .line 1478
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_2

    #@65
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_a
    move v2, v3

    #@66
    goto :goto_0
.end method

.method private isOrdinal(I)Z
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1506
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@4
    add-int/lit8 v1, p1, 0x1

    #@6
    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    .local v0, "c":C
    const/16 v4, 0x6f

    #@c
    if-eq v0, v4, :cond_0

    #@e
    const/16 v4, 0x4f

    #@10
    if-ne v0, v4, :cond_7

    #@12
    .line 1507
    :cond_0
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@14
    add-int/lit8 p1, v1, 0x1

    #@16
    .end local v1    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v0

    #@1a
    const/16 v4, 0x72

    #@1c
    if-eq v0, v4, :cond_1

    #@1e
    const/16 v4, 0x52

    #@20
    if-ne v0, v4, :cond_8

    #@22
    .line 1508
    :cond_1
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@24
    add-int/lit8 v1, p1, 0x1

    #@26
    .end local p1    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v0

    #@2a
    const/16 v4, 0x64

    #@2c
    if-eq v0, v4, :cond_2

    #@2e
    const/16 v4, 0x44

    #@30
    if-ne v0, v4, :cond_9

    #@32
    .line 1509
    :cond_2
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@34
    add-int/lit8 p1, v1, 0x1

    #@36
    .end local v1    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v0

    #@3a
    const/16 v4, 0x69

    #@3c
    if-eq v0, v4, :cond_3

    #@3e
    const/16 v4, 0x49

    #@40
    if-ne v0, v4, :cond_8

    #@42
    .line 1510
    :cond_3
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@44
    add-int/lit8 v1, p1, 0x1

    #@46
    .end local p1    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@49
    move-result v0

    #@4a
    const/16 v4, 0x6e

    #@4c
    if-eq v0, v4, :cond_4

    #@4e
    const/16 v4, 0x4e

    #@50
    if-ne v0, v4, :cond_a

    #@52
    .line 1511
    :cond_4
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@54
    add-int/lit8 p1, v1, 0x1

    #@56
    .end local v1    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@59
    move-result v0

    #@5a
    const/16 v4, 0x61

    #@5c
    if-eq v0, v4, :cond_5

    #@5e
    const/16 v4, 0x41

    #@60
    if-ne v0, v4, :cond_8

    #@62
    .line 1512
    :cond_5
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@64
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@67
    move-result v0

    #@68
    const/16 v4, 0x6c

    #@6a
    if-eq v0, v4, :cond_6

    #@6c
    const/16 v4, 0x4c

    #@6e
    if-ne v0, v4, :cond_b

    #@70
    .line 1505
    :cond_6
    :goto_0
    return v2

    #@71
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_7
    move p1, v1

    #@72
    .end local v1    # "index":I
    .restart local p1    # "index":I
    :cond_8
    :goto_1
    move v2, v3

    #@73
    .line 1506
    goto :goto_0

    #@74
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_9
    move p1, v1

    #@75
    .line 1509
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_1

    #@76
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_a
    move p1, v1

    #@77
    .line 1511
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_1

    #@78
    :cond_b
    move v2, v3

    #@79
    .line 1512
    goto :goto_0
.end method

.method private isPlural(I)Z
    .locals 7
    .param p1, "index"    # I

    #@0
    .prologue
    const/16 v6, 0x6c

    #@2
    const/16 v5, 0x4c

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    .line 1484
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@8
    add-int/lit8 v1, p1, 0x1

    #@a
    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .local v0, "c":C
    const/16 v4, 0x70

    #@10
    if-eq v0, v4, :cond_0

    #@12
    const/16 v4, 0x50

    #@14
    if-ne v0, v4, :cond_6

    #@16
    .line 1485
    :cond_0
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@18
    add-int/lit8 p1, v1, 0x1

    #@1a
    .end local v1    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v0

    #@1e
    if-eq v0, v6, :cond_1

    #@20
    if-ne v0, v5, :cond_7

    #@22
    .line 1486
    :cond_1
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@24
    add-int/lit8 v1, p1, 0x1

    #@26
    .end local p1    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v0

    #@2a
    const/16 v4, 0x75

    #@2c
    if-eq v0, v4, :cond_2

    #@2e
    const/16 v4, 0x55

    #@30
    if-ne v0, v4, :cond_8

    #@32
    .line 1487
    :cond_2
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@34
    add-int/lit8 p1, v1, 0x1

    #@36
    .end local v1    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v0

    #@3a
    const/16 v4, 0x72

    #@3c
    if-eq v0, v4, :cond_3

    #@3e
    const/16 v4, 0x52

    #@40
    if-ne v0, v4, :cond_7

    #@42
    .line 1488
    :cond_3
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@44
    add-int/lit8 v1, p1, 0x1

    #@46
    .end local p1    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@49
    move-result v0

    #@4a
    const/16 v4, 0x61

    #@4c
    if-eq v0, v4, :cond_4

    #@4e
    const/16 v4, 0x41

    #@50
    if-ne v0, v4, :cond_9

    #@52
    .line 1489
    :cond_4
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@54
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@57
    move-result v0

    #@58
    if-eq v0, v6, :cond_5

    #@5a
    if-ne v0, v5, :cond_a

    #@5c
    :cond_5
    :goto_0
    move p1, v1

    #@5d
    .line 1483
    .end local v1    # "index":I
    .restart local p1    # "index":I
    :goto_1
    return v2

    #@5e
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_6
    move p1, v1

    #@5f
    .end local v1    # "index":I
    .restart local p1    # "index":I
    :cond_7
    :goto_2
    move v2, v3

    #@60
    .line 1484
    goto :goto_1

    #@61
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_8
    move p1, v1

    #@62
    .line 1487
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_2

    #@63
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_9
    move p1, v1

    #@64
    .line 1489
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_2

    #@65
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_a
    move v2, v3

    #@66
    goto :goto_0
.end method

.method private isSelect(I)Z
    .locals 7
    .param p1, "index"    # I

    #@0
    .prologue
    const/16 v6, 0x65

    #@2
    const/16 v5, 0x45

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    .line 1495
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@8
    add-int/lit8 v1, p1, 0x1

    #@a
    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .local v0, "c":C
    const/16 v4, 0x73

    #@10
    if-eq v0, v4, :cond_0

    #@12
    const/16 v4, 0x53

    #@14
    if-ne v0, v4, :cond_6

    #@16
    .line 1496
    :cond_0
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@18
    add-int/lit8 p1, v1, 0x1

    #@1a
    .end local v1    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v0

    #@1e
    if-eq v0, v6, :cond_1

    #@20
    if-ne v0, v5, :cond_7

    #@22
    .line 1497
    :cond_1
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@24
    add-int/lit8 v1, p1, 0x1

    #@26
    .end local p1    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v0

    #@2a
    const/16 v4, 0x6c

    #@2c
    if-eq v0, v4, :cond_2

    #@2e
    const/16 v4, 0x4c

    #@30
    if-ne v0, v4, :cond_8

    #@32
    .line 1498
    :cond_2
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@34
    add-int/lit8 p1, v1, 0x1

    #@36
    .end local v1    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v0

    #@3a
    if-eq v0, v6, :cond_3

    #@3c
    if-ne v0, v5, :cond_7

    #@3e
    .line 1499
    :cond_3
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@40
    add-int/lit8 v1, p1, 0x1

    #@42
    .end local p1    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@45
    move-result v0

    #@46
    const/16 v4, 0x63

    #@48
    if-eq v0, v4, :cond_4

    #@4a
    const/16 v4, 0x43

    #@4c
    if-ne v0, v4, :cond_9

    #@4e
    .line 1500
    :cond_4
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@50
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@53
    move-result v0

    #@54
    const/16 v4, 0x74

    #@56
    if-eq v0, v4, :cond_5

    #@58
    const/16 v4, 0x54

    #@5a
    if-ne v0, v4, :cond_a

    #@5c
    :cond_5
    :goto_0
    move p1, v1

    #@5d
    .line 1494
    .end local v1    # "index":I
    .restart local p1    # "index":I
    :goto_1
    return v2

    #@5e
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_6
    move p1, v1

    #@5f
    .end local v1    # "index":I
    .restart local p1    # "index":I
    :cond_7
    :goto_2
    move v2, v3

    #@60
    .line 1495
    goto :goto_1

    #@61
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_8
    move p1, v1

    #@62
    .line 1498
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_2

    #@63
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_9
    move p1, v1

    #@64
    .line 1500
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_2

    #@65
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_a
    move v2, v3

    #@66
    goto :goto_0
.end method

.method private parseArg(III)I
    .locals 12
    .param p1, "index"    # I
    .param p2, "argStartLength"    # I
    .param p3, "nestingLevel"    # I

    #@0
    .prologue
    .line 1014
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 1015
    .local v1, "argStart":I
    sget-object v6, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@8
    .line 1016
    .local v6, "argType":Landroid/icu/text/MessagePattern$ArgType;
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@a
    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@d
    move-result v2

    #@e
    invoke-direct {p0, v0, p1, p2, v2}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@11
    .line 1017
    add-int v0, p1, p2

    #@13
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@16
    move-result p1

    #@17
    move v9, p1

    #@18
    .line 1018
    .local v9, "nameIndex":I
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1d
    move-result v0

    #@1e
    if-ne p1, v0, :cond_0

    #@20
    .line 1019
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "Unmatched \'{\' braces in message "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 1019
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 1023
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipIdentifier(I)I

    #@41
    move-result p1

    #@42
    .line 1024
    invoke-direct {p0, v9, p1}, Landroid/icu/text/MessagePattern;->parseArgNumber(II)I

    #@45
    move-result v10

    #@46
    .line 1025
    .local v10, "number":I
    if-ltz v10, :cond_3

    #@48
    .line 1026
    sub-int v8, p1, v9

    #@4a
    .line 1027
    .local v8, "length":I
    const v0, 0xffff

    #@4d
    if-gt v8, v0, :cond_1

    #@4f
    const/16 v0, 0x7fff

    #@51
    if-le v10, v0, :cond_2

    #@53
    .line 1028
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@55
    .line 1029
    new-instance v2, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v3, "Argument number too large: "

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-direct {p0, v9}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    .line 1028
    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@70
    throw v0

    #@71
    .line 1031
    :cond_2
    const/4 v0, 0x1

    #@72
    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    #@74
    .line 1032
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@76
    invoke-direct {p0, v0, v9, v8, v10}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@79
    .line 1044
    :goto_0
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@7c
    move-result p1

    #@7d
    .line 1045
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@7f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@82
    move-result v0

    #@83
    if-ne p1, v0, :cond_6

    #@85
    .line 1046
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@87
    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v3, "Unmatched \'{\' braces in message "

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    .line 1046
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v0

    #@a3
    .line 1033
    .end local v8    # "length":I
    :cond_3
    const/4 v0, -0x1

    #@a4
    if-ne v10, v0, :cond_5

    #@a6
    .line 1034
    sub-int v8, p1, v9

    #@a8
    .line 1035
    .restart local v8    # "length":I
    const v0, 0xffff

    #@ab
    if-le v8, v0, :cond_4

    #@ad
    .line 1036
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@af
    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v3, "Argument name too long: "

    #@b7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    invoke-direct {p0, v9}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v2

    #@c3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v2

    #@c7
    .line 1036
    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v0

    #@cb
    .line 1039
    :cond_4
    const/4 v0, 0x1

    #@cc
    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    #@ce
    .line 1040
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    #@d0
    const/4 v2, 0x0

    #@d1
    invoke-direct {p0, v0, v9, v8, v2}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@d4
    goto :goto_0

    #@d5
    .line 1042
    .end local v8    # "length":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d7
    new-instance v2, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v3, "Bad argument syntax: "

    #@df
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v2

    #@e3
    invoke-direct {p0, v9}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@e6
    move-result-object v3

    #@e7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v2

    #@eb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v2

    #@ef
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f2
    throw v0

    #@f3
    .line 1049
    .restart local v8    # "length":I
    :cond_6
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@f5
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@f8
    move-result v7

    #@f9
    .line 1050
    .local v7, "c":C
    const/16 v0, 0x7d

    #@fb
    if-ne v7, v0, :cond_8

    #@fd
    .line 1111
    :cond_7
    :goto_1
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@ff
    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@102
    move-result v5

    #@103
    const/4 v4, 0x1

    #@104
    move-object v0, p0

    #@105
    move v3, p1

    #@106
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    #@109
    .line 1112
    add-int/lit8 v0, p1, 0x1

    #@10b
    return v0

    #@10c
    .line 1052
    :cond_8
    const/16 v0, 0x2c

    #@10e
    if-eq v7, v0, :cond_9

    #@110
    .line 1053
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@112
    new-instance v2, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    const-string/jumbo v3, "Bad argument syntax: "

    #@11a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v2

    #@11e
    invoke-direct {p0, v9}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@121
    move-result-object v3

    #@122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v2

    #@126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v2

    #@12a
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12d
    throw v0

    #@12e
    .line 1056
    :cond_9
    add-int/lit8 v0, p1, 0x1

    #@130
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@133
    move-result p1

    #@134
    move v11, p1

    #@135
    .line 1057
    .local v11, "typeIndex":I
    :goto_2
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@137
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@13a
    move-result v0

    #@13b
    if-ge p1, v0, :cond_a

    #@13d
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@13f
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@142
    move-result v0

    #@143
    invoke-static {v0}, Landroid/icu/text/MessagePattern;->isArgTypeChar(I)Z

    #@146
    move-result v0

    #@147
    if-eqz v0, :cond_a

    #@149
    .line 1058
    add-int/lit8 p1, p1, 0x1

    #@14b
    goto :goto_2

    #@14c
    .line 1060
    :cond_a
    sub-int v8, p1, v11

    #@14e
    .line 1061
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@151
    move-result p1

    #@152
    .line 1062
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@154
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@157
    move-result v0

    #@158
    if-ne p1, v0, :cond_b

    #@15a
    .line 1063
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15c
    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string/jumbo v3, "Unmatched \'{\' braces in message "

    #@164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v2

    #@168
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    #@16b
    move-result-object v3

    #@16c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v2

    #@170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v2

    #@174
    .line 1063
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@177
    throw v0

    #@178
    .line 1066
    :cond_b
    if-eqz v8, :cond_c

    #@17a
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@17c
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@17f
    move-result v7

    #@180
    const/16 v0, 0x2c

    #@182
    if-eq v7, v0, :cond_d

    #@184
    const/16 v0, 0x7d

    #@186
    if-eq v7, v0, :cond_d

    #@188
    .line 1067
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18a
    new-instance v2, Ljava/lang/StringBuilder;

    #@18c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18f
    const-string/jumbo v3, "Bad argument syntax: "

    #@192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v2

    #@196
    invoke-direct {p0, v9}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@199
    move-result-object v3

    #@19a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v2

    #@19e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a1
    move-result-object v2

    #@1a2
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a5
    throw v0

    #@1a6
    .line 1069
    :cond_d
    const v0, 0xffff

    #@1a9
    if-le v8, v0, :cond_e

    #@1ab
    .line 1070
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1ad
    .line 1071
    new-instance v2, Ljava/lang/StringBuilder;

    #@1af
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b2
    const-string/jumbo v3, "Argument type name too long: "

    #@1b5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v2

    #@1b9
    invoke-direct {p0, v9}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@1bc
    move-result-object v3

    #@1bd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v2

    #@1c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c4
    move-result-object v2

    #@1c5
    .line 1070
    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1c8
    throw v0

    #@1c9
    .line 1073
    :cond_e
    sget-object v6, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@1cb
    .line 1074
    const/4 v0, 0x6

    #@1cc
    if-ne v8, v0, :cond_13

    #@1ce
    .line 1076
    invoke-direct {p0, v11}, Landroid/icu/text/MessagePattern;->isChoice(I)Z

    #@1d1
    move-result v0

    #@1d2
    if-eqz v0, :cond_11

    #@1d4
    .line 1077
    sget-object v6, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@1d6
    .line 1089
    :cond_f
    :goto_3
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@1d8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1db
    move-result-object v0

    #@1dc
    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    #@1de
    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@1e1
    move-result v2

    #@1e2
    int-to-short v2, v2

    #@1e3
    invoke-static {v0, v2}, Landroid/icu/text/MessagePattern$Part;->-set1(Landroid/icu/text/MessagePattern$Part;S)S

    #@1e6
    .line 1090
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@1e8
    if-ne v6, v0, :cond_10

    #@1ea
    .line 1091
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    #@1ec
    const/4 v2, 0x0

    #@1ed
    invoke-direct {p0, v0, v11, v8, v2}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@1f0
    .line 1094
    :cond_10
    const/16 v0, 0x7d

    #@1f2
    if-ne v7, v0, :cond_14

    #@1f4
    .line 1095
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@1f6
    if-eq v6, v0, :cond_7

    #@1f8
    .line 1096
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1fa
    .line 1097
    new-instance v2, Ljava/lang/StringBuilder;

    #@1fc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1ff
    const-string/jumbo v3, "No style field for complex argument: "

    #@202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v2

    #@206
    invoke-direct {p0, v9}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@209
    move-result-object v3

    #@20a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v2

    #@20e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@211
    move-result-object v2

    #@212
    .line 1096
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@215
    throw v0

    #@216
    .line 1078
    :cond_11
    invoke-direct {p0, v11}, Landroid/icu/text/MessagePattern;->isPlural(I)Z

    #@219
    move-result v0

    #@21a
    if-eqz v0, :cond_12

    #@21c
    .line 1079
    sget-object v6, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    #@21e
    goto :goto_3

    #@21f
    .line 1080
    :cond_12
    invoke-direct {p0, v11}, Landroid/icu/text/MessagePattern;->isSelect(I)Z

    #@222
    move-result v0

    #@223
    if-eqz v0, :cond_f

    #@225
    .line 1081
    sget-object v6, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    #@227
    goto :goto_3

    #@228
    .line 1083
    :cond_13
    const/16 v0, 0xd

    #@22a
    if-ne v8, v0, :cond_f

    #@22c
    .line 1084
    invoke-direct {p0, v11}, Landroid/icu/text/MessagePattern;->isSelect(I)Z

    #@22f
    move-result v0

    #@230
    if-eqz v0, :cond_f

    #@232
    add-int/lit8 v0, v11, 0x6

    #@234
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->isOrdinal(I)Z

    #@237
    move-result v0

    #@238
    if-eqz v0, :cond_f

    #@23a
    .line 1085
    sget-object v6, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    #@23c
    goto :goto_3

    #@23d
    .line 1100
    :cond_14
    add-int/lit8 p1, p1, 0x1

    #@23f
    .line 1101
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@241
    if-ne v6, v0, :cond_15

    #@243
    .line 1102
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->parseSimpleStyle(I)I

    #@246
    move-result p1

    #@247
    goto/16 :goto_1

    #@249
    .line 1103
    :cond_15
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@24b
    if-ne v6, v0, :cond_16

    #@24d
    .line 1104
    invoke-direct {p0, p1, p3}, Landroid/icu/text/MessagePattern;->parseChoiceStyle(II)I

    #@250
    move-result p1

    #@251
    goto/16 :goto_1

    #@253
    .line 1106
    :cond_16
    invoke-direct {p0, v6, p1, p3}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    #@256
    move-result p1

    #@257
    goto/16 :goto_1
.end method

.method private parseArgNumber(II)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 1354
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    invoke-static {v0, p1, p2}, Landroid/icu/text/MessagePattern;->parseArgNumber(Ljava/lang/CharSequence;II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static parseArgNumber(Ljava/lang/CharSequence;II)I
    .locals 10
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/16 v9, 0x39

    #@2
    const/16 v8, 0x30

    #@4
    const/4 v7, -0x1

    #@5
    const/4 v6, -0x2

    #@6
    .line 1314
    if-lt p1, p2, :cond_0

    #@8
    .line 1315
    return v6

    #@9
    .line 1320
    :cond_0
    add-int/lit8 v3, p1, 0x1

    #@b
    .end local p1    # "start":I
    .local v3, "start":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@e
    move-result v1

    #@f
    .line 1321
    .local v1, "c":C
    if-ne v1, v8, :cond_3

    #@11
    .line 1322
    if-ne v3, p2, :cond_1

    #@13
    .line 1323
    const/4 v4, 0x0

    #@14
    return v4

    #@15
    .line 1325
    :cond_1
    const/4 v2, 0x0

    #@16
    .line 1326
    .local v2, "number":I
    const/4 v0, 0x1

    #@17
    .line 1334
    .local v0, "badNumber":Z
    :goto_0
    if-ge v3, p2, :cond_6

    #@19
    .line 1335
    add-int/lit8 p1, v3, 0x1

    #@1b
    .end local v3    # "start":I
    .restart local p1    # "start":I
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@1e
    move-result v1

    #@1f
    .line 1336
    if-gt v8, v1, :cond_5

    #@21
    if-gt v1, v9, :cond_5

    #@23
    .line 1337
    const v4, 0xccccccc

    #@26
    if-lt v2, v4, :cond_2

    #@28
    .line 1338
    const/4 v0, 0x1

    #@29
    .line 1340
    :cond_2
    mul-int/lit8 v4, v2, 0xa

    #@2b
    add-int/lit8 v5, v1, -0x30

    #@2d
    add-int v2, v4, v5

    #@2f
    move v3, p1

    #@30
    .end local p1    # "start":I
    .restart local v3    # "start":I
    goto :goto_0

    #@31
    .line 1328
    .end local v0    # "badNumber":Z
    .end local v2    # "number":I
    :cond_3
    const/16 v4, 0x31

    #@33
    if-gt v4, v1, :cond_4

    #@35
    if-gt v1, v9, :cond_4

    #@37
    .line 1329
    add-int/lit8 v2, v1, -0x30

    #@39
    .line 1330
    .restart local v2    # "number":I
    const/4 v0, 0x0

    #@3a
    .line 1328
    .restart local v0    # "badNumber":Z
    goto :goto_0

    #@3b
    .line 1332
    .end local v0    # "badNumber":Z
    .end local v2    # "number":I
    :cond_4
    return v7

    #@3c
    .line 1342
    .end local v3    # "start":I
    .restart local v0    # "badNumber":Z
    .restart local v2    # "number":I
    .restart local p1    # "start":I
    :cond_5
    return v7

    #@3d
    .line 1346
    .end local p1    # "start":I
    .restart local v3    # "start":I
    :cond_6
    if-eqz v0, :cond_7

    #@3f
    .line 1347
    return v6

    #@40
    .line 1349
    :cond_7
    return v2
.end method

.method private parseChoiceStyle(II)I
    .locals 9
    .param p1, "index"    # I
    .param p2, "nestingLevel"    # I

    #@0
    .prologue
    const/16 v8, 0x7d

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 1152
    move v3, p1

    #@5
    .line 1153
    .local v3, "start":I
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@8
    move-result p1

    #@9
    .line 1154
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@e
    move-result v4

    #@f
    if-eq p1, v4, :cond_0

    #@11
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@13
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v4

    #@17
    if-ne v4, v8, :cond_2

    #@19
    .line 1155
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1b
    .line 1156
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "Missing choice argument pattern in "

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 1155
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v4

    #@37
    .line 1197
    .local v0, "c":C
    .local v1, "length":I
    .local v2, "numberIndex":I
    :cond_1
    add-int/lit8 v4, p1, 0x1

    #@39
    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@3c
    move-result p1

    #@3d
    .line 1161
    .end local v0    # "c":C
    .end local v1    # "length":I
    .end local v2    # "numberIndex":I
    :cond_2
    move v2, p1

    #@3e
    .line 1162
    .restart local v2    # "numberIndex":I
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    #@41
    move-result p1

    #@42
    .line 1163
    sub-int v1, p1, v2

    #@44
    .line 1164
    .restart local v1    # "length":I
    if-nez v1, :cond_3

    #@46
    .line 1165
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@48
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v6, "Bad choice pattern syntax: "

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-direct {p0, v3}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v4

    #@64
    .line 1167
    :cond_3
    const v4, 0xffff

    #@67
    if-le v1, v4, :cond_4

    #@69
    .line 1168
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@6b
    .line 1169
    new-instance v5, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v6, "Choice number too long: "

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    invoke-direct {p0, v2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v5

    #@83
    .line 1168
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@86
    throw v4

    #@87
    .line 1171
    :cond_4
    invoke-direct {p0, v2, p1, v7}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    #@8a
    .line 1173
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@8d
    move-result p1

    #@8e
    .line 1174
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@90
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@93
    move-result v4

    #@94
    if-ne p1, v4, :cond_5

    #@96
    .line 1175
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@98
    new-instance v5, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v6, "Bad choice pattern syntax: "

    #@a0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v5

    #@a4
    invoke-direct {p0, v3}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v5

    #@ac
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v5

    #@b0
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v4

    #@b4
    .line 1177
    :cond_5
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@b6
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@b9
    move-result v0

    #@ba
    .line 1178
    .restart local v0    # "c":C
    const/16 v4, 0x23

    #@bc
    if-eq v0, v4, :cond_6

    #@be
    const/16 v4, 0x3c

    #@c0
    if-eq v0, v4, :cond_6

    #@c2
    const/16 v4, 0x2264

    #@c4
    if-eq v0, v4, :cond_6

    #@c6
    .line 1179
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@c8
    .line 1180
    new-instance v5, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v6, "Expected choice separator (#<\u2264) instead of \'"

    #@d0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v5

    #@d4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v5

    #@d8
    .line 1181
    const-string/jumbo v6, "\' in choice pattern "

    #@db
    .line 1180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v5

    #@df
    .line 1181
    invoke-direct {p0, v3}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@e2
    move-result-object v6

    #@e3
    .line 1180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v5

    #@e7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v5

    #@eb
    .line 1179
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ee
    throw v4

    #@ef
    .line 1183
    :cond_6
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@f1
    invoke-direct {p0, v4, p1, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@f4
    .line 1185
    add-int/lit8 p1, p1, 0x1

    #@f6
    add-int/lit8 v4, p2, 0x1

    #@f8
    sget-object v5, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@fa
    invoke-direct {p0, p1, v6, v4, v5}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    #@fd
    move-result p1

    #@fe
    .line 1187
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@100
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@103
    move-result v4

    #@104
    if-ne p1, v4, :cond_7

    #@106
    .line 1188
    return p1

    #@107
    .line 1190
    :cond_7
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@109
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@10c
    move-result v4

    #@10d
    if-ne v4, v8, :cond_1

    #@10f
    .line 1191
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    #@112
    move-result v4

    #@113
    if-nez v4, :cond_8

    #@115
    .line 1192
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@117
    .line 1193
    new-instance v5, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v6, "Bad choice pattern syntax: "

    #@11f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v5

    #@123
    invoke-direct {p0, v3}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@126
    move-result-object v6

    #@127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v5

    #@12b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v5

    #@12f
    .line 1192
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@132
    throw v4

    #@133
    .line 1195
    :cond_8
    return p1
.end method

.method private parseDouble(IIZ)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "allowInfinity"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1364
    sget-boolean v8, Landroid/icu/text/MessagePattern;->-assertionsDisabled:Z

    #@3
    if-nez v8, :cond_1

    #@5
    if-ge p1, p2, :cond_0

    #@7
    const/4 v7, 0x1

    #@8
    :cond_0
    if-nez v7, :cond_1

    #@a
    new-instance v7, Ljava/lang/AssertionError;

    #@c
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@f
    throw v7

    #@10
    .line 1368
    :cond_1
    const/4 v6, 0x0

    #@11
    .line 1369
    .local v6, "value":I
    const/4 v3, 0x0

    #@12
    .line 1370
    .local v3, "isNegative":I
    move v1, p1

    #@13
    .line 1371
    .local v1, "index":I
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 1372
    .local v0, "c":C
    const/16 v7, 0x2d

    #@1d
    if-ne v0, v7, :cond_4

    #@1f
    .line 1373
    const/4 v3, 0x1

    #@20
    .line 1374
    if-ne v2, p2, :cond_3

    #@22
    move v1, v2

    #@23
    .line 1411
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_2
    :goto_0
    new-instance v7, Ljava/lang/NumberFormatException;

    #@25
    .line 1412
    new-instance v8, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v9, "Bad syntax for numeric value: "

    #@2d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    iget-object v9, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@33
    invoke-virtual {v9, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36
    move-result-object v9

    #@37
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    .line 1411
    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@42
    throw v7

    #@43
    .line 1377
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_3
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@45
    add-int/lit8 v1, v2, 0x1

    #@47
    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v0

    #@4b
    .line 1384
    :goto_1
    const/16 v7, 0x221e

    #@4d
    if-ne v0, v7, :cond_8

    #@4f
    .line 1385
    if-eqz p3, :cond_2

    #@51
    if-ne v1, p2, :cond_2

    #@53
    .line 1387
    if-eqz v3, :cond_6

    #@55
    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@57
    .line 1388
    :goto_2
    sub-int v7, p2, p1

    #@59
    .line 1386
    invoke-direct {p0, v8, v9, p1, v7}, Landroid/icu/text/MessagePattern;->addArgDoublePart(DII)V

    #@5c
    .line 1389
    return-void

    #@5d
    .line 1378
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_4
    const/16 v7, 0x2b

    #@5f
    if-ne v0, v7, :cond_c

    #@61
    .line 1379
    if-ne v2, p2, :cond_5

    #@63
    move v1, v2

    #@64
    .line 1380
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@65
    .line 1382
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_5
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@67
    add-int/lit8 v1, v2, 0x1

    #@69
    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    #@6c
    move-result v0

    #@6d
    goto :goto_1

    #@6e
    .line 1387
    :cond_6
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@70
    goto :goto_2

    #@71
    .line 1404
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_7
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@73
    add-int/lit8 v1, v2, 0x1

    #@75
    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    #@78
    move-result v0

    #@79
    :cond_8
    move v2, v1

    #@7a
    .line 1395
    .end local v1    # "index":I
    .restart local v2    # "index":I
    const/16 v7, 0x30

    #@7c
    if-gt v7, v0, :cond_9

    #@7e
    const/16 v7, 0x39

    #@80
    if-gt v0, v7, :cond_9

    #@82
    .line 1396
    mul-int/lit8 v7, v6, 0xa

    #@84
    add-int/lit8 v8, v0, -0x30

    #@86
    add-int v6, v7, v8

    #@88
    .line 1397
    add-int/lit16 v7, v3, 0x7fff

    #@8a
    if-le v6, v7, :cond_a

    #@8c
    .line 1407
    :cond_9
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@8e
    invoke-virtual {v7, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@91
    move-result-object v7

    #@92
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@95
    move-result-wide v4

    #@96
    .line 1408
    .local v4, "numericValue":D
    sub-int v7, p2, p1

    #@98
    invoke-direct {p0, v4, v5, p1, v7}, Landroid/icu/text/MessagePattern;->addArgDoublePart(DII)V

    #@9b
    .line 1409
    return-void

    #@9c
    .line 1400
    .end local v4    # "numericValue":D
    :cond_a
    if-ne v2, p2, :cond_7

    #@9e
    .line 1401
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    #@a0
    sub-int v8, p2, p1

    #@a2
    if-eqz v3, :cond_b

    #@a4
    neg-int v6, v6

    #@a5
    .end local v6    # "value":I
    :cond_b
    invoke-direct {p0, v7, p1, v8, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@a8
    .line 1402
    return-void

    #@a9
    .restart local v6    # "value":I
    :cond_c
    move v1, v2

    #@aa
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1
.end method

.method private parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I
    .locals 17
    .param p1, "index"    # I
    .param p2, "msgStartLength"    # I
    .param p3, "nestingLevel"    # I
    .param p4, "parentType"    # Landroid/icu/text/MessagePattern$ArgType;

    #@0
    .prologue
    .line 928
    const/16 v4, 0x7fff

    #@2
    move/from16 v0, p3

    #@4
    if-le v0, v4, :cond_0

    #@6
    .line 929
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v4

    #@c
    .line 931
    :cond_0
    move-object/from16 v0, p0

    #@e
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v5

    #@14
    .line 932
    .local v5, "msgStart":I
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@16
    move-object/from16 v0, p0

    #@18
    move/from16 v1, p1

    #@1a
    move/from16 v2, p2

    #@1c
    move/from16 v3, p3

    #@1e
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@21
    .line 933
    add-int p1, p1, p2

    #@23
    .line 934
    :goto_0
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2a
    move-result v4

    #@2b
    move/from16 v0, p1

    #@2d
    if-ge v0, v4, :cond_11

    #@2f
    .line 935
    move-object/from16 v0, p0

    #@31
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@33
    add-int/lit8 v16, p1, 0x1

    #@35
    .end local p1    # "index":I
    .local v16, "index":I
    move/from16 v0, p1

    #@37
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v15

    #@3b
    .line 936
    .local v15, "c":C
    const/16 v4, 0x27

    #@3d
    if-ne v15, v4, :cond_9

    #@3f
    .line 937
    move-object/from16 v0, p0

    #@41
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@46
    move-result v4

    #@47
    move/from16 v0, v16

    #@49
    if-ne v0, v4, :cond_1

    #@4b
    .line 940
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    #@4d
    const/16 v6, 0x27

    #@4f
    const/4 v7, 0x0

    #@50
    move-object/from16 v0, p0

    #@52
    move/from16 v1, v16

    #@54
    invoke-direct {v0, v4, v1, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@57
    .line 941
    const/4 v4, 0x1

    #@58
    move-object/from16 v0, p0

    #@5a
    iput-boolean v4, v0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    #@5c
    move/from16 p1, v16

    #@5e
    .end local v16    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    #@5f
    .line 943
    .end local p1    # "index":I
    .restart local v16    # "index":I
    :cond_1
    move-object/from16 v0, p0

    #@61
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@63
    move/from16 v0, v16

    #@65
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@68
    move-result v15

    #@69
    .line 944
    const/16 v4, 0x27

    #@6b
    if-ne v15, v4, :cond_2

    #@6d
    .line 946
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@6f
    add-int/lit8 p1, v16, 0x1

    #@71
    .end local v16    # "index":I
    .restart local p1    # "index":I
    const/4 v6, 0x1

    #@72
    const/4 v7, 0x0

    #@73
    move-object/from16 v0, p0

    #@75
    move/from16 v1, v16

    #@77
    invoke-direct {v0, v4, v1, v6, v7}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@7a
    goto :goto_0

    #@7b
    .line 948
    .end local p1    # "index":I
    .restart local v16    # "index":I
    :cond_2
    move-object/from16 v0, p0

    #@7d
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@7f
    sget-object v6, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@81
    if-eq v4, v6, :cond_3

    #@83
    .line 949
    const/16 v4, 0x7b

    #@85
    if-ne v15, v4, :cond_4

    #@87
    .line 954
    :cond_3
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@89
    add-int/lit8 v6, v16, -0x1

    #@8b
    const/4 v7, 0x1

    #@8c
    const/4 v9, 0x0

    #@8d
    move-object/from16 v0, p0

    #@8f
    invoke-direct {v0, v4, v6, v7, v9}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@92
    move/from16 p1, v16

    #@94
    .line 957
    .end local v16    # "index":I
    .restart local p1    # "index":I
    :goto_1
    move-object/from16 v0, p0

    #@96
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@98
    const/16 v6, 0x27

    #@9a
    add-int/lit8 v7, p1, 0x1

    #@9c
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(II)I

    #@9f
    move-result p1

    #@a0
    .line 958
    if-ltz p1, :cond_8

    #@a2
    .line 959
    add-int/lit8 v4, p1, 0x1

    #@a4
    move-object/from16 v0, p0

    #@a6
    iget-object v6, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@a8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@ab
    move-result v6

    #@ac
    if-ge v4, v6, :cond_7

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@b2
    add-int/lit8 v6, p1, 0x1

    #@b4
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    #@b7
    move-result v4

    #@b8
    const/16 v6, 0x27

    #@ba
    if-ne v4, v6, :cond_7

    #@bc
    .line 962
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@be
    add-int/lit8 p1, p1, 0x1

    #@c0
    const/4 v6, 0x1

    #@c1
    const/4 v7, 0x0

    #@c2
    move-object/from16 v0, p0

    #@c4
    move/from16 v1, p1

    #@c6
    invoke-direct {v0, v4, v1, v6, v7}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@c9
    goto :goto_1

    #@ca
    .line 949
    .end local p1    # "index":I
    .restart local v16    # "index":I
    :cond_4
    const/16 v4, 0x7d

    #@cc
    if-eq v15, v4, :cond_3

    #@ce
    .line 950
    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@d0
    move-object/from16 v0, p4

    #@d2
    if-ne v0, v4, :cond_5

    #@d4
    const/16 v4, 0x7c

    #@d6
    if-eq v15, v4, :cond_3

    #@d8
    .line 951
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    #@db
    move-result v4

    #@dc
    if-eqz v4, :cond_6

    #@de
    const/16 v4, 0x23

    #@e0
    if-eq v15, v4, :cond_3

    #@e2
    .line 980
    :cond_6
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    #@e4
    const/16 v6, 0x27

    #@e6
    const/4 v7, 0x0

    #@e7
    move-object/from16 v0, p0

    #@e9
    move/from16 v1, v16

    #@eb
    invoke-direct {v0, v4, v1, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@ee
    .line 981
    const/4 v4, 0x1

    #@ef
    move-object/from16 v0, p0

    #@f1
    iput-boolean v4, v0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    #@f3
    move/from16 p1, v16

    #@f5
    .end local v16    # "index":I
    .restart local p1    # "index":I
    goto/16 :goto_0

    #@f7
    .line 965
    :cond_7
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@f9
    add-int/lit8 v16, p1, 0x1

    #@fb
    .end local p1    # "index":I
    .restart local v16    # "index":I
    const/4 v6, 0x1

    #@fc
    const/4 v7, 0x0

    #@fd
    move-object/from16 v0, p0

    #@ff
    move/from16 v1, p1

    #@101
    invoke-direct {v0, v4, v1, v6, v7}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@104
    move/from16 p1, v16

    #@106
    .line 966
    .end local v16    # "index":I
    .restart local p1    # "index":I
    goto/16 :goto_0

    #@108
    .line 970
    :cond_8
    move-object/from16 v0, p0

    #@10a
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@10c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@10f
    move-result p1

    #@110
    .line 972
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    #@112
    const/16 v6, 0x27

    #@114
    const/4 v7, 0x0

    #@115
    move-object/from16 v0, p0

    #@117
    move/from16 v1, p1

    #@119
    invoke-direct {v0, v4, v1, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@11c
    .line 973
    const/4 v4, 0x1

    #@11d
    move-object/from16 v0, p0

    #@11f
    iput-boolean v4, v0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    #@121
    goto/16 :goto_0

    #@123
    .line 984
    .end local p1    # "index":I
    .restart local v16    # "index":I
    :cond_9
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    #@126
    move-result v4

    #@127
    if-eqz v4, :cond_a

    #@129
    const/16 v4, 0x23

    #@12b
    if-ne v15, v4, :cond_a

    #@12d
    .line 987
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@12f
    add-int/lit8 v6, v16, -0x1

    #@131
    const/4 v7, 0x1

    #@132
    const/4 v9, 0x0

    #@133
    move-object/from16 v0, p0

    #@135
    invoke-direct {v0, v4, v6, v7, v9}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@138
    move/from16 p1, v16

    #@13a
    .line 984
    .end local v16    # "index":I
    .restart local p1    # "index":I
    goto/16 :goto_0

    #@13c
    .line 988
    .end local p1    # "index":I
    .restart local v16    # "index":I
    :cond_a
    const/16 v4, 0x7b

    #@13e
    if-ne v15, v4, :cond_b

    #@140
    .line 989
    add-int/lit8 v4, v16, -0x1

    #@142
    const/4 v6, 0x1

    #@143
    move-object/from16 v0, p0

    #@145
    move/from16 v1, p3

    #@147
    invoke-direct {v0, v4, v6, v1}, Landroid/icu/text/MessagePattern;->parseArg(III)I

    #@14a
    move-result p1

    #@14b
    .end local v16    # "index":I
    .restart local p1    # "index":I
    goto/16 :goto_0

    #@14d
    .line 990
    .end local p1    # "index":I
    .restart local v16    # "index":I
    :cond_b
    if-lez p3, :cond_d

    #@14f
    const/16 v4, 0x7d

    #@151
    if-ne v15, v4, :cond_d

    #@153
    .line 994
    :cond_c
    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@155
    move-object/from16 v0, p4

    #@157
    if-ne v0, v4, :cond_f

    #@159
    const/16 v4, 0x7d

    #@15b
    if-ne v15, v4, :cond_f

    #@15d
    const/4 v8, 0x0

    #@15e
    .line 995
    .local v8, "limitLength":I
    :goto_2
    sget-object v6, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@160
    add-int/lit8 v7, v16, -0x1

    #@162
    move-object/from16 v4, p0

    #@164
    move/from16 v9, p3

    #@166
    invoke-direct/range {v4 .. v9}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    #@169
    .line 996
    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@16b
    move-object/from16 v0, p4

    #@16d
    if-ne v0, v4, :cond_10

    #@16f
    .line 998
    add-int/lit8 v4, v16, -0x1

    #@171
    return v4

    #@172
    .line 990
    .end local v8    # "limitLength":I
    :cond_d
    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@174
    move-object/from16 v0, p4

    #@176
    if-ne v0, v4, :cond_e

    #@178
    const/16 v4, 0x7c

    #@17a
    if-eq v15, v4, :cond_c

    #@17c
    :cond_e
    move/from16 p1, v16

    #@17e
    .end local v16    # "index":I
    .restart local p1    # "index":I
    goto/16 :goto_0

    #@180
    .line 994
    .end local p1    # "index":I
    .restart local v16    # "index":I
    :cond_f
    const/4 v8, 0x1

    #@181
    .restart local v8    # "limitLength":I
    goto :goto_2

    #@182
    .line 1001
    :cond_10
    return v16

    #@183
    .line 1005
    .end local v8    # "limitLength":I
    .end local v15    # "c":C
    .end local v16    # "index":I
    .restart local p1    # "index":I
    :cond_11
    if-lez p3, :cond_12

    #@185
    move-object/from16 v0, p0

    #@187
    move/from16 v1, p3

    #@189
    move-object/from16 v2, p4

    #@18b
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern;->inTopLevelChoiceMessage(ILandroid/icu/text/MessagePattern$ArgType;)Z

    #@18e
    move-result v4

    #@18f
    if-eqz v4, :cond_13

    #@191
    .line 1009
    :cond_12
    sget-object v11, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@193
    const/4 v13, 0x0

    #@194
    move-object/from16 v9, p0

    #@196
    move v10, v5

    #@197
    move/from16 v12, p1

    #@199
    move/from16 v14, p3

    #@19b
    invoke-direct/range {v9 .. v14}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    #@19e
    .line 1010
    return p1

    #@19f
    .line 1006
    :cond_13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1a1
    .line 1007
    new-instance v6, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v7, "Unmatched \'{\' braces in message "

    #@1a9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v6

    #@1ad
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    #@1b0
    move-result-object v7

    #@1b1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v6

    #@1b5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v6

    #@1b9
    .line 1006
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1bc
    throw v4
.end method

.method private parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I
    .locals 11
    .param p1, "argType"    # Landroid/icu/text/MessagePattern$ArgType;
    .param p2, "index"    # I
    .param p3, "nestingLevel"    # I

    #@0
    .prologue
    .line 1202
    move v5, p2

    #@1
    .line 1203
    .local v5, "start":I
    const/4 v2, 0x1

    #@2
    .line 1204
    .local v2, "isEmpty":Z
    const/4 v1, 0x0

    #@3
    .line 1209
    .local v1, "hasOther":Z
    :goto_0
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@6
    move-result p2

    #@7
    .line 1210
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@c
    move-result v7

    #@d
    if-ne p2, v7, :cond_1

    #@f
    const/4 v0, 0x1

    #@10
    .line 1211
    .local v0, "eos":Z
    :goto_1
    if-nez v0, :cond_0

    #@12
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@14
    invoke-virtual {v7, p2}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v7

    #@18
    const/16 v8, 0x7d

    #@1a
    if-ne v7, v8, :cond_4

    #@1c
    .line 1212
    :cond_0
    invoke-direct {p0, p3}, Landroid/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    #@1f
    move-result v7

    #@20
    if-ne v0, v7, :cond_2

    #@22
    .line 1213
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@24
    .line 1214
    new-instance v8, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v9, "Bad "

    #@2c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v8

    #@30
    .line 1215
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    #@33
    move-result-object v9

    #@34
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@36
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@39
    move-result-object v9

    #@3a
    .line 1214
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    .line 1216
    const-string/jumbo v9, " pattern syntax: "

    #@41
    .line 1214
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v8

    #@45
    .line 1216
    invoke-direct {p0, v5}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    .line 1214
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v8

    #@4d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    .line 1213
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@54
    throw v7

    #@55
    .line 1210
    .end local v0    # "eos":Z
    :cond_1
    const/4 v0, 0x0

    #@56
    .restart local v0    # "eos":Z
    goto :goto_1

    #@57
    .line 1218
    :cond_2
    if-nez v1, :cond_3

    #@59
    .line 1219
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@5b
    .line 1220
    new-instance v8, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v9, "Missing \'other\' keyword in "

    #@63
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v8

    #@67
    .line 1221
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    #@6a
    move-result-object v9

    #@6b
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@6d
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@70
    move-result-object v9

    #@71
    .line 1220
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v8

    #@75
    .line 1222
    const-string/jumbo v9, " pattern in "

    #@78
    .line 1220
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v8

    #@7c
    .line 1222
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    .line 1220
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    .line 1219
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8b
    throw v7

    #@8c
    .line 1224
    :cond_3
    return p2

    #@8d
    .line 1226
    :cond_4
    move v4, p2

    #@8e
    .line 1227
    .local v4, "selectorIndex":I
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    #@91
    move-result v7

    #@92
    if-eqz v7, :cond_9

    #@94
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@96
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    #@99
    move-result v7

    #@9a
    const/16 v8, 0x3d

    #@9c
    if-ne v7, v8, :cond_9

    #@9e
    .line 1229
    add-int/lit8 v7, p2, 0x1

    #@a0
    invoke-direct {p0, v7}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    #@a3
    move-result p2

    #@a4
    .line 1230
    sub-int v3, p2, v4

    #@a6
    .line 1231
    .local v3, "length":I
    const/4 v7, 0x1

    #@a7
    if-ne v3, v7, :cond_5

    #@a9
    .line 1232
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@ab
    .line 1233
    new-instance v8, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v9, "Bad "

    #@b3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v8

    #@b7
    .line 1234
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    #@ba
    move-result-object v9

    #@bb
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@bd
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@c0
    move-result-object v9

    #@c1
    .line 1233
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v8

    #@c5
    .line 1235
    const-string/jumbo v9, " pattern syntax: "

    #@c8
    .line 1233
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v8

    #@cc
    .line 1235
    invoke-direct {p0, v5}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@cf
    move-result-object v9

    #@d0
    .line 1233
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v8

    #@d4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v8

    #@d8
    .line 1232
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@db
    throw v7

    #@dc
    .line 1237
    :cond_5
    const v7, 0xffff

    #@df
    if-le v3, v7, :cond_6

    #@e1
    .line 1238
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    #@e3
    .line 1239
    new-instance v8, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v9, "Argument selector too long: "

    #@eb
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v8

    #@ef
    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@f2
    move-result-object v9

    #@f3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v8

    #@f7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v8

    #@fb
    .line 1238
    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@fe
    throw v7

    #@ff
    .line 1241
    :cond_6
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@101
    const/4 v8, 0x0

    #@102
    invoke-direct {p0, v7, v4, v3, v8}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@105
    .line 1242
    add-int/lit8 v7, v4, 0x1

    #@107
    const/4 v8, 0x0

    #@108
    invoke-direct {p0, v7, p2, v8}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    #@10b
    .line 1290
    :cond_7
    :goto_2
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@10e
    move-result p2

    #@10f
    .line 1291
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@111
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@114
    move-result v7

    #@115
    if-eq p2, v7, :cond_8

    #@117
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@119
    invoke-virtual {v7, p2}, Ljava/lang/String;->charAt(I)C

    #@11c
    move-result v7

    #@11d
    const/16 v8, 0x7b

    #@11f
    if-eq v7, v8, :cond_10

    #@121
    .line 1292
    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@123
    .line 1293
    new-instance v8, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v9, "No message fragment after "

    #@12b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v8

    #@12f
    .line 1294
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    #@132
    move-result-object v9

    #@133
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@135
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@138
    move-result-object v9

    #@139
    .line 1293
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v8

    #@13d
    .line 1295
    const-string/jumbo v9, " selector: "

    #@140
    .line 1293
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v8

    #@144
    .line 1295
    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@147
    move-result-object v9

    #@148
    .line 1293
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v8

    #@14c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v8

    #@150
    .line 1292
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@153
    throw v7

    #@154
    .line 1244
    .end local v3    # "length":I
    :cond_9
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->skipIdentifier(I)I

    #@157
    move-result p2

    #@158
    .line 1245
    sub-int v3, p2, v4

    #@15a
    .line 1246
    .restart local v3    # "length":I
    if-nez v3, :cond_a

    #@15c
    .line 1247
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@15e
    .line 1248
    new-instance v8, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v9, "Bad "

    #@166
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v8

    #@16a
    .line 1249
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    #@16d
    move-result-object v9

    #@16e
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@170
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@173
    move-result-object v9

    #@174
    .line 1248
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v8

    #@178
    .line 1250
    const-string/jumbo v9, " pattern syntax: "

    #@17b
    .line 1248
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v8

    #@17f
    .line 1250
    invoke-direct {p0, v5}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@182
    move-result-object v9

    #@183
    .line 1248
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v8

    #@187
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v8

    #@18b
    .line 1247
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18e
    throw v7

    #@18f
    .line 1253
    :cond_a
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    #@192
    move-result v7

    #@193
    if-eqz v7, :cond_e

    #@195
    const/4 v7, 0x6

    #@196
    if-ne v3, v7, :cond_e

    #@198
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@19a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@19d
    move-result v7

    #@19e
    if-ge p2, v7, :cond_e

    #@1a0
    .line 1254
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@1a2
    const-string/jumbo v8, "offset:"

    #@1a5
    const/4 v9, 0x0

    #@1a6
    const/4 v10, 0x7

    #@1a7
    invoke-virtual {v7, v4, v8, v9, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@1aa
    move-result v7

    #@1ab
    .line 1253
    if-eqz v7, :cond_e

    #@1ad
    .line 1257
    if-nez v2, :cond_b

    #@1af
    .line 1258
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@1b1
    .line 1259
    new-instance v8, Ljava/lang/StringBuilder;

    #@1b3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1b6
    const-string/jumbo v9, "Plural argument \'offset:\' (if present) must precede key-message pairs: "

    #@1b9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v8

    #@1bd
    .line 1260
    invoke-direct {p0, v5}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@1c0
    move-result-object v9

    #@1c1
    .line 1259
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v8

    #@1c5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v8

    #@1c9
    .line 1258
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1cc
    throw v7

    #@1cd
    .line 1263
    :cond_b
    add-int/lit8 v7, p2, 0x1

    #@1cf
    invoke-direct {p0, v7}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@1d2
    move-result v6

    #@1d3
    .line 1264
    .local v6, "valueIndex":I
    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    #@1d6
    move-result p2

    #@1d7
    .line 1265
    if-ne p2, v6, :cond_c

    #@1d9
    .line 1266
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@1db
    .line 1267
    new-instance v8, Ljava/lang/StringBuilder;

    #@1dd
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1e0
    const-string/jumbo v9, "Missing value for plural \'offset:\' "

    #@1e3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v8

    #@1e7
    invoke-direct {p0, v5}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@1ea
    move-result-object v9

    #@1eb
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v8

    #@1ef
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f2
    move-result-object v8

    #@1f3
    .line 1266
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f6
    throw v7

    #@1f7
    .line 1269
    :cond_c
    sub-int v7, p2, v6

    #@1f9
    const v8, 0xffff

    #@1fc
    if-le v7, v8, :cond_d

    #@1fe
    .line 1270
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    #@200
    .line 1271
    new-instance v8, Ljava/lang/StringBuilder;

    #@202
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@205
    const-string/jumbo v9, "Plural offset value too long: "

    #@208
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v8

    #@20c
    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@20f
    move-result-object v9

    #@210
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v8

    #@214
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@217
    move-result-object v8

    #@218
    .line 1270
    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@21b
    throw v7

    #@21c
    .line 1273
    :cond_d
    const/4 v7, 0x0

    #@21d
    invoke-direct {p0, v6, p2, v7}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    #@220
    .line 1274
    const/4 v2, 0x0

    #@221
    .line 1275
    goto/16 :goto_0

    #@223
    .line 1278
    .end local v6    # "valueIndex":I
    :cond_e
    const v7, 0xffff

    #@226
    if-le v3, v7, :cond_f

    #@228
    .line 1279
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    #@22a
    .line 1280
    new-instance v8, Ljava/lang/StringBuilder;

    #@22c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@22f
    const-string/jumbo v9, "Argument selector too long: "

    #@232
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v8

    #@236
    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@239
    move-result-object v9

    #@23a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v8

    #@23e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@241
    move-result-object v8

    #@242
    .line 1279
    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@245
    throw v7

    #@246
    .line 1282
    :cond_f
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@248
    const/4 v8, 0x0

    #@249
    invoke-direct {p0, v7, v4, v3, v8}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@24c
    .line 1283
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@24e
    const-string/jumbo v8, "other"

    #@251
    const/4 v9, 0x0

    #@252
    invoke-virtual {v7, v4, v8, v9, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@255
    move-result v7

    #@256
    if-eqz v7, :cond_7

    #@258
    .line 1284
    const/4 v1, 0x1

    #@259
    goto/16 :goto_2

    #@25b
    .line 1297
    :cond_10
    add-int/lit8 v7, p3, 0x1

    #@25d
    const/4 v8, 0x1

    #@25e
    invoke-direct {p0, p2, v8, v7, p1}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    #@261
    move-result p2

    #@262
    .line 1298
    const/4 v2, 0x0

    #@263
    goto/16 :goto_0
.end method

.method private parseSimpleStyle(I)I
    .locals 8
    .param p1, "index"    # I

    #@0
    .prologue
    const/16 v7, 0x27

    #@2
    const/4 v6, 0x0

    #@3
    .line 1116
    move v4, p1

    #@4
    .line 1117
    .local v4, "start":I
    const/4 v3, 0x0

    #@5
    .line 1118
    .local v3, "nestedBraces":I
    :goto_0
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@a
    move-result v5

    #@b
    if-ge p1, v5, :cond_5

    #@d
    .line 1119
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@f
    add-int/lit8 v1, p1, 0x1

    #@11
    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 1120
    .local v0, "c":C
    if-ne v0, v7, :cond_1

    #@17
    .line 1123
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@19
    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(II)I

    #@1c
    move-result p1

    #@1d
    .line 1124
    .end local v1    # "index":I
    .restart local p1    # "index":I
    if-gez p1, :cond_0

    #@1f
    .line 1125
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@21
    .line 1126
    new-instance v6, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v7, "Quoted literal argument style text reaches to the end of the message: "

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    .line 1127
    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    .line 1126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    .line 1125
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v5

    #@3d
    .line 1130
    :cond_0
    add-int/lit8 p1, p1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1131
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_1
    const/16 v5, 0x7b

    #@42
    if-ne v0, v5, :cond_2

    #@44
    .line 1132
    add-int/lit8 v3, v3, 0x1

    #@46
    move p1, v1

    #@47
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    #@48
    .line 1133
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_2
    const/16 v5, 0x7d

    #@4a
    if-ne v0, v5, :cond_6

    #@4c
    .line 1134
    if-lez v3, :cond_3

    #@4e
    .line 1135
    add-int/lit8 v3, v3, -0x1

    #@50
    move p1, v1

    #@51
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    #@52
    .line 1137
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_3
    add-int/lit8 p1, v1, -0x1

    #@54
    .end local v1    # "index":I
    .restart local p1    # "index":I
    sub-int v2, p1, v4

    #@56
    .line 1138
    .local v2, "length":I
    const v5, 0xffff

    #@59
    if-le v2, v5, :cond_4

    #@5b
    .line 1139
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@5d
    .line 1140
    new-instance v6, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v7, "Argument style text too long: "

    #@65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v6

    #@75
    .line 1139
    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@78
    throw v5

    #@79
    .line 1142
    :cond_4
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@7b
    invoke-direct {p0, v5, v4, v2, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@7e
    .line 1143
    return p1

    #@7f
    .line 1147
    .end local v0    # "c":C
    .end local v2    # "length":I
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@81
    .line 1148
    new-instance v6, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v7, "Unmatched \'{\' braces in message "

    #@89
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v6

    #@8d
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    #@90
    move-result-object v7

    #@91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v6

    #@99
    .line 1147
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v5

    #@9d
    .end local p1    # "index":I
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_6
    move p1, v1

    #@9e
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto/16 :goto_0
.end method

.method private postParse()V
    .locals 0

    #@0
    .prologue
    .line 923
    return-void
.end method

.method private preParse(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 910
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 911
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Attempt to parse("

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {p1}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, ") on frozen MessagePattern instance."

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 911
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 914
    :cond_0
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2e
    .line 915
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    #@30
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    #@32
    .line 916
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    #@34
    .line 917
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@39
    .line 918
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@3b
    if-eqz v0, :cond_1

    #@3d
    .line 919
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@42
    .line 909
    :cond_1
    return-void
.end method

.method private prefix()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1596
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private prefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    #@0
    .prologue
    .line 1592
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1588
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static prefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I

    #@0
    .prologue
    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v3, 0x2c

    #@4
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1568
    .local v1, "prefix":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    #@9
    .line 1569
    const-string/jumbo v3, "\""

    #@c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 1573
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@12
    move-result v3

    #@13
    sub-int v2, v3, p1

    #@15
    .line 1574
    .local v2, "substringLength":I
    const/16 v3, 0x18

    #@17
    if-gt v2, v3, :cond_2

    #@19
    .line 1575
    if-nez p1, :cond_1

    #@1b
    .end local p0    # "s":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1584
    :goto_2
    const-string/jumbo v3, "\""

    #@21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    return-object v3

    #@2a
    .line 1571
    .end local v2    # "substringLength":I
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "[at pattern index "

    #@2d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    const-string/jumbo v4, "] \""

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    goto :goto_0

    #@3c
    .line 1575
    .restart local v2    # "substringLength":I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3f
    move-result-object p0

    #@40
    goto :goto_1

    #@41
    .line 1577
    :cond_2
    add-int/lit8 v3, p1, 0x18

    #@43
    add-int/lit8 v0, v3, -0x4

    #@45
    .line 1578
    .local v0, "limit":I
    add-int/lit8 v3, v0, -0x1

    #@47
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v3

    #@4b
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_3

    #@51
    .line 1580
    add-int/lit8 v0, v0, -0x1

    #@53
    .line 1582
    :cond_3
    invoke-virtual {v1, p0, p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    const-string/jumbo v4, " ..."

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    goto :goto_2
.end method

.method private skipDouble(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1455
    :goto_0
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-ge p1, v1, :cond_0

    #@8
    .line 1456
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .line 1458
    .local v0, "c":C
    const/16 v1, 0x30

    #@10
    if-ge v0, v1, :cond_1

    #@12
    const-string/jumbo v1, "+-."

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    #@18
    move-result v1

    #@19
    if-gez v1, :cond_1

    #@1b
    .line 1463
    .end local v0    # "c":C
    :cond_0
    return p1

    #@1c
    .line 1458
    .restart local v0    # "c":C
    :cond_1
    const/16 v1, 0x39

    #@1e
    if-le v0, v1, :cond_2

    #@20
    const/16 v1, 0x65

    #@22
    if-eq v0, v1, :cond_2

    #@24
    const/16 v1, 0x45

    #@26
    if-eq v0, v1, :cond_2

    #@28
    const/16 v1, 0x221e

    #@2a
    if-ne v0, v1, :cond_0

    #@2c
    .line 1461
    :cond_2
    add-int/lit8 p1, p1, 0x1

    #@2e
    goto :goto_0
.end method

.method private skipIdentifier(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1447
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/icu/impl/PatternProps;->skipIdentifier(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private skipWhiteSpace(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1443
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static validateArgumentName(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 363
    invoke-static {p0}, Landroid/icu/impl/PatternProps;->isIdentifier(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 364
    const/4 v0, -0x2

    #@7
    return v0

    #@8
    .line 366
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x0

    #@d
    invoke-static {p0, v1, v0}, Landroid/icu/text/MessagePattern;->parseArgNumber(Ljava/lang/CharSequence;II)I

    #@10
    move-result v0

    #@11
    return v0
.end method


# virtual methods
.method public autoQuoteApostropheDeep()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 396
    iget-boolean v4, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    #@2
    if-nez v4, :cond_0

    #@4
    .line 397
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@6
    return-object v4

    #@7
    .line 399
    :cond_0
    const/4 v2, 0x0

    #@8
    .line 401
    .local v2, "modified":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    #@b
    move-result v0

    #@c
    .line 402
    .local v0, "count":I
    move v1, v0

    #@d
    .end local v2    # "modified":Ljava/lang/StringBuilder;
    .local v1, "i":I
    :cond_1
    :goto_0
    if-lez v1, :cond_3

    #@f
    .line 404
    add-int/lit8 v1, v1, -0x1

    #@11
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@14
    move-result-object v3

    #@15
    .local v3, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@18
    move-result-object v4

    #@19
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    #@1b
    if-ne v4, v5, :cond_1

    #@1d
    .line 405
    if-nez v2, :cond_2

    #@1f
    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@23
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@26
    move-result v5

    #@27
    add-int/lit8 v5, v5, 0xa

    #@29
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@2c
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 408
    :cond_2
    invoke-static {v3}, Landroid/icu/text/MessagePattern$Part;->-get0(Landroid/icu/text/MessagePattern$Part;)I

    #@35
    move-result v4

    #@36
    invoke-static {v3}, Landroid/icu/text/MessagePattern$Part;->-get4(Landroid/icu/text/MessagePattern$Part;)S

    #@39
    move-result v5

    #@3a
    int-to-char v5, v5

    #@3b
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@3e
    goto :goto_0

    #@3f
    .line 411
    .end local v3    # "part":Landroid/icu/text/MessagePattern$Part;
    :cond_3
    if-nez v2, :cond_4

    #@41
    .line 412
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@43
    return-object v4

    #@44
    .line 414
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    return-object v4
.end method

.method public clear()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 246
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@a
    .line 248
    const-string/jumbo v1, "Attempt to clear() a frozen MessagePattern instance."

    #@d
    .line 247
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 250
    :cond_0
    iput-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@13
    .line 251
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    #@15
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    #@17
    .line 252
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    #@19
    .line 253
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@1e
    .line 254
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 255
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@27
    .line 244
    :cond_1
    return-void
.end method

.method public clearPatternAndSetApostropheMode(Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/icu/text/MessagePattern$ApostropheMode;

    #@0
    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->clear()V

    #@3
    .line 267
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@5
    .line 265
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 862
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 863
    return-object p0

    #@7
    .line 865
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->cloneAsThawed()Landroid/icu/text/MessagePattern;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/text/MessagePattern;
    .locals 3

    #@0
    .prologue
    .line 878
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 882
    .local v1, "newMsg":Landroid/icu/text/MessagePattern;
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/util/ArrayList;

    #@e
    iput-object v2, v1, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@10
    .line 883
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 884
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/util/ArrayList;

    #@1c
    iput-object v2, v1, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@1e
    .line 886
    :cond_0
    const/4 v2, 0x0

    #@1f
    iput-boolean v2, v1, Landroid/icu/text/MessagePattern;->frozen:Z

    #@21
    .line 887
    return-object v1

    #@22
    .line 879
    .end local v1    # "newMsg":Landroid/icu/text/MessagePattern;
    :catch_0
    move-exception v0

    #@23
    .line 880
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@25
    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@28
    throw v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 875
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->cloneAsThawed()Landroid/icu/text/MessagePattern;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public countParts()I
    .locals 1

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 277
    if-ne p0, p1, :cond_0

    #@3
    .line 278
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 280
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 281
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 283
    check-cast v0, Landroid/icu/text/MessagePattern;

    #@15
    .line 285
    .local v0, "o":Landroid/icu/text/MessagePattern;
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@17
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@19
    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern$ApostropheMode;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 286
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@21
    if-nez v2, :cond_4

    #@23
    iget-object v2, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@25
    if-nez v2, :cond_3

    #@27
    .line 287
    :goto_0
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@29
    iget-object v2, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    .line 284
    :cond_3
    return v1

    #@30
    .line 286
    :cond_4
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@32
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v2

    #@38
    .line 285
    if-eqz v2, :cond_3

    #@3a
    goto :goto_0
.end method

.method public freeze()Landroid/icu/text/MessagePattern;
    .locals 1

    #@0
    .prologue
    .line 896
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->frozen:Z

    #@3
    .line 897
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 895
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->freeze()Landroid/icu/text/MessagePattern;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;
    .locals 1

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@2
    return-object v0
.end method

.method public getLimitPartIndex(I)I
    .locals 2
    .param p1, "start"    # I

    #@0
    .prologue
    .line 537
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/icu/text/MessagePattern$Part;

    #@8
    invoke-static {v1}, Landroid/icu/text/MessagePattern$Part;->-get2(Landroid/icu/text/MessagePattern$Part;)I

    #@b
    move-result v0

    #@c
    .line 538
    .local v0, "limit":I
    if-ge v0, p1, :cond_0

    #@e
    .line 539
    return p1

    #@f
    .line 541
    :cond_0
    return v0
.end method

.method public getNumericValue(Landroid/icu/text/MessagePattern$Part;)D
    .locals 4
    .param p1, "part"    # Landroid/icu/text/MessagePattern$Part;

    #@0
    .prologue
    .line 493
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    #@3
    move-result-object v0

    #@4
    .line 494
    .local v0, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 495
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get4(Landroid/icu/text/MessagePattern$Part;)S

    #@b
    move-result v1

    #@c
    int-to-double v2, v1

    #@d
    return-wide v2

    #@e
    .line 496
    :cond_0
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 497
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@14
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get4(Landroid/icu/text/MessagePattern$Part;)S

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/Double;

    #@1e
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@21
    move-result-wide v2

    #@22
    return-wide v2

    #@23
    .line 499
    :cond_1
    const-wide v2, -0x3e6290cbac000000L    # -1.23456789E8

    #@28
    return-wide v2
.end method

.method public getPart(I)Landroid/icu/text/MessagePattern$Part;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    #@8
    return-object v0
.end method

.method public getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    #@8
    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getPatternIndex(I)I
    .locals 1
    .param p1, "partIndex"    # I

    #@0
    .prologue
    .line 460
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    #@8
    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-get0(Landroid/icu/text/MessagePattern$Part;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPluralOffset(I)D
    .locals 4
    .param p1, "pluralStart"    # I

    #@0
    .prologue
    .line 519
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    #@8
    .line 520
    .local v0, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 521
    invoke-virtual {p0, v0}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    #@15
    move-result-wide v2

    #@16
    return-wide v2

    #@17
    .line 523
    :cond_0
    const-wide/16 v2, 0x0

    #@19
    return-wide v2
.end method

.method public getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;
    .locals 3
    .param p1, "part"    # Landroid/icu/text/MessagePattern$Part;

    #@0
    .prologue
    .line 471
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get0(Landroid/icu/text/MessagePattern$Part;)I

    #@3
    move-result v0

    #@4
    .line 472
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@6
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get1(Landroid/icu/text/MessagePattern$Part;)C

    #@9
    move-result v2

    #@a
    add-int/2addr v2, v0

    #@b
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public hasNamedArguments()Z
    .locals 1

    #@0
    .prologue
    .line 330
    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    #@2
    return v0
.end method

.method public hasNumberedArguments()Z
    .locals 1

    #@0
    .prologue
    .line 339
    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$ApostropheMode;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v1, v0, 0x25

    #@8
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@11
    move-result v0

    #@12
    :goto_0
    add-int/2addr v0, v1

    #@13
    mul-int/lit8 v0, v0, 0x25

    #@15
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    return v0

    #@1d
    :cond_0
    const/4 v0, 0x0

    #@1e
    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 906
    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->frozen:Z

    #@2
    return v0
.end method

.method jdkAposMode()Z
    .locals 2

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@2
    sget-object v1, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 182
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    #@4
    .line 183
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@6
    invoke-direct {p0, v1, v1, v1, v0}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    #@9
    .line 184
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    #@c
    .line 185
    return-object p0
.end method

.method public parseChoiceStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 199
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    #@4
    .line 200
    invoke-direct {p0, v0, v0}, Landroid/icu/text/MessagePattern;->parseChoiceStyle(II)I

    #@7
    .line 201
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    #@a
    .line 202
    return-object p0
.end method

.method public parsePluralStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 216
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    #@4
    .line 217
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    #@6
    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    #@9
    .line 218
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    #@c
    .line 219
    return-object p0
.end method

.method public parseSelectStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 233
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    #@4
    .line 234
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    #@6
    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    #@9
    .line 235
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    #@c
    .line 236
    return-object p0
.end method

.method public partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z
    .locals 4
    .param p1, "part"    # Landroid/icu/text/MessagePattern$Part;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 483
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get0(Landroid/icu/text/MessagePattern$Part;)I

    #@5
    move-result v1

    #@6
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get1(Landroid/icu/text/MessagePattern$Part;)C

    #@9
    move-result v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {v0, v1, p2, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    return-object v0
.end method
