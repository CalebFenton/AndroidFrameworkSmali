.class Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;
.super Ljava/lang/Object;
.source "StatsLogImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/metrics/StatsLogImpl;->write(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$atomId:I

.field final synthetic blacklist val$loadedCompatVersion:I

.field final synthetic blacklist val$majorVersion:I

.field final synthetic blacklist val$minCompatVersionAvailable:I

.field final synthetic blacklist val$minorVersion:I

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/metrics/StatsLogImpl;IIIIII)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/org/conscrypt/metrics/StatsLogImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput p2, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$atomId:I

    iput p3, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$status:I

    iput p4, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$loadedCompatVersion:I

    iput p5, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$minCompatVersionAvailable:I

    iput p6, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$majorVersion:I

    iput p7, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$minorVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 158
    iget v0, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$atomId:I

    iget v1, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$status:I

    iget v2, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$loadedCompatVersion:I

    iget v3, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$minCompatVersionAvailable:I

    iget v4, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$majorVersion:I

    iget v5, p0, Lcom/android/org/conscrypt/metrics/StatsLogImpl$3;->val$minorVersion:I

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/metrics/ConscryptStatsLog;->write(IIIIII)V

    .line 160
    return-void
.end method
