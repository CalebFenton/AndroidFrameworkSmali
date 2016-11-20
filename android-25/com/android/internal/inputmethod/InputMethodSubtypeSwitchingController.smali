.class public Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

.field private final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;


# direct methods
.method static synthetic -wrap0(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 1
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    const-class v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    #@8
    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "settings"    # Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 553
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@5
    .line 554
    invoke-virtual {p0, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    #@8
    .line 552
    return-void
.end method

.method private static calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 1
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 258
    if-eqz p1, :cond_0

    #@2
    .line 259
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 258
    invoke-static {p0, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .line 259
    :cond_0
    const/4 v0, -0x1

    #@c
    goto :goto_0
.end method

.method public static createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
    .locals 1
    .param p0, "settings"    # Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 559
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public dump(Landroid/util/Printer;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;

    #@0
    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 598
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->dump(Landroid/util/Printer;)V

    #@9
    .line 596
    :goto_0
    return-void

    #@a
    .line 600
    :cond_0
    const-string/jumbo v0, "    mController=null"

    #@d
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@10
    goto :goto_0
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 2
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p4, "forward"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 581
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 585
    return-object v1

    #@6
    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    #@8
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;
    .locals 1
    .param p1, "includingAuxiliarySubtypes"    # Z
    .param p2, "isScreenLocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 567
    return-void

    #@5
    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    #@7
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@a
    .line 562
    return-void
.end method

.method public resetCircularListLocked(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 573
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    #@3
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@5
    invoke-direct {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;-><init>(Landroid/content/Context;Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    #@a
    .line 574
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    #@c
    .line 575
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    #@e
    invoke-virtual {v1, v2, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    .line 574
    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->createFrom(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    #@18
    .line 572
    return-void
.end method
