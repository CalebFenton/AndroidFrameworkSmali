.class Ljava/util/Formatter$Flags;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Flags"
.end annotation


# static fields
.field static final greylist-max-o ALTERNATE:Ljava/util/Formatter$Flags;

.field static final greylist-max-o GROUP:Ljava/util/Formatter$Flags;

.field static final greylist-max-o LEADING_SPACE:Ljava/util/Formatter$Flags;

.field static final greylist-max-o LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

.field static final greylist-max-o NONE:Ljava/util/Formatter$Flags;

.field static final greylist-max-o PARENTHESES:Ljava/util/Formatter$Flags;

.field static final greylist-max-o PLUS:Ljava/util/Formatter$Flags;

.field static final greylist-max-o PREVIOUS:Ljava/util/Formatter$Flags;

.field static final greylist-max-o UPPERCASE:Ljava/util/Formatter$Flags;

.field static final greylist-max-o ZERO_PAD:Ljava/util/Formatter$Flags;


# instance fields
.field private greylist-max-o flags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$madd(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/Formatter$Flags;->add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 4743
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4746
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    .line 4747
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    .line 4748
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    .line 4751
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    .line 4752
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    .line 4753
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4754
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    .line 4755
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    .line 4758
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "f"    # I

    .line 4760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4761
    iput p1, p0, Ljava/util/Formatter$Flags;->flags:I

    .line 4762
    return-void
.end method

.method private greylist-max-o add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .registers 4
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    .line 4777
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Ljava/util/Formatter$Flags;->flags:I

    .line 4778
    return-object p0
.end method

.method private static greylist-max-o parse(C)Ljava/util/Formatter$Flags;
    .registers 3
    .param p0, "c"    # C

    .line 4800
    sparse-switch p0, :sswitch_data_26

    .line 4809
    new-instance v0, Ljava/util/UnknownFormatFlagsException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4808
    :sswitch_d
    sget-object v0, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    goto :goto_24

    .line 4805
    :sswitch_10
    sget-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    goto :goto_24

    .line 4801
    :sswitch_13
    sget-object v0, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    goto :goto_24

    .line 4806
    :sswitch_16
    sget-object v0, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    goto :goto_24

    .line 4803
    :sswitch_19
    sget-object v0, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    goto :goto_24

    .line 4807
    :sswitch_1c
    sget-object v0, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    goto :goto_24

    .line 4802
    :sswitch_1f
    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    goto :goto_24

    .line 4804
    :sswitch_22
    sget-object v0, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    .line 4800
    :goto_24
    return-object v0

    nop

    :sswitch_data_26
    .sparse-switch
        0x20 -> :sswitch_22
        0x23 -> :sswitch_1f
        0x28 -> :sswitch_1c
        0x2b -> :sswitch_19
        0x2c -> :sswitch_16
        0x2d -> :sswitch_13
        0x30 -> :sswitch_10
        0x3c -> :sswitch_d
    .end sparse-switch
.end method

.method public static blacklist parse(Ljava/lang/String;II)Ljava/util/Formatter$Flags;
    .registers 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 4787
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    .line 4788
    .local v0, "f":Ljava/util/Formatter$Flags;
    move v1, p1

    .local v1, "i":I
    :goto_7
    if-ge v1, p2, :cond_27

    .line 4789
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4790
    .local v2, "c":C
    invoke-static {v2}, Ljava/util/Formatter$Flags;->parse(C)Ljava/util/Formatter$Flags;

    move-result-object v3

    .line 4791
    .local v3, "v":Ljava/util/Formatter$Flags;
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 4793
    invoke-direct {v0, v3}, Ljava/util/Formatter$Flags;->add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    .line 4788
    .end local v2    # "c":C
    .end local v3    # "v":Ljava/util/Formatter$Flags;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4792
    .restart local v2    # "c":C
    .restart local v3    # "v":Ljava/util/Formatter$Flags;
    :cond_1d
    new-instance v4, Ljava/util/DuplicateFormatFlagsException;

    invoke-virtual {v3}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/DuplicateFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4795
    .end local v1    # "i":I
    .end local v2    # "c":C
    .end local v3    # "v":Ljava/util/Formatter$Flags;
    :cond_27
    return-object v0
.end method

.method public static greylist-max-o toString(Ljava/util/Formatter$Flags;)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # Ljava/util/Formatter$Flags;

    .line 4815
    invoke-virtual {p0}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o contains(Ljava/util/Formatter$Flags;)Z
    .registers 4
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    .line 4769
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    and-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public greylist-max-o dup()Ljava/util/Formatter$Flags;
    .registers 3

    .line 4773
    new-instance v0, Ljava/util/Formatter$Flags;

    iget v1, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    return-object v0
.end method

.method public greylist-max-o remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .registers 4
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    .line 4782
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/Formatter$Flags;->flags:I

    .line 4783
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4820
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4821
    :cond_12
    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4822
    :cond_1f
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4823
    :cond_2c
    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4824
    :cond_39
    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_46

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4825
    :cond_46
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_53

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4826
    :cond_53
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4827
    :cond_60
    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4828
    :cond_6d
    sget-object v1, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_7a

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4829
    :cond_7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o valueOf()I
    .registers 2

    .line 4765
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    return v0
.end method
