.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mExtendedTimeout:Z

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private final mRequiredVerifierUid:I

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 1
    .param p1, "requiredVerifierUid"    # I
    .param p2, "args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    #@5
    .line 58
    iput-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@7
    .line 59
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@9
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    #@e
    .line 60
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    #@11
    .line 56
    return-void
.end method


# virtual methods
.method public addSufficientVerifier(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@6
    .line 72
    return-void
.end method

.method public extendTimeout()V
    .locals 1

    #@0
    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 158
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    #@7
    .line 156
    :cond_0
    return-void
.end method

.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@2
    return-object v0
.end method

.method public isInstallAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 143
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 147
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    #@c
    return v0

    #@d
    .line 150
    :cond_1
    const/4 v0, 0x1

    #@e
    return v0
.end method

.method public isVerificationComplete()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 124
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 125
    return v1

    #@6
    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    #@8
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 129
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 132
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    #@12
    return v0
.end method

.method public setVerifierResponse(II)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "code"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 84
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 85
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    #@8
    .line 86
    packed-switch p2, :pswitch_data_0

    #@b
    .line 94
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    #@d
    .line 96
    :goto_0
    return v1

    #@e
    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    #@10
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    #@13
    .line 91
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    #@15
    goto :goto_0

    #@16
    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    #@18
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_3

    #@1e
    .line 99
    if-ne p2, v1, :cond_1

    #@20
    .line 100
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    #@22
    .line 101
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    #@24
    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    #@26
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@29
    .line 105
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    #@2b
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_2

    #@31
    .line 106
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    #@33
    .line 109
    :cond_2
    return v1

    #@34
    .line 113
    :cond_3
    return v2

    #@35
    .line 86
    nop

    #@36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public timeoutExtended()Z
    .locals 1

    #@0
    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    #@2
    return v0
.end method
