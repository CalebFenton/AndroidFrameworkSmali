.class public Landroid/icu/impl/FormattedStringBuilder;
.super Ljava/lang/Object;
.source "FormattedStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/FormattedStringBuilder$FieldWrapper;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field public static final blacklist EMPTY:Landroid/icu/impl/FormattedStringBuilder;

.field private static final blacklist fieldToDebugChar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist appendOffset:I

.field blacklist appendableField:Ljava/lang/Object;

.field blacklist chars:[C

.field blacklist fields:[Ljava/lang/Object;

.field blacklist length:I

.field blacklist zero:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    nop

    .line 50
    new-instance v0, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    sput-object v0, Landroid/icu/impl/FormattedStringBuilder;->EMPTY:Landroid/icu/impl/FormattedStringBuilder;

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    .line 452
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x2030

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->MEASURE_UNIT:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->COMPACT:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Landroid/icu/impl/FormattedStringBuilder;-><init>(I)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/FormattedStringBuilder;->appendOffset:I

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    .line 68
    new-array v1, p1, [C

    iput-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    .line 69
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    .line 70
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    .line 71
    iput v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/FormattedStringBuilder;)V
    .registers 3
    .param p1, "source"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/FormattedStringBuilder;->appendOffset:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, p1}, Landroid/icu/impl/FormattedStringBuilder;->copyFrom(Landroid/icu/impl/FormattedStringBuilder;)V

    .line 76
    return-void
.end method

.method private blacklist getCapacity()I
    .registers 2

    .line 414
    iget-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    array-length v0, v0

    return v0
.end method

.method private blacklist prepareForInsert(II)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "count"    # I

    .line 326
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 327
    iget p1, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 329
    :cond_5
    if-nez p1, :cond_19

    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr v0, p2

    if-ltz v0, :cond_19

    .line 331
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    .line 332
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 333
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    return v0

    .line 334
    :cond_19
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    if-ne p1, v0, :cond_35

    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-direct {p0}, Landroid/icu/impl/FormattedStringBuilder;->getCapacity()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 336
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 337
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    .line 340
    :cond_35
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/FormattedStringBuilder;->prepareForInsertHelper(II)I

    move-result v0

    return v0
.end method

.method private blacklist prepareForInsertHelper(II)I
    .registers 14
    .param p1, "index"    # I
    .param p2, "count"    # I

    .line 347
    invoke-direct {p0}, Landroid/icu/impl/FormattedStringBuilder;->getCapacity()I

    move-result v0

    .line 348
    .local v0, "oldCapacity":I
    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    .line 349
    .local v1, "oldZero":I
    iget-object v2, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    .line 350
    .local v2, "oldChars":[C
    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    .line 351
    .local v3, "oldFields":[Ljava/lang/Object;
    iget v4, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v4, p2

    if-le v4, v0, :cond_48

    .line 352
    iget v4, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x2

    .line 353
    .local v4, "newCapacity":I
    div-int/lit8 v5, v4, 0x2

    iget v6, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v6, p2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 355
    .local v5, "newZero":I
    new-array v6, v4, [C

    .line 356
    .local v6, "newChars":[C
    new-array v7, v4, [Ljava/lang/Object;

    .line 360
    .local v7, "newFields":[Ljava/lang/Object;
    invoke-static {v2, v1, v6, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    add-int v8, v1, p1

    add-int v9, v5, p1

    add-int/2addr v9, p2

    iget v10, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v10, p1

    invoke-static {v2, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    invoke-static {v3, v1, v7, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    add-int v8, v1, p1

    add-int v9, v5, p1

    add-int/2addr v9, p2

    iget v10, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v10, p1

    invoke-static {v3, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iput-object v6, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    .line 374
    iput-object v7, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    .line 375
    iput v5, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    .line 376
    iget v8, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v8, p2

    iput v8, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 377
    .end local v4    # "newCapacity":I
    .end local v5    # "newZero":I
    .end local v6    # "newChars":[C
    .end local v7    # "newFields":[Ljava/lang/Object;
    goto :goto_77

    .line 378
    :cond_48
    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v5, p2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 382
    .local v4, "newZero":I
    iget v5, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    invoke-static {v2, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    add-int v5, v4, p1

    add-int v6, v4, p1

    add-int/2addr v6, p2

    iget v7, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v7, p1

    invoke-static {v2, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iget v5, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    invoke-static {v3, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    add-int v5, v4, p1

    add-int v6, v4, p1

    add-int/2addr v6, p2

    iget v7, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v7, p1

    invoke-static {v3, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    iput v4, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    .line 396
    iget v5, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v5, p2

    iput v5, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 398
    .end local v4    # "newZero":I
    :goto_77
    iget v4, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v4, p1

    return v4
.end method

.method private blacklist remove(II)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "count"    # I

    .line 406
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v0, p1

    .line 407
    .local v0, "position":I
    iget-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    add-int v2, v0, p2

    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    iget v4, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v4, p1

    sub-int/2addr v4, p2

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    iget-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int v2, v0, p2

    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    iget v4, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v4, p1

    sub-int/2addr v4, p2

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v1, p2

    iput v1, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 410
    return v0
.end method

.method public static blacklist unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;
    .registers 4
    .param p0, "field"    # Ljava/lang/Object;

    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_4
    instance-of v0, p0, Landroid/icu/impl/FormattedStringBuilder$FieldWrapper;

    if-eqz v0, :cond_10

    .line 41
    move-object v0, p0

    check-cast v0, Landroid/icu/impl/FormattedStringBuilder$FieldWrapper;

    invoke-interface {v0}, Landroid/icu/impl/FormattedStringBuilder$FieldWrapper;->unwrap()Ljava/text/Format$Field;

    move-result-object v0

    return-object v0

    .line 42
    :cond_10
    instance-of v0, p0, Ljava/text/Format$Field;

    if-eqz v0, :cond_18

    .line 43
    move-object v0, p0

    check-cast v0, Ljava/text/Format$Field;

    return-object v0

    .line 45
    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public blacklist append(Landroid/icu/impl/FormattedStringBuilder;)I
    .registers 4
    .param p1, "other"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 291
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILandroid/icu/impl/FormattedStringBuilder;)I

    move-result v0

    return v0
.end method

.method public blacklist append(Ljava/lang/CharSequence;Ljava/lang/Object;)I
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "field"    # Ljava/lang/Object;

    .line 186
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist append([C[Ljava/lang/Object;)I
    .registers 5
    .param p1, "chars"    # [C
    .param p2, "fields"    # [Ljava/lang/Object;

    .line 263
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/impl/FormattedStringBuilder;->insert(I[C[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 4
    .param p1, "c"    # C

    .line 541
    nop

    .line 542
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Landroid/icu/impl/FormattedStringBuilder;->insertChar16(ICLjava/lang/Object;)I

    .line 543
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 4
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 519
    nop

    .line 520
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    .line 521
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 12
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 530
    nop

    .line 531
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int v3, v0, v1

    iget-object v7, p0, Landroid/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "csq":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .local v4, "csq":Ljava/lang/CharSequence;
    .local v5, "start":I
    .local v6, "end":I
    invoke-virtual/range {v2 .. v7}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    .line 532
    return-object v2
.end method

.method public blacklist appendChar16(CLjava/lang/Object;)I
    .registers 5
    .param p1, "codeUnit"    # C
    .param p2, "field"    # Ljava/lang/Object;

    .line 145
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/impl/FormattedStringBuilder;->insertChar16(ICLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist appendCodePoint(ILjava/lang/Object;)I
    .registers 5
    .param p1, "codePoint"    # I
    .param p2, "field"    # Ljava/lang/Object;

    .line 162
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api charAt(I)C
    .registers 4
    .param p1, "index"    # I

    .line 96
    nop

    .line 97
    nop

    .line 98
    iget-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public blacklist clear()Landroid/icu/impl/FormattedStringBuilder;
    .registers 2

    .line 130
    invoke-direct {p0}, Landroid/icu/impl/FormattedStringBuilder;->getCapacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 132
    return-object p0
.end method

.method public blacklist codePointAt(I)I
    .registers 6
    .param p1, "index"    # I

    .line 122
    iget-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v3, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public blacklist codePointBefore(I)I
    .registers 5
    .param p1, "index"    # I

    .line 126
    iget-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointBefore([CII)I

    move-result v0

    return v0
.end method

.method public blacklist codePointCount()I
    .registers 3

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/FormattedStringBuilder;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public blacklist contentEquals(Landroid/icu/impl/FormattedStringBuilder;)Z
    .registers 6
    .param p1, "other"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 574
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    iget v1, p1, Landroid/icu/impl/FormattedStringBuilder;->length:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 575
    return v2

    .line 576
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    if-ge v0, v1, :cond_2e

    .line 577
    invoke-virtual {p0, v0}, Landroid/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_18

    .line 578
    return v2

    .line 580
    :cond_18
    invoke-virtual {p0, v0}, Landroid/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object v3

    if-eq v1, v3, :cond_2b

    .line 581
    return v2

    .line 576
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 584
    .end local v0    # "i":I
    :cond_2e
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist contentEquals([C[Ljava/lang/Object;)Z
    .registers 7
    .param p1, "chars"    # [C
    .param p2, "fields"    # [Ljava/lang/Object;

    .line 553
    array-length v0, p1

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    .line 554
    return v2

    .line 555
    :cond_7
    array-length v0, p2

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    if-eq v0, v1, :cond_d

    .line 556
    return v2

    .line 557
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    if-ge v0, v1, :cond_35

    .line 558
    iget-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    iget v3, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v3, v0

    aget-char v1, v1, v3

    aget-char v3, p1, v0

    if-eq v1, v3, :cond_1e

    .line 559
    return v2

    .line 561
    :cond_1e
    iget-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    iget v3, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v3, v0

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object v1

    aget-object v3, p2, v0

    invoke-static {v3}, Landroid/icu/impl/FormattedStringBuilder;->unwrapField(Ljava/lang/Object;)Ljava/text/Format$Field;

    move-result-object v3

    if-eq v1, v3, :cond_32

    .line 562
    return v2

    .line 557
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 565
    .end local v0    # "i":I
    :cond_35
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist copyFrom(Landroid/icu/impl/FormattedStringBuilder;)V
    .registers 4
    .param p1, "source"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 79
    iget-object v0, p1, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    iget-object v1, p1, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    .line 80
    iget-object v0, p1, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    iget-object v1, p1, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    .line 81
    iget v0, p1, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iput v0, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    .line 82
    iget v0, p1, Landroid/icu/impl/FormattedStringBuilder;->length:I

    iput v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 83
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 594
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Don\'t call #hashCode() or #equals() on a mutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist fieldAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I

    .line 102
    nop

    .line 103
    nop

    .line 104
    iget-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist getFirstCodePoint()I
    .registers 5

    .line 108
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    if-nez v0, :cond_6

    .line 109
    const/4 v0, -0x1

    return v0

    .line 111
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v2, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v3, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public blacklist getLastCodePoint()I
    .registers 4

    .line 115
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    if-nez v0, :cond_6

    .line 116
    const/4 v0, -0x1

    return v0

    .line 118
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v2, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointBefore([CII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 589
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Don\'t call #hashCode() or #equals() on a mutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist insert(ILandroid/icu/impl/FormattedStringBuilder;)I
    .registers 9
    .param p1, "index"    # I
    .param p2, "other"    # Landroid/icu/impl/FormattedStringBuilder;

    .line 300
    if-eq p0, p2, :cond_27

    .line 303
    iget v0, p2, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 304
    .local v0, "count":I
    if-nez v0, :cond_8

    .line 306
    const/4 v1, 0x0

    return v1

    .line 308
    :cond_8
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result v1

    .line 309
    .local v1, "position":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_26

    .line 310
    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    add-int v4, v1, v2

    invoke-virtual {p2, v2}, Landroid/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 311
    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int v4, v1, v2

    invoke-virtual {p2, v2}, Landroid/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 313
    .end local v2    # "i":I
    :cond_26
    return v0

    .line 301
    .end local v0    # "count":I
    .end local v1    # "position":I
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot call insert/append on myself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I
    .registers 12
    .param p1, "index"    # I
    .param p2, "sequence"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "field"    # Ljava/lang/Object;

    .line 214
    sub-int v0, p4, p3

    .line 215
    .local v0, "count":I
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result v1

    .line 216
    .local v1, "position":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1e

    .line 217
    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    add-int v4, v1, v2

    add-int v5, p3, v2

    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 218
    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int v4, v1, v2

    aput-object p5, v3, v4

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 220
    .end local v2    # "i":I
    :cond_1e
    return v0
.end method

.method public blacklist insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I
    .registers 11
    .param p1, "index"    # I
    .param p2, "sequence"    # Ljava/lang/CharSequence;
    .param p3, "field"    # Ljava/lang/Object;

    .line 195
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 197
    return v1

    .line 198
    :cond_8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    .line 201
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v0

    return v0

    .line 203
    :cond_18
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p3

    .end local p1    # "index":I
    .end local p2    # "sequence":Ljava/lang/CharSequence;
    .end local p3    # "field":Ljava/lang/Object;
    .local v2, "index":I
    .local v3, "sequence":Ljava/lang/CharSequence;
    .local v6, "field":Ljava/lang/Object;
    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public blacklist insert(I[C[Ljava/lang/Object;)I
    .registers 10
    .param p1, "index"    # I
    .param p2, "chars"    # [C
    .param p3, "fields"    # [Ljava/lang/Object;

    .line 273
    nop

    .line 274
    array-length v0, p2

    .line 275
    .local v0, "count":I
    if-nez v0, :cond_6

    .line 276
    const/4 v1, 0x0

    return v1

    .line 277
    :cond_6
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result v1

    .line 278
    .local v1, "position":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_24

    .line 279
    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    add-int v4, v1, v2

    aget-char v5, p2, v2

    aput-char v5, v3, v4

    .line 280
    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int v4, v1, v2

    if-nez p3, :cond_1d

    const/4 v5, 0x0

    goto :goto_1f

    :cond_1d
    aget-object v5, p3, v2

    :goto_1f
    aput-object v5, v3, v4

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 282
    .end local v2    # "i":I
    :cond_24
    return v0
.end method

.method public blacklist insertChar16(ICLjava/lang/Object;)I
    .registers 7
    .param p1, "index"    # I
    .param p2, "codeUnit"    # C
    .param p3, "field"    # Ljava/lang/Object;

    .line 149
    const/4 v0, 0x1

    .line 150
    .local v0, "count":I
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result v1

    .line 151
    .local v1, "position":I
    iget-object v2, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    aput-char p2, v2, v1

    .line 152
    iget-object v2, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 153
    return v0
.end method

.method public blacklist insertCodePoint(IILjava/lang/Object;)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "codePoint"    # I
    .param p3, "field"    # Ljava/lang/Object;

    .line 171
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 172
    .local v0, "count":I
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result v1

    .line 173
    .local v1, "position":I
    iget-object v2, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    invoke-static {p2, v2, v1}, Ljava/lang/Character;->toChars(I[CI)I

    .line 174
    iget-object v2, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 175
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    .line 176
    iget-object v2, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aput-object p3, v2, v3

    .line 177
    :cond_1a
    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    return v0
.end method

.method public blacklist setAppendIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .line 141
    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/FormattedStringBuilder;->appendOffset:I

    .line 142
    return-void
.end method

.method public blacklist setAppendableField(Ljava/lang/Object;)V
    .registers 2
    .param p1, "field"    # Ljava/lang/Object;

    .line 510
    iput-object p1, p0, Landroid/icu/impl/FormattedStringBuilder;->appendableField:Ljava/lang/Object;

    .line 511
    return-void
.end method

.method public blacklist splice(IILjava/lang/CharSequence;IILjava/lang/Object;)I
    .registers 15
    .param p1, "startThis"    # I
    .param p2, "endThis"    # I
    .param p3, "sequence"    # Ljava/lang/CharSequence;
    .param p4, "startOther"    # I
    .param p5, "endOther"    # I
    .param p6, "field"    # Ljava/lang/Object;

    .line 238
    sub-int v0, p2, p1

    .line 239
    .local v0, "thisLength":I
    sub-int v1, p5, p4

    .line 240
    .local v1, "otherLength":I
    sub-int v2, v1, v0

    .line 242
    .local v2, "count":I
    if-lez v2, :cond_d

    .line 244
    invoke-direct {p0, p1, v2}, Landroid/icu/impl/FormattedStringBuilder;->prepareForInsert(II)I

    move-result v3

    .local v3, "position":I
    goto :goto_12

    .line 247
    .end local v3    # "position":I
    :cond_d
    neg-int v3, v2

    invoke-direct {p0, p1, v3}, Landroid/icu/impl/FormattedStringBuilder;->remove(II)I

    move-result v3

    .line 249
    .restart local v3    # "position":I
    :goto_12
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v1, :cond_2a

    .line 250
    iget-object v5, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    add-int v6, v3, v4

    add-int v7, p4, v4

    invoke-interface {p3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput-char v7, v5, v6

    .line 251
    iget-object v5, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    add-int v6, v3, v4

    aput-object p6, v5, v6

    .line 249
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 253
    .end local v4    # "i":I
    :cond_2a
    return v2
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    nop

    .line 422
    nop

    .line 423
    nop

    .line 424
    new-instance v0, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v0, p0}, Landroid/icu/impl/FormattedStringBuilder;-><init>(Landroid/icu/impl/FormattedStringBuilder;)V

    .line 425
    .local v0, "other":Landroid/icu/impl/FormattedStringBuilder;
    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    .line 426
    sub-int v1, p2, p1

    iput v1, v0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    .line 427
    return-object v0
.end method

.method public blacklist subString(II)Ljava/lang/String;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 432
    if-ltz p1, :cond_15

    iget v0, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    if-gt p2, v0, :cond_15

    if-lt p2, p1, :cond_15

    .line 435
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    iget v2, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 433
    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public blacklist toCharArray()[C
    .registers 5

    .line 496
    iget-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v2, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v3, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 5

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<FormattedStringBuilder ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    .local v1, "i":I
    :goto_18
    iget v2, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v3, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_4d

    .line 482
    iget-object v2, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_2b

    .line 483
    const/16 v2, 0x6e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 484
    :cond_2b
    sget-object v2, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 485
    sget-object v2, Landroid/icu/impl/FormattedStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    iget-object v3, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 487
    :cond_45
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 490
    .end local v1    # "i":I
    :cond_4d
    const-string v1, "]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toFieldArray()[Ljava/lang/Object;
    .registers 5

    .line 501
    iget-object v0, p0, Landroid/icu/impl/FormattedStringBuilder;->fields:[Ljava/lang/Object;

    iget v1, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v2, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v3, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 446
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/FormattedStringBuilder;->chars:[C

    iget v2, p0, Landroid/icu/impl/FormattedStringBuilder;->zero:I

    iget v3, p0, Landroid/icu/impl/FormattedStringBuilder;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
