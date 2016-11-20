.class public Lcom/android/server/pm/IntentFilterVerificationState;
.super Ljava/lang/Object;
.source "IntentFilterVerificationState.java"


# static fields
.field public static final STATE_UNDEFINED:I = 0x0

.field public static final STATE_VERIFICATION_FAILURE:I = 0x3

.field public static final STATE_VERIFICATION_PENDING:I = 0x1

.field public static final STATE_VERIFICATION_SUCCESS:I = 0x2

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHosts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mRequiredVerifierUid:I

.field private mState:I

.field private mUserId:I

.field private mVerificationComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 27
    const-class v0, Lcom/android/server/pm/IntentFilterVerificationState;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/pm/IntentFilterVerificationState;->TAG:Ljava/lang/String;

    #@8
    .line 26
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 34
    iput v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    #@6
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mFilters:Ljava/util/ArrayList;

    #@d
    .line 39
    new-instance v0, Landroid/util/ArraySet;

    #@f
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    #@14
    .line 46
    iput p1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    #@16
    .line 47
    iput p2, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mUserId:I

    #@18
    .line 48
    iput-object p3, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mPackageName:Ljava/lang/String;

    #@1a
    .line 49
    iput v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    #@1c
    .line 50
    iput-boolean v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    #@1e
    .line 45
    return-void
.end method


# virtual methods
.method public addFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .locals 2
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mFilters:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 123
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    #@7
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getHostsList()Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@e
    .line 121
    return-void
.end method

.method public getFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mFilters:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getHostsString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 94
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    #@7
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@a
    move-result v0

    #@b
    .line 95
    .local v0, "count":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@e
    .line 96
    if-lez v1, :cond_0

    #@10
    .line 97
    const-string/jumbo v3, " "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 99
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    #@18
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/lang/String;

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 95
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 101
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    return-object v3
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 62
    iget v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    #@2
    return v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mUserId:I

    #@2
    return v0
.end method

.method public isVerificationComplete()Z
    .locals 1

    #@0
    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    #@2
    return v0
.end method

.method public isVerified()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    iget-boolean v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 79
    iget v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    #@7
    const/4 v2, 0x2

    #@8
    if-ne v1, v2, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0

    #@c
    .line 81
    :cond_1
    return v0
.end method

.method public setPendingState()V
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setState(I)V

    #@4
    .line 65
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    const/4 v0, 0x3

    #@2
    if-gt p1, v0, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    .line 55
    :cond_0
    iput v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    #@8
    .line 53
    :goto_0
    return-void

    #@9
    .line 57
    :cond_1
    iput p1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    #@b
    goto :goto_0
.end method

.method public setVerifierResponse(II)Z
    .locals 4
    .param p1, "callerUid"    # I
    .param p2, "code"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 105
    iget v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    #@3
    if-ne v1, p1, :cond_2

    #@5
    .line 106
    const/4 v0, 0x0

    #@6
    .line 107
    .local v0, "state":I
    if-ne p2, v2, :cond_1

    #@8
    .line 108
    const/4 v0, 0x2

    #@9
    .line 112
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    #@b
    .line 113
    invoke-virtual {p0, v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setState(I)V

    #@e
    .line 114
    return v2

    #@f
    .line 109
    :cond_1
    const/4 v1, -0x1

    #@10
    if-ne p2, v1, :cond_0

    #@12
    .line 110
    const/4 v0, 0x3

    #@13
    goto :goto_0

    #@14
    .line 116
    .end local v0    # "state":I
    :cond_2
    sget-object v1, Lcom/android/server/pm/IntentFilterVerificationState;->TAG:Ljava/lang/String;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Cannot set verifier response with callerUid:"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, " and code:"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 117
    const-string/jumbo v3, " as required verifierUid is:"

    #@34
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 117
    iget v3, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    #@3a
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 118
    const/4 v1, 0x0

    #@46
    return v1
.end method
