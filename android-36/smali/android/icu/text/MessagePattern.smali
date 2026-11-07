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
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/MessagePattern;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api ARG_NAME_NOT_NUMBER:I = -0x1

.field public static final whitelist test-api ARG_NAME_NOT_VALID:I = -0x2

.field private static final greylist-max-o MAX_PREFIX_LENGTH:I = 0x18

.field public static final whitelist test-api NO_NUMERIC_VALUE:D = -1.23456789E8

.field private static final greylist-max-o argTypes:[Landroid/icu/text/MessagePattern$ArgType;

.field private static final greylist-max-o defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;


# instance fields
.field private greylist-max-o aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

.field private volatile greylist-max-o frozen:Z

.field private greylist-max-o hasArgNames:Z

.field private greylist-max-o hasArgNumbers:Z

.field private greylist-max-o msg:Ljava/lang/String;

.field private greylist-max-o needsAutoQuoting:Z

.field private greylist-max-o numericValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/text/MessagePattern$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetargTypes()[Landroid/icu/text/MessagePattern$ArgType;
    .registers 1

    sget-object v0, Landroid/icu/text/MessagePattern;->argTypes:[Landroid/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 82
    nop

    .line 1543
    nop

    .line 1545
    const-string v0, "android.icu.text.MessagePattern.ApostropheMode"

    const-string v1, "DOUBLE_OPTIONAL"

    invoke-static {v0, v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1544
    invoke-static {v0}, Landroid/icu/text/MessagePattern$ApostropheMode;->valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 1547
    invoke-static {}, Landroid/icu/text/MessagePattern$ArgType;->values()[Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessagePattern;->argTypes:[Landroid/icu/text/MessagePattern$ArgType;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 143
    sget-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 144
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 151
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 152
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 164
    sget-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 165
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;

    .line 166
    return-void
.end method

.method private greylist-max-o addArgDoublePart(DII)V
    .registers 8
    .param p1, "numericValue"    # D
    .param p3, "start"    # I
    .param p4, "length"    # I

    .line 1480
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 1481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    .line 1482
    const/4 v0, 0x0

    .local v0, "numericIndex":I
    goto :goto_17

    .line 1484
    .end local v0    # "numericIndex":I
    :cond_d
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1485
    .restart local v0    # "numericIndex":I
    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_26

    .line 1489
    :goto_17
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v1, p3, p4, v0}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 1491
    return-void

    .line 1486
    :cond_26
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Too many numeric values"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "type"    # Landroid/icu/text/MessagePattern$Part$Type;
    .param p3, "index"    # I
    .param p4, "length"    # I
    .param p5, "value"    # I

    .line 1474
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fputlimitPartIndex(Landroid/icu/text/MessagePattern$Part;I)V

    .line 1475
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 1476
    return-void
.end method

.method private greylist-max-o addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V
    .registers 12
    .param p1, "type"    # Landroid/icu/text/MessagePattern$Part$Type;
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "value"    # I

    .line 1470
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    new-instance v1, Landroid/icu/text/MessagePattern$Part;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local p2    # "index":I
    .end local p3    # "length":I
    .end local p4    # "value":I
    .local v2, "type":Landroid/icu/text/MessagePattern$Part$Type;
    .local v3, "index":I
    .local v4, "length":I
    .local v5, "value":I
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/MessagePattern$Part;-><init>(Landroid/icu/text/MessagePattern$Part$Type;IIILandroid/icu/text/MessagePattern-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    return-void
.end method

.method static greylist-max-o appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .registers 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .line 1357
    const/4 v0, -0x1

    .line 1359
    .local v0, "doubleApos":I
    :goto_1
    const/16 v1, 0x27

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1360
    .local v2, "i":I
    if-ltz v2, :cond_1d

    if-lt v2, p2, :cond_c

    goto :goto_1d

    .line 1364
    :cond_c
    if-ne v2, v0, :cond_15

    .line 1366
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1367
    add-int/lit8 p1, p1, 0x1

    .line 1368
    const/4 v0, -0x1

    goto :goto_1c

    .line 1371
    :cond_15
    invoke-virtual {p3, p0, p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1372
    add-int/lit8 v1, v2, 0x1

    move p1, v1

    move v0, v1

    .line 1374
    .end local v2    # "i":I
    :goto_1c
    goto :goto_1

    .line 1361
    .restart local v2    # "i":I
    :cond_1d
    :goto_1d
    invoke-virtual {p3, p0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1362
    nop

    .line 1375
    .end local v2    # "i":I
    return-void
.end method

.method private greylist-max-o inMessageFormatPattern(I)Z
    .registers 5
    .param p1, "nestingLevel"    # I

    .line 1455
    if-gtz p1, :cond_13

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgettype(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v2, :cond_14

    :cond_13
    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private greylist-max-o inTopLevelChoiceMessage(ILandroid/icu/text/MessagePattern$ArgType;)Z
    .registers 7
    .param p1, "nestingLevel"    # I
    .param p2, "parentType"    # Landroid/icu/text/MessagePattern$ArgType;

    .line 1463
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    sget-object v2, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p2, v2, :cond_1a

    iget-object v2, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 1466
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/MessagePattern$Part;

    invoke-static {v2}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgettype(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v2, v3, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    nop

    .line 1463
    :goto_1b
    return v0
.end method

.method private static greylist-max-o isArgTypeChar(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 1402
    const/16 v0, 0x61

    if-gt v0, p0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-gt v0, p0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private greylist-max-o isChoice(I)Z
    .registers 7
    .param p1, "index"    # I

    .line 1407
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1408
    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    .local v0, "c":C
    const/16 v2, 0x43

    const/16 v3, 0x63

    if-eq p1, v3, :cond_11

    if-ne v0, v2, :cond_67

    :cond_11
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .line 1409
    .end local v1    # "index":I
    .local v4, "index":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v1, 0x68

    if-eq p1, v1, :cond_25

    const/16 p1, 0x48

    if-ne v0, p1, :cond_23

    goto :goto_25

    :cond_23
    move v1, v4

    goto :goto_67

    :cond_25
    :goto_25
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v4, 0x1

    .line 1410
    .end local v4    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v4, 0x6f

    if-eq p1, v4, :cond_36

    const/16 p1, 0x4f

    if-ne v0, p1, :cond_67

    :cond_36
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .line 1411
    .end local v1    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v1, 0x69

    if-eq p1, v1, :cond_4a

    const/16 p1, 0x49

    if-ne v0, p1, :cond_48

    goto :goto_4a

    :cond_48
    move v1, v4

    goto :goto_67

    :cond_4a
    :goto_4a
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v4, 0x1

    .line 1412
    .end local v4    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    if-eq p1, v3, :cond_57

    if-ne v0, v2, :cond_67

    :cond_57
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1413
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v2, 0x65

    if-eq p1, v2, :cond_69

    const/16 p1, 0x45

    if-ne v0, p1, :cond_67

    goto :goto_69

    :cond_67
    :goto_67
    const/4 p1, 0x0

    goto :goto_6a

    :cond_69
    :goto_69
    const/4 p1, 0x1

    .line 1407
    :goto_6a
    return p1
.end method

.method private greylist-max-o isOrdinal(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 1440
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1441
    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    .local v0, "c":C
    const/16 v2, 0x6f

    if-eq p1, v2, :cond_11

    const/16 p1, 0x4f

    if-ne v0, p1, :cond_81

    :cond_11
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1442
    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v1, 0x72

    if-eq p1, v1, :cond_26

    const/16 p1, 0x52

    if-ne v0, p1, :cond_23

    goto :goto_26

    :cond_23
    move v1, v2

    goto/16 :goto_81

    :cond_26
    :goto_26
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .line 1443
    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v2, 0x64

    if-eq p1, v2, :cond_37

    const/16 p1, 0x44

    if-ne v0, p1, :cond_81

    :cond_37
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1444
    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v1, 0x69

    if-eq p1, v1, :cond_4b

    const/16 p1, 0x49

    if-ne v0, p1, :cond_49

    goto :goto_4b

    :cond_49
    move v1, v2

    goto :goto_81

    :cond_4b
    :goto_4b
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .line 1445
    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v2, 0x6e

    if-eq p1, v2, :cond_5c

    const/16 p1, 0x4e

    if-ne v0, p1, :cond_81

    :cond_5c
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1446
    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v1, 0x61

    if-eq p1, v1, :cond_70

    const/16 p1, 0x41

    if-ne v0, p1, :cond_6e

    goto :goto_70

    :cond_6e
    move v1, v2

    goto :goto_81

    :cond_70
    :goto_70
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1447
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v1, 0x6c

    if-eq p1, v1, :cond_84

    const/16 p1, 0x4c

    if-ne v0, p1, :cond_80

    goto :goto_84

    :cond_80
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_81
    :goto_81
    const/4 p1, 0x0

    move v2, v1

    goto :goto_85

    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_84
    :goto_84
    const/4 p1, 0x1

    .line 1440
    :goto_85
    return p1
.end method

.method private greylist-max-o isPlural(I)Z
    .registers 7
    .param p1, "index"    # I

    .line 1418
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1419
    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    .local v0, "c":C
    const/16 v2, 0x70

    if-eq p1, v2, :cond_11

    const/16 p1, 0x50

    if-ne v0, p1, :cond_6e

    :cond_11
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1420
    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v1, 0x4c

    const/16 v3, 0x6c

    if-eq p1, v3, :cond_25

    if-ne v0, v1, :cond_23

    goto :goto_25

    :cond_23
    move v1, v2

    goto :goto_6e

    :cond_25
    :goto_25
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    .line 1421
    .end local v2    # "index":I
    .local v4, "index":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v2, 0x75

    if-eq p1, v2, :cond_39

    const/16 p1, 0x55

    if-ne v0, p1, :cond_37

    goto :goto_39

    :cond_37
    move v1, v4

    goto :goto_6e

    :cond_39
    :goto_39
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v4, 0x1

    .line 1422
    .end local v4    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v4, 0x72

    if-eq p1, v4, :cond_4d

    const/16 p1, 0x52

    if-ne v0, p1, :cond_4b

    goto :goto_4d

    :cond_4b
    move v1, v2

    goto :goto_6e

    :cond_4d
    :goto_4d
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    .line 1423
    .end local v2    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v2, 0x61

    if-eq p1, v2, :cond_61

    const/16 p1, 0x41

    if-ne v0, p1, :cond_5f

    goto :goto_61

    :cond_5f
    move v1, v4

    goto :goto_6e

    :cond_61
    :goto_61
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1424
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    if-eq p1, v3, :cond_71

    if-ne v0, v1, :cond_6d

    goto :goto_71

    :cond_6d
    move v1, v4

    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_6e
    :goto_6e
    const/4 p1, 0x0

    move v4, v1

    goto :goto_72

    .end local v1    # "index":I
    .restart local v4    # "index":I
    :cond_71
    :goto_71
    const/4 p1, 0x1

    .line 1418
    :goto_72
    return p1
.end method

.method private greylist-max-o isSelect(I)Z
    .registers 7
    .param p1, "index"    # I

    .line 1429
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1430
    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    .local v0, "c":C
    const/16 v2, 0x73

    if-eq p1, v2, :cond_11

    const/16 p1, 0x53

    if-ne v0, p1, :cond_6a

    :cond_11
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1431
    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v1, 0x45

    const/16 v3, 0x65

    if-eq p1, v3, :cond_25

    if-ne v0, v1, :cond_23

    goto :goto_25

    :cond_23
    move v1, v2

    goto :goto_6a

    :cond_25
    :goto_25
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    .line 1432
    .end local v2    # "index":I
    .local v4, "index":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v2, 0x6c

    if-eq p1, v2, :cond_39

    const/16 p1, 0x4c

    if-ne v0, p1, :cond_37

    goto :goto_39

    :cond_37
    move v1, v4

    goto :goto_6a

    :cond_39
    :goto_39
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v4, 0x1

    .line 1433
    .end local v4    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    if-eq p1, v3, :cond_49

    if-ne v0, v1, :cond_47

    goto :goto_49

    :cond_47
    move v1, v2

    goto :goto_6a

    :cond_49
    :goto_49
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .line 1434
    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v2, 0x63

    if-eq p1, v2, :cond_5a

    const/16 p1, 0x43

    if-ne v0, p1, :cond_6a

    :cond_5a
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1435
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, p1

    const/16 v2, 0x74

    if-eq p1, v2, :cond_6c

    const/16 p1, 0x54

    if-ne v0, p1, :cond_6a

    goto :goto_6c

    :cond_6a
    :goto_6a
    const/4 p1, 0x0

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 p1, 0x1

    .line 1429
    :goto_6d
    return p1
.end method

.method private greylist-max-o parseArg(III)I
    .registers 20
    .param p1, "index"    # I
    .param p2, "argStartLength"    # I
    .param p3, "nestingLevel"    # I

    .line 949
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v6, p2

    move/from16 v7, p3

    iget-object v2, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 950
    .local v2, "argStart":I
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    .line 951
    .local v3, "argType":Landroid/icu/text/MessagePattern$ArgType;
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v5

    invoke-direct {v0, v4, v1, v6, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 952
    add-int v4, v1, v6

    invoke-direct {v0, v4}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v4

    move v1, v4

    .end local p1    # "index":I
    .local v1, "index":I
    move v8, v4

    .line 953
    .local v8, "nameIndex":I
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "Unmatched \'{\' braces in message "

    if-eq v1, v4, :cond_237

    .line 958
    invoke-direct {v0, v1}, Landroid/icu/text/MessagePattern;->skipIdentifier(I)I

    move-result v1

    .line 959
    invoke-direct {v0, v8, v1}, Landroid/icu/text/MessagePattern;->parseArgNumber(II)I

    move-result v9

    .line 960
    .local v9, "number":I
    const/4 v4, 0x0

    const-string v10, "Bad argument syntax: "

    const v11, 0xffff

    const/4 v12, 0x1

    if-ltz v9, :cond_69

    .line 961
    sub-int v13, v1, v8

    .line 962
    .local v13, "length":I
    if-gt v13, v11, :cond_4c

    const/16 v14, 0x7fff

    if-gt v9, v14, :cond_4c

    .line 966
    iput-boolean v12, v0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    .line 967
    sget-object v12, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {v0, v12, v8, v13, v9}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 968
    .end local v13    # "length":I
    goto :goto_78

    .line 963
    .restart local v13    # "length":I
    :cond_4c
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Argument number too large: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 964
    invoke-direct {v0, v8}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 968
    .end local v13    # "length":I
    :cond_69
    const/4 v13, -0x1

    if-ne v9, v13, :cond_21c

    .line 969
    sub-int v13, v1, v8

    .line 970
    .restart local v13    # "length":I
    if-gt v13, v11, :cond_1ff

    .line 974
    iput-boolean v12, v0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    .line 975
    sget-object v12, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {v0, v12, v8, v13, v4}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 976
    .end local v13    # "length":I
    nop

    .line 979
    :goto_78
    invoke-direct {v0, v1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v1

    .line 980
    iget-object v12, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v1, v12, :cond_1e4

    .line 984
    iget-object v12, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 985
    .local v12, "c":C
    const/16 v13, 0x7d

    if-ne v12, v13, :cond_92

    move-object v10, v3

    move v3, v1

    goto/16 :goto_167

    .line 987
    :cond_92
    const/16 v14, 0x2c

    if-ne v12, v14, :cond_1c9

    .line 991
    add-int/lit8 v15, v1, 0x1

    invoke-direct {v0, v15}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v15

    move v1, v15

    .line 992
    .local v15, "typeIndex":I
    :goto_9d
    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_b5

    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/MessagePattern;->isArgTypeChar(I)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 993
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    goto :goto_9d

    .line 995
    :cond_b5
    sub-int v4, v1, v15

    .line 996
    .local v4, "length":I
    invoke-direct {v0, v1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v1

    .line 997
    iget-object v11, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v1, v11, :cond_1ae

    .line 1001
    if-eqz v4, :cond_193

    iget-object v5, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v12, v5

    if-eq v5, v14, :cond_d0

    if-ne v12, v13, :cond_193

    .line 1004
    :cond_d0
    const v5, 0xffff

    if-gt v4, v5, :cond_176

    .line 1008
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    .line 1009
    const/4 v5, 0x6

    if-ne v4, v5, :cond_f5

    .line 1011
    invoke-direct {v0, v15}, Landroid/icu/text/MessagePattern;->isChoice(I)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 1012
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    goto :goto_109

    .line 1013
    :cond_e3
    invoke-direct {v0, v15}, Landroid/icu/text/MessagePattern;->isPlural(I)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 1014
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    goto :goto_109

    .line 1015
    :cond_ec
    invoke-direct {v0, v15}, Landroid/icu/text/MessagePattern;->isSelect(I)Z

    move-result v5

    if-eqz v5, :cond_109

    .line 1016
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    goto :goto_109

    .line 1018
    :cond_f5
    const/16 v5, 0xd

    if-ne v4, v5, :cond_109

    .line 1019
    invoke-direct {v0, v15}, Landroid/icu/text/MessagePattern;->isSelect(I)Z

    move-result v5

    if-eqz v5, :cond_109

    add-int/lit8 v5, v15, 0x6

    invoke-direct {v0, v5}, Landroid/icu/text/MessagePattern;->isOrdinal(I)Z

    move-result v5

    if-eqz v5, :cond_109

    .line 1020
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    .line 1024
    :cond_109
    :goto_109
    iget-object v5, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/MessagePattern$Part;

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v10

    int-to-short v10, v10

    invoke-static {v5, v10}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fputvalue(Landroid/icu/text/MessagePattern$Part;S)V

    .line 1025
    sget-object v5, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v3, v5, :cond_123

    .line 1026
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v10, 0x0

    invoke-direct {v0, v5, v15, v4, v10}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 1029
    :cond_123
    if-ne v12, v13, :cond_149

    .line 1030
    sget-object v5, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v3, v5, :cond_12c

    move-object v10, v3

    move v3, v1

    goto :goto_167

    .line 1031
    :cond_12c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No style field for complex argument: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1032
    invoke-direct {v0, v8}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1035
    :cond_149
    add-int/lit8 v1, v1, 0x1

    .line 1036
    sget-object v5, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v3, v5, :cond_156

    .line 1037
    invoke-direct {v0, v1}, Landroid/icu/text/MessagePattern;->parseSimpleStyle(I)I

    move-result v1

    move-object v10, v3

    move v3, v1

    goto :goto_167

    .line 1038
    :cond_156
    sget-object v5, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v3, v5, :cond_161

    .line 1039
    invoke-direct {v0, v1, v7}, Landroid/icu/text/MessagePattern;->parseChoiceStyle(II)I

    move-result v1

    move-object v10, v3

    move v3, v1

    goto :goto_167

    .line 1041
    :cond_161
    invoke-direct {v0, v3, v1, v7}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    move-result v1

    move-object v10, v3

    move v3, v1

    .line 1046
    .end local v1    # "index":I
    .end local v4    # "length":I
    .end local v15    # "typeIndex":I
    .local v3, "index":I
    .local v10, "argType":Landroid/icu/text/MessagePattern$ArgType;
    :goto_167
    move v1, v2

    .end local v2    # "argStart":I
    .local v1, "argStart":I
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v4, 0x1

    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    .line 1047
    move v2, v1

    .end local v1    # "argStart":I
    .restart local v2    # "argStart":I
    add-int/lit8 v1, v3, 0x1

    return v1

    .line 1005
    .end local v10    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .local v1, "index":I
    .local v3, "argType":Landroid/icu/text/MessagePattern$ArgType;
    .restart local v4    # "length":I
    .restart local v15    # "typeIndex":I
    :cond_176
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Argument type name too long: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1006
    invoke-direct {v0, v8}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1002
    :cond_193
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {v0, v8}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 998
    :cond_1ae
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 999
    invoke-direct {v0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 988
    .end local v4    # "length":I
    .end local v15    # "typeIndex":I
    :cond_1c9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {v0, v8}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 981
    .end local v12    # "c":C
    :cond_1e4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 982
    invoke-direct {v0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 971
    .restart local v13    # "length":I
    :cond_1ff
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Argument name too long: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 972
    invoke-direct {v0, v8}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 977
    .end local v13    # "length":I
    :cond_21c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {v0, v8}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 954
    .end local v9    # "number":I
    :cond_237
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 955
    invoke-direct {v0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private greylist-max-o parseArgNumber(II)I
    .registers 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 1289
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/icu/text/MessagePattern;->parseArgNumber(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o parseArgNumber(Ljava/lang/CharSequence;II)I
    .registers 12
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 1249
    const/4 v0, -0x2

    if-lt p1, p2, :cond_4

    .line 1250
    return v0

    .line 1255
    :cond_4
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 1256
    .local p1, "c":C
    const/16 v2, 0x39

    const/4 v3, -0x1

    const/16 v4, 0x30

    if-ne p1, v4, :cond_18

    .line 1257
    if-ne v1, p2, :cond_15

    .line 1258
    const/4 v0, 0x0

    return v0

    .line 1260
    :cond_15
    const/4 v5, 0x0

    .line 1261
    .local v5, "number":I
    const/4 v6, 0x1

    .local v6, "badNumber":Z
    goto :goto_21

    .line 1263
    .end local v5    # "number":I
    .end local v6    # "badNumber":Z
    :cond_18
    const/16 v5, 0x31

    if-gt v5, p1, :cond_41

    if-gt p1, v2, :cond_41

    .line 1264
    add-int/lit8 v5, p1, -0x30

    .line 1265
    .restart local v5    # "number":I
    const/4 v6, 0x0

    .line 1269
    .restart local v6    # "badNumber":Z
    :goto_21
    if-ge v1, p2, :cond_3d

    .line 1270
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "start":I
    .local v7, "start":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 1271
    if-gt v4, p1, :cond_3c

    if-gt p1, v2, :cond_3c

    .line 1272
    const v1, 0xccccccc

    if-lt v5, v1, :cond_34

    .line 1273
    const/4 v1, 0x1

    move v6, v1

    .line 1275
    :cond_34
    mul-int/lit8 v1, v5, 0xa

    add-int/lit8 v8, p1, -0x30

    add-int v5, v1, v8

    move v1, v7

    goto :goto_21

    .line 1277
    :cond_3c
    return v3

    .line 1281
    .end local v7    # "start":I
    .restart local v1    # "start":I
    :cond_3d
    if-eqz v6, :cond_40

    .line 1282
    return v0

    .line 1284
    :cond_40
    return v5

    .line 1267
    .end local v5    # "number":I
    .end local v6    # "badNumber":Z
    :cond_41
    return v3
.end method

.method private greylist-max-o parseChoiceStyle(II)I
    .registers 12
    .param p1, "index"    # I
    .param p2, "nestingLevel"    # I

    .line 1087
    move v0, p1

    .line 1088
    .local v0, "start":I
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p1

    .line 1089
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p1, v1, :cond_10f

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_10f

    .line 1096
    :goto_17
    move v1, p1

    .line 1097
    .local v1, "numberIndex":I
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    move-result p1

    .line 1098
    sub-int v3, p1, v1

    .line 1099
    .local v3, "length":I
    const-string v4, "Bad choice pattern syntax: "

    if-eqz v3, :cond_f4

    .line 1102
    const v5, 0xffff

    if-gt v3, v5, :cond_d7

    .line 1106
    const/4 v5, 0x1

    invoke-direct {p0, v1, p1, v5}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    .line 1108
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p1

    .line 1109
    iget-object v6, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq p1, v6, :cond_bc

    .line 1112
    iget-object v6, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1113
    .local v6, "c":C
    const/16 v7, 0x23

    if-eq v6, v7, :cond_71

    const/16 v7, 0x3c

    if-eq v6, v7, :cond_71

    const/16 v7, 0x2264

    if-ne v6, v7, :cond_4a

    goto :goto_71

    .line 1114
    :cond_4a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected choice separator (#<\u2264) instead of \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in choice pattern "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1116
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1118
    :cond_71
    :goto_71
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v8, 0x0

    invoke-direct {p0, v7, p1, v5, v8}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 1120
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    sget-object v7, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    invoke-direct {p0, p1, v8, v5, v7}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    move-result p1

    .line 1122
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne p1, v5, :cond_8a

    .line 1123
    return p1

    .line 1125
    :cond_8a
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_b4

    .line 1126
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 1130
    return p1

    .line 1127
    :cond_99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1128
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1132
    :cond_b4
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p1

    .line 1133
    .end local v1    # "numberIndex":I
    .end local v3    # "length":I
    .end local v6    # "c":C
    goto/16 :goto_17

    .line 1110
    .restart local v1    # "numberIndex":I
    .restart local v3    # "length":I
    :cond_bc
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1103
    :cond_d7
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Choice number too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1104
    invoke-direct {p0, v1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1100
    :cond_f4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1090
    .end local v1    # "numberIndex":I
    .end local v3    # "length":I
    :cond_10f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing choice argument pattern in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1091
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o parseDouble(IIZ)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "allowInfinity"    # Z

    .line 1299
    nop

    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, "value":I
    const/4 v1, 0x0

    .line 1305
    .local v1, "isNegative":I
    move v2, p1

    .line 1306
    .local v2, "index":I
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .local v4, "index":I
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1307
    .local v2, "c":C
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1e

    .line 1308
    const/4 v1, 0x1

    .line 1309
    if-eq v4, p2, :cond_1d

    .line 1312
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v4, v5

    goto :goto_2f

    .line 1310
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :cond_1d
    goto :goto_45

    .line 1313
    :cond_1e
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2f

    .line 1314
    if-eq v4, p2, :cond_2e

    .line 1317
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v4, v5

    goto :goto_2f

    .line 1315
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :cond_2e
    goto :goto_45

    .line 1319
    :cond_2f
    :goto_2f
    const/16 v3, 0x221e

    if-ne v2, v3, :cond_64

    .line 1320
    if-eqz p3, :cond_45

    if-ne v4, p2, :cond_45

    .line 1321
    nop

    .line 1322
    if-eqz v1, :cond_3d

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_3f

    :cond_3d
    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_3f
    sub-int v3, p2, p1

    .line 1321
    invoke-direct {p0, v5, v6, p1, v3}, Landroid/icu/text/MessagePattern;->addArgDoublePart(DII)V

    .line 1324
    return-void

    .line 1346
    .end local v0    # "value":I
    .end local v1    # "isNegative":I
    .end local v2    # "c":C
    .end local v4    # "index":I
    :cond_45
    :goto_45
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad syntax for numeric value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1347
    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1330
    .restart local v0    # "value":I
    .restart local v1    # "isNegative":I
    .restart local v2    # "c":C
    .restart local v4    # "index":I
    :cond_64
    :goto_64
    const/16 v3, 0x30

    if-gt v3, v2, :cond_90

    const/16 v3, 0x39

    if-gt v2, v3, :cond_90

    .line 1331
    mul-int/lit8 v3, v0, 0xa

    add-int/lit8 v5, v2, -0x30

    add-int v0, v3, v5

    .line 1332
    add-int/lit16 v3, v1, 0x7fff

    if-le v0, v3, :cond_77

    .line 1333
    goto :goto_90

    .line 1335
    :cond_77
    if-ne v4, p2, :cond_86

    .line 1336
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    sub-int v5, p2, p1

    if-eqz v1, :cond_81

    neg-int v6, v0

    goto :goto_82

    :cond_81
    move v6, v0

    :goto_82
    invoke-direct {p0, v3, p1, v5, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 1337
    return-void

    .line 1339
    :cond_86
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v4, v5

    goto :goto_64

    .line 1342
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :cond_90
    :goto_90
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 1343
    .local v5, "numericValue":D
    sub-int v3, p2, p1

    invoke-direct {p0, v5, v6, p1, v3}, Landroid/icu/text/MessagePattern;->addArgDoublePart(DII)V

    .line 1344
    return-void
.end method

.method private greylist-max-o parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I
    .registers 16
    .param p1, "index"    # I
    .param p2, "msgStartLength"    # I
    .param p3, "nestingLevel"    # I
    .param p4, "parentType"    # Landroid/icu/text/MessagePattern$ArgType;

    .line 863
    const/16 v0, 0x7fff

    if-gt p3, v0, :cond_13b

    .line 866
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 867
    .local v2, "msgStart":I
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 868
    add-int/2addr p1, p2

    move v4, p1

    .line 869
    .end local p1    # "index":I
    .local v4, "index":I
    :goto_11
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_10c

    .line 870
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v4, 0x1

    .end local v4    # "index":I
    .local v0, "index":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 871
    .local p1, "c":C
    const/16 v1, 0x7c

    const/16 v3, 0x23

    const/16 v4, 0x7b

    const/16 v5, 0x7d

    const/16 v6, 0x27

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne p1, v6, :cond_c4

    .line 872
    iget-object v9, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v0, v9, :cond_42

    .line 875
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v1, v0, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 876
    iput-boolean v8, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    move-object v1, p0

    move v6, p3

    goto/16 :goto_108

    .line 878
    :cond_42
    iget-object v9, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 879
    if-ne p1, v6, :cond_56

    .line 881
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .local v3, "index":I
    invoke-direct {p0, v1, v0, v8, v7}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    move-object v1, p0

    move v6, p3

    move v4, v3

    goto/16 :goto_109

    .line 882
    .end local v3    # "index":I
    .restart local v0    # "index":I
    :cond_56
    iget-object v9, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    sget-object v10, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    if-eq v9, v10, :cond_7a

    if-eq p1, v4, :cond_7a

    if-eq p1, v5, :cond_7a

    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p4, v4, :cond_66

    if-eq p1, v1, :cond_7a

    .line 886
    :cond_66
    invoke-virtual {p4}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v1

    if-eqz v1, :cond_6f

    if-ne p1, v3, :cond_6f

    goto :goto_7a

    .line 915
    :cond_6f
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v1, v0, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 916
    iput-boolean v8, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    move-object v1, p0

    move v6, p3

    goto/16 :goto_108

    .line 889
    :cond_7a
    :goto_7a
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v1, v3, v8, v7}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 892
    :goto_81
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 893
    if-ltz v0, :cond_b3

    .line 894
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_a7

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_a7

    .line 897
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v1, v0, v8, v7}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_81

    .line 900
    :cond_a7
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .restart local v3    # "index":I
    invoke-direct {p0, v1, v0, v8, v7}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 901
    move-object v1, p0

    move v6, p3

    move v4, v3

    goto/16 :goto_109

    .line 905
    .end local v3    # "index":I
    .restart local v0    # "index":I
    :cond_b3
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 907
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v1, v0, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 908
    iput-boolean v8, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    .line 909
    move-object v1, p0

    move v6, p3

    move v4, v0

    goto :goto_109

    .line 919
    :cond_c4
    invoke-virtual {p4}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v6

    if-eqz v6, :cond_d6

    if-ne p1, v3, :cond_d6

    .line 922
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v1, v3, v8, v7}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    move-object v1, p0

    move v6, p3

    goto :goto_108

    .line 923
    :cond_d6
    if-ne p1, v4, :cond_e2

    .line 924
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, v8, p3}, Landroid/icu/text/MessagePattern;->parseArg(III)I

    move-result v0

    move-object v1, p0

    move v6, p3

    move v4, v0

    goto :goto_109

    .line 925
    :cond_e2
    if-lez p3, :cond_e6

    if-eq p1, v5, :cond_ec

    :cond_e6
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p4, v3, :cond_106

    if-ne p1, v1, :cond_106

    .line 929
    :cond_ec
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p4, v1, :cond_f4

    if-ne p1, v5, :cond_f4

    move v5, v7

    goto :goto_f5

    :cond_f4
    move v5, v8

    .line 930
    .local v5, "limitLength":I
    :goto_f5
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v4, v0, -0x1

    move-object v1, p0

    move v6, p3

    .end local p3    # "nestingLevel":I
    .local v6, "nestingLevel":I
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    .line 931
    sget-object p3, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p4, p3, :cond_105

    .line 933
    add-int/lit8 p3, v0, -0x1

    return p3

    .line 936
    :cond_105
    return v0

    .line 925
    .end local v5    # "limitLength":I
    .end local v6    # "nestingLevel":I
    .restart local p3    # "nestingLevel":I
    :cond_106
    move-object v1, p0

    move v6, p3

    .line 939
    .end local p1    # "c":C
    :goto_108
    move v4, v0

    .end local v0    # "index":I
    .end local p3    # "nestingLevel":I
    .restart local v4    # "index":I
    .restart local v6    # "nestingLevel":I
    :goto_109
    move p3, v6

    goto/16 :goto_11

    .line 940
    .end local v6    # "nestingLevel":I
    .restart local p3    # "nestingLevel":I
    :cond_10c
    move-object v1, p0

    move v6, p3

    .end local p3    # "nestingLevel":I
    .restart local v6    # "nestingLevel":I
    if-lez v6, :cond_134

    invoke-direct {p0, v6, p4}, Landroid/icu/text/MessagePattern;->inTopLevelChoiceMessage(ILandroid/icu/text/MessagePattern$ArgType;)Z

    move-result p1

    if-eqz p1, :cond_117

    goto :goto_134

    .line 941
    :cond_117
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unmatched \'{\' braces in message "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 942
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 944
    :cond_134
    :goto_134
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    .line 945
    return v4

    .line 864
    .end local v2    # "msgStart":I
    .end local v4    # "index":I
    .end local v6    # "nestingLevel":I
    .local p1, "index":I
    .restart local p3    # "nestingLevel":I
    :cond_13b
    move v6, p3

    .end local p3    # "nestingLevel":I
    .restart local v6    # "nestingLevel":I
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p3
.end method

.method private greylist-max-o parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I
    .registers 20
    .param p1, "argType"    # Landroid/icu/text/MessagePattern$ArgType;
    .param p2, "index"    # I
    .param p3, "nestingLevel"    # I

    .line 1137
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    .line 1138
    .local v2, "start":I
    const/4 v3, 0x1

    .line 1139
    .local v3, "isEmpty":Z
    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    move/from16 v3, p2

    .line 1144
    .end local p2    # "index":I
    .local v3, "index":I
    .local v4, "isEmpty":Z
    .local v5, "hasOther":Z
    :goto_c
    invoke-direct {v0, v3}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v3

    .line 1145
    iget-object v6, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v3, v6, :cond_1c

    move v6, v7

    goto :goto_1d

    :cond_1c
    move v6, v8

    .line 1146
    .local v6, "eos":Z
    :goto_1d
    const-string v9, " pattern syntax: "

    const-string v10, "Bad "

    if-nez v6, :cond_1ec

    iget-object v11, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x7d

    if-ne v11, v12, :cond_31

    move-object/from16 v14, p1

    goto/16 :goto_1ee

    .line 1161
    :cond_31
    move v11, v3

    .line 1162
    .local v11, "selectorIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v12

    const-string v13, "Argument selector too long: "

    const v14, 0xffff

    if-eqz v12, :cond_a7

    iget-object v12, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v15, 0x3d

    if-ne v12, v15, :cond_a7

    .line 1164
    add-int/lit8 v12, v3, 0x1

    invoke-direct {v0, v12}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    move-result v3

    .line 1165
    sub-int v12, v3, v11

    .line 1166
    .local v12, "length":I
    if-eq v12, v7, :cond_7a

    .line 1172
    if-gt v12, v14, :cond_5f

    .line 1176
    sget-object v9, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {v0, v9, v11, v12, v8}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 1177
    add-int/lit8 v9, v11, 0x1

    invoke-direct {v0, v9, v3, v8}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    .line 1178
    .end local v12    # "length":I
    goto/16 :goto_14c

    .line 1173
    .restart local v12    # "length":I
    :cond_5f
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1174
    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1167
    :cond_7a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1169
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1170
    invoke-direct {v0, v2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1179
    .end local v12    # "length":I
    :cond_a7
    invoke-direct {v0, v3}, Landroid/icu/text/MessagePattern;->skipIdentifier(I)I

    move-result v3

    .line 1180
    sub-int v12, v3, v11

    .line 1181
    .restart local v12    # "length":I
    if-eqz v12, :cond_1bd

    .line 1188
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v9

    if-eqz v9, :cond_13a

    const/4 v9, 0x6

    if-ne v12, v9, :cond_13a

    iget-object v9, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_13a

    iget-object v9, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1189
    const-string v10, "offset:"

    const/4 v15, 0x7

    invoke-virtual {v9, v11, v10, v8, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_13a

    .line 1192
    if-eqz v4, :cond_11d

    .line 1198
    add-int/lit8 v7, v3, 0x1

    invoke-direct {v0, v7}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v7

    .line 1199
    .local v7, "valueIndex":I
    invoke-direct {v0, v7}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    move-result v3

    .line 1200
    if-eq v3, v7, :cond_100

    .line 1204
    sub-int v9, v3, v7

    if-gt v9, v14, :cond_e3

    .line 1208
    invoke-direct {v0, v7, v3, v8}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    .line 1209
    const/4 v4, 0x0

    .line 1210
    goto/16 :goto_c

    .line 1205
    :cond_e3
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Plural offset value too long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1206
    invoke-direct {v0, v7}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1201
    :cond_100
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing value for plural \'offset:\' "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1202
    invoke-direct {v0, v2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1193
    .end local v7    # "valueIndex":I
    :cond_11d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Plural argument \'offset:\' (if present) must precede key-message pairs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1195
    invoke-direct {v0, v2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1213
    :cond_13a
    if-gt v12, v14, :cond_1a0

    .line 1217
    sget-object v9, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {v0, v9, v11, v12, v8}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 1218
    iget-object v9, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const-string v10, "other"

    invoke-virtual {v9, v11, v10, v8, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_14c

    .line 1219
    const/4 v5, 0x1

    .line 1225
    .end local v12    # "length":I
    :cond_14c
    :goto_14c
    invoke-direct {v0, v3}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v3

    .line 1226
    iget-object v8, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v3, v8, :cond_16d

    iget-object v8, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_16d

    .line 1232
    add-int/lit8 v8, v1, 0x1

    move-object/from16 v14, p1

    invoke-direct {v0, v3, v7, v8, v14}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    move-result v3

    .line 1233
    const/4 v4, 0x0

    .line 1234
    .end local v6    # "eos":Z
    .end local v11    # "selectorIndex":I
    goto/16 :goto_c

    .line 1226
    .restart local v6    # "eos":Z
    .restart local v11    # "selectorIndex":I
    :cond_16d
    move-object/from16 v14, p1

    .line 1227
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No message fragment after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1229
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " selector: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1230
    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1214
    .restart local v12    # "length":I
    :cond_1a0
    move-object/from16 v14, p1

    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1215
    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1182
    :cond_1bd
    move-object/from16 v14, p1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1184
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1185
    invoke-direct {v0, v2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1146
    .end local v11    # "selectorIndex":I
    .end local v12    # "length":I
    :cond_1ec
    move-object/from16 v14, p1

    .line 1147
    :goto_1ee
    invoke-direct {v0, v1}, Landroid/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    move-result v7

    if-eq v6, v7, :cond_228

    .line 1153
    if-eqz v5, :cond_1f7

    .line 1159
    return v3

    .line 1154
    :cond_1f7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing \'other\' keyword in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1156
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pattern in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1157
    invoke-direct {v0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1148
    :cond_228
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1150
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1151
    invoke-direct {v0, v2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private greylist-max-o parseSimpleStyle(I)I
    .registers 9
    .param p1, "index"    # I

    .line 1051
    move v0, p1

    .line 1052
    .local v0, "start":I
    const/4 v1, 0x0

    .line 1053
    .local v1, "nestedBraces":I
    :goto_2
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_80

    .line 1054
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "index":I
    .local v3, "index":I
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1055
    .local p1, "c":C
    const/16 v2, 0x27

    if-ne p1, v2, :cond_3f

    .line 1058
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1059
    .end local v3    # "index":I
    .local v2, "index":I
    if-ltz v2, :cond_22

    .line 1065
    add-int/lit8 v2, v2, 0x1

    move p1, v2

    goto :goto_7f

    .line 1060
    :cond_22
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quoted literal argument style text reaches to the end of the message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1062
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1066
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_3f
    const/16 v2, 0x7b

    if-ne p1, v2, :cond_47

    .line 1067
    add-int/lit8 v1, v1, 0x1

    move p1, v3

    goto :goto_7f

    .line 1068
    :cond_47
    const/16 v2, 0x7d

    if-ne p1, v2, :cond_7e

    .line 1069
    if-lez v1, :cond_51

    .line 1070
    add-int/lit8 v1, v1, -0x1

    move p1, v3

    goto :goto_7f

    .line 1072
    :cond_51
    add-int/lit8 v3, v3, -0x1

    sub-int v2, v3, v0

    .line 1073
    .local v2, "length":I
    const v4, 0xffff

    if-gt v2, v4, :cond_61

    .line 1077
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v0, v2, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 1078
    return v3

    .line 1074
    :cond_61
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Argument style text too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1075
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1068
    .end local v2    # "length":I
    :cond_7e
    move p1, v3

    .line 1081
    .end local v3    # "index":I
    .local p1, "index":I
    :goto_7f
    goto :goto_2

    .line 1082
    :cond_80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unmatched \'{\' braces in message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1083
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o postParse()V
    .registers 1

    .line 860
    return-void
.end method

.method private greylist-max-o preParse(Ljava/lang/String;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;

    .line 845
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 849
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 850
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    .line 851
    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    .line 852
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 853
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 854
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 856
    :cond_1d
    return-void

    .line 846
    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to parse("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 847
    invoke-static {p1}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") on frozen MessagePattern instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o prefix()Ljava/lang/String;
    .registers 3

    .line 1531
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o prefix(I)Ljava/lang/String;
    .registers 3
    .param p1, "start"    # I

    .line 1527
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o prefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1523
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o prefix(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1503
    .local v0, "prefix":Ljava/lang/StringBuilder;
    const-string v1, "\""

    if-nez p1, :cond_f

    .line 1504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 1506
    :cond_f
    const-string v2, "[at pattern index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    :goto_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    .line 1509
    .local v2, "substringLength":I
    const/16 v3, 0x18

    if-gt v2, v3, :cond_33

    .line 1510
    if-nez p1, :cond_2b

    move-object v3, p0

    goto :goto_2f

    :cond_2b
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 1512
    :cond_33
    add-int/lit8 v3, p1, 0x18

    add-int/lit8 v3, v3, -0x4

    .line 1513
    .local v3, "limit":I
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1515
    add-int/lit8 v3, v3, -0x1

    .line 1517
    :cond_45
    invoke-virtual {v0, p0, p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    .end local v3    # "limit":I
    :goto_4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o skipDouble(I)I
    .registers 4
    .param p1, "index"    # I

    .line 1390
    nop

    :goto_1
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_30

    .line 1391
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1393
    .local v0, "c":C
    const/16 v1, 0x30

    if-ge v0, v1, :cond_1b

    const-string v1, "+-."

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_30

    :cond_1b
    const/16 v1, 0x39

    if-le v0, v1, :cond_2c

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x45

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x221e

    if-eq v0, v1, :cond_2c

    .line 1394
    goto :goto_30

    .line 1396
    :cond_2c
    nop

    .end local v0    # "c":C
    add-int/lit8 p1, p1, 0x1

    .line 1397
    goto :goto_1

    .line 1398
    :cond_30
    :goto_30
    return p1
.end method

.method private greylist-max-o skipIdentifier(I)I
    .registers 3
    .param p1, "index"    # I

    .line 1382
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/PatternProps;->skipIdentifier(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o skipWhiteSpace(I)I
    .registers 3
    .param p1, "index"    # I

    .line 1378
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api validateArgumentName(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 346
    invoke-static {p0}, Landroid/icu/impl/PatternProps;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 347
    const/4 v0, -0x2

    return v0

    .line 349
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/icu/text/MessagePattern;->parseArgNumber(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api autoQuoteApostropheDeep()Ljava/lang/String;
    .registers 7

    .line 376
    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    if-nez v0, :cond_7

    .line 377
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v0

    .line 379
    :cond_7
    const/4 v0, 0x0

    .line 381
    .local v0, "modified":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v1

    .line 382
    .local v1, "count":I
    move v2, v1

    .local v2, "i":I
    :goto_d
    if-lez v2, :cond_40

    .line 384
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    move-object v4, v3

    .local v4, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v5, :cond_3f

    .line 385
    if-nez v0, :cond_33

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    :cond_33
    invoke-static {v4}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgetindex(Landroid/icu/text/MessagePattern$Part;)I

    move-result v3

    invoke-static {v4}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgetvalue(Landroid/icu/text/MessagePattern$Part;)S

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 390
    .end local v4    # "part":Landroid/icu/text/MessagePattern$Part;
    :cond_3f
    goto :goto_d

    .line 391
    .end local v2    # "i":I
    :cond_40
    if-nez v0, :cond_45

    .line 392
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v2

    .line 394
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api clear()V
    .registers 3

    .line 238
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    .line 244
    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    .line 245
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    .line 247
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    :cond_1e
    return-void

    .line 239
    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to clear() a frozen MessagePattern instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api clearPatternAndSetApostropheMode(Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 257
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->clear()V

    .line 258
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 259
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 797
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 798
    return-object p0

    .line 800
    :cond_7
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->cloneAsThawed()Landroid/icu/text/MessagePattern;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/text/MessagePattern;
    .registers 3

    .line 813
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_23

    .line 816
    .local v0, "newMsg":Landroid/icu/text/MessagePattern;
    nop

    .line 817
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 818
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    .line 819
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    .line 821
    :cond_1f
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/text/MessagePattern;->frozen:Z

    .line 822
    return-object v0

    .line 814
    .end local v0    # "newMsg":Landroid/icu/text/MessagePattern;
    :catch_23
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 82
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->cloneAsThawed()Landroid/icu/text/MessagePattern;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api countParts()I
    .registers 2

    .line 404
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 267
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 268
    return v0

    .line 270
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3f

    .line 273
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/icu/text/MessagePattern;

    .line 274
    .local v2, "o":Landroid/icu/text/MessagePattern;
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    iget-object v4, v2, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 275
    invoke-virtual {v3, v4}, Landroid/icu/text/MessagePattern$ApostropheMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-nez v3, :cond_28

    iget-object v3, v2, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-nez v3, :cond_3d

    goto :goto_32

    :cond_28
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 276
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    :goto_32
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    .line 274
    :goto_3e
    return v0

    .line 271
    .end local v2    # "o":Landroid/icu/text/MessagePattern;
    :cond_3f
    :goto_3f
    return v1
.end method

.method public whitelist test-api freeze()Landroid/icu/text/MessagePattern;
    .registers 2

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->frozen:Z

    .line 832
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 82
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->freeze()Landroid/icu/text/MessagePattern;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;
    .registers 2

    .line 293
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    return-object v0
.end method

.method public whitelist test-api getLimitPartIndex(I)I
    .registers 3
    .param p1, "start"    # I

    .line 507
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgetlimitPartIndex(Landroid/icu/text/MessagePattern$Part;)I

    move-result v0

    .line 508
    .local v0, "limit":I
    if-ge v0, p1, :cond_f

    .line 509
    return p1

    .line 511
    :cond_f
    return v0
.end method

.method public whitelist test-api getNumericValue(Landroid/icu/text/MessagePattern$Part;)D
    .registers 5
    .param p1, "part"    # Landroid/icu/text/MessagePattern$Part;

    .line 466
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgettype(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 467
    .local v0, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_e

    .line 468
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgetvalue(Landroid/icu/text/MessagePattern$Part;)S

    move-result v1

    int-to-double v1, v1

    return-wide v1

    .line 469
    :cond_e
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_23

    .line 470
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgetvalue(Landroid/icu/text/MessagePattern$Part;)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 472
    :cond_23
    const-wide v1, -0x3e6290cbac000000L    # -1.23456789E8

    return-wide v1
.end method

.method public whitelist test-api getPart(I)Landroid/icu/text/MessagePattern$Part;
    .registers 3
    .param p1, "i"    # I

    .line 414
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    return-object v0
.end method

.method public whitelist test-api getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;
    .registers 3
    .param p1, "i"    # I

    .line 425
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgettype(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPatternIndex(I)I
    .registers 3
    .param p1, "partIndex"    # I

    .line 436
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgetindex(Landroid/icu/text/MessagePattern$Part;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getPatternString()Ljava/lang/String;
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPluralOffset(I)D
    .registers 5
    .param p1, "pluralStart"    # I

    .line 490
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    .line 491
    .local v0, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgettype(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 492
    invoke-virtual {p0, v0}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v1

    return-wide v1

    .line 494
    :cond_17
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public whitelist test-api getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;
    .registers 5
    .param p1, "part"    # Landroid/icu/text/MessagePattern$Part;

    .line 446
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgetindex(Landroid/icu/text/MessagePattern$Part;)I

    move-result v0

    .line 447
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgetlength(Landroid/icu/text/MessagePattern$Part;)C

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hasNamedArguments()Z
    .registers 2

    .line 316
    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    return v0
.end method

.method public whitelist test-api hasNumberedArguments()Z
    .registers 2

    .line 324
    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 286
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$ApostropheMode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 841
    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->frozen:Z

    return v0
.end method

.method greylist-max-o jdkAposMode()Z
    .registers 3

    .line 301
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    sget-object v1, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 178
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    invoke-direct {p0, v0, v0, v0, v1}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    .line 180
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    .line 181
    return-object p0
.end method

.method public whitelist test-api parseChoiceStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/icu/text/MessagePattern;->parseChoiceStyle(II)I

    .line 196
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    .line 197
    return-object p0
.end method

.method public whitelist test-api parsePluralStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 210
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 211
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    .line 212
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    .line 213
    return-object p0
.end method

.method public whitelist test-api parseSelectStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 226
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 227
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    .line 228
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    .line 229
    return-object p0
.end method

.method public whitelist test-api partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z
    .registers 7
    .param p1, "part"    # Landroid/icu/text/MessagePattern$Part;
    .param p2, "s"    # Ljava/lang/String;

    .line 457
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgetlength(Landroid/icu/text/MessagePattern$Part;)C

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgetindex(Landroid/icu/text/MessagePattern$Part;)I

    move-result v1

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-$$Nest$fgetlength(Landroid/icu/text/MessagePattern$Part;)C

    move-result v3

    invoke-virtual {v0, v1, p2, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 332
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v0
.end method
