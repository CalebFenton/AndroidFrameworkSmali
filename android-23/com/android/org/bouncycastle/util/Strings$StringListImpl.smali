.class Lcom/android/org/bouncycastle/util/Strings$StringListImpl;
.super Ljava/util/ArrayList;
.source "Strings.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/StringList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/util/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/org/bouncycastle/util/StringList;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 321
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/util/Strings$StringListImpl;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 335
    check-cast p2, Ljava/lang/String;

    #@2
    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->add(ILjava/lang/String;)V

    #@5
    return-void
.end method

.method public add(ILjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    #@0
    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@3
    .line 335
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 325
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "s":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->add(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public add(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 327
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 306
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 330
    check-cast p2, Ljava/lang/String;

    #@2
    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->set(ILjava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public set(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    #@0
    .prologue
    .line 332
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public toStringArray()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->size()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [Ljava/lang/String;

    #@6
    .line 344
    .local v1, "strs":[Ljava/lang/String;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 346
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/lang/String;

    #@10
    aput-object v2, v1, v0

    #@12
    .line 344
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 349
    :cond_0
    return-object v1
.end method

.method public toStringArray(II)[Ljava/lang/String;
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    .line 354
    sub-int v2, p2, p1

    #@2
    new-array v1, v2, [Ljava/lang/String;

    #@4
    .line 356
    .local v1, "strs":[Ljava/lang/String;
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->size()I

    #@8
    move-result v2

    #@9
    if-eq v0, v2, :cond_0

    #@b
    if-eq v0, p2, :cond_0

    #@d
    .line 358
    sub-int v3, v0, p1

    #@f
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/String;

    #@15
    aput-object v2, v1, v3

    #@17
    .line 356
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 361
    :cond_0
    return-object v1
.end method
