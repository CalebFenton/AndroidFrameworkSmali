.class Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;
.super Ljava/lang/Object;
.source "StatsLogImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/metrics/StatsLogImpl;->write(IIIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$atomId:I

.field final synthetic blacklist val$majorVersion:I

.field final synthetic blacklist val$minorVersion:I

.field final synthetic blacklist val$numEmbeddedScts:I

.field final synthetic blacklist val$numOcspScts:I

.field final synthetic blacklist val$numTlsScts:I

.field final synthetic blacklist val$policyCompatVersion:I

.field final synthetic blacklist val$verificationReason:I

.field final synthetic blacklist val$verificationResult:I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/metrics/StatsLogImpl;IIIIIIIII)V
    .registers 11
    .param p1, "this$0"    # Lcom/android/org/conscrypt/metrics/StatsLogImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput p2, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$atomId:I

    iput p3, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$verificationResult:I

    iput p4, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$verificationReason:I

    iput p5, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$policyCompatVersion:I

    iput p6, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$majorVersion:I

    iput p7, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$minorVersion:I

    iput p8, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$numEmbeddedScts:I

    iput p9, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$numOcspScts:I

    iput p10, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$numTlsScts:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 10

    .line 170
    iget v0, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$atomId:I

    iget v1, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$verificationResult:I

    iget v2, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$verificationReason:I

    iget v3, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$policyCompatVersion:I

    iget v4, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$majorVersion:I

    iget v5, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$minorVersion:I

    iget v6, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$numEmbeddedScts:I

    iget v7, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$numOcspScts:I

    iget v8, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$4;->val$numTlsScts:I

    invoke-static/range {v0 .. v8}, Lcom/android/org/conscrypt/metrics/ConscryptStatsLog;->write(IIIIIIIII)V

    .line 173
    return-void
.end method
