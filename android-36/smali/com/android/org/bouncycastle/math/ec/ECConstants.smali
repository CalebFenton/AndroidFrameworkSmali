.class public interface abstract Lcom/android/org/bouncycastle/math/ec/ECConstants;
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

    const-wide/16 v0, 0x0

    .line 11
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    .line 12
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 13
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    .line 14
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x4

    .line 15
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    const-wide/16 v0, 0x8

    .line 16
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->EIGHT:Ljava/math/BigInteger;

    return-void
.end method
