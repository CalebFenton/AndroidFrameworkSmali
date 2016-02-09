.class final Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodListBuilder"
.end annotation


# instance fields
.field private final mInputMethodSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 203
    new-instance v0, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    #@a
    .line 199
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 257
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .line 224
    .local p1, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@12
    .line 225
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 226
    return-object p0

    #@19
    .line 229
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const/4 v0, 0x0

    #@1a
    .line 230
    .local v0, "added":Z
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v4

    #@1f
    if-ge v1, v4, :cond_3

    #@21
    .line 231
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@27
    .line 233
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v4, 0x1

    #@28
    .line 232
    invoke-static {v2, p2, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->-wrap0(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 234
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    #@30
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@33
    .line 235
    const/4 v0, 0x1

    #@34
    .line 230
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_0

    #@37
    .line 238
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    if-eqz v0, :cond_4

    #@39
    .line 239
    return-object p0

    #@3a
    .line 241
    :cond_4
    const/4 v1, 0x0

    #@3b
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v4

    #@3f
    if-ge v1, v4, :cond_6

    #@41
    .line 242
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@47
    .line 244
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v4, 0x0

    #@48
    .line 243
    invoke-static {v2, p2, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->-wrap0(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_5

    #@4e
    .line 245
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    #@50
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@53
    .line 241
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_1

    #@56
    .line 248
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    return-object p0
.end method

.method public fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "checkDefaultAttribute"    # Z
    .param p4, "locale"    # Ljava/util/Locale;
    .param p5, "checkCountry"    # Z
    .param p6, "requiredSubtypeMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Locale;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .line 209
    .local p1, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v6, 0x0

    #@1
    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v1

    #@5
    if-ge v6, v1, :cond_1

    #@7
    .line 210
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@d
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    move-object v1, p2

    #@e
    move v2, p3

    #@f
    move-object v3, p4

    #@10
    move v4, p5

    #@11
    move-object v5, p6

    #@12
    .line 211
    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 213
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    #@1a
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@1d
    .line 209
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 216
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
