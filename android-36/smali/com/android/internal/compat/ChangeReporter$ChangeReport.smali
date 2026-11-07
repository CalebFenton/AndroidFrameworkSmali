.class final Lcom/android/internal/compat/ChangeReporter$ChangeReport;
.super Ljava/lang/Object;
.source "ChangeReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/ChangeReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChangeReport"
.end annotation


# instance fields
.field blacklist mChangeId:J

.field blacklist mState:I


# direct methods
.method constructor blacklist <init>(JI)V
    .registers 4
    .param p1, "changeId"    # J
    .param p3, "state"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    .line 58
    iput p3, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 64
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    .line 65
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    .line 66
    .local v2, "that":Lcom/android/internal/compat/ChangeReporter$ChangeReport;
    iget-wide v3, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    iget-wide v5, v2, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    iget v3, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    iget v4, v2, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    .line 64
    .end local v2    # "that":Lcom/android/internal/compat/ChangeReporter$ChangeReport;
    :cond_26
    :goto_26
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
