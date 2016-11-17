.class Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
.super Ljava/lang/Object;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySizeConstraint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    }
.end annotation


# static fields
.field private static final synthetic -sun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues:[I


# instance fields
.field private maxSize:I

.field private minSize:I

.field private prohibitedSize:I


# direct methods
.method private static synthetic -getsun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->values()[Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@10
    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@19
    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@22
    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@2b
    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@34
    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@3d
    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;I)V
    .locals 5
    .param p1, "operator"    # Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const v3, 0x7fffffff

    #@4
    const/4 v0, 0x0

    #@5
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 403
    iput v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    #@a
    .line 406
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-getsun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues()[I

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    #@11
    move-result v2

    #@12
    aget v1, v1, v2

    #@14
    packed-switch v1, :pswitch_data_0

    #@17
    .line 434
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    #@19
    .line 435
    iput v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    #@1b
    .line 405
    :goto_0
    return-void

    #@1c
    .line 408
    :pswitch_0
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    #@1e
    .line 409
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    #@20
    .line 410
    iput p2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    #@22
    goto :goto_0

    #@23
    .line 413
    :pswitch_1
    iput p2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    #@25
    .line 414
    iput p2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    #@27
    goto :goto_0

    #@28
    .line 417
    :pswitch_2
    iput p2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    #@2a
    .line 418
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    #@2c
    goto :goto_0

    #@2d
    .line 421
    :pswitch_3
    add-int/lit8 v0, p2, 0x1

    #@2f
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    #@31
    .line 422
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    #@33
    goto :goto_0

    #@34
    .line 425
    :pswitch_4
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    #@36
    .line 426
    iput p2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    #@38
    goto :goto_0

    #@39
    .line 429
    :pswitch_5
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    #@3b
    .line 430
    const/4 v1, 0x1

    #@3c
    if-le p2, v1, :cond_0

    #@3e
    add-int/lit8 v0, p2, -0x1

    #@40
    :cond_0
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    #@42
    goto :goto_0

    #@43
    .line 406
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public disables(Ljava/security/Key;)Z
    .locals 4
    .param p1, "key"    # Ljava/security/Key;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 441
    invoke-static {p1}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    #@5
    move-result v0

    #@6
    .line 443
    .local v0, "size":I
    if-nez v0, :cond_0

    #@8
    .line 444
    return v1

    #@9
    .line 445
    :cond_0
    if-lez v0, :cond_3

    #@b
    .line 446
    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    #@d
    if-lt v0, v3, :cond_1

    #@f
    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    #@11
    if-le v0, v3, :cond_2

    #@13
    :cond_1
    :goto_0
    return v1

    #@14
    .line 447
    :cond_2
    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    #@16
    if-eq v3, v0, :cond_1

    #@18
    move v1, v2

    #@19
    goto :goto_0

    #@1a
    .line 451
    :cond_3
    return v2
.end method
