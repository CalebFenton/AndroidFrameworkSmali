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
.field static final greylist-max-o BOOLEAN:C = 'b'

.field static final greylist-max-o BOOLEAN_UPPER:C = 'B'

.field static final greylist-max-o CHARACTER:C = 'c'

.field static final greylist-max-o CHARACTER_UPPER:C = 'C'

.field static final greylist-max-o DATE_TIME:C = 't'

.field static final greylist-max-o DATE_TIME_UPPER:C = 'T'

.field static final greylist-max-o DECIMAL_FLOAT:C = 'f'

.field static final greylist-max-o DECIMAL_INTEGER:C = 'd'

.field static final greylist-max-o GENERAL:C = 'g'

.field static final greylist-max-o GENERAL_UPPER:C = 'G'

.field static final greylist-max-o HASHCODE:C = 'h'

.field static final greylist-max-o HASHCODE_UPPER:C = 'H'

.field static final greylist-max-o HEXADECIMAL_FLOAT:C = 'a'

.field static final greylist-max-o HEXADECIMAL_FLOAT_UPPER:C = 'A'

.field static final greylist-max-o HEXADECIMAL_INTEGER:C = 'x'

.field static final greylist-max-o HEXADECIMAL_INTEGER_UPPER:C = 'X'

.field static final greylist-max-o LINE_SEPARATOR:C = 'n'

.field static final greylist-max-o OCTAL_INTEGER:C = 'o'

.field static final greylist-max-o PERCENT_SIGN:C = '%'

.field static final greylist-max-o SCIENTIFIC:C = 'e'

.field static final greylist-max-o SCIENTIFIC_UPPER:C = 'E'

.field static final greylist-max-o STRING:C = 's'

.field static final greylist-max-o STRING_UPPER:C = 'S'


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 4833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o isCharacter(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4917
    sparse-switch p0, :sswitch_data_8

    .line 4920
    const/4 v0, 0x0

    goto :goto_6

    .line 4919
    :sswitch_5
    const/4 v0, 0x1

    .line 4917
    :goto_6
    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x43 -> :sswitch_5
        0x63 -> :sswitch_5
    .end sparse-switch
.end method

.method static greylist-max-o isFloat(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4937
    sparse-switch p0, :sswitch_data_8

    .line 4945
    const/4 v0, 0x0

    goto :goto_6

    .line 4944
    :sswitch_5
    const/4 v0, 0x1

    .line 4937
    :goto_6
    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x41 -> :sswitch_5
        0x45 -> :sswitch_5
        0x47 -> :sswitch_5
        0x61 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
    .end sparse-switch
.end method

.method static greylist-max-o isGeneral(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4904
    sparse-switch p0, :sswitch_data_8

    .line 4911
    const/4 v0, 0x0

    goto :goto_6

    .line 4910
    :sswitch_5
    const/4 v0, 0x1

    .line 4904
    :goto_6
    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x42 -> :sswitch_5
        0x48 -> :sswitch_5
        0x53 -> :sswitch_5
        0x62 -> :sswitch_5
        0x68 -> :sswitch_5
        0x73 -> :sswitch_5
    .end sparse-switch
.end method

.method static greylist-max-o isInteger(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4926
    sparse-switch p0, :sswitch_data_8

    .line 4931
    const/4 v0, 0x0

    goto :goto_6

    .line 4930
    :sswitch_5
    const/4 v0, 0x1

    .line 4926
    :goto_6
    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x58 -> :sswitch_5
        0x64 -> :sswitch_5
        0x6f -> :sswitch_5
        0x78 -> :sswitch_5
    .end sparse-switch
.end method

.method static greylist-max-o isText(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4951
    sparse-switch p0, :sswitch_data_8

    .line 4953
    const/4 v0, 0x0

    goto :goto_6

    .line 4952
    :sswitch_5
    const/4 v0, 0x1

    .line 4951
    :goto_6
    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x25 -> :sswitch_5
        0x6e -> :sswitch_5
    .end sparse-switch
.end method

.method static greylist-max-o isValid(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4876
    sparse-switch p0, :sswitch_data_8

    .line 4898
    const/4 v0, 0x0

    goto :goto_6

    .line 4897
    :sswitch_5
    const/4 v0, 0x1

    .line 4876
    :goto_6
    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x25 -> :sswitch_5
        0x41 -> :sswitch_5
        0x42 -> :sswitch_5
        0x43 -> :sswitch_5
        0x45 -> :sswitch_5
        0x47 -> :sswitch_5
        0x48 -> :sswitch_5
        0x53 -> :sswitch_5
        0x58 -> :sswitch_5
        0x61 -> :sswitch_5
        0x62 -> :sswitch_5
        0x63 -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x6e -> :sswitch_5
        0x6f -> :sswitch_5
        0x73 -> :sswitch_5
        0x78 -> :sswitch_5
    .end sparse-switch
.end method
