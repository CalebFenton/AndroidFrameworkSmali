.class public final Lcom/android/internal/widget/LockPatternChecker;
.super Ljava/lang/Object;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;,
        Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
    .registers 7
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "I",
            "Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 104
    .local v0, "credentialCopy":Lcom/android/internal/widget/LockscreenCredential;
    new-instance v1, Lcom/android/internal/widget/LockPatternChecker$2;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/internal/widget/LockPatternChecker$2;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    .line 129
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    return-object v1
.end method

.method public static blacklist verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
    .registers 11
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "II",
            "Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    .line 68
    .local v2, "credentialCopy":Lcom/android/internal/widget/LockscreenCredential;
    new-instance v0, Lcom/android/internal/widget/LockPatternChecker$1;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    .end local p2    # "userId":I
    .end local p3    # "flags":I
    .end local p4    # "callback":Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    .local v1, "utils":Lcom/android/internal/widget/LockPatternUtils;
    .local v3, "userId":I
    .local v4, "flags":I
    .local v5, "callback":Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V

    .line 86
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/internal/widget/VerifyCredentialResponse;>;"
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-object v0
.end method

.method public static blacklist verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
    .registers 11
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "II",
            "Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    .line 150
    .local v2, "credentialCopy":Lcom/android/internal/widget/LockscreenCredential;
    new-instance v0, Lcom/android/internal/widget/LockPatternChecker$3;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    .end local p2    # "userId":I
    .end local p3    # "flags":I
    .end local p4    # "callback":Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    .local v1, "utils":Lcom/android/internal/widget/LockPatternUtils;
    .local v3, "userId":I
    .local v4, "flags":I
    .local v5, "callback":Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker$3;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V

    .line 168
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/internal/widget/VerifyCredentialResponse;>;"
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-object v0
.end method
