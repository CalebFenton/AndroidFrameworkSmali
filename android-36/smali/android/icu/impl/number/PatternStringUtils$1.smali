.class synthetic Landroid/icu/impl/number/PatternStringUtils$1;
.super Ljava/lang/Object;
.source "PatternStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/PatternStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$android$icu$impl$number$Modifier$Signum:[I

.field static final synthetic blacklist $SwitchMap$android$icu$impl$number$Padder$PadPosition:[I

.field static final synthetic blacklist $SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 526
    invoke-static {}, Landroid/icu/number/NumberFormatter$SignDisplay;->values()[Landroid/icu/number/NumberFormatter$SignDisplay;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v2, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v2}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v3, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v3}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v4, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v4}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    const/4 v3, 0x4

    :try_start_31
    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v5, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v5}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v4

    :goto_3d
    :try_start_3d
    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v5, Landroid/icu/number/NumberFormatter$SignDisplay;->EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v5}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v4

    :goto_4a
    :try_start_4a
    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v5, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v5}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v4

    :goto_57
    :try_start_57
    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v5, Landroid/icu/number/NumberFormatter$SignDisplay;->NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v5}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v4

    :goto_64
    :try_start_64
    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v5, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v5}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v4

    :goto_72
    :try_start_72
    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v5, Landroid/icu/number/NumberFormatter$SignDisplay;->NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v5}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v5

    const/16 v6, 0x9

    aput v6, v4, v5
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7e} :catch_7f

    goto :goto_80

    :catch_7f
    move-exception v4

    .line 529
    :goto_80
    invoke-static {}, Landroid/icu/impl/number/Modifier$Signum;->values()[Landroid/icu/impl/number/Modifier$Signum;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Modifier$Signum:[I

    :try_start_89
    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Modifier$Signum:[I

    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->NEG:Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {v5}, Landroid/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_94

    goto :goto_95

    :catch_94
    move-exception v4

    :goto_95
    :try_start_95
    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Modifier$Signum:[I

    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->NEG_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {v5}, Landroid/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9f} :catch_a0

    goto :goto_a1

    :catch_a0
    move-exception v4

    :goto_a1
    :try_start_a1
    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Modifier$Signum:[I

    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->POS_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {v5}, Landroid/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ab} :catch_ac

    goto :goto_ad

    :catch_ac
    move-exception v4

    :goto_ad
    :try_start_ad
    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Modifier$Signum:[I

    sget-object v5, Landroid/icu/impl/number/Modifier$Signum;->POS:Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {v5}, Landroid/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b7} :catch_b8

    goto :goto_b9

    :catch_b8
    move-exception v4

    .line 203
    :goto_b9
    invoke-static {}, Landroid/icu/impl/number/Padder$PadPosition;->values()[Landroid/icu/impl/number/Padder$PadPosition;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Padder$PadPosition:[I

    :try_start_c2
    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Padder$PadPosition:[I

    sget-object v5, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-virtual {v5}, Landroid/icu/impl/number/Padder$PadPosition;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_cc} :catch_cd

    goto :goto_ce

    :catch_cd
    move-exception v0

    :goto_ce
    :try_start_ce
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Padder$PadPosition:[I

    sget-object v4, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-virtual {v4}, Landroid/icu/impl/number/Padder$PadPosition;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_d8} :catch_d9

    goto :goto_da

    :catch_d9
    move-exception v0

    :goto_da
    :try_start_da
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Padder$PadPosition:[I

    sget-object v1, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-virtual {v1}, Landroid/icu/impl/number/Padder$PadPosition;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e4} :catch_e5

    goto :goto_e6

    :catch_e5
    move-exception v0

    :goto_e6
    :try_start_e6
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Padder$PadPosition:[I

    sget-object v1, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-virtual {v1}, Landroid/icu/impl/number/Padder$PadPosition;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f0} :catch_f1

    goto :goto_f2

    :catch_f1
    move-exception v0

    :goto_f2
    return-void
.end method
