.class final Landroid/service/autofill/AutofillServiceHelper;
.super Ljava/lang/Object;
.source "AutofillServiceHelper.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains static members only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;
    .registers 5
    .param p0, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 28
    if-eqz p0, :cond_7

    array-length v0, p0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string/jumbo v1, "must have at least one id"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v1, p0

    if-ge v0, v1, :cond_39

    .line 31
    aget-object v1, p0, v0

    if-eqz v1, :cond_19

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 32
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ids["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] must not be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    .end local v0    # "i":I
    :cond_39
    return-object p0
.end method
