.class public Lcom/android/internal/widget/PasswordValidationError;
.super Ljava/lang/Object;
.source "PasswordValidationError.java"


# static fields
.field public static final blacklist CONTAINS_INVALID_CHARACTERS:I = 0x2

.field public static final blacklist CONTAINS_SEQUENCE:I = 0x6

.field public static final blacklist NOT_ENOUGH_DIGITS:I = 0xa

.field public static final blacklist NOT_ENOUGH_LETTERS:I = 0x7

.field public static final blacklist NOT_ENOUGH_LOWER_CASE:I = 0x9

.field public static final blacklist NOT_ENOUGH_NON_DIGITS:I = 0xd

.field public static final blacklist NOT_ENOUGH_NON_LETTER:I = 0xc

.field public static final blacklist NOT_ENOUGH_SYMBOLS:I = 0xb

.field public static final blacklist NOT_ENOUGH_UPPER_CASE:I = 0x8

.field public static final blacklist RECENTLY_USED:I = 0xe

.field public static final blacklist TOO_LONG:I = 0x5

.field public static final blacklist TOO_SHORT:I = 0x3

.field public static final blacklist TOO_SHORT_WHEN_ALL_NUMERIC:I = 0x4

.field public static final blacklist WEAK_CREDENTIAL_TYPE:I = 0x1


# instance fields
.field public final blacklist errorCode:I

.field public final blacklist requirement:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "requirement"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    .line 49
    iput p2, p0, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    .line 50
    return-void
.end method

.method private static blacklist errorCodeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "error"    # I

    .line 61
    const-string v0, "Password too short"

    packed-switch p0, :pswitch_data_40

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_19
    const-string v0, "Pin or password was recently used"

    return-object v0

    .line 74
    :pswitch_1c
    const-string v0, "Too few non-numeric characters"

    return-object v0

    .line 73
    :pswitch_1f
    const-string v0, "Too few non-letter characters"

    return-object v0

    .line 72
    :pswitch_22
    const-string v0, "Too few symbols"

    return-object v0

    .line 71
    :pswitch_25
    const-string v0, "Too few numeric characters"

    return-object v0

    .line 70
    :pswitch_28
    const-string v0, "Too few lower case letters"

    return-object v0

    .line 69
    :pswitch_2b
    const-string v0, "Too few upper case letters"

    return-object v0

    .line 68
    :pswitch_2e
    const-string v0, "Too few letters"

    return-object v0

    .line 67
    :pswitch_31
    const-string v0, "Sequence too long"

    return-object v0

    .line 66
    :pswitch_34
    const-string v0, "Password too long"

    return-object v0

    .line 65
    :pswitch_37
    return-object v0

    .line 64
    :pswitch_38
    return-object v0

    .line 63
    :pswitch_39
    const-string v0, "Contains an invalid character"

    return-object v0

    .line 62
    :pswitch_3c
    const-string v0, "Weak credential type"

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    invoke-static {v1}, Lcom/android/internal/widget/PasswordValidationError;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    if-lez v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_29
    const-string v1, ""

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
