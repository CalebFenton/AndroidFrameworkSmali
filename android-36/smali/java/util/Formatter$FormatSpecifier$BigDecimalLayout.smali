.class Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter$FormatSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDecimalLayout"
.end annotation


# instance fields
.field private greylist-max-o dot:Z

.field private greylist-max-o exp:Ljava/lang/StringBuilder;

.field private greylist-max-o mant:Ljava/lang/StringBuilder;

.field private greylist-max-o scale:I

.field final synthetic blacklist this$1:Ljava/util/Formatter$FormatSpecifier;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V
    .registers 5
    .param p2, "intVal"    # Ljava/math/BigInteger;
    .param p3, "scale"    # I
    .param p4, "form"    # Ljava/util/Formatter$BigDecimalLayoutForm;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 4027
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->this$1:Ljava/util/Formatter$FormatSpecifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4024
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 4028
    invoke-direct {p0, p2, p3, p4}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->layout(Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    .line 4029
    return-void
.end method

.method private greylist-max-o layout(Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V
    .registers 14
    .param p1, "intVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "form"    # Ljava/util/Formatter$BigDecimalLayoutForm;

    .line 4050
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4051
    .local v0, "coeff":Ljava/lang/String;
    iput p2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    .line 4058
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4059
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0xe

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    .line 4061
    const/16 v2, 0x30

    const-string v3, "+00"

    const/16 v4, 0x2e

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p2, :cond_74

    .line 4062
    if-le v1, v6, :cond_62

    .line 4063
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4064
    sget-object v3, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    if-ne p3, v3, :cond_5b

    .line 4065
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4066
    iput-boolean v6, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 4067
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 4068
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 4069
    const/16 v3, 0xa

    if-ge v1, v3, :cond_52

    .line 4070
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_111

    .line 4072
    :cond_52
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_111

    .line 4075
    :cond_5b
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto/16 :goto_111

    .line 4078
    :cond_62
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4079
    sget-object v2, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    if-ne p3, v2, :cond_111

    .line 4080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    goto/16 :goto_111

    .line 4083
    :cond_74
    sget-object v7, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    if-ne p3, v7, :cond_bf

    .line 4086
    if-lt p2, v1, :cond_93

    .line 4088
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const-string v3, "0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4089
    iput-boolean v6, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 4090
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->this$1:Ljava/util/Formatter$FormatSpecifier;

    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    sub-int v4, p2, v1

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$FormatSpecifier;->-$$Nest$mtrailingZeros(Ljava/util/Formatter$FormatSpecifier;Ljava/lang/StringBuilder;I)V

    .line 4091
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_111

    .line 4093
    :cond_93
    if-lez p2, :cond_a9

    .line 4095
    sub-int v2, v1, p2

    .line 4096
    .local v2, "pad":I
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 4097
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4098
    iput-boolean v6, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 4099
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 4100
    .end local v2    # "pad":I
    goto :goto_111

    .line 4102
    :cond_a9
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 4103
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_bc

    .line 4104
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->this$1:Ljava/util/Formatter$FormatSpecifier;

    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    neg-int v4, p2

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$FormatSpecifier;->-$$Nest$mtrailingZeros(Ljava/util/Formatter$FormatSpecifier;Ljava/lang/StringBuilder;I)V

    .line 4106
    :cond_bc
    iput v5, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    goto :goto_111

    .line 4111
    :cond_bf
    iget-object v7, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4112
    if-le v1, v6, :cond_d6

    .line 4113
    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4114
    iput-boolean v6, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 4115
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 4117
    :cond_d6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 4118
    int-to-long v4, p2

    neg-long v4, v4

    add-int/lit8 v6, v1, -0x1

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 4119
    .local v4, "adjusted":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_10c

    .line 4120
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 4122
    .local v8, "abs":J
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    cmp-long v6, v4, v6

    if-gez v6, :cond_f6

    const/16 v6, 0x2d

    goto :goto_f8

    :cond_f6
    const/16 v6, 0x2b

    :goto_f8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4123
    const-wide/16 v6, 0xa

    cmp-long v3, v8, v6

    if-gez v3, :cond_106

    .line 4124
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4126
    :cond_106
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4127
    .end local v8    # "abs":J
    goto :goto_111

    .line 4128
    :cond_10c
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4131
    .end local v4    # "adjusted":J
    :cond_111
    :goto_111
    return-void
.end method


# virtual methods
.method public blacklist exponent()Ljava/lang/StringBuilder;
    .registers 2

    .line 4046
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public greylist-max-o hasDot()Z
    .registers 2

    .line 4032
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    return v0
.end method

.method public blacklist mantissa()Ljava/lang/StringBuilder;
    .registers 2

    .line 4040
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public greylist-max-o scale()I
    .registers 2

    .line 4036
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    return v0
.end method
