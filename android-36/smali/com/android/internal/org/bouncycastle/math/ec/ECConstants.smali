.class public interface abstract Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;
.super Ljava/lang/Object;
.source "ECConstants.java"


# static fields
.field public static final blacklist EIGHT:Ljava/math/BigInteger;

.field public static final blacklist FOUR:Ljava/math/BigInteger;

.field public static final blacklist ONE:Ljava/math/BigInteger;

.field public static final blacklist THREE:Ljava/math/BigInteger;

.field public static final blacklist TWO:Ljava/math/BigInteger;

.field public static final blacklist ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 11
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 12
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 13
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 14
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    .line 15
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    .line 16
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->EIGHT:Ljava/math/BigInteger;

    return-void
.end method
