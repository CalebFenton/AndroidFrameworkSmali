.class Ljava/util/Formatter$Conversion;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Conversion"
.end annotation


# static fields
.field static final BOOLEAN:C = 'b'

.field static final BOOLEAN_UPPER:C = 'B'

.field static final CHARACTER:C = 'c'

.field static final CHARACTER_UPPER:C = 'C'

.field static final DATE_TIME:C = 't'

.field static final DATE_TIME_UPPER:C = 'T'

.field static final DECIMAL_FLOAT:C = 'f'

.field static final DECIMAL_INTEGER:C = 'd'

.field static final GENERAL:C = 'g'

.field static final GENERAL_UPPER:C = 'G'

.field static final HASHCODE:C = 'h'

.field static final HASHCODE_UPPER:C = 'H'

.field static final HEXADECIMAL_FLOAT:C = 'a'

.field static final HEXADECIMAL_FLOAT_UPPER:C = 'A'

.field static final HEXADECIMAL_INTEGER:C = 'x'

.field static final HEXADECIMAL_INTEGER_UPPER:C = 'X'

.field static final LINE_SEPARATOR:C = 'n'

.field static final OCTAL_INTEGER:C = 'o'

.field static final PERCENT_SIGN:C = '%'

.field static final SCIENTIFIC:C = 'e'

.field static final SCIENTIFIC_UPPER:C = 'E'

.field static final STRING:C = 's'

.field static final STRING_UPPER:C = 'S'


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 4382
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 4387
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 4385
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 4382
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x63 -> :sswitch_0
    .end sparse-switch
.end method

.method static isFloat(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 4406
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 4416
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 4414
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 4406
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x45 -> :sswitch_0
        0x47 -> :sswitch_0
        0x61 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method static isGeneral(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 4367
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 4376
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 4374
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 4367
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x48 -> :sswitch_0
        0x53 -> :sswitch_0
        0x62 -> :sswitch_0
        0x68 -> :sswitch_0
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method static isInteger(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 4393
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 4400
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 4398
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 4393
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x58 -> :sswitch_0
        0x64 -> :sswitch_0
        0x6f -> :sswitch_0
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method static isText(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 4422
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 4427
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 4425
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 4422
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method static isValid(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 4361
    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isGeneral(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isInteger(C)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isFloat(C)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isText(C)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    .line 4362
    const/16 v0, 0x74

    #@1a
    if-ne p0, v0, :cond_1

    #@1c
    .line 4361
    :cond_0
    const/4 v0, 0x1

    #@1d
    :goto_0
    return v0

    #@1e
    .line 4362
    :cond_1
    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isCharacter(C)Z

    #@21
    move-result v0

    #@22
    goto :goto_0
.end method
