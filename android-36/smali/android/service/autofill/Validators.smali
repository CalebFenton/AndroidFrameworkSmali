.class public final Landroid/service/autofill/Validators;
.super Ljava/lang/Object;
.source "Validators.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains static methods only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs whitelist and([Landroid/service/autofill/Validator;)Landroid/service/autofill/Validator;
    .registers 3
    .param p0, "validators"    # [Landroid/service/autofill/Validator;

    .line 43
    new-instance v0, Landroid/service/autofill/RequiredValidators;

    invoke-static {p0}, Landroid/service/autofill/Validators;->getInternalValidators([Landroid/service/autofill/Validator;)[Landroid/service/autofill/InternalValidator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/autofill/RequiredValidators;-><init>([Landroid/service/autofill/InternalValidator;)V

    return-object v0
.end method

.method private static greylist-max-o getInternalValidators([Landroid/service/autofill/Validator;)[Landroid/service/autofill/InternalValidator;
    .registers 6
    .param p0, "validators"    # [Landroid/service/autofill/Validator;

    .line 75
    const-string/jumbo v0, "validators"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 77
    array-length v0, p0

    new-array v0, v0, [Landroid/service/autofill/InternalValidator;

    .line 79
    .local v0, "internals":[Landroid/service/autofill/InternalValidator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_29

    .line 80
    aget-object v2, p0, v1

    instance-of v2, v2, Landroid/service/autofill/InternalValidator;

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, p0, v1

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 80
    const-string v4, "element %d not provided by Android System: %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    aget-object v2, p0, v1

    check-cast v2, Landroid/service/autofill/InternalValidator;

    aput-object v2, v0, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 84
    .end local v1    # "i":I
    :cond_29
    return-object v0
.end method

.method public static whitelist not(Landroid/service/autofill/Validator;)Landroid/service/autofill/Validator;
    .registers 4
    .param p0, "validator"    # Landroid/service/autofill/Validator;

    .line 69
    instance-of v0, p0, Landroid/service/autofill/InternalValidator;

    const-string/jumbo v1, "validator not provided by Android System: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    new-instance v0, Landroid/service/autofill/NegationValidator;

    move-object v1, p0

    check-cast v1, Landroid/service/autofill/InternalValidator;

    invoke-direct {v0, v1}, Landroid/service/autofill/NegationValidator;-><init>(Landroid/service/autofill/InternalValidator;)V

    return-object v0
.end method

.method public static varargs whitelist or([Landroid/service/autofill/Validator;)Landroid/service/autofill/Validator;
    .registers 3
    .param p0, "validators"    # [Landroid/service/autofill/Validator;

    .line 56
    new-instance v0, Landroid/service/autofill/OptionalValidators;

    invoke-static {p0}, Landroid/service/autofill/Validators;->getInternalValidators([Landroid/service/autofill/Validator;)[Landroid/service/autofill/InternalValidator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/autofill/OptionalValidators;-><init>([Landroid/service/autofill/InternalValidator;)V

    return-object v0
.end method
