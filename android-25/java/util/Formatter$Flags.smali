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
.field static final ALTERNATE:Ljava/util/Formatter$Flags;

.field static final GROUP:Ljava/util/Formatter$Flags;

.field static final LEADING_SPACE:Ljava/util/Formatter$Flags;

.field static final LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

.field static final NONE:Ljava/util/Formatter$Flags;

.field static final PARENTHESES:Ljava/util/Formatter$Flags;

.field static final PLUS:Ljava/util/Formatter$Flags;

.field static final PREVIOUS:Ljava/util/Formatter$Flags;

.field static final UPPERCASE:Ljava/util/Formatter$Flags;

.field static final ZERO_PAD:Ljava/util/Formatter$Flags;


# instance fields
.field private flags:I


# direct methods
.method static synthetic -wrap0(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .locals 1
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/Formatter$Flags;->add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 4227
    new-instance v0, Ljava/util/Formatter$Flags;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@6
    sput-object v0, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    #@8
    .line 4230
    new-instance v0, Ljava/util/Formatter$Flags;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@e
    sput-object v0, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    #@10
    .line 4231
    new-instance v0, Ljava/util/Formatter$Flags;

    #@12
    const/4 v1, 0x2

    #@13
    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@16
    sput-object v0, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@18
    .line 4232
    new-instance v0, Ljava/util/Formatter$Flags;

    #@1a
    const/4 v1, 0x4

    #@1b
    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@1e
    sput-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@20
    .line 4235
    new-instance v0, Ljava/util/Formatter$Flags;

    #@22
    const/16 v1, 0x8

    #@24
    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@27
    sput-object v0, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    #@29
    .line 4236
    new-instance v0, Ljava/util/Formatter$Flags;

    #@2b
    const/16 v1, 0x10

    #@2d
    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@30
    sput-object v0, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    #@32
    .line 4237
    new-instance v0, Ljava/util/Formatter$Flags;

    #@34
    const/16 v1, 0x20

    #@36
    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@39
    sput-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@3b
    .line 4238
    new-instance v0, Ljava/util/Formatter$Flags;

    #@3d
    const/16 v1, 0x40

    #@3f
    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@42
    sput-object v0, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@44
    .line 4239
    new-instance v0, Ljava/util/Formatter$Flags;

    #@46
    const/16 v1, 0x80

    #@48
    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@4b
    sput-object v0, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@4d
    .line 4242
    new-instance v0, Ljava/util/Formatter$Flags;

    #@4f
    const/16 v1, 0x100

    #@51
    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@54
    sput-object v0, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    #@56
    .line 4224
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "f"    # I

    #@0
    .prologue
    .line 4244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4245
    iput p1, p0, Ljava/util/Formatter$Flags;->flags:I

    #@5
    .line 4244
    return-void
.end method

.method private add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .locals 2
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    #@0
    .prologue
    .line 4261
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    #@2
    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    #@5
    move-result v1

    #@6
    or-int/2addr v0, v1

    #@7
    iput v0, p0, Ljava/util/Formatter$Flags;->flags:I

    #@9
    .line 4262
    return-object p0
.end method

.method private static parse(C)Ljava/util/Formatter$Flags;
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    .line 4284
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 4294
    new-instance v0, Ljava/util/UnknownFormatFlagsException;

    #@5
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/util/UnknownFormatFlagsException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 4285
    :sswitch_0
    sget-object v0, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    #@f
    return-object v0

    #@10
    .line 4286
    :sswitch_1
    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@12
    return-object v0

    #@13
    .line 4287
    :sswitch_2
    sget-object v0, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    #@15
    return-object v0

    #@16
    .line 4288
    :sswitch_3
    sget-object v0, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    #@18
    return-object v0

    #@19
    .line 4289
    :sswitch_4
    sget-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@1b
    return-object v0

    #@1c
    .line 4290
    :sswitch_5
    sget-object v0, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@1e
    return-object v0

    #@1f
    .line 4291
    :sswitch_6
    sget-object v0, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@21
    return-object v0

    #@22
    .line 4292
    :sswitch_7
    sget-object v0, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    #@24
    return-object v0

    #@25
    .line 4284
    nop

    #@26
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_3
        0x23 -> :sswitch_1
        0x28 -> :sswitch_6
        0x2b -> :sswitch_2
        0x2c -> :sswitch_5
        0x2d -> :sswitch_0
        0x30 -> :sswitch_4
        0x3c -> :sswitch_7
    .end sparse-switch
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Formatter$Flags;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4271
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    .line 4272
    .local v0, "ca":[C
    new-instance v1, Ljava/util/Formatter$Flags;

    #@6
    const/4 v4, 0x0

    #@7
    invoke-direct {v1, v4}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@a
    .line 4273
    .local v1, "f":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@c
    if-ge v2, v4, :cond_1

    #@e
    .line 4274
    aget-char v4, v0, v2

    #@10
    invoke-static {v4}, Ljava/util/Formatter$Flags;->parse(C)Ljava/util/Formatter$Flags;

    #@13
    move-result-object v3

    #@14
    .line 4275
    .local v3, "v":Ljava/util/Formatter$Flags;
    invoke-virtual {v1, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 4276
    new-instance v4, Ljava/util/DuplicateFormatFlagsException;

    #@1c
    invoke-virtual {v3}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-direct {v4, v5}, Ljava/util/DuplicateFormatFlagsException;-><init>(Ljava/lang/String;)V

    #@23
    throw v4

    #@24
    .line 4277
    :cond_0
    invoke-direct {v1, v3}, Ljava/util/Formatter$Flags;->add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    #@27
    .line 4273
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 4279
    .end local v3    # "v":Ljava/util/Formatter$Flags;
    :cond_1
    return-object v1
.end method

.method public static toString(Ljava/util/Formatter$Flags;)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # Ljava/util/Formatter$Flags;

    #@0
    .prologue
    .line 4300
    invoke-virtual {p0}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/util/Formatter$Flags;)Z
    .locals 2
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    #@0
    .prologue
    .line 4253
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    #@2
    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    #@5
    move-result v1

    #@6
    and-int/2addr v0, v1

    #@7
    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    #@a
    move-result v1

    #@b
    if-ne v0, v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public dup()Ljava/util/Formatter$Flags;
    .locals 2

    #@0
    .prologue
    .line 4257
    new-instance v0, Ljava/util/Formatter$Flags;

    #@2
    iget v1, p0, Ljava/util/Formatter$Flags;->flags:I

    #@4
    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    #@7
    return-object v0
.end method

.method public remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .locals 2
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    #@0
    .prologue
    .line 4266
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    #@2
    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    #@5
    move-result v1

    #@6
    not-int v1, v1

    #@7
    and-int/2addr v0, v1

    #@8
    iput v0, p0, Ljava/util/Formatter$Flags;->flags:I

    #@a
    .line 4267
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 4304
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 4305
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    #@7
    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/16 v1, 0x2d

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    .line 4306
    :cond_0
    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@14
    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    const/16 v1, 0x5e

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 4307
    :cond_1
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@21
    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    const/16 v1, 0x23

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 4308
    :cond_2
    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    #@2e
    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_3

    #@34
    const/16 v1, 0x2b

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    .line 4309
    :cond_3
    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    #@3b
    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_4

    #@41
    const/16 v1, 0x20

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 4310
    :cond_4
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@48
    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_5

    #@4e
    const/16 v1, 0x30

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    .line 4311
    :cond_5
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@55
    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_6

    #@5b
    const/16 v1, 0x2c

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    .line 4312
    :cond_6
    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@62
    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_7

    #@68
    const/16 v1, 0x28

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6d
    .line 4313
    :cond_7
    sget-object v1, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    #@6f
    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_8

    #@75
    const/16 v1, 0x3c

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7a
    .line 4314
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    return-object v1
.end method

.method public valueOf()I
    .locals 1

    #@0
    .prologue
    .line 4249
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    #@2
    return v0
.end method
