.class final Lcom/android/internal/widget/LockPatternChecker$3;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

.field final synthetic val$challenge:J

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V
    .locals 1
    .param p1, "val$utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "val$password"    # Ljava/lang/String;
    .param p3, "val$challenge"    # J
    .param p5, "val$userId"    # I
    .param p6, "val$callback"    # Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    #@0
    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$password:Ljava/lang/String;

    #@4
    iput-wide p3, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$challenge:J

    #@6
    iput p5, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$userId:I

    #@8
    iput-object p6, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    #@a
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 129
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$3;->doInBackground([Ljava/lang/Void;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 6
    .param p1, "args"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$password:Ljava/lang/String;

    #@4
    iget-wide v4, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$challenge:J

    #@6
    iget v3, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$userId:I

    #@8
    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 132
    :catch_0
    move-exception v0

    #@e
    .line 133
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    #@11
    move-result v1

    #@12
    iput v1, p0, Lcom/android/internal/widget/LockPatternChecker$3;->mThrottleTimeout:I

    #@14
    .line 134
    const/4 v1, 0x0

    #@15
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 139
    check-cast p1, [B

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$3;->onPostExecute([B)V

    #@5
    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2
    .param p1, "result"    # [B

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    #@2
    iget v1, p0, Lcom/android/internal/widget/LockPatternChecker$3;->mThrottleTimeout:I

    #@4
    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;->onVerified([BI)V

    #@7
    .line 139
    return-void
.end method
