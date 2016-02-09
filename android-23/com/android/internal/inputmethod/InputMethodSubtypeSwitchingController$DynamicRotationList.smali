.class Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicRotationList"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


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

.field private final mUsageHistoryOfSubtypeListItemIndex:[I


# direct methods
.method static synthetic -get0(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 330
    const-class v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->TAG:Ljava/lang/String;

    #@8
    .line 329
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 3
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
    .line 334
    .local p1, "imeSubtypeListItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 335
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    #@5
    .line 336
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    new-array v2, v2, [I

    #@d
    iput-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@f
    .line 337
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    #@11
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@14
    move-result v0

    #@15
    .line 338
    .local v0, "N":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@18
    .line 339
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@1a
    aput v1, v2, v1

    #@1c
    .line 338
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 334
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;)V
    .locals 0
    .param p1, "imeSubtypeListItems"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;)V

    #@3
    return-void
.end method

.method private getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 6
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 351
    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->-wrap0(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    #@3
    move-result v1

    #@4
    .line 352
    .local v1, "currentSubtypeId":I
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@6
    array-length v0, v5

    #@7
    .line 353
    .local v0, "N":I
    const/4 v4, 0x0

    #@8
    .local v4, "usageRank":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@a
    .line 354
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@c
    aget v3, v5, v4

    #@e
    .line 356
    .local v3, "subtypeListItemIndex":I
    iget-object v5, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    #@10
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@16
    .line 357
    .local v2, "subtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v5, v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    #@18
    invoke-virtual {v5, p1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 358
    iget v5, v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    #@20
    if-ne v5, v1, :cond_0

    #@22
    .line 359
    return v4

    #@23
    .line 353
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 363
    .end local v2    # "subtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v3    # "subtypeListItemIndex":I
    :cond_1
    const/4 v5, -0x1

    #@27
    return v5
.end method


# virtual methods
.method protected dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 403
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@3
    array-length v3, v3

    #@4
    if-ge v0, v3, :cond_0

    #@6
    .line 404
    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@8
    aget v2, v3, v0

    #@a
    .line 405
    .local v2, "rank":I
    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    #@c
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@12
    .line 406
    .local v1, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    const-string/jumbo v4, "rank="

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, " item="

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@38
    .line 403
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 402
    .end local v1    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v2    # "rank":I
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
    .line 380
    invoke-direct {p0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    #@4
    move-result v1

    #@5
    .line 381
    .local v1, "currentUsageRank":I
    if-gez v1, :cond_0

    #@7
    .line 385
    return-object v7

    #@8
    .line 387
    :cond_0
    iget-object v6, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@a
    array-length v0, v6

    #@b
    .line 388
    .local v0, "N":I
    const/4 v2, 0x1

    #@c
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@e
    .line 389
    add-int v6, v1, v2

    #@10
    rem-int v5, v6, v0

    #@12
    .line 391
    .local v5, "subtypeListItemRank":I
    iget-object v6, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@14
    .line 390
    aget v4, v6, v5

    #@16
    .line 393
    .local v4, "subtypeListItemIndex":I
    iget-object v6, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    #@18
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@1e
    .line 394
    .local v3, "subtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-eqz p1, :cond_1

    #@20
    iget-object v6, v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    #@22
    invoke-virtual {p2, v6}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_2

    #@28
    .line 397
    :cond_1
    return-object v3

    #@29
    .line 388
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 399
    .end local v3    # "subtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v4    # "subtypeListItemIndex":I
    .end local v5    # "subtypeListItemRank":I
    :cond_3
    return-object v7
.end method

.method public onUserAction(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 6
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    #@4
    move-result v1

    #@5
    .line 369
    .local v1, "currentUsageRank":I
    if-gtz v1, :cond_0

    #@7
    .line 370
    return-void

    #@8
    .line 372
    :cond_0
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@a
    aget v0, v2, v1

    #@c
    .line 373
    .local v0, "currentItemIndex":I
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@e
    .line 374
    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@10
    const/4 v4, 0x1

    #@11
    .line 373
    invoke-static {v2, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@14
    .line 375
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    #@16
    aput v0, v2, v5

    #@18
    .line 366
    return-void
.end method
