.class public final Landroid/view/autofill/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static greylist-max-o sDebug:Z

.field public static greylist-max-o sVerbose:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    .line 31
    sput-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains static members only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o appendRedacted(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 38
    invoke-static {p1}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    return-void
.end method

.method public static greylist-max-o appendRedacted(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "values"    # [Ljava/lang/String;

    .line 53
    if-nez p1, :cond_8

    .line 54
    const-string v0, "N/A"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    return-void

    .line 57
    :cond_8
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    array-length v0, p1

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_23

    aget-object v2, p1, v1

    .line 59
    .local v2, "value":Ljava/lang/String;
    const-string v3, " \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {p0, v2}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 61
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .end local v2    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 63
    :cond_23
    const-string v0, " ]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    return-void
.end method

.method public static greylist-max-o getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 46
    if-nez p0, :cond_5

    const-string v0, "null"

    goto :goto_1c

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_chars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0
.end method

.method public static greylist-max-o toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/autofill/AutofillId;",
            ">;)[",
            "Landroid/view/autofill/AutofillId;"
        }
    .end annotation

    .line 73
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/autofill/AutofillId;>;"
    if-nez p0, :cond_6

    .line 74
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/autofill/AutofillId;

    return-object v0

    .line 76
    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/autofill/AutofillId;

    .line 77
    .local v0, "array":[Landroid/view/autofill/AutofillId;
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    return-object v0
.end method

.method public static blacklist toList(Ljava/util/Set;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 86
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_9
    return-object v0
.end method
