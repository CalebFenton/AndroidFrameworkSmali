.class final Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;
.super Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AugmentedAutofillManagerClient"
.end annotation


# instance fields
.field private final blacklist mAfm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/autofill/AutofillManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/view/autofill/AutofillManager;)V
    .registers 3
    .param p1, "autofillManager"    # Landroid/view/autofill/AutofillManager;

    .line 4975
    invoke-direct {p0}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;-><init>()V

    .line 4976
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 4977
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;)V

    return-void
.end method

.method private blacklist getView(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .registers 8
    .param p1, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 5097
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 5098
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    const-string v1, "getView("

    const-string v2, "AutofillManager"

    if-nez v0, :cond_26

    .line 5099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): no autofill client"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    const/4 v1, 0x0

    return-object v1

    .line 5102
    :cond_26
    invoke-interface {v0, p2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v3

    .line 5103
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_46

    .line 5104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "): could not find view"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    :cond_46
    return-object v3
.end method

.method static synthetic blacklist lambda$autofill$1(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V
    .registers 5
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "ids"    # Ljava/util/List;
    .param p3, "values"    # Ljava/util/List;
    .param p4, "hideHighlight"    # Z

    .line 5050
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->-$$Nest$mautofill(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$getViewNodeParcelable$0(Landroid/view/View;Landroid/app/assist/AssistStructure$ViewNodeBuilder;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewStructure"    # Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 5000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 5001
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5002
    return-void
.end method

.method static synthetic blacklist lambda$requestAutofill$4(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V
    .registers 2
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "view"    # Landroid/view/View;

    .line 5091
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->requestAutofillFromNewSession(Landroid/view/View;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestHideFillUi$3(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .registers 3
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 5068
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestHideFillUi(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$requestShowFillUi$2(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 7
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "anchorBounds"    # Landroid/graphics/Rect;
    .param p6, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 5059
    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestShowFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method


# virtual methods
.method public blacklist autofill(ILjava/util/List;Ljava/util/List;Z)V
    .registers 12
    .param p1, "sessionId"    # I
    .param p4, "hideHighlight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;Z)V"
        }
    .end annotation

    .line 5048
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/autofill/AutofillManager;

    .line 5049
    .local v2, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v2, :cond_18

    .line 5050
    new-instance v1, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda4;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "sessionId":I
    .end local p2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local p4    # "hideHighlight":Z
    .local v3, "sessionId":I
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .local v6, "hideHighlight":Z
    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda4;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    invoke-virtual {v2, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    goto :goto_1c

    .line 5049
    .end local v3    # "sessionId":I
    .end local v4    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v6    # "hideHighlight":Z
    .restart local p1    # "sessionId":I
    .restart local p2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .restart local p3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .restart local p4    # "hideHighlight":Z
    :cond_18
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 5052
    .end local p1    # "sessionId":I
    .end local p2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local p4    # "hideHighlight":Z
    .restart local v3    # "sessionId":I
    .restart local v4    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .restart local v5    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .restart local v6    # "hideHighlight":Z
    :goto_1c
    return-void
.end method

.method public blacklist getViewCoordinates(Landroid/view/autofill/AutofillId;)Landroid/graphics/Rect;
    .registers 12
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 5025
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 5026
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 5028
    :cond_c
    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->getView(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v2

    .line 5029
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_13

    .line 5030
    return-object v1

    .line 5032
    :cond_13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 5033
    .local v1, "windowVisibleDisplayFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5034
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 5035
    .local v3, "location":[I
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5036
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v7, 0x1

    aget v8, v3, v7

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    aget v5, v3, v5

    .line 5037
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v5, v9

    aget v7, v3, v7

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v9

    .line 5038
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v7, v9

    invoke-direct {v4, v6, v8, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5039
    .local v4, "rect":Landroid/graphics/Rect;
    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_66

    .line 5040
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Coordinates for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillManager"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5042
    :cond_66
    return-object v4
.end method

.method public blacklist getViewNodeParcelable(Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNodeParcelable;
    .registers 11
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 4982
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4983
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 4985
    :cond_c
    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->getView(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v2

    .line 4986
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_31

    .line 4987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getViewNodeParcelable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): could not find view"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4988
    return-object v1

    .line 4990
    :cond_31
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 4991
    .local v3, "root":Landroid/view/ViewRootImpl;
    if-eqz v3, :cond_80

    .line 4992
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x2000

    if-nez v4, :cond_80

    .line 4993
    new-instance v4, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    invoke-direct {v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>()V

    .line 4994
    .local v4, "viewStructure":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 4997
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4998
    .local v5, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v6, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda1;

    invoke-direct {v6, v2, v4, v5}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Landroid/app/assist/AssistStructure$ViewNodeBuilder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v6}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 5005
    :try_start_59
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v7, v8, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_60} :catch_77

    .line 5009
    nop

    .line 5015
    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v6

    .line 5016
    .local v6, "viewNode":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v6, :cond_80

    invoke-virtual {v6}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 5017
    new-instance v1, Landroid/app/assist/AssistStructure$ViewNodeParcelable;

    invoke-direct {v1, v6}, Landroid/app/assist/AssistStructure$ViewNodeParcelable;-><init>(Landroid/app/assist/AssistStructure$ViewNode;)V

    return-object v1

    .line 5006
    .end local v6    # "viewNode":Landroid/app/assist/AssistStructure$ViewNode;
    :catch_77
    move-exception v6

    .line 5007
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 5008
    return-object v1

    .line 5020
    .end local v4    # "viewStructure":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    .end local v5    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_80
    return-object v1
.end method

.method public blacklist requestAutofill(ILandroid/view/autofill/AutofillId;)Z
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 5074
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 5075
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    const/4 v1, 0x0

    const-string v2, "AutofillManager"

    if-eqz v0, :cond_3f

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmSessionId(Landroid/view/autofill/AutofillManager;)I

    move-result v3

    if-eq v3, p1, :cond_14

    goto :goto_3f

    .line 5081
    :cond_14
    invoke-direct {p0, v0, p2}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->getView(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v3

    .line 5082
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_35

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_35

    .line 5088
    :cond_21
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2b

    .line 5089
    const-string/jumbo v1, "requestAutofill() by AugmentedAutofillService."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    :cond_2b
    new-instance v1, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v3}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda0;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 5092
    const/4 v1, 0x1

    return v1

    .line 5083
    :cond_35
    :goto_35
    sget-boolean v4, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_3e

    .line 5084
    const-string v4, "View not available or is not on focus"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    :cond_3e
    return v1

    .line 5076
    .end local v3    # "view":Landroid/view/View;
    :cond_3f
    :goto_3f
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_48

    .line 5077
    const-string v3, "Autofill not available or sessionId doesn\'t match"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    :cond_48
    return v1
.end method

.method public blacklist requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 5066
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 5067
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 5068
    new-instance v1, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p2}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 5070
    :cond_12
    return-void
.end method

.method public blacklist requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 16
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "anchorBounds"    # Landroid/graphics/Rect;
    .param p6, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 5057
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/autofill/AutofillManager;

    .line 5058
    .local v2, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v2, :cond_1a

    .line 5059
    new-instance v1, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda2;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "sessionId":I
    .end local p2    # "id":Landroid/view/autofill/AutofillId;
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "anchorBounds":Landroid/graphics/Rect;
    .end local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .local v3, "sessionId":I
    .local v4, "id":Landroid/view/autofill/AutofillId;
    .local v5, "width":I
    .local v6, "height":I
    .local v7, "anchorBounds":Landroid/graphics/Rect;
    .local v8, "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    invoke-direct/range {v1 .. v8}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda2;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    invoke-virtual {v2, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    goto :goto_20

    .line 5058
    .end local v3    # "sessionId":I
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "anchorBounds":Landroid/graphics/Rect;
    .end local v8    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .restart local p1    # "sessionId":I
    .restart local p2    # "id":Landroid/view/autofill/AutofillId;
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    .restart local p5    # "anchorBounds":Landroid/graphics/Rect;
    .restart local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    :cond_1a
    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 5062
    .end local p1    # "sessionId":I
    .end local p2    # "id":Landroid/view/autofill/AutofillId;
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "anchorBounds":Landroid/graphics/Rect;
    .end local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .restart local v3    # "sessionId":I
    .restart local v4    # "id":Landroid/view/autofill/AutofillId;
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .restart local v7    # "anchorBounds":Landroid/graphics/Rect;
    .restart local v8    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    :goto_20
    return-void
.end method
