.class final Lcom/android/internal/widget/LockPatternChecker$2;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternChecker$2$-java_lang_Boolean_doInBackground_java_lang_Void__args_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

.field final synthetic val$pattern:Ljava/util/List;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static synthetic -com_android_internal_widget_LockPatternChecker$2-mthref-0(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .locals 0

    #@0
    .prologue
    .line 102
    invoke-interface {p0}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onEarlyMatched()V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .locals 0
    .param p1, "val$utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p3, "val$userId"    # I
    .param p4, "val$callback"    # Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    #@0
    .prologue
    .line 96
    .local p2, "val$pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$pattern:Ljava/util/List;

    #@4
    iput p3, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$userId:I

    #@6
    iput-object p4, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    #@8
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$pattern:Ljava/util/List;

    #@4
    iget v3, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$userId:I

    #@6
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    #@8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    new-instance v5, Lcom/android/internal/widget/LockPatternChecker$2$-java_lang_Boolean_doInBackground_java_lang_Void__args_LambdaImpl0;

    #@d
    invoke-direct {v5, v4}, Lcom/android/internal/widget/LockPatternChecker$2$-java_lang_Boolean_doInBackground_java_lang_Void__args_LambdaImpl0;-><init>(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    #@10
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    #@13
    move-result v1

    #@14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 103
    :catch_0
    move-exception v0

    #@1a
    .line 104
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    #@1d
    move-result v1

    #@1e
    iput v1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->mThrottleTimeout:I

    #@20
    .line 105
    const/4 v1, 0x0

    #@21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@24
    move-result-object v1

    #@25
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 100
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    #@2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@5
    move-result v1

    #@6
    iget v2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->mThrottleTimeout:I

    #@8
    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onChecked(ZI)V

    #@b
    .line 110
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 110
    check-cast p1, Ljava/lang/Boolean;

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$2;->onPostExecute(Ljava/lang/Boolean;)V

    #@5
    return-void
.end method
