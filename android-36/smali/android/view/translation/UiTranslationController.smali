.class public Landroid/view/translation/UiTranslationController;
.super Ljava/lang/Object;
.source "UiTranslationController.java"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final blacklist DEBUG:Z

.field public static final blacklist DUMPABLE_NAME:Ljava/lang/String; = "UiTranslationController"

.field private static final blacklist TAG:Ljava/lang/String; = "UiTranslationController"


# instance fields
.field private final blacklist mActivity:Landroid/app/Activity;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentState:I

.field private blacklist mLastRequestAutofillIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mTranslators:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            ">;",
            "Landroid/view/translation/Translator;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mViewsToPadContent:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWorkerHandler:Landroid/os/Handler;

.field private final blacklist mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic blacklist $r8$lambda$513dR-jUZoKtYjC1y7vyNR_6nHA(Landroid/view/translation/UiTranslationController;Landroid/view/translation/Translator;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/translation/UiTranslationController;->sendTranslationRequest(Landroid/view/translation/Translator;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DMtdfLa4qBW62FAPXRU7hRumkyI(Landroid/view/translation/UiTranslationController;Landroid/view/View;Landroid/view/translation/ViewTranslationResponse;ZLandroid/view/autofill/AutofillId;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/translation/UiTranslationController;->lambda$onTranslationCompleted$4(Landroid/view/View;Landroid/view/translation/ViewTranslationResponse;ZLandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Scgjlu_MGsAGizsdVgUXR87nrV4(Landroid/view/translation/UiTranslationController;Ljava/util/ArrayList;Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/ArrayList;Landroid/view/translation/Translator;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/translation/UiTranslationController;->lambda$onUiTranslationStarted$6(Ljava/util/ArrayList;Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/ArrayList;Landroid/view/translation/Translator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X6ZsWKlRR1rQZjURseHNIBaFU2c(Landroid/view/translation/UiTranslationController;Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/translation/UiTranslationController;->createTranslatorAndStart(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 68
    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/view/translation/UiTranslationController;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 102
    iput-object p2, p0, Landroid/view/translation/UiTranslationController;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    .line 104
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    .line 105
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/translation/UiTranslationController;->mViewsToPadContent:Landroid/util/ArraySet;

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiTranslationController_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 108
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/view/translation/UiTranslationController;->mWorkerThread:Landroid/os/HandlerThread;

    .line 110
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/UiTranslationController;->mWorkerHandler:Landroid/os/Handler;

    .line 112
    invoke-virtual {p1, p0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 113
    return-void
.end method

.method private blacklist addViewIfNeeded(Landroid/util/IntArray;Landroid/view/View;)V
    .registers 6
    .param p1, "sourceViewIds"    # Landroid/util/IntArray;
    .param p2, "view"    # Landroid/view/View;

    .line 633
    invoke-virtual {p2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    .line 634
    .local v0, "autofillId":Landroid/view/autofill/AutofillId;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_22

    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    .line 635
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 636
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_22
    return-void
.end method

.method private blacklist createTranslatorAndStart(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;)V
    .registers 7
    .param p1, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p2, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 493
    .local p3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-direct {p0, p1, p2}, Landroid/view/translation/UiTranslationController;->createTranslatorIfNeeded(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;)Landroid/view/translation/Translator;

    move-result-object v0

    .line 494
    .local v0, "translator":Landroid/view/translation/Translator;
    if-nez v0, :cond_29

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not create Translator for sourceSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " targetSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UiTranslationController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 499
    :cond_29
    invoke-direct {p0, v0, p3}, Landroid/view/translation/UiTranslationController;->onUiTranslationStarted(Landroid/view/translation/Translator;Ljava/util/List;)V

    .line 500
    return-void
.end method

.method private blacklist createTranslatorIfNeeded(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;)Landroid/view/translation/Translator;
    .registers 8
    .param p1, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p2, "targetSpec"    # Landroid/view/translation/TranslationSpec;

    .line 670
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/translation/TranslationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/translation/TranslationManager;

    .line 671
    .local v0, "tm":Landroid/view/translation/TranslationManager;
    if-nez v0, :cond_15

    .line 672
    const-string v1, "UiTranslationController"

    const-string v2, "Can not find TranslationManager when trying to create translator."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v1, 0x0

    return-object v1

    .line 675
    :cond_15
    new-instance v1, Landroid/view/translation/TranslationContext$Builder;

    invoke-direct {v1, p1, p2}, Landroid/view/translation/TranslationContext$Builder;-><init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;)V

    new-instance v2, Landroid/app/assist/ActivityId;

    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 679
    invoke-virtual {v3}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 680
    invoke-virtual {v4}, Landroid/app/Activity;->getShareableActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/app/assist/ActivityId;-><init>(ILandroid/os/IBinder;)V

    .line 677
    invoke-virtual {v1, v2}, Landroid/view/translation/TranslationContext$Builder;->setActivityId(Landroid/app/assist/ActivityId;)Landroid/view/translation/TranslationContext$Builder;

    move-result-object v1

    .line 681
    invoke-virtual {v1}, Landroid/view/translation/TranslationContext$Builder;->build()Landroid/view/translation/TranslationContext;

    move-result-object v1

    .line 682
    .local v1, "translationContext":Landroid/view/translation/TranslationContext;
    invoke-virtual {v0, v1}, Landroid/view/translation/TranslationManager;->createTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;

    move-result-object v2

    .line 683
    .local v2, "translator":Landroid/view/translation/Translator;
    if-eqz v2, :cond_43

    .line 684
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 685
    .local v3, "specs":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;>;"
    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    .end local v3    # "specs":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;>;"
    :cond_43
    return-object v2
.end method

.method private blacklist destroyTranslators()V
    .registers 5

    .line 691
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_3
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 693
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 694
    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/translation/Translator;

    .line 695
    .local v3, "translator":Landroid/view/translation/Translator;
    invoke-virtual {v3}, Landroid/view/translation/Translator;->destroy()V

    .line 693
    .end local v3    # "translator":Landroid/view/translation/Translator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 697
    .end local v2    # "i":I
    :cond_1a
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 698
    .end local v1    # "count":I
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private blacklist dumpChildren(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "outerPrefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 261
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 262
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_3e

    .line 263
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 264
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_27

    .line 265
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Children: "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 267
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p2, p3}, Landroid/view/translation/UiTranslationController;->dumpChildren(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_3b

    .line 269
    :cond_27
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "End Children: "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 271
    invoke-direct {p0, v2, p2, p3}, Landroid/view/translation/UiTranslationController;->dumpViewInfo(Landroid/view/View;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 262
    .end local v2    # "child":Landroid/view/View;
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 274
    .end local v1    # "i":I
    :cond_3e
    return-void
.end method

.method private blacklist dumpViewByTraversal(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "outerPrefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 248
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 249
    .local v0, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Dump views:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    .local v1, "rootNum":I
    :goto_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 251
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, "rootView":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_32

    .line 253
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p1, p2}, Landroid/view/translation/UiTranslationController;->dumpChildren(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_35

    .line 255
    :cond_32
    invoke-direct {p0, v2, p1, p2}, Landroid/view/translation/UiTranslationController;->dumpViewInfo(Landroid/view/View;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 250
    .end local v2    # "rootView":Landroid/view/View;
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 258
    .end local v1    # "rootNum":I
    :cond_38
    return-void
.end method

.method private blacklist dumpViewInfo(Landroid/view/View;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outerPrefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    .line 278
    .local v0, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "autofillId: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "isContainsView":Z
    const/4 v2, 0x0

    .line 282
    .local v2, "isRequestedView":Z
    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 283
    :try_start_14
    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 284
    const/4 v2, 0x1

    .line 286
    :cond_1d
    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 287
    .local v4, "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 288
    const/4 v1, 0x1

    .line 290
    .end local v4    # "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_46

    .line 291
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "isContainsView: "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 292
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "isRequestedView: "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 293
    return-void

    .line 290
    :catchall_46
    move-exception v4

    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v4
.end method

.method private blacklist findViewsTraversalByAutofillIds(Landroid/util/IntArray;)V
    .registers 6
    .param p1, "sourceViewIds"    # Landroid/util/IntArray;

    .line 610
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 611
    .local v0, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v1, 0x0

    .local v1, "rootNum":I
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 612
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 613
    .local v2, "rootView":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_29

    .line 614
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p1}, Landroid/view/translation/UiTranslationController;->findViewsTraversalByAutofillIds(Landroid/view/ViewGroup;Landroid/util/IntArray;)V

    .line 616
    :cond_29
    invoke-direct {p0, p1, v2}, Landroid/view/translation/UiTranslationController;->addViewIfNeeded(Landroid/util/IntArray;Landroid/view/View;)V

    .line 611
    .end local v2    # "rootView":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 618
    .end local v1    # "rootNum":I
    :cond_2f
    return-void
.end method

.method private blacklist findViewsTraversalByAutofillIds(Landroid/view/ViewGroup;Landroid/util/IntArray;)V
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "sourceViewIds"    # Landroid/util/IntArray;

    .line 622
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 623
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 624
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 625
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_15

    .line 626
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p2}, Landroid/view/translation/UiTranslationController;->findViewsTraversalByAutofillIds(Landroid/view/ViewGroup;Landroid/util/IntArray;)V

    .line 628
    :cond_15
    invoke-direct {p0, p2, v2}, Landroid/view/translation/UiTranslationController;->addViewIfNeeded(Landroid/util/IntArray;Landroid/view/View;)V

    .line 623
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 630
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist getRequestVirtualViewChildCount(Ljava/util/List;)Landroid/util/SparseIntArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)",
            "Landroid/util/SparseIntArray;"
        }
    .end annotation

    .line 579
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 580
    .local v0, "virtualViewCount":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 581
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 582
    .local v2, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-virtual {v2}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 583
    invoke-virtual {v2}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v3

    .line 584
    .local v3, "virtualViewId":I
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    const/4 v5, 0x1

    if-gez v4, :cond_27

    .line 585
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2f

    .line 587
    :cond_27
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 580
    .end local v2    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v3    # "virtualViewId":I
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 591
    .end local v1    # "i":I
    :cond_32
    return-object v0
.end method

.method private blacklist getSupportedFormatsLocked()[I
    .registers 2

    .line 596
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method private blacklist getTranslationCapability(Landroid/view/translation/TranslationContext;)Landroid/view/translation/TranslationCapability;
    .registers 8
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;

    .line 602
    new-instance v0, Landroid/view/translation/TranslationCapability;

    .line 603
    invoke-virtual {p1}, Landroid/view/translation/TranslationContext;->getSourceSpec()Landroid/view/translation/TranslationSpec;

    move-result-object v2

    .line 604
    invoke-virtual {p1}, Landroid/view/translation/TranslationContext;->getTargetSpec()Landroid/view/translation/TranslationSpec;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/translation/TranslationCapability;-><init>(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ZI)V

    .line 602
    return-object v0
.end method

.method private synthetic blacklist lambda$onTranslationCompleted$4(Landroid/view/View;Landroid/view/translation/ViewTranslationResponse;ZLandroid/view/autofill/AutofillId;I)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "response"    # Landroid/view/translation/ViewTranslationResponse;
    .param p3, "isLoggable"    # Z
    .param p4, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p5, "currentState"    # I

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object v0

    .line 442
    .local v0, "callback":Landroid/view/translation/ViewTranslationCallback;
    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v1

    const-string v2, "UiTranslationController"

    if-eqz v1, :cond_48

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/translation/ViewTranslationResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 444
    instance-of v1, v0, Landroid/widget/TextViewTranslationCallback;

    if-eqz v1, :cond_48

    .line 445
    move-object v1, v0

    check-cast v1, Landroid/widget/TextViewTranslationCallback;

    .line 447
    .local v1, "textViewCallback":Landroid/widget/TextViewTranslationCallback;
    invoke-virtual {v1}, Landroid/widget/TextViewTranslationCallback;->isShowingTranslation()Z

    move-result v3

    if-nez v3, :cond_29

    .line 448
    invoke-virtual {v1}, Landroid/widget/TextViewTranslationCallback;->isAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 449
    :cond_29
    if-eqz p3, :cond_47

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate ViewTranslationResponse for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_47
    return-void

    .line 457
    .end local v1    # "textViewCallback":Landroid/widget/TextViewTranslationCallback;
    :cond_48
    if-nez v0, :cond_71

    .line 458
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_58

    .line 461
    new-instance v1, Landroid/widget/TextViewTranslationCallback;

    invoke-direct {v1}, Landroid/widget/TextViewTranslationCallback;-><init>()V

    move-object v0, v1

    .line 462
    invoke-virtual {p1, v0}, Landroid/view/View;->setViewTranslationCallback(Landroid/view/translation/ViewTranslationCallback;)V

    goto :goto_71

    .line 464
    :cond_58
    if-eqz p3, :cond_70

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " doesn\'t support showing translation because of null ViewTranslationCallback."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_70
    return-void

    .line 471
    :cond_71
    :goto_71
    const/16 v1, 0xfa

    invoke-interface {v0, v1}, Landroid/view/translation/ViewTranslationCallback;->setAnimationDurationMillis(I)V

    .line 472
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mViewsToPadContent:Landroid/util/ArraySet;

    invoke-virtual {v1, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 473
    invoke-interface {v0}, Landroid/view/translation/ViewTranslationCallback;->enableContentPadding()V

    .line 475
    :cond_81
    invoke-virtual {p1, p2}, Landroid/view/View;->onViewTranslationResponse(Landroid/view/translation/ViewTranslationResponse;)V

    .line 476
    const/4 v1, 0x1

    if-ne p5, v1, :cond_88

    .line 477
    return-void

    .line 479
    :cond_88
    invoke-interface {v0, p1}, Landroid/view/translation/ViewTranslationCallback;->onShowTranslation(Landroid/view/View;)Z

    .line 480
    return-void
.end method

.method private synthetic blacklist lambda$onUiTranslationStarted$6(Ljava/util/ArrayList;Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/ArrayList;Landroid/view/translation/Translator;)V
    .registers 9
    .param p1, "roots"    # Ljava/util/ArrayList;
    .param p2, "viewIds"    # Ljava/util/Map;
    .param p3, "supportedFormats"    # [I
    .param p4, "capability"    # Landroid/view/translation/TranslationCapability;
    .param p5, "requests"    # Ljava/util/ArrayList;
    .param p6, "translator"    # Landroid/view/translation/Translator;

    .line 566
    const/4 v0, 0x0

    .local v0, "rootNum":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 567
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 568
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 566
    .end local v1    # "rootView":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    .end local v0    # "rootNum":I
    :cond_17
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1, p0, p6, p5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    return-void
.end method

.method static synthetic blacklist lambda$onVirtualViewTranslationCompleted$3(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isLoggable"    # Z

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object v0

    if-nez v0, :cond_21

    .line 384
    if-eqz p1, :cond_20

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support showing translation because of null ViewTranslationCallback."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiTranslationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_20
    return-void

    .line 390
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 391
    invoke-virtual {p0}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/translation/ViewTranslationCallback;->onShowTranslation(Landroid/view/View;)Z

    .line 393
    :cond_2e
    return-void
.end method

.method static synthetic blacklist lambda$runForEachView$7(Landroid/util/ArrayMap;ZLjava/util/function/BiConsumer;)V
    .registers 9
    .param p0, "views"    # Landroid/util/ArrayMap;
    .param p1, "isLoggable"    # Z
    .param p2, "action"    # Ljava/util/function/BiConsumer;

    .line 648
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 649
    .local v0, "viewCounts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_67

    .line 650
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 651
    .local v2, "view":Landroid/view/View;
    const-string v3, "UiTranslationController"

    if-eqz p1, :cond_37

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runForEachView for autofillId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_2a

    .line 653
    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    goto :goto_2c

    :cond_2a
    const-string v5, " null"

    :goto_2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 652
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_37
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object v4

    if-nez v4, :cond_40

    goto :goto_48

    .line 662
    :cond_40
    invoke-virtual {v2}, Landroid/view/View;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_64

    .line 656
    :cond_48
    :goto_48
    if-eqz p1, :cond_64

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View was gone or ViewTranslationCallback for autofillId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 658
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 657
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v2    # "view":Landroid/view/View;
    :cond_64
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 664
    .end local v1    # "i":I
    :cond_67
    return-void
.end method

.method static synthetic blacklist lambda$sendTranslationRequest$5(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 521
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic blacklist lambda$updateUiTranslationState$0(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "callback"    # Landroid/view/translation/ViewTranslationCallback;

    .line 154
    invoke-interface {p1, p0}, Landroid/view/translation/ViewTranslationCallback;->onHideTranslation(Landroid/view/View;)Z

    return-void
.end method

.method static synthetic blacklist lambda$updateUiTranslationState$1(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "callback"    # Landroid/view/translation/ViewTranslationCallback;

    .line 157
    invoke-interface {p1, p0}, Landroid/view/translation/ViewTranslationCallback;->onShowTranslation(Landroid/view/View;)Z

    return-void
.end method

.method static synthetic blacklist lambda$updateUiTranslationState$2(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "callback"    # Landroid/view/translation/ViewTranslationCallback;

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->clearTranslationState()V

    .line 163
    return-void
.end method

.method private blacklist notifyTranslationFinished(Z)V
    .registers 6
    .param p1, "activityDestroyed"    # Z

    .line 190
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/translation/UiTranslationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/translation/UiTranslationManager;

    .line 191
    .local v0, "manager":Landroid/view/translation/UiTranslationManager;
    if-eqz v0, :cond_26

    .line 192
    new-instance v1, Landroid/app/assist/ActivityId;

    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 193
    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getShareableActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/assist/ActivityId;-><init>(ILandroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    .line 194
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 192
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/translation/UiTranslationManager;->onTranslationFinished(ZLandroid/app/assist/ActivityId;Landroid/content/ComponentName;)V

    .line 196
    :cond_26
    return-void
.end method

.method private blacklist onTranslationCompleted(Landroid/util/SparseArray;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 402
    .local p1, "translatedResult":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    .line 403
    .local v6, "isLoggable":Z
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 404
    const-string v0, "UiTranslationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTranslationCompleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is destroyed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void

    .line 407
    :cond_30
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 408
    .local v9, "resultCount":I
    if-eqz v6, :cond_54

    .line 409
    const-string v0, "UiTranslationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTranslationCompleted: receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " responses."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_54
    iget-object v10, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 412
    :try_start_57
    iget v0, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    if-ne v0, v1, :cond_64

    .line 413
    const-string v0, "UiTranslationController"

    const-string v1, "onTranslationCompleted: the translation state is finished now. Skip to show the translated text."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    monitor-exit v10

    return-void

    .line 417
    :cond_64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_65
    if-ge v0, v9, :cond_dd

    .line 418
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/translation/ViewTranslationResponse;

    .line 419
    .local v5, "response":Landroid/view/translation/ViewTranslationResponse;
    if-eqz v6, :cond_8c

    .line 420
    const-string v1, "UiTranslationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTranslationCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 421
    invoke-static {v5}, Landroid/view/translation/UiTranslationController;->sanitizedViewTranslationResponse(Landroid/view/translation/ViewTranslationResponse;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_8c
    invoke-virtual {v5}, Landroid/view/translation/ViewTranslationResponse;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 424
    .local v7, "autofillId":Landroid/view/autofill/AutofillId;
    if-nez v7, :cond_9a

    .line 425
    const-string v1, "UiTranslationController"

    const-string v2, "No AutofillId is set in ViewTranslationResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    goto :goto_da

    .line 428
    :cond_9a
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 429
    .local v1, "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-nez v1, :cond_a5

    .line 430
    goto :goto_da

    .line 432
    :cond_a5
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    .line 433
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_cd

    .line 434
    const-string v2, "UiTranslationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTranslationCompleted: the view for autofill id "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " may be gone."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    goto :goto_da

    .line 439
    :cond_cd
    iget v8, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    .line 440
    .local v8, "currentState":I
    iget-object v11, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda2;-><init>(Landroid/view/translation/UiTranslationController;Landroid/view/View;Landroid/view/translation/ViewTranslationResponse;ZLandroid/view/autofill/AutofillId;I)V

    invoke-virtual {v11, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 417
    .end local v1    # "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "response":Landroid/view/translation/ViewTranslationResponse;
    .end local v7    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v8    # "currentState":I
    :goto_da
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 482
    .end local v0    # "i":I
    :cond_dd
    monitor-exit v10

    .line 483
    return-void

    .line 482
    :catchall_df
    move-exception v0

    monitor-exit v10
    :try_end_e1
    .catchall {:try_start_57 .. :try_end_e1} :catchall_df

    throw v0
.end method

.method private blacklist onUiTranslationStarted(Landroid/view/translation/Translator;Ljava/util/List;)V
    .registers 15
    .param p1, "translator"    # Landroid/view/translation/Translator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/Translator;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 528
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_3
    invoke-direct {p0, p2}, Landroid/view/translation/UiTranslationController;->getRequestVirtualViewChildCount(Ljava/util/List;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 531
    .local v0, "virtualViewChildCount":Landroid/util/SparseIntArray;
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v6, v2

    .line 532
    .local v6, "viewIds":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;[J>;"
    const/4 v2, 0x0

    .line 533
    .local v2, "unusedIndices":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_a1

    if-ge v3, v4, :cond_73

    .line 534
    :try_start_15
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 535
    .local v4, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-virtual {v4}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 536
    const/4 v5, 0x0

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 538
    :cond_26
    if-nez v2, :cond_2e

    .line 539
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v5

    .line 543
    :cond_2e
    new-instance v5, Landroid/view/autofill/AutofillId;

    invoke-virtual {v4}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v7

    invoke-direct {v5, v7}, Landroid/view/autofill/AutofillId;-><init>(I)V

    .line 545
    .local v5, "virtualViewAutofillId":Landroid/view/autofill/AutofillId;
    const/4 v7, 0x0

    .line 546
    .local v7, "end":I
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 547
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    .line 548
    .local v8, "childs":[J
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v7, v9

    goto :goto_5e

    .line 550
    .end local v8    # "childs":[J
    :cond_50
    invoke-virtual {v4}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 551
    .local v8, "childCount":I
    new-array v9, v8, [J

    .line 552
    .local v9, "childs":[J
    invoke-interface {v6, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v9

    .line 554
    .end local v9    # "childs":[J
    .local v8, "childs":[J
    :goto_5e
    add-int/lit8 v9, v7, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-virtual {v4}, Landroid/view/autofill/AutofillId;->getVirtualChildLongId()J

    move-result-wide v9

    aput-wide v9, v8, v7
    :try_end_6d
    .catchall {:try_start_15 .. :try_end_6d} :catchall_70

    .line 533
    .end local v4    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v5    # "virtualViewAutofillId":Landroid/view/autofill/AutofillId;
    .end local v7    # "end":I
    .end local v8    # "childs":[J
    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 575
    .end local v0    # "virtualViewChildCount":Landroid/util/SparseIntArray;
    .end local v2    # "unusedIndices":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    .end local v6    # "viewIds":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;[J>;"
    :catchall_70
    move-exception v0

    move-object v10, p1

    goto :goto_a3

    .line 558
    .restart local v0    # "virtualViewChildCount":Landroid/util/SparseIntArray;
    .restart local v2    # "unusedIndices":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;Ljava/lang/Integer;>;"
    .restart local v6    # "viewIds":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;[J>;"
    :cond_73
    :try_start_73
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v9, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/translation/ViewTranslationRequest;>;"
    invoke-direct {p0}, Landroid/view/translation/UiTranslationController;->getSupportedFormatsLocked()[I

    move-result-object v7

    .line 561
    .local v7, "supportedFormats":[I
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v5

    .line 562
    .local v5, "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    nop

    .line 563
    invoke-virtual {p1}, Landroid/view/translation/Translator;->getTranslationContext()Landroid/view/translation/TranslationContext;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/translation/UiTranslationController;->getTranslationCapability(Landroid/view/translation/TranslationContext;)Landroid/view/translation/TranslationCapability;

    move-result-object v8

    .line 564
    .local v8, "capability":Landroid/view/translation/TranslationCapability;
    iget-object v11, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;
    :try_end_97
    .catchall {:try_start_73 .. :try_end_97} :catchall_a1

    move-object v4, p0

    move-object v10, p1

    .end local p1    # "translator":Landroid/view/translation/Translator;
    .local v10, "translator":Landroid/view/translation/Translator;
    :try_start_99
    invoke-direct/range {v3 .. v10}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;-><init>(Landroid/view/translation/UiTranslationController;Ljava/util/ArrayList;Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/ArrayList;Landroid/view/translation/Translator;)V

    invoke-virtual {v11, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 575
    .end local v0    # "virtualViewChildCount":Landroid/util/SparseIntArray;
    .end local v2    # "unusedIndices":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;Ljava/lang/Integer;>;"
    .end local v5    # "roots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    .end local v6    # "viewIds":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;[J>;"
    .end local v7    # "supportedFormats":[I
    .end local v8    # "capability":Landroid/view/translation/TranslationCapability;
    .end local v9    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/translation/ViewTranslationRequest;>;"
    monitor-exit v1

    .line 576
    return-void

    .line 575
    .end local v10    # "translator":Landroid/view/translation/Translator;
    .restart local p1    # "translator":Landroid/view/translation/Translator;
    :catchall_a1
    move-exception v0

    move-object v10, p1

    .end local p1    # "translator":Landroid/view/translation/Translator;
    .restart local v10    # "translator":Landroid/view/translation/Translator;
    :goto_a3
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_99 .. :try_end_a4} :catchall_a5

    throw v0

    :catchall_a5
    move-exception v0

    goto :goto_a3
.end method

.method private blacklist onVirtualViewTranslationCompleted(Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 349
    .local p1, "translatedResult":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Landroid/view/translation/ViewTranslationResponse;>;>;"
    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 350
    .local v0, "isLoggable":Z
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 351
    const-string v1, "UiTranslationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTranslationCompleted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is destroyed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 354
    :cond_30
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 355
    :try_start_33
    iget v3, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    if-ne v3, v1, :cond_40

    .line 356
    const-string v1, "UiTranslationController"

    const-string v3, "onTranslationCompleted: the translation state is finished now. Skip to show the translated text."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-exit v2

    return-void

    .line 360
    :cond_40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_ba

    .line 361
    new-instance v3, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/view/autofill/AutofillId;-><init>(I)V

    .line 362
    .local v3, "autofillId":Landroid/view/autofill/AutofillId;
    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 363
    .local v4, "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-nez v4, :cond_5b

    .line 364
    goto :goto_b7

    .line 366
    :cond_5b
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 367
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_82

    .line 368
    const-string v6, "UiTranslationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTranslationCompleted: the view for autofill id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " may be gone."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    goto :goto_b7

    .line 372
    :cond_82
    nop

    .line 373
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/LongSparseArray;

    .line 374
    .local v6, "virtualChildResponse":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    if-eqz v0, :cond_a3

    .line 375
    const-string v7, "UiTranslationController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onVirtualViewTranslationCompleted: received response for AutofillId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_a3
    invoke-virtual {v5, v6}, Landroid/view/View;->onVirtualViewTranslationResponses(Landroid/util/LongSparseArray;)V

    .line 379
    iget v7, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_ad

    .line 380
    monitor-exit v2

    return-void

    .line 382
    :cond_ad
    iget-object v7, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    new-instance v8, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda9;

    invoke-direct {v8, v5, v0}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda9;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    .end local v3    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v4    # "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "virtualChildResponse":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    :goto_b7
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 395
    .end local v1    # "i":I
    :cond_ba
    monitor-exit v2

    .line 396
    return-void

    .line 395
    :catchall_bc
    move-exception v1

    monitor-exit v2
    :try_end_be
    .catchall {:try_start_33 .. :try_end_be} :catchall_bc

    throw v1
.end method

.method private blacklist runForEachView(Ljava/util/function/BiConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/View;",
            "Landroid/view/translation/ViewTranslationCallback;",
            ">;)V"
        }
    .end annotation

    .line 641
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;>;"
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    const-string v1, "UiTranslation"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 643
    .local v1, "isLoggable":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 644
    .local v2, "views":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_1e

    .line 645
    const-string v3, "UiTranslationController"

    const-string v4, "No views can be excuted for runForEachView."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_1e
    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    new-instance v4, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v1, p1}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;ZLjava/util/function/BiConsumer;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 665
    .end local v1    # "isLoggable":Z
    .end local v2    # "views":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    monitor-exit v0

    .line 666
    return-void

    .line 665
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private static blacklist sanitizedViewTranslationRequest(Landroid/view/translation/ViewTranslationRequest;)Ljava/lang/String;
    .registers 8
    .param p0, "request"    # Landroid/view/translation/ViewTranslationRequest;

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewTranslationRequest:{values=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/translation/ViewTranslationRequest;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 725
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/translation/ViewTranslationRequest;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationRequestValue;

    move-result-object v3

    .line 726
    .local v3, "value":Landroid/view/translation/TranslationRequestValue;
    const-string/jumbo v4, "{text="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/translation/TranslationRequestValue;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_2f

    .line 727
    const-string v5, "null"

    goto :goto_51

    .line 728
    :cond_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "string["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/translation/TranslationRequestValue;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]}, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 726
    :goto_51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Landroid/view/translation/TranslationRequestValue;
    goto :goto_f

    .line 730
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist sanitizedViewTranslationResponse(Landroid/view/translation/ViewTranslationResponse;)Ljava/lang/String;
    .registers 18
    .param p0, "response"    # Landroid/view/translation/ViewTranslationResponse;

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewTranslationResponse:{values=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    .local v0, "msg":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/view/translation/ViewTranslationResponse;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_115

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 740
    .local v2, "key":Ljava/lang/String;
    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v4

    .line 741
    .local v4, "value":Landroid/view/translation/TranslationResponseValue;
    const-string/jumbo v5, "{status="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/translation/TranslationResponseValue;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const-string/jumbo v5, "text="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "null"

    const-string v8, "], "

    const-string/jumbo v9, "string["

    if-nez v6, :cond_4b

    .line 743
    move-object v6, v7

    goto :goto_68

    .line 744
    :cond_4b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 742
    :goto_68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    nop

    .line 746
    invoke-virtual {v4}, Landroid/view/translation/TranslationResponseValue;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.view.translation.extra.DEFINITIONS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 747
    .local v5, "definitions":Landroid/os/Bundle;
    if-eqz v5, :cond_df

    .line 748
    const-string v6, "definitions={"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_87
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 750
    .local v10, "partOfSpeech":Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_a2
    if-ge v13, v12, :cond_d0

    aget-object v14, v11, v13

    .line 752
    .local v14, "definition":Ljava/lang/CharSequence;
    if-nez v14, :cond_ad

    .line 753
    const-string v15, "null, "

    move-object/from16 v16, v1

    goto :goto_c8

    .line 754
    :cond_ad
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 752
    :goto_c8
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .end local v14    # "definition":Ljava/lang/CharSequence;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    goto :goto_a2

    .line 756
    :cond_d0
    move-object/from16 v16, v1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .end local v10    # "partOfSpeech":Ljava/lang/String;
    goto :goto_87

    .line 758
    :cond_d6
    move-object/from16 v16, v1

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e1

    .line 747
    :cond_df
    move-object/from16 v16, v1

    .line 760
    :goto_e1
    const-string/jumbo v1, "transliteration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/translation/TranslationResponseValue;->getTransliteration()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_ef

    .line 761
    goto :goto_10e

    .line 762
    :cond_ef
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/translation/TranslationResponseValue;->getTransliteration()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]}, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 760
    :goto_10e
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Landroid/view/translation/TranslationResponseValue;
    .end local v5    # "definitions":Landroid/os/Bundle;
    move-object/from16 v1, v16

    goto/16 :goto_f

    .line 764
    :cond_115
    move-object/from16 v3, p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist sendTranslationRequest(Landroid/view/translation/Translator;Ljava/util/List;)V
    .registers 10
    .param p1, "translator"    # Landroid/view/translation/Translator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/Translator;",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 505
    .local p2, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/ViewTranslationRequest;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "UiTranslationController"

    if-nez v0, :cond_e

    .line 506
    const-string v0, "No ViewTranslationRequest was collected."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void

    .line 509
    :cond_e
    new-instance v0, Landroid/view/translation/TranslationRequest$Builder;

    invoke-direct {v0}, Landroid/view/translation/TranslationRequest$Builder;-><init>()V

    .line 510
    invoke-virtual {v0, p2}, Landroid/view/translation/TranslationRequest$Builder;->setViewTranslationRequests(Ljava/util/List;)Landroid/view/translation/TranslationRequest$Builder;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Landroid/view/translation/TranslationRequest$Builder;->build()Landroid/view/translation/TranslationRequest;

    move-result-object v0

    .line 512
    .local v0, "request":Landroid/view/translation/TranslationRequest;
    const-string v2, "UiTranslation"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendTranslationRequest:{requests=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .local v2, "msg":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/translation/ViewTranslationRequest;

    .line 515
    .local v4, "viewRequest":Landroid/view/translation/ViewTranslationRequest;
    const-string/jumbo v5, "{request="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 516
    invoke-static {v4}, Landroid/view/translation/UiTranslationController;->sanitizedViewTranslationRequest(Landroid/view/translation/ViewTranslationRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 517
    const-string/jumbo v6, "}, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .end local v4    # "viewRequest":Landroid/view/translation/ViewTranslationRequest;
    goto :goto_30

    .line 519
    :cond_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendTranslationRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    :cond_6d
    new-instance v1, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda7;-><init>()V

    new-instance v2, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda8;-><init>(Landroid/view/translation/UiTranslationController;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/translation/Translator;->requestUiTranslate(Landroid/view/translation/TranslationRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 522
    return-void
.end method

.method private blacklist setLastRequestAutofillIdsLocked(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 200
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    .line 202
    :cond_b
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 203
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 205
    :cond_18
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLastRequestAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 206
    return-void
.end method

.method public static blacklist stateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 705
    packed-switch p0, :pswitch_data_2a

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 713
    :pswitch_1d
    const-string v0, "UI_TRANSLATION_FINISHED"

    return-object v0

    .line 711
    :pswitch_20
    const-string v0, "UI_TRANSLATION_RESUMED"

    return-object v0

    .line 709
    :pswitch_23
    const-string v0, "UI_TRANSLATION_PAUSED"

    return-object v0

    .line 707
    :pswitch_26
    const-string v0, "UI_TRANSLATION_STARTED"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 215
    const-string v0, ""

    .line 216
    .local v0, "outerPrefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "UiTranslationController:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "pfx":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "activity: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "resumed: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isResumed()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 220
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "current state: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 221
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 222
    .local v2, "translatorSize":I
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "number translator: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 223
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5b
    if-ge v3, v2, :cond_79

    .line 224
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 225
    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/translation/Translator;

    .line 226
    .local v4, "translator":Landroid/view/translation/Translator;
    invoke-virtual {v4, v0, p1}, Landroid/view/translation/Translator;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 227
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 223
    .end local v4    # "translator":Landroid/view/translation/Translator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 229
    .end local v3    # "i":I
    :cond_79
    iget-object v3, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 230
    :try_start_7c
    iget-object v4, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 231
    .local v4, "viewSize":I
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "number views: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 232
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8e
    if-ge v5, v4, :cond_cb

    .line 233
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "#"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 234
    iget-object v6, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 235
    .local v6, "autofillId":Landroid/view/autofill/AutofillId;
    iget-object v7, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 236
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "autofillId: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "view:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 232
    .end local v6    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v7    # "view":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_8e

    .line 239
    .end local v5    # "i":I
    :cond_cb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "padded views: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/view/translation/UiTranslationController;->mViewsToPadContent:Landroid/util/ArraySet;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 240
    .end local v4    # "viewSize":I
    monitor-exit v3
    :try_end_d9
    .catchall {:try_start_7c .. :try_end_d9} :catchall_e6

    .line 241
    const-string v3, "UiTranslation"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 242
    invoke-direct {p0, v0, p1}, Landroid/view/translation/UiTranslationController;->dumpViewByTraversal(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 244
    :cond_e5
    return-void

    .line 240
    :catchall_e6
    move-exception v4

    :try_start_e7
    monitor-exit v3
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v4
.end method

.method public whitelist getDumpableName()Ljava/lang/String;
    .registers 2

    .line 210
    const-string v0, "UiTranslationController"

    return-object v0
.end method

.method public blacklist onActivityDestroyed()V
    .registers 5

    .line 178
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    const-string v1, "UiTranslationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityDestroyed(): mCurrentState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    invoke-static {v3}, Landroid/view/translation/UiTranslationController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget v1, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2a

    .line 181
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/translation/UiTranslationController;->notifyTranslationFinished(Z)V

    .line 183
    :cond_2a
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 184
    invoke-direct {p0}, Landroid/view/translation/UiTranslationController;->destroyTranslators()V

    .line 185
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public blacklist onTranslationCompleted(Landroid/view/translation/TranslationResponse;)V
    .registers 14
    .param p1, "response"    # Landroid/view/translation/TranslationResponse;

    .line 300
    if-eqz p1, :cond_99

    invoke-virtual {p1}, Landroid/view/translation/TranslationResponse;->getTranslationStatus()I

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_99

    .line 307
    :cond_a
    nop

    .line 308
    invoke-virtual {p1}, Landroid/view/translation/TranslationResponse;->getViewTranslationResponses()Landroid/util/SparseArray;

    move-result-object v0

    .line 309
    .local v0, "translatedResult":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 310
    .local v1, "viewsResult":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 312
    .local v2, "virtualViewsResult":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Landroid/view/translation/ViewTranslationResponse;>;>;"
    new-instance v3, Landroid/util/IntArray;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/IntArray;-><init>(I)V

    .line 313
    .local v3, "viewIds":Landroid/util/IntArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_83

    .line 314
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/translation/ViewTranslationResponse;

    .line 315
    .local v6, "result":Landroid/view/translation/ViewTranslationResponse;
    invoke-virtual {v6}, Landroid/view/translation/ViewTranslationResponse;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 316
    .local v7, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/util/IntArray;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_41

    .line 317
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/util/IntArray;->add(I)V

    .line 319
    :cond_41
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 320
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v1, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_80

    .line 322
    :cond_4f
    nop

    .line 323
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_5c

    move v8, v4

    goto :goto_5d

    :cond_5c
    const/4 v8, 0x0

    .line 325
    .local v8, "isVirtualViewAdded":Z
    :goto_5d
    if-eqz v8, :cond_6a

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    goto :goto_6f

    .line 326
    :cond_6a
    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    :goto_6f
    nop

    .line 327
    .local v9, "childIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getVirtualChildLongId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 328
    if-nez v8, :cond_80

    .line 329
    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v10

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    .end local v6    # "result":Landroid/view/translation/ViewTranslationResponse;
    .end local v7    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v8    # "isVirtualViewAdded":Z
    .end local v9    # "childIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    :cond_80
    :goto_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 334
    .end local v5    # "i":I
    :cond_83
    invoke-direct {p0, v3}, Landroid/view/translation/UiTranslationController;->findViewsTraversalByAutofillIds(Landroid/util/IntArray;)V

    .line 336
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_8f

    .line 337
    invoke-direct {p0, v1}, Landroid/view/translation/UiTranslationController;->onTranslationCompleted(Landroid/util/SparseArray;)V

    .line 339
    :cond_8f
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_98

    .line 340
    invoke-direct {p0, v2}, Landroid/view/translation/UiTranslationController;->onVirtualViewTranslationCompleted(Landroid/util/SparseArray;)V

    .line 342
    :cond_98
    return-void

    .line 302
    .end local v0    # "translatedResult":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    .end local v1    # "viewsResult":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    .end local v2    # "virtualViewsResult":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Landroid/view/translation/ViewTranslationResponse;>;>;"
    .end local v3    # "viewIds":Landroid/util/IntArray;
    :cond_99
    :goto_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail result from TranslationService, status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_a9

    .line 303
    const-string v1, "null"

    goto :goto_b1

    .line 304
    :cond_a9
    invoke-virtual {p1}, Landroid/view/translation/TranslationResponse;->getTranslationStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v1, "UiTranslationController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public blacklist updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p5, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 121
    .local p4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 122
    const-string v0, "UiTranslationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/view/translation/UiTranslationController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for destroyed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 125
    :cond_31
    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 126
    .local v0, "isLoggable":Z
    const-string v1, "UiTranslationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUiTranslationState state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/translation/UiTranslationController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 127
    if-eqz v0, :cond_6e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", views: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_70

    :cond_6e
    const-string v3, ""

    :goto_70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_7e
    iput p1, p0, Landroid/view/translation/UiTranslationController;->mCurrentState:I

    .line 130
    if-eqz p4, :cond_85

    .line 131
    invoke-direct {p0, p4}, Landroid/view/translation/UiTranslationController;->setLastRequestAutofillIdsLocked(Ljava/util/List;)V

    .line 133
    :cond_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_10e

    .line 134
    packed-switch p1, :pswitch_data_112

    .line 170
    const-string v1, "UiTranslationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAutoTranslationStateChange(): unknown state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .line 160
    :pswitch_a2
    invoke-direct {p0}, Landroid/view/translation/UiTranslationController;->destroyTranslators()V

    .line 161
    new-instance v1, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p0, v1}, Landroid/view/translation/UiTranslationController;->runForEachView(Ljava/util/function/BiConsumer;)V

    .line 164
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/translation/UiTranslationController;->notifyTranslationFinished(Z)V

    .line 165
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_b4
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mViews:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 167
    monitor-exit v1

    .line 168
    goto :goto_10d

    .line 167
    :catchall_bb
    move-exception v2

    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_b4 .. :try_end_bd} :catchall_bb

    throw v2

    .line 157
    :pswitch_be
    new-instance v1, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, v1}, Landroid/view/translation/UiTranslationController;->runForEachView(Ljava/util/function/BiConsumer;)V

    .line 158
    goto :goto_10d

    .line 154
    :pswitch_c7
    new-instance v1, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v1}, Landroid/view/translation/UiTranslationController;->runForEachView(Ljava/util/function/BiConsumer;)V

    .line 155
    goto :goto_10d

    .line 136
    :pswitch_d0
    if-eqz p5, :cond_e5

    invoke-virtual {p5}, Landroid/view/translation/UiTranslationSpec;->shouldPadContentForCompat()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 137
    iget-object v1, p0, Landroid/view/translation/UiTranslationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_db
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mViewsToPadContent:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 141
    monitor-exit v1

    goto :goto_e5

    :catchall_e2
    move-exception v2

    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_e2

    throw v2

    .line 143
    :cond_e5
    :goto_e5
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .local v1, "specs":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;>;"
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_101

    .line 146
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mWorkerHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v3, p0, p2, p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10d

    .line 150
    :cond_101
    iget-object v2, p0, Landroid/view/translation/UiTranslationController;->mTranslators:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/translation/Translator;

    invoke-direct {p0, v2, p4}, Landroid/view/translation/UiTranslationController;->onUiTranslationStarted(Landroid/view/translation/Translator;Ljava/util/List;)V

    .line 152
    nop

    .line 172
    .end local v1    # "specs":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;>;"
    :goto_10d
    return-void

    .line 133
    :catchall_10e
    move-exception v2

    :try_start_10f
    monitor-exit v1
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    throw v2

    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_d0
        :pswitch_c7
        :pswitch_be
        :pswitch_a2
    .end packed-switch
.end method
