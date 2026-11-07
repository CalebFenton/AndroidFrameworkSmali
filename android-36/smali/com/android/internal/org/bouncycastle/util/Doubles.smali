.class public Lcom/android/internal/org/bouncycastle/util/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist valueOf(D)Ljava/lang/Double;
    .registers 3
    .param p0, "value"    # D

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
