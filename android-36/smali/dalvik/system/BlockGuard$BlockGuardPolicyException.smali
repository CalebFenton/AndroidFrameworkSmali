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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist mMessage:Ljava/lang/String;

.field private final greylist mPolicyState:I

.field private final greylist mPolicyViolated:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 4
    .param p1, "policyState"    # I
    .param p2, "policyViolated"    # I

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;-><init>(IILjava/lang/String;)V

    .line 158
    return-void
.end method

.method public constructor greylist <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "policyState"    # I
    .param p2, "policyViolated"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 162
    iput p1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    .line 163
    iput p2, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    .line 164
    iput-object p3, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    .line 165
    return-void
.end method


# virtual methods
.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " violation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    iget-object v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    if-nez v1, :cond_24

    const-string v1, ""

    goto :goto_39

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    return-object v0
.end method

.method public greylist-max-o getPolicy()I
    .registers 2

    .line 168
    iget v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    return v0
.end method

.method public greylist-max-o getPolicyViolation()I
    .registers 2

    .line 172
    iget v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    return v0
.end method
