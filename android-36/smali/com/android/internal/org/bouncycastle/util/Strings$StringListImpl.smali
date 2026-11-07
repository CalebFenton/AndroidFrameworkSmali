.class Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;
.super Ljava/util/ArrayList;
.source "Strings.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/StringList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/util/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/internal/org/bouncycastle/util/StringList;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 344
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/util/Strings-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 344
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->add(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist add(ILjava/lang/String;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    .line 360
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 361
    return-void
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 344
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->add(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist add(Ljava/lang/String;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 350
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist get(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 344
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 344
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    .line 355
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist toStringArray()[Ljava/lang/String;
    .registers 4

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 367
    .local v0, "strs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_15

    .line 369
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 372
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method public blacklist toStringArray(II)[Ljava/lang/String;
    .registers 7
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 377
    sub-int v0, p2, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 379
    .local v0, "strs":[Ljava/lang/String;
    move v1, p1

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->size()I

    move-result v2

    if-eq v1, v2, :cond_1a

    if-eq v1, p2, :cond_1a

    .line 381
    sub-int v2, v1, p1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 384
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method
