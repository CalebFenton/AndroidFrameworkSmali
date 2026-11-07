.class Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;
.super Ljava/lang/Object;
.source "StatsLogImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/metrics/StatsLogImpl;->write(IZIIII[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$atomId:I

.field final synthetic blacklist val$cipherSuite:I

.field final synthetic blacklist val$duration:I

.field final synthetic blacklist val$protocol:I

.field final synthetic blacklist val$source:I

.field final synthetic blacklist val$success:Z

.field final synthetic blacklist val$uids:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/metrics/StatsLogImpl;IZIIII[I)V
    .registers 9
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput p2, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$atomId:I

    iput-boolean p3, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$success:Z

    iput p4, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$protocol:I

    iput p5, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$cipherSuite:I

    iput p6, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$duration:I

    iput p7, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$source:I

    iput-object p8, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$uids:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 147
    iget v0, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$atomId:I

    iget-boolean v1, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$success:Z

    iget v2, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$protocol:I

    iget v3, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$cipherSuite:I

    iget v4, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$duration:I

    iget v5, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$source:I

    iget-object v6, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$2;->val$uids:[I

    invoke-static/range {v0 .. v6}, Lcom/android/org/conscrypt/metrics/ConscryptStatsLog;->write(IZIIII[I)V

    .line 149
    return-void
.end method
