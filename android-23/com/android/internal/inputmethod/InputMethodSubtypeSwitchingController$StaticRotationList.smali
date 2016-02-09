.class Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticRotationList"
.end annotation


# instance fields
.field private final mImeSubtypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 268
    .local p1, "imeSubtypeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 269
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    #@5
    .line 268
    return-void
.end method

.method private getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 5
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 280
    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->-wrap0(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    #@3
    move-result v1

    #@4
    .line 281
    .local v1, "currentSubtypeId":I
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    #@6
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    .line 282
    .local v0, "N":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@d
    .line 283
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    #@f
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@15
    .line 285
    .local v3, "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v4, v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    #@17
    invoke-virtual {p1, v4}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    iget v4, v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    #@1f
    if-ne v4, v1, :cond_0

    #@21
    .line 286
    return v2

    #@22
    .line 282
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 289
    .end local v3    # "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_1
    const/4 v4, -0x1

    #@26
    return v4
.end method


# virtual methods
.method protected dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 320
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    .line 321
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 322
    move v3, v1

    #@a
    .line 323
    .local v3, "rank":I
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    #@c
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@12
    .line 324
    .local v2, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    const-string/jumbo v5, "rank="

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, " item="

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@38
    .line 321
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 319
    .end local v2    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v3    # "rank":I
    :cond_0
    return-void
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 8
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 294
    if-nez p2, :cond_0

    #@3
    .line 295
    return-object v7

    #@4
    .line 297
    :cond_0
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    #@6
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@9
    move-result v5

    #@a
    const/4 v6, 0x1

    #@b
    if-gt v5, v6, :cond_1

    #@d
    .line 298
    return-object v7

    #@e
    .line 300
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    #@11
    move-result v3

    #@12
    .line 301
    .local v3, "currentIndex":I
    if-gez v3, :cond_2

    #@14
    .line 302
    return-object v7

    #@15
    .line 304
    :cond_2
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    #@17
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@1a
    move-result v0

    #@1b
    .line 305
    .local v0, "N":I
    const/4 v4, 0x1

    #@1c
    .local v4, "offset":I
    :goto_0
    if-ge v4, v0, :cond_5

    #@1e
    .line 307
    add-int v5, v3, v4

    #@20
    rem-int v2, v5, v0

    #@22
    .line 308
    .local v2, "candidateIndex":I
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    #@24
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@2a
    .line 311
    .local v1, "candidate":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-eqz p1, :cond_3

    #@2c
    iget-object v5, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    #@2e
    invoke-virtual {p2, v5}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_4

    #@34
    .line 314
    :cond_3
    return-object v1

    #@35
    .line 305
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_0

    #@38
    .line 316
    .end local v1    # "candidate":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v2    # "candidateIndex":I
    :cond_5
    return-object v7
.end method
