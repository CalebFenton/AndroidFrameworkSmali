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
        Landroid/icu/text/MessagePattern$ArgType;,
        Landroid/icu/text/MessagePattern$Part;
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
    .line 1540
    const-string/jumbo v0, "android.icu.text.MessagePattern.ApostropheMode"

    #@e
    const-string/jumbo v1, "DOUBLE_OPTIONAL"

    #@11
    invoke-static {v0, v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 1539
    invoke-static {v0}, Landroid/icu/text/MessagePattern$ApostropheMode;->valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$ApostropheMode;

    #@18
    move-result-object v0

    #@19
    .line 1538
    sput-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@1b
    .line 1542
    invoke-static {}, Landroid/icu/text/MessagePattern$ArgType;->values()[Landroid/icu/text/MessagePattern$ArgType;

    #@1e
    move-result-object v0

    #@1f
    sput-object v0, Landroid/icu/text/MessagePattern;->argTypes:[Landroid/icu/text/MessagePattern$ArgType;

    #@21
    .line 80
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
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1531
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@a
    .line 141
    sget-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@c
    iput-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@e
    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/icu/text/MessagePattern$ApostropheMode;

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1531
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@a
    .line 149
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@c
    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1531
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@a
    .line 162
    sget-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@c
    iput-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@e
    .line 163
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;

    #@11
    .line 161
    return-void
.end method

.method private addArgDoublePart(DII)V
    .locals 3
    .param p1, "numericValue"    # D
    .param p3, "start"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1475
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 1476
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@b
    .line 1477
    const/4 v0, 0x0

    #@c
    .line 1484
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
    .line 1485
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@17
    invoke-direct {p0, v1, p3, p4, v0}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@1a
    .line 1473
    return-void

    #@1b
    .line 1479
    .end local v0    # "numericIndex":I
    :cond_1
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v0

    #@21
    .line 1480
    .restart local v0    # "numericIndex":I
    const/16 v1, 0x7fff

    #@23
    if-le v0, v1, :cond_0

    #@25
    .line 1481
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
    .line 1469
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
    .line 1470
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@14
    .line 1468
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
    .line 1465
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
    .line 1464
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
    .line 1352
    const/4 v0, -0x1

    #@3
    .line 1354
    .local v0, "doubleApos":I
    :goto_0
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    #@6
    move-result v1

    #@7
    .line 1355
    .local v1, "i":I
    if-ltz v1, :cond_0

    #@9
    if-lt v1, p2, :cond_1

    #@b
    .line 1356
    :cond_0
    invoke-virtual {p3, p0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@e
    .line 1351
    return-void

    #@f
    .line 1359
    :cond_1
    if-ne v1, v0, :cond_2

    #@11
    .line 1361
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    .line 1362
    add-int/lit8 p1, p1, 0x1

    #@16
    .line 1363
    const/4 v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1366
    :cond_2
    invoke-virtual {p3, p0, p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@1b
    .line 1367
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
    .line 1450
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
    .line 1459
    if-ne p1, v1, :cond_1

    #@4
    .line 1460
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@6
    if-ne p2, v0, :cond_1

    #@8
    .line 1461
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
    .line 1458
    :goto_0
    return v0

    #@1a
    :cond_0
    move v0, v2

    #@1b
    .line 1461
    goto :goto_0

    #@1c
    :cond_1
    move v0, v2

    #@1d
    .line 1459
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
    .line 1397
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
    .line 1403
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
    .line 1404
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
    .line 1405
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
    .line 1406
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
    .line 1407
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
    .line 1408
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
    .line 1402
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
    .line 1403
    goto :goto_1

    #@61
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_8
    move p1, v1

    #@62
    .line 1406
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_2

    #@63
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_9
    move p1, v1

    #@64
    .line 1408
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
    .line 1436
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
    .line 1437
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
    .line 1438
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
    .line 1439
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
    .line 1440
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
    .line 1441
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
    .line 1442
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
    .line 1435
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
    .line 1436
    goto :goto_0

    #@74
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_9
    move p1, v1

    #@75
    .line 1439
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_1

    #@76
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_a
    move p1, v1

    #@77
    .line 1441
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_1

    #@78
    :cond_b
    move v2, v3

    #@79
    .line 1442
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
    .line 1414
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
    .line 1415
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
    .line 1416
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
    .line 1417
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
    .line 1418
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
    .line 1419
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
    .line 1413
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
    .line 1414
    goto :goto_1

    #@61
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_8
    move p1, v1

    #@62
    .line 1417
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_2

    #@63
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_9
    move p1, v1

    #@64
    .line 1419
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
    .line 1425
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
    .line 1426
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
    .line 1427
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
    .line 1428
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
    .line 1429
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
    .line 1430
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
    .line 1424
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
    .line 1425
    goto :goto_1

    #@61
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_8
    move p1, v1

    #@62
    .line 1428
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_2

    #@63
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_9
    move p1, v1

    #@64
    .line 1430
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
    .locals 17
    .param p1, "index"    # I
    .param p2, "argStartLength"    # I
    .param p3, "nestingLevel"    # I

    #@0
    .prologue
    .line 944
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v4

    #@8
    .line 945
    .local v4, "argStart":I
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@a
    .line 946
    .local v9, "argType":Landroid/icu/text/MessagePattern$ArgType;
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@c
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@f
    move-result v5

    #@10
    move-object/from16 v0, p0

    #@12
    move/from16 v1, p1

    #@14
    move/from16 v2, p2

    #@16
    invoke-direct {v0, v3, v1, v2, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@19
    .line 947
    add-int v3, p1, p2

    #@1b
    move-object/from16 v0, p0

    #@1d
    invoke-direct {v0, v3}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@20
    move-result p1

    #@21
    move/from16 v14, p1

    #@23
    .line 948
    .local v14, "nameIndex":I
    move-object/from16 v0, p0

    #@25
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@2a
    move-result v3

    #@2b
    move/from16 v0, p1

    #@2d
    if-ne v0, v3, :cond_0

    #@2f
    .line 949
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@31
    .line 950
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v6, "Unmatched \'{\' braces in message "

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    .line 949
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3

    #@4d
    .line 953
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->skipIdentifier(I)I

    #@50
    move-result v11

    #@51
    .line 954
    .end local p1    # "index":I
    .local v11, "index":I
    move-object/from16 v0, p0

    #@53
    move/from16 v1, p1

    #@55
    invoke-direct {v0, v1, v11}, Landroid/icu/text/MessagePattern;->parseArgNumber(II)I

    #@58
    move-result v15

    #@59
    .line 955
    .local v15, "number":I
    if-ltz v15, :cond_3

    #@5b
    .line 956
    sub-int v13, v11, p1

    #@5d
    .line 957
    .local v13, "length":I
    const v3, 0xffff

    #@60
    if-gt v13, v3, :cond_1

    #@62
    const/16 v3, 0x7fff

    #@64
    if-le v15, v3, :cond_2

    #@66
    .line 958
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@68
    .line 959
    new-instance v5, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v6, "Argument number too large: "

    #@70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v5

    #@80
    .line 958
    invoke-direct {v3, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@83
    throw v3

    #@84
    .line 961
    :cond_2
    const/4 v3, 0x1

    #@85
    move-object/from16 v0, p0

    #@87
    iput-boolean v3, v0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    #@89
    .line 962
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@8b
    move-object/from16 v0, p0

    #@8d
    move/from16 v1, p1

    #@8f
    invoke-direct {v0, v3, v1, v13, v15}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@92
    .line 974
    :goto_0
    move-object/from16 v0, p0

    #@94
    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@97
    move-result v11

    #@98
    .line 975
    move-object/from16 v0, p0

    #@9a
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@9c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@9f
    move-result v3

    #@a0
    if-ne v11, v3, :cond_6

    #@a2
    .line 976
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a4
    .line 977
    new-instance v5, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v6, "Unmatched \'{\' braces in message "

    #@ac
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v5

    #@b8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v5

    #@bc
    .line 976
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v3

    #@c0
    .line 963
    .end local v13    # "length":I
    :cond_3
    const/4 v3, -0x1

    #@c1
    if-ne v15, v3, :cond_5

    #@c3
    .line 964
    sub-int v13, v11, p1

    #@c5
    .line 965
    .restart local v13    # "length":I
    const v3, 0xffff

    #@c8
    if-le v13, v3, :cond_4

    #@ca
    .line 966
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@cc
    .line 967
    new-instance v5, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v6, "Argument name too long: "

    #@d4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v5

    #@d8
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@db
    move-result-object v6

    #@dc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v5

    #@e0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v5

    #@e4
    .line 966
    invoke-direct {v3, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@e7
    throw v3

    #@e8
    .line 969
    :cond_4
    const/4 v3, 0x1

    #@e9
    move-object/from16 v0, p0

    #@eb
    iput-boolean v3, v0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    #@ed
    .line 970
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    #@ef
    const/4 v5, 0x0

    #@f0
    move-object/from16 v0, p0

    #@f2
    move/from16 v1, p1

    #@f4
    invoke-direct {v0, v3, v1, v13, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@f7
    goto :goto_0

    #@f8
    .line 972
    .end local v13    # "length":I
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@fa
    new-instance v5, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v6, "Bad argument syntax: "

    #@102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v5

    #@106
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@109
    move-result-object v6

    #@10a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v5

    #@10e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v5

    #@112
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@115
    throw v3

    #@116
    .line 979
    .restart local v13    # "length":I
    :cond_6
    move-object/from16 v0, p0

    #@118
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@11a
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    #@11d
    move-result v10

    #@11e
    .line 980
    .local v10, "c":C
    const/16 v3, 0x7d

    #@120
    if-ne v10, v3, :cond_7

    #@122
    move/from16 p1, v11

    #@124
    .line 1041
    .end local v11    # "index":I
    .restart local p1    # "index":I
    :goto_1
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@126
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@129
    move-result v8

    #@12a
    const/4 v7, 0x1

    #@12b
    move-object/from16 v3, p0

    #@12d
    move/from16 v6, p1

    #@12f
    invoke-direct/range {v3 .. v8}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    #@132
    .line 1042
    add-int/lit8 v3, p1, 0x1

    #@134
    return v3

    #@135
    .line 982
    .end local p1    # "index":I
    .restart local v11    # "index":I
    :cond_7
    const/16 v3, 0x2c

    #@137
    if-eq v10, v3, :cond_8

    #@139
    .line 983
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@13b
    new-instance v5, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v6, "Bad argument syntax: "

    #@143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v5

    #@147
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@14a
    move-result-object v6

    #@14b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v5

    #@14f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v5

    #@153
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@156
    throw v3

    #@157
    .line 986
    :cond_8
    add-int/lit8 v3, v11, 0x1

    #@159
    move-object/from16 v0, p0

    #@15b
    invoke-direct {v0, v3}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@15e
    move-result v11

    #@15f
    move/from16 v16, v11

    #@161
    .local v16, "typeIndex":I
    move v12, v11

    #@162
    .line 987
    .end local v11    # "index":I
    .local v12, "index":I
    :goto_2
    move-object/from16 v0, p0

    #@164
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@166
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@169
    move-result v3

    #@16a
    if-ge v12, v3, :cond_9

    #@16c
    move-object/from16 v0, p0

    #@16e
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@170
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    #@173
    move-result v3

    #@174
    invoke-static {v3}, Landroid/icu/text/MessagePattern;->isArgTypeChar(I)Z

    #@177
    move-result v3

    #@178
    if-eqz v3, :cond_9

    #@17a
    .line 988
    add-int/lit8 v12, v12, 0x1

    #@17c
    goto :goto_2

    #@17d
    .line 990
    :cond_9
    sub-int v13, v12, v11

    #@17f
    .line 991
    move-object/from16 v0, p0

    #@181
    invoke-direct {v0, v12}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@184
    move-result v12

    #@185
    .line 992
    move-object/from16 v0, p0

    #@187
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@189
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@18c
    move-result v3

    #@18d
    if-ne v12, v3, :cond_a

    #@18f
    .line 993
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@191
    .line 994
    new-instance v5, Ljava/lang/StringBuilder;

    #@193
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    const-string/jumbo v6, "Unmatched \'{\' braces in message "

    #@199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v5

    #@19d
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    #@1a0
    move-result-object v6

    #@1a1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v5

    #@1a5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v5

    #@1a9
    .line 993
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1ac
    throw v3

    #@1ad
    .line 996
    :cond_a
    if-eqz v13, :cond_b

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@1b3
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    #@1b6
    move-result v10

    #@1b7
    const/16 v3, 0x2c

    #@1b9
    if-eq v10, v3, :cond_c

    #@1bb
    const/16 v3, 0x7d

    #@1bd
    if-eq v10, v3, :cond_c

    #@1bf
    .line 997
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1c1
    new-instance v5, Ljava/lang/StringBuilder;

    #@1c3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c6
    const-string/jumbo v6, "Bad argument syntax: "

    #@1c9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v5

    #@1cd
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@1d0
    move-result-object v6

    #@1d1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v5

    #@1d5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d8
    move-result-object v5

    #@1d9
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1dc
    throw v3

    #@1dd
    .line 999
    :cond_c
    const v3, 0xffff

    #@1e0
    if-le v13, v3, :cond_d

    #@1e2
    .line 1000
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@1e4
    .line 1001
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v6, "Argument type name too long: "

    #@1ec
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v5

    #@1f0
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@1f3
    move-result-object v6

    #@1f4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v5

    #@1f8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v5

    #@1fc
    .line 1000
    invoke-direct {v3, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1ff
    throw v3

    #@200
    .line 1003
    :cond_d
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@202
    .line 1004
    const/4 v3, 0x6

    #@203
    if-ne v13, v3, :cond_12

    #@205
    .line 1006
    move-object/from16 v0, p0

    #@207
    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->isChoice(I)Z

    #@20a
    move-result v3

    #@20b
    if-eqz v3, :cond_10

    #@20d
    .line 1007
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@20f
    .line 1019
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    #@211
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@213
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@216
    move-result-object v3

    #@217
    check-cast v3, Landroid/icu/text/MessagePattern$Part;

    #@219
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    #@21c
    move-result v5

    #@21d
    int-to-short v5, v5

    #@21e
    invoke-static {v3, v5}, Landroid/icu/text/MessagePattern$Part;->-set1(Landroid/icu/text/MessagePattern$Part;S)S

    #@221
    .line 1020
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@223
    if-ne v9, v3, :cond_f

    #@225
    .line 1021
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    #@227
    const/4 v5, 0x0

    #@228
    move-object/from16 v0, p0

    #@22a
    invoke-direct {v0, v3, v11, v13, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@22d
    .line 1024
    :cond_f
    const/16 v3, 0x7d

    #@22f
    if-ne v10, v3, :cond_13

    #@231
    .line 1025
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@233
    if-eq v9, v3, :cond_16

    #@235
    .line 1026
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@237
    .line 1027
    new-instance v5, Ljava/lang/StringBuilder;

    #@239
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23c
    const-string/jumbo v6, "No style field for complex argument: "

    #@23f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v5

    #@243
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@246
    move-result-object v6

    #@247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24a
    move-result-object v5

    #@24b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24e
    move-result-object v5

    #@24f
    .line 1026
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@252
    throw v3

    #@253
    .line 1008
    :cond_10
    move-object/from16 v0, p0

    #@255
    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->isPlural(I)Z

    #@258
    move-result v3

    #@259
    if-eqz v3, :cond_11

    #@25b
    .line 1009
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    #@25d
    goto :goto_3

    #@25e
    .line 1010
    :cond_11
    move-object/from16 v0, p0

    #@260
    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->isSelect(I)Z

    #@263
    move-result v3

    #@264
    if-eqz v3, :cond_e

    #@266
    .line 1011
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    #@268
    goto :goto_3

    #@269
    .line 1013
    :cond_12
    const/16 v3, 0xd

    #@26b
    if-ne v13, v3, :cond_e

    #@26d
    .line 1014
    move-object/from16 v0, p0

    #@26f
    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->isSelect(I)Z

    #@272
    move-result v3

    #@273
    if-eqz v3, :cond_e

    #@275
    add-int/lit8 v3, v11, 0x6

    #@277
    move-object/from16 v0, p0

    #@279
    invoke-direct {v0, v3}, Landroid/icu/text/MessagePattern;->isOrdinal(I)Z

    #@27c
    move-result v3

    #@27d
    if-eqz v3, :cond_e

    #@27f
    .line 1015
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    #@281
    goto :goto_3

    #@282
    .line 1030
    :cond_13
    add-int/lit8 p1, v12, 0x1

    #@284
    .line 1031
    .end local v12    # "index":I
    .restart local p1    # "index":I
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@286
    if-ne v9, v3, :cond_14

    #@288
    .line 1032
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->parseSimpleStyle(I)I

    #@28b
    move-result p1

    #@28c
    goto/16 :goto_1

    #@28e
    .line 1033
    :cond_14
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@290
    if-ne v9, v3, :cond_15

    #@292
    .line 1034
    move-object/from16 v0, p0

    #@294
    move/from16 v1, p1

    #@296
    move/from16 v2, p3

    #@298
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern;->parseChoiceStyle(II)I

    #@29b
    move-result p1

    #@29c
    goto/16 :goto_1

    #@29e
    .line 1036
    :cond_15
    move-object/from16 v0, p0

    #@2a0
    move/from16 v1, p1

    #@2a2
    move/from16 v2, p3

    #@2a4
    invoke-direct {v0, v9, v1, v2}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    #@2a7
    move-result p1

    #@2a8
    goto/16 :goto_1

    #@2aa
    .end local p1    # "index":I
    .restart local v12    # "index":I
    :cond_16
    move/from16 p1, v12

    #@2ac
    .end local v12    # "index":I
    .restart local p1    # "index":I
    goto/16 :goto_1
.end method

.method private parseArgNumber(II)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 1284
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
    .line 1244
    if-lt p1, p2, :cond_0

    #@8
    .line 1245
    return v6

    #@9
    .line 1250
    :cond_0
    add-int/lit8 v3, p1, 0x1

    #@b
    .end local p1    # "start":I
    .local v3, "start":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@e
    move-result v1

    #@f
    .line 1251
    .local v1, "c":C
    if-ne v1, v8, :cond_3

    #@11
    .line 1252
    if-ne v3, p2, :cond_1

    #@13
    .line 1253
    const/4 v4, 0x0

    #@14
    return v4

    #@15
    .line 1255
    :cond_1
    const/4 v2, 0x0

    #@16
    .line 1256
    .local v2, "number":I
    const/4 v0, 0x1

    #@17
    .line 1264
    .local v0, "badNumber":Z
    :goto_0
    if-ge v3, p2, :cond_6

    #@19
    .line 1265
    add-int/lit8 p1, v3, 0x1

    #@1b
    .end local v3    # "start":I
    .restart local p1    # "start":I
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@1e
    move-result v1

    #@1f
    .line 1266
    if-gt v8, v1, :cond_5

    #@21
    if-gt v1, v9, :cond_5

    #@23
    .line 1267
    const v4, 0xccccccc

    #@26
    if-lt v2, v4, :cond_2

    #@28
    .line 1268
    const/4 v0, 0x1

    #@29
    .line 1270
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
    .line 1258
    .end local v0    # "badNumber":Z
    .end local v2    # "number":I
    :cond_3
    const/16 v4, 0x31

    #@33
    if-gt v4, v1, :cond_4

    #@35
    if-gt v1, v9, :cond_4

    #@37
    .line 1259
    add-int/lit8 v2, v1, -0x30

    #@39
    .line 1260
    .restart local v2    # "number":I
    const/4 v0, 0x0

    #@3a
    .line 1258
    .restart local v0    # "badNumber":Z
    goto :goto_0

    #@3b
    .line 1262
    .end local v0    # "badNumber":Z
    .end local v2    # "number":I
    :cond_4
    return v7

    #@3c
    .line 1272
    .end local v3    # "start":I
    .restart local v0    # "badNumber":Z
    .restart local v2    # "number":I
    .restart local p1    # "start":I
    :cond_5
    return v7

    #@3d
    .line 1276
    .end local p1    # "start":I
    .restart local v3    # "start":I
    :cond_6
    if-eqz v0, :cond_7

    #@3f
    .line 1277
    return v6

    #@40
    .line 1279
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
    .line 1082
    move v3, p1

    #@5
    .line 1083
    .local v3, "start":I
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@8
    move-result p1

    #@9
    .line 1084
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
    .line 1085
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1b
    .line 1086
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
    .line 1085
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v4

    #@37
    .line 1127
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
    .line 1091
    .end local v0    # "c":C
    .end local v1    # "length":I
    .end local v2    # "numberIndex":I
    :cond_2
    move v2, p1

    #@3e
    .line 1092
    .restart local v2    # "numberIndex":I
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    #@41
    move-result p1

    #@42
    .line 1093
    sub-int v1, p1, v2

    #@44
    .line 1094
    .restart local v1    # "length":I
    if-nez v1, :cond_3

    #@46
    .line 1095
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
    .line 1097
    :cond_3
    const v4, 0xffff

    #@67
    if-le v1, v4, :cond_4

    #@69
    .line 1098
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@6b
    .line 1099
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
    .line 1098
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@86
    throw v4

    #@87
    .line 1101
    :cond_4
    invoke-direct {p0, v2, p1, v7}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    #@8a
    .line 1103
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@8d
    move-result p1

    #@8e
    .line 1104
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@90
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@93
    move-result v4

    #@94
    if-ne p1, v4, :cond_5

    #@96
    .line 1105
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
    .line 1107
    :cond_5
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@b6
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@b9
    move-result v0

    #@ba
    .line 1108
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
    .line 1109
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@c8
    .line 1110
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
    .line 1111
    const-string/jumbo v6, "\' in choice pattern "

    #@db
    .line 1110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v5

    #@df
    .line 1111
    invoke-direct {p0, v3}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@e2
    move-result-object v6

    #@e3
    .line 1110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v5

    #@e7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v5

    #@eb
    .line 1109
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ee
    throw v4

    #@ef
    .line 1113
    :cond_6
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@f1
    invoke-direct {p0, v4, p1, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@f4
    .line 1115
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
    .line 1117
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@100
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@103
    move-result v4

    #@104
    if-ne p1, v4, :cond_7

    #@106
    .line 1118
    return p1

    #@107
    .line 1120
    :cond_7
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@109
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    #@10c
    move-result v4

    #@10d
    if-ne v4, v8, :cond_1

    #@10f
    .line 1121
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    #@112
    move-result v4

    #@113
    if-nez v4, :cond_8

    #@115
    .line 1122
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@117
    .line 1123
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
    .line 1122
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@132
    throw v4

    #@133
    .line 1125
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
    .line 1294
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
    .line 1298
    :cond_1
    const/4 v6, 0x0

    #@11
    .line 1299
    .local v6, "value":I
    const/4 v3, 0x0

    #@12
    .line 1300
    .local v3, "isNegative":I
    move v1, p1

    #@13
    .line 1301
    .local v1, "index":I
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@15
    add-int/lit8 v1, p1, 0x1

    #@17
    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 1302
    .local v0, "c":C
    const/16 v7, 0x2d

    #@1d
    if-ne v0, v7, :cond_5

    #@1f
    .line 1303
    const/4 v3, 0x1

    #@20
    .line 1304
    if-ne v1, p2, :cond_3

    #@22
    .line 1341
    :cond_2
    new-instance v7, Ljava/lang/NumberFormatException;

    #@24
    .line 1342
    new-instance v8, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v9, "Bad syntax for numeric value: "

    #@2c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v8

    #@30
    iget-object v9, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@32
    invoke-virtual {v9, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v9

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    .line 1341
    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@41
    throw v7

    #@42
    .line 1307
    :cond_3
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@44
    add-int/lit8 v2, v1, 0x1

    #@46
    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    #@49
    move-result v0

    #@4a
    move v1, v2

    #@4b
    .line 1314
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_4
    :goto_0
    const/16 v7, 0x221e

    #@4d
    if-ne v0, v7, :cond_8

    #@4f
    .line 1315
    if-eqz p3, :cond_2

    #@51
    if-ne v1, p2, :cond_2

    #@53
    .line 1317
    if-eqz v3, :cond_6

    #@55
    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@57
    .line 1318
    :goto_1
    sub-int v7, p2, p1

    #@59
    .line 1316
    invoke-direct {p0, v8, v9, p1, v7}, Landroid/icu/text/MessagePattern;->addArgDoublePart(DII)V

    #@5c
    .line 1319
    return-void

    #@5d
    .line 1308
    :cond_5
    const/16 v7, 0x2b

    #@5f
    if-ne v0, v7, :cond_4

    #@61
    .line 1309
    if-eq v1, p2, :cond_2

    #@63
    .line 1312
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@65
    add-int/lit8 v2, v1, 0x1

    #@67
    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    #@6a
    move-result v0

    #@6b
    move v1, v2

    #@6c
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@6d
    .line 1317
    :cond_6
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@6f
    goto :goto_1

    #@70
    .line 1334
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_7
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@72
    add-int/lit8 v1, v2, 0x1

    #@74
    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    #@77
    move-result v0

    #@78
    :cond_8
    move v2, v1

    #@79
    .line 1325
    .end local v1    # "index":I
    .restart local v2    # "index":I
    const/16 v7, 0x30

    #@7b
    if-gt v7, v0, :cond_9

    #@7d
    const/16 v7, 0x39

    #@7f
    if-gt v0, v7, :cond_9

    #@81
    .line 1326
    mul-int/lit8 v7, v6, 0xa

    #@83
    add-int/lit8 v8, v0, -0x30

    #@85
    add-int v6, v7, v8

    #@87
    .line 1327
    add-int/lit16 v7, v3, 0x7fff

    #@89
    if-le v6, v7, :cond_a

    #@8b
    .line 1337
    :cond_9
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@8d
    invoke-virtual {v7, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@90
    move-result-object v7

    #@91
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@94
    move-result-wide v4

    #@95
    .line 1338
    .local v4, "numericValue":D
    sub-int v7, p2, p1

    #@97
    invoke-direct {p0, v4, v5, p1, v7}, Landroid/icu/text/MessagePattern;->addArgDoublePart(DII)V

    #@9a
    .line 1339
    return-void

    #@9b
    .line 1330
    .end local v4    # "numericValue":D
    :cond_a
    if-ne v2, p2, :cond_7

    #@9d
    .line 1331
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    #@9f
    sub-int v8, p2, p1

    #@a1
    if-eqz v3, :cond_b

    #@a3
    neg-int v6, v6

    #@a4
    .end local v6    # "value":I
    :cond_b
    invoke-direct {p0, v7, p1, v8, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@a7
    .line 1332
    return-void
.end method

.method private parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I
    .locals 17
    .param p1, "index"    # I
    .param p2, "msgStartLength"    # I
    .param p3, "nestingLevel"    # I
    .param p4, "parentType"    # Landroid/icu/text/MessagePattern$ArgType;

    #@0
    .prologue
    .line 858
    const/16 v4, 0x7fff

    #@2
    move/from16 v0, p3

    #@4
    if-le v0, v4, :cond_0

    #@6
    .line 859
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v4

    #@c
    .line 861
    :cond_0
    move-object/from16 v0, p0

    #@e
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v5

    #@14
    .line 862
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
    .line 863
    add-int p1, p1, p2

    #@23
    .line 864
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
    .line 865
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
    .line 866
    .local v15, "c":C
    const/16 v4, 0x27

    #@3d
    if-ne v15, v4, :cond_9

    #@3f
    .line 867
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
    .line 870
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
    .line 871
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
    .line 873
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
    .line 874
    const/16 v4, 0x27

    #@6b
    if-ne v15, v4, :cond_2

    #@6d
    .line 876
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
    .line 878
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
    .line 879
    const/16 v4, 0x7b

    #@85
    if-ne v15, v4, :cond_4

    #@87
    .line 884
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
    .line 887
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
    .line 888
    if-ltz p1, :cond_8

    #@a2
    .line 889
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
    .line 892
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
    .line 879
    .end local p1    # "index":I
    .restart local v16    # "index":I
    :cond_4
    const/16 v4, 0x7d

    #@cc
    if-eq v15, v4, :cond_3

    #@ce
    .line 880
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
    .line 881
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
    .line 910
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
    .line 911
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
    .line 895
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
    .line 896
    .end local v16    # "index":I
    .restart local p1    # "index":I
    goto/16 :goto_0

    #@108
    .line 900
    :cond_8
    move-object/from16 v0, p0

    #@10a
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@10c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@10f
    move-result p1

    #@110
    .line 902
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
    .line 903
    const/4 v4, 0x1

    #@11d
    move-object/from16 v0, p0

    #@11f
    iput-boolean v4, v0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    #@121
    goto/16 :goto_0

    #@123
    .line 914
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
    .line 917
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
    .line 914
    .end local v16    # "index":I
    .restart local p1    # "index":I
    goto/16 :goto_0

    #@13c
    .line 918
    .end local p1    # "index":I
    .restart local v16    # "index":I
    :cond_a
    const/16 v4, 0x7b

    #@13e
    if-ne v15, v4, :cond_b

    #@140
    .line 919
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
    .line 920
    .end local p1    # "index":I
    .restart local v16    # "index":I
    :cond_b
    if-lez p3, :cond_d

    #@14f
    const/16 v4, 0x7d

    #@151
    if-ne v15, v4, :cond_d

    #@153
    .line 924
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
    .line 925
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
    .line 926
    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@16b
    move-object/from16 v0, p4

    #@16d
    if-ne v0, v4, :cond_10

    #@16f
    .line 928
    add-int/lit8 v4, v16, -0x1

    #@171
    return v4

    #@172
    .line 920
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
    .line 924
    .end local p1    # "index":I
    .restart local v16    # "index":I
    :cond_f
    const/4 v8, 0x1

    #@181
    .restart local v8    # "limitLength":I
    goto :goto_2

    #@182
    .line 931
    :cond_10
    return v16

    #@183
    .line 935
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
    .line 939
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
    .line 940
    return p1

    #@19f
    .line 936
    :cond_13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1a1
    .line 937
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
    .line 936
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1bc
    throw v4
.end method

.method private parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I
    .locals 12
    .param p1, "argType"    # Landroid/icu/text/MessagePattern$ArgType;
    .param p2, "index"    # I
    .param p3, "nestingLevel"    # I

    #@0
    .prologue
    .line 1132
    move v6, p2

    #@1
    .line 1133
    .local v6, "start":I
    const/4 v3, 0x1

    #@2
    .line 1134
    .local v3, "isEmpty":Z
    const/4 v1, 0x0

    #@3
    .line 1139
    .local v1, "hasOther":Z
    :goto_0
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@6
    move-result p2

    #@7
    .line 1140
    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@9
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@c
    move-result v8

    #@d
    if-ne p2, v8, :cond_1

    #@f
    const/4 v0, 0x1

    #@10
    .line 1141
    .local v0, "eos":Z
    :goto_1
    if-nez v0, :cond_0

    #@12
    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@14
    invoke-virtual {v8, p2}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v8

    #@18
    const/16 v9, 0x7d

    #@1a
    if-ne v8, v9, :cond_4

    #@1c
    .line 1142
    :cond_0
    invoke-direct {p0, p3}, Landroid/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    #@1f
    move-result v8

    #@20
    if-ne v0, v8, :cond_2

    #@22
    .line 1143
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@24
    .line 1144
    new-instance v9, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v10, "Bad "

    #@2c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    .line 1145
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    #@33
    move-result-object v10

    #@34
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@36
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@39
    move-result-object v10

    #@3a
    .line 1144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    .line 1146
    const-string/jumbo v10, " pattern syntax: "

    #@41
    .line 1144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v9

    #@45
    .line 1146
    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@48
    move-result-object v10

    #@49
    .line 1144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v9

    #@51
    .line 1143
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@54
    throw v8

    #@55
    .line 1140
    .end local v0    # "eos":Z
    :cond_1
    const/4 v0, 0x0

    #@56
    goto :goto_1

    #@57
    .line 1148
    .restart local v0    # "eos":Z
    :cond_2
    if-nez v1, :cond_3

    #@59
    .line 1149
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@5b
    .line 1150
    new-instance v9, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v10, "Missing \'other\' keyword in "

    #@63
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v9

    #@67
    .line 1151
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    #@6a
    move-result-object v10

    #@6b
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@6d
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@70
    move-result-object v10

    #@71
    .line 1150
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v9

    #@75
    .line 1152
    const-string/jumbo v10, " pattern in "

    #@78
    .line 1150
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    .line 1152
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    #@7f
    move-result-object v10

    #@80
    .line 1150
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v9

    #@84
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v9

    #@88
    .line 1149
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8b
    throw v8

    #@8c
    .line 1154
    :cond_3
    return p2

    #@8d
    .line 1156
    :cond_4
    move v5, p2

    #@8e
    .line 1157
    .local v5, "selectorIndex":I
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    #@91
    move-result v8

    #@92
    if-eqz v8, :cond_9

    #@94
    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@96
    invoke-virtual {v8, p2}, Ljava/lang/String;->charAt(I)C

    #@99
    move-result v8

    #@9a
    const/16 v9, 0x3d

    #@9c
    if-ne v8, v9, :cond_9

    #@9e
    .line 1159
    add-int/lit8 v8, p2, 0x1

    #@a0
    invoke-direct {p0, v8}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    #@a3
    move-result v2

    #@a4
    .line 1160
    .end local p2    # "index":I
    .local v2, "index":I
    sub-int v4, v2, p2

    #@a6
    .line 1161
    .local v4, "length":I
    const/4 v8, 0x1

    #@a7
    if-ne v4, v8, :cond_5

    #@a9
    .line 1162
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@ab
    .line 1163
    new-instance v9, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v10, "Bad "

    #@b3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v9

    #@b7
    .line 1164
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    #@ba
    move-result-object v10

    #@bb
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@bd
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@c0
    move-result-object v10

    #@c1
    .line 1163
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v9

    #@c5
    .line 1165
    const-string/jumbo v10, " pattern syntax: "

    #@c8
    .line 1163
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v9

    #@cc
    .line 1165
    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@cf
    move-result-object v10

    #@d0
    .line 1163
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v9

    #@d4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v9

    #@d8
    .line 1162
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@db
    throw v8

    #@dc
    .line 1167
    :cond_5
    const v8, 0xffff

    #@df
    if-le v4, v8, :cond_6

    #@e1
    .line 1168
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    #@e3
    .line 1169
    new-instance v9, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v10, "Argument selector too long: "

    #@eb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v9

    #@ef
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@f2
    move-result-object v10

    #@f3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v9

    #@f7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v9

    #@fb
    .line 1168
    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@fe
    throw v8

    #@ff
    .line 1171
    :cond_6
    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@101
    const/4 v9, 0x0

    #@102
    invoke-direct {p0, v8, p2, v4, v9}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@105
    .line 1172
    add-int/lit8 v8, p2, 0x1

    #@107
    const/4 v9, 0x0

    #@108
    invoke-direct {p0, v8, v2, v9}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    #@10b
    .line 1220
    :cond_7
    :goto_2
    invoke-direct {p0, v2}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@10e
    move-result v2

    #@10f
    .line 1221
    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@111
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@114
    move-result v8

    #@115
    if-eq v2, v8, :cond_8

    #@117
    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@119
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    #@11c
    move-result v8

    #@11d
    const/16 v9, 0x7b

    #@11f
    if-eq v8, v9, :cond_10

    #@121
    .line 1222
    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@123
    .line 1223
    new-instance v9, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v10, "No message fragment after "

    #@12b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v9

    #@12f
    .line 1224
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    #@132
    move-result-object v10

    #@133
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@135
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@138
    move-result-object v10

    #@139
    .line 1223
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v9

    #@13d
    .line 1225
    const-string/jumbo v10, " selector: "

    #@140
    .line 1223
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v9

    #@144
    .line 1225
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@147
    move-result-object v10

    #@148
    .line 1223
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v9

    #@14c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v9

    #@150
    .line 1222
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@153
    throw v8

    #@154
    .line 1174
    .end local v2    # "index":I
    .end local v4    # "length":I
    .restart local p2    # "index":I
    :cond_9
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->skipIdentifier(I)I

    #@157
    move-result v2

    #@158
    .line 1175
    .end local p2    # "index":I
    .restart local v2    # "index":I
    sub-int v4, v2, p2

    #@15a
    .line 1176
    .restart local v4    # "length":I
    if-nez v4, :cond_a

    #@15c
    .line 1177
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@15e
    .line 1178
    new-instance v9, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v10, "Bad "

    #@166
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v9

    #@16a
    .line 1179
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    #@16d
    move-result-object v10

    #@16e
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@170
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@173
    move-result-object v10

    #@174
    .line 1178
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v9

    #@178
    .line 1180
    const-string/jumbo v10, " pattern syntax: "

    #@17b
    .line 1178
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v9

    #@17f
    .line 1180
    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@182
    move-result-object v10

    #@183
    .line 1178
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v9

    #@187
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v9

    #@18b
    .line 1177
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18e
    throw v8

    #@18f
    .line 1183
    :cond_a
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    #@192
    move-result v8

    #@193
    if-eqz v8, :cond_e

    #@195
    const/4 v8, 0x6

    #@196
    if-ne v4, v8, :cond_e

    #@198
    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@19a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@19d
    move-result v8

    #@19e
    if-ge v2, v8, :cond_e

    #@1a0
    .line 1184
    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@1a2
    const-string/jumbo v9, "offset:"

    #@1a5
    const/4 v10, 0x0

    #@1a6
    const/4 v11, 0x7

    #@1a7
    invoke-virtual {v8, p2, v9, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@1aa
    move-result v8

    #@1ab
    .line 1183
    if-eqz v8, :cond_e

    #@1ad
    .line 1187
    if-nez v3, :cond_b

    #@1af
    .line 1188
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@1b1
    .line 1189
    new-instance v9, Ljava/lang/StringBuilder;

    #@1b3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1b6
    const-string/jumbo v10, "Plural argument \'offset:\' (if present) must precede key-message pairs: "

    #@1b9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v9

    #@1bd
    .line 1190
    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@1c0
    move-result-object v10

    #@1c1
    .line 1189
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v9

    #@1c5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v9

    #@1c9
    .line 1188
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1cc
    throw v8

    #@1cd
    .line 1193
    :cond_b
    add-int/lit8 v8, v2, 0x1

    #@1cf
    invoke-direct {p0, v8}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    #@1d2
    move-result v7

    #@1d3
    .line 1194
    .local v7, "valueIndex":I
    invoke-direct {p0, v7}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    #@1d6
    move-result p2

    #@1d7
    .line 1195
    .end local v2    # "index":I
    .restart local p2    # "index":I
    if-ne p2, v7, :cond_c

    #@1d9
    .line 1196
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@1db
    .line 1197
    new-instance v9, Ljava/lang/StringBuilder;

    #@1dd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1e0
    const-string/jumbo v10, "Missing value for plural \'offset:\' "

    #@1e3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v9

    #@1e7
    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@1ea
    move-result-object v10

    #@1eb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v9

    #@1ef
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f2
    move-result-object v9

    #@1f3
    .line 1196
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f6
    throw v8

    #@1f7
    .line 1199
    :cond_c
    sub-int v8, p2, v7

    #@1f9
    const v9, 0xffff

    #@1fc
    if-le v8, v9, :cond_d

    #@1fe
    .line 1200
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    #@200
    .line 1201
    new-instance v9, Ljava/lang/StringBuilder;

    #@202
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@205
    const-string/jumbo v10, "Plural offset value too long: "

    #@208
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v9

    #@20c
    invoke-direct {p0, v7}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@20f
    move-result-object v10

    #@210
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v9

    #@214
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@217
    move-result-object v9

    #@218
    .line 1200
    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@21b
    throw v8

    #@21c
    .line 1203
    :cond_d
    const/4 v8, 0x0

    #@21d
    invoke-direct {p0, v7, p2, v8}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    #@220
    .line 1204
    const/4 v3, 0x0

    #@221
    .line 1205
    goto/16 :goto_0

    #@223
    .line 1208
    .end local v7    # "valueIndex":I
    .end local p2    # "index":I
    .restart local v2    # "index":I
    :cond_e
    const v8, 0xffff

    #@226
    if-le v4, v8, :cond_f

    #@228
    .line 1209
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    #@22a
    .line 1210
    new-instance v9, Ljava/lang/StringBuilder;

    #@22c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@22f
    const-string/jumbo v10, "Argument selector too long: "

    #@232
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v9

    #@236
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@239
    move-result-object v10

    #@23a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v9

    #@23e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@241
    move-result-object v9

    #@242
    .line 1209
    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@245
    throw v8

    #@246
    .line 1212
    :cond_f
    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@248
    const/4 v9, 0x0

    #@249
    invoke-direct {p0, v8, p2, v4, v9}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@24c
    .line 1213
    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@24e
    const-string/jumbo v9, "other"

    #@251
    const/4 v10, 0x0

    #@252
    invoke-virtual {v8, p2, v9, v10, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@255
    move-result v8

    #@256
    if-eqz v8, :cond_7

    #@258
    .line 1214
    const/4 v1, 0x1

    #@259
    goto/16 :goto_2

    #@25b
    .line 1227
    :cond_10
    add-int/lit8 v8, p3, 0x1

    #@25d
    const/4 v9, 0x1

    #@25e
    invoke-direct {p0, v2, v9, v8, p1}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    #@261
    move-result p2

    #@262
    .line 1228
    .end local v2    # "index":I
    .restart local p2    # "index":I
    const/4 v3, 0x0

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
    .line 1046
    move v4, p1

    #@4
    .line 1047
    .local v4, "start":I
    const/4 v3, 0x0

    #@5
    .line 1048
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
    .line 1049
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
    .line 1050
    .local v0, "c":C
    if-ne v0, v7, :cond_1

    #@17
    .line 1053
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@19
    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(II)I

    #@1c
    move-result p1

    #@1d
    .line 1054
    .end local v1    # "index":I
    .restart local p1    # "index":I
    if-gez p1, :cond_0

    #@1f
    .line 1055
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@21
    .line 1056
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
    .line 1057
    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    .line 1056
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    .line 1055
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v5

    #@3d
    .line 1060
    :cond_0
    add-int/lit8 p1, p1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1061
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_1
    const/16 v5, 0x7b

    #@42
    if-ne v0, v5, :cond_2

    #@44
    .line 1062
    add-int/lit8 v3, v3, 0x1

    #@46
    move p1, v1

    #@47
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    #@48
    .line 1063
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_2
    const/16 v5, 0x7d

    #@4a
    if-ne v0, v5, :cond_6

    #@4c
    .line 1064
    if-lez v3, :cond_3

    #@4e
    .line 1065
    add-int/lit8 v3, v3, -0x1

    #@50
    move p1, v1

    #@51
    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    #@52
    .line 1067
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_3
    add-int/lit8 p1, v1, -0x1

    #@54
    .end local v1    # "index":I
    .restart local p1    # "index":I
    sub-int v2, p1, v4

    #@56
    .line 1068
    .local v2, "length":I
    const v5, 0xffff

    #@59
    if-le v2, v5, :cond_4

    #@5b
    .line 1069
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@5d
    .line 1070
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
    .line 1069
    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@78
    throw v5

    #@79
    .line 1072
    :cond_4
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@7b
    invoke-direct {p0, v5, v4, v2, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@7e
    .line 1073
    return p1

    #@7f
    .line 1077
    .end local v0    # "c":C
    .end local v2    # "length":I
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@81
    .line 1078
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
    .line 1077
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
    .line 853
    return-void
.end method

.method private preParse(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 840
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 841
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    .line 842
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
    .line 841
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 844
    :cond_0
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2e
    .line 845
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    #@30
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    #@32
    .line 846
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    #@34
    .line 847
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@39
    .line 848
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@3b
    if-eqz v0, :cond_1

    #@3d
    .line 849
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@42
    .line 839
    :cond_1
    return-void
.end method

.method private prefix()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1526
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
    .line 1522
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
    .line 1518
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
    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v3, 0x2c

    #@4
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1498
    .local v1, "prefix":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    #@9
    .line 1499
    const-string/jumbo v3, "\""

    #@c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 1503
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@12
    move-result v3

    #@13
    sub-int v2, v3, p1

    #@15
    .line 1504
    .local v2, "substringLength":I
    const/16 v3, 0x18

    #@17
    if-gt v2, v3, :cond_2

    #@19
    .line 1505
    if-nez p1, :cond_1

    #@1b
    .end local p0    # "s":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1514
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
    .line 1501
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
    .line 1505
    .restart local v2    # "substringLength":I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3f
    move-result-object p0

    #@40
    goto :goto_1

    #@41
    .line 1507
    :cond_2
    add-int/lit8 v3, p1, 0x18

    #@43
    add-int/lit8 v0, v3, -0x4

    #@45
    .line 1508
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
    .line 1510
    add-int/lit8 v0, v0, -0x1

    #@53
    .line 1512
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
    .line 1385
    :goto_0
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-ge p1, v1, :cond_0

    #@8
    .line 1386
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .line 1388
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
    .line 1393
    .end local v0    # "c":C
    :cond_0
    return p1

    #@1c
    .line 1388
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
    .line 1391
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
    .line 1377
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
    .line 1373
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
    .line 344
    invoke-static {p0}, Landroid/icu/impl/PatternProps;->isIdentifier(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 345
    const/4 v0, -0x2

    #@7
    return v0

    #@8
    .line 347
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
    .line 374
    iget-boolean v4, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    #@2
    if-nez v4, :cond_0

    #@4
    .line 375
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@6
    return-object v4

    #@7
    .line 377
    :cond_0
    const/4 v2, 0x0

    #@8
    .line 379
    .local v2, "modified":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    #@b
    move-result v0

    #@c
    .line 380
    .local v0, "count":I
    move v1, v0

    #@d
    .end local v2    # "modified":Ljava/lang/StringBuilder;
    .local v1, "i":I
    :cond_1
    :goto_0
    if-lez v1, :cond_3

    #@f
    .line 382
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
    .line 383
    if-nez v2, :cond_2

    #@1f
    .line 384
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
    .line 386
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
    .line 389
    .end local v3    # "part":Landroid/icu/text/MessagePattern$Part;
    :cond_3
    if-nez v2, :cond_4

    #@41
    .line 390
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@43
    return-object v4

    #@44
    .line 392
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
    .line 236
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@a
    .line 238
    const-string/jumbo v1, "Attempt to clear() a frozen MessagePattern instance."

    #@d
    .line 237
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 240
    :cond_0
    iput-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@13
    .line 241
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    #@15
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    #@17
    .line 242
    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    #@19
    .line 243
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@1e
    .line 244
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 245
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@27
    .line 234
    :cond_1
    return-void
.end method

.method public clearPatternAndSetApostropheMode(Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/icu/text/MessagePattern$ApostropheMode;

    #@0
    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->clear()V

    #@3
    .line 256
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@5
    .line 254
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 796
    return-object p0

    #@7
    .line 798
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
    .line 810
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 814
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
    .line 815
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 816
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
    .line 818
    :cond_0
    const/4 v2, 0x0

    #@1f
    iput-boolean v2, v1, Landroid/icu/text/MessagePattern;->frozen:Z

    #@21
    .line 819
    return-object v1

    #@22
    .line 811
    .end local v1    # "newMsg":Landroid/icu/text/MessagePattern;
    :catch_0
    move-exception v0

    #@23
    .line 812
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
    .line 807
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
    .line 402
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
    .line 265
    if-ne p0, p1, :cond_0

    #@3
    .line 266
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 268
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
    .line 269
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 271
    check-cast v0, Landroid/icu/text/MessagePattern;

    #@15
    .line 273
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
    .line 274
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@21
    if-nez v2, :cond_4

    #@23
    iget-object v2, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@25
    if-nez v2, :cond_3

    #@27
    .line 275
    :goto_0
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@29
    iget-object v2, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    .line 272
    :cond_3
    return v1

    #@30
    .line 274
    :cond_4
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@32
    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v2

    #@38
    .line 273
    if-eqz v2, :cond_3

    #@3a
    goto :goto_0
.end method

.method public freeze()Landroid/icu/text/MessagePattern;
    .locals 1

    #@0
    .prologue
    .line 827
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->frozen:Z

    #@3
    .line 828
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 826
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
    .line 291
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@2
    return-object v0
.end method

.method public getLimitPartIndex(I)I
    .locals 2
    .param p1, "start"    # I

    #@0
    .prologue
    .line 505
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
    .line 506
    .local v0, "limit":I
    if-ge v0, p1, :cond_0

    #@e
    .line 507
    return p1

    #@f
    .line 509
    :cond_0
    return v0
.end method

.method public getNumericValue(Landroid/icu/text/MessagePattern$Part;)D
    .locals 4
    .param p1, "part"    # Landroid/icu/text/MessagePattern$Part;

    #@0
    .prologue
    .line 464
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    #@3
    move-result-object v0

    #@4
    .line 465
    .local v0, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 466
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get4(Landroid/icu/text/MessagePattern$Part;)S

    #@b
    move-result v1

    #@c
    int-to-double v2, v1

    #@d
    return-wide v2

    #@e
    .line 467
    :cond_0
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 468
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
    .line 470
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
    .line 412
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
    .line 423
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
    .line 434
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
    .line 306
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPluralOffset(I)D
    .locals 4
    .param p1, "pluralStart"    # I

    #@0
    .prologue
    .line 488
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    #@8
    .line 489
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
    .line 490
    invoke-virtual {p0, v0}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    #@15
    move-result-wide v2

    #@16
    return-wide v2

    #@17
    .line 492
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
    .line 444
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get0(Landroid/icu/text/MessagePattern$Part;)I

    #@3
    move-result v0

    #@4
    .line 445
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
    .line 314
    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    #@2
    return v0
.end method

.method public hasNumberedArguments()Z
    .locals 1

    #@0
    .prologue
    .line 322
    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 284
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
    .line 836
    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->frozen:Z

    #@2
    return v0
.end method

.method jdkAposMode()Z
    .locals 2

    #@0
    .prologue
    .line 299
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
    .line 176
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    #@4
    .line 177
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@6
    invoke-direct {p0, v1, v1, v1, v0}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    #@9
    .line 178
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    #@c
    .line 179
    return-object p0
.end method

.method public parseChoiceStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 192
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    #@4
    .line 193
    invoke-direct {p0, v0, v0}, Landroid/icu/text/MessagePattern;->parseChoiceStyle(II)I

    #@7
    .line 194
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    #@a
    .line 195
    return-object p0
.end method

.method public parsePluralStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 208
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    #@4
    .line 209
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    #@6
    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    #@9
    .line 210
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    #@c
    .line 211
    return-object p0
.end method

.method public parseSelectStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 224
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    #@4
    .line 225
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    #@6
    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    #@9
    .line 226
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    #@c
    .line 227
    return-object p0
.end method

.method public partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z
    .locals 4
    .param p1, "part"    # Landroid/icu/text/MessagePattern$Part;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 455
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
    .line 330
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    #@2
    return-object v0
.end method
