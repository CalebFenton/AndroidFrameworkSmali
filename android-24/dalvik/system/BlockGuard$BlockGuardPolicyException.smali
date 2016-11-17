.class public Ldalvik/system/BlockGuard$BlockGuardPolicyException;
.super Ljava/lang/RuntimeException;
.source "BlockGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/BlockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockGuardPolicyException"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mPolicyState:I

.field private final mPolicyViolated:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "policyState"    # I
    .param p2, "policyViolated"    # I

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;-><init>(IILjava/lang/String;)V

    #@4
    .line 83
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "policyState"    # I
    .param p2, "policyViolated"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    .line 88
    iput p1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    #@5
    .line 89
    iput p2, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    #@7
    .line 90
    iput-object p3, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    #@9
    .line 91
    invoke-virtual {p0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    #@c
    .line 87
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "policy="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " violation="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 110
    iget-object v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    #@21
    if-nez v0, :cond_0

    #@23
    const-string/jumbo v0, ""

    #@26
    .line 109
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v2, " msg="

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    iget-object v2, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    #@3d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    goto :goto_0
.end method

.method public getPolicy()I
    .locals 1

    #@0
    .prologue
    .line 95
    iget v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    #@2
    return v0
.end method

.method public getPolicyViolation()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    #@2
    return v0
.end method
