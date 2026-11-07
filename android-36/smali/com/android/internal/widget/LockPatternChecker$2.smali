.class Lcom/android/internal/widget/LockPatternChecker$2;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mThrottleTimeout:I

.field final synthetic blacklist val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

.field final synthetic blacklist val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic blacklist val$userId:I

.field final synthetic blacklist val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .registers 5

    .line 104
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    iput p3, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$userId:I

    iput-object p4, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "args"    # [Ljava/lang/Void;

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    iget v2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$userId:I

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/internal/widget/LockPatternChecker$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/internal/widget/LockPatternChecker$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_18
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    .line 111
    :catch_19
    move-exception v0

    .line 112
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->mThrottleTimeout:I

    .line 113
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 104
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist onCancelled()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onCancelled()V

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 127
    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->mThrottleTimeout:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onChecked(ZI)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 121
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 104
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
