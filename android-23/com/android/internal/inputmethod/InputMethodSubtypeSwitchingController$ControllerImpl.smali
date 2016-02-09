.class public Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerImpl"
.end annotation


# instance fields
.field private final mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

.field private final mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;


# direct methods
.method private constructor <init>(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)V
    .locals 0
    .param p1, "switchingAwareRotationList"    # Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;
    .param p2, "switchingUnawareRotationList"    # Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    #@0
    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 458
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    #@5
    .line 459
    iput-object p2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    #@7
    .line 457
    return-void
.end method

.method public static createFrom(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;
    .locals 6
    .param p0, "currentInstance"    # Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "sortedEnabledItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/4 v5, 0x0

    #@1
    .line 418
    const/4 v1, 0x0

    #@2
    .line 422
    .local v1, "switchingAwareRotationList":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;
    const/4 v4, 0x1

    #@3
    .line 421
    invoke-static {p1, v4}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    #@6
    move-result-object v0

    #@7
    .line 423
    .local v0, "switchingAwareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    if-eqz p0, :cond_0

    #@9
    .line 424
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 425
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    #@f
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->-get0(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;)Ljava/util/List;

    #@12
    move-result-object v4

    #@13
    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    .line 423
    if-eqz v4, :cond_0

    #@19
    .line 428
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    #@1b
    .line 430
    .end local v1    # "switchingAwareRotationList":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;
    :cond_0
    if-nez v1, :cond_1

    #@1d
    .line 431
    new-instance v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    #@1f
    invoke-direct {v1, v0, v5}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;)V

    #@22
    .line 435
    :cond_1
    const/4 v3, 0x0

    #@23
    .line 438
    .local v3, "switchingUnawareRotationList":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;
    const/4 v4, 0x0

    #@24
    .line 437
    invoke-static {p1, v4}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    #@27
    move-result-object v2

    #@28
    .line 439
    .local v2, "switchingUnawareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    if-eqz p0, :cond_2

    #@2a
    .line 440
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 442
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    #@30
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->-get0(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)Ljava/util/List;

    #@33
    move-result-object v4

    #@34
    .line 441
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@37
    move-result v4

    #@38
    .line 439
    if-eqz v4, :cond_2

    #@3a
    .line 445
    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    #@3c
    .line 447
    .end local v3    # "switchingUnawareRotationList":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;
    :cond_2
    if-nez v3, :cond_3

    #@3e
    .line 449
    new-instance v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    #@40
    invoke-direct {v3, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;-><init>(Ljava/util/List;)V

    #@43
    .line 453
    :cond_3
    new-instance v4, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    #@45
    invoke-direct {v4, v1, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;-><init>(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)V

    #@48
    return-object v4
.end method

.method private static filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p1, "supportsSwitchingToNextInputMethod"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 488
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 489
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@8
    move-result v0

    #@9
    .line 490
    .local v0, "ALL_ITEMS_COUNT":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@c
    .line 491
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@12
    .line 492
    .local v2, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v4, v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    #@14
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    #@17
    move-result v4

    #@18
    if-ne v4, p1, :cond_0

    #@1a
    .line 494
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    .line 490
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 497
    .end local v2    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_1
    return-object v3
.end method


# virtual methods
.method protected dump(Landroid/util/Printer;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;

    #@0
    .prologue
    .line 501
    const-string/jumbo v0, "    mSwitchingAwareRotationList:"

    #@3
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@6
    .line 502
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    #@8
    const-string/jumbo v1, "      "

    #@b
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@e
    .line 503
    const-string/jumbo v0, "    mSwitchingUnawareRotationList:"

    #@11
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@14
    .line 504
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    #@16
    const-string/jumbo v1, "      "

    #@19
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@1c
    .line 500
    return-void
.end method

.method public getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 1
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 464
    if-nez p2, :cond_0

    #@3
    .line 465
    return-object v0

    #@4
    .line 467
    :cond_0
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 468
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    #@c
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    #@13
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 477
    if-nez p1, :cond_0

    #@2
    .line 478
    return-void

    #@3
    .line 480
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 481
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->onUserAction(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@e
    .line 476
    :cond_1
    return-void
.end method
