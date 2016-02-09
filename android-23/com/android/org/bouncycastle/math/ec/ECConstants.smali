.class public interface abstract Lcom/android/org/bouncycastle/math/ec/ECConstants;
.super Ljava/lang/Object;
.source "ECConstants.java"


# static fields
.field public static final FOUR:Ljava/math/BigInteger;

.field public static final ONE:Ljava/math/BigInteger;

.field public static final THREE:Ljava/math/BigInteger;

.field public static final TWO:Ljava/math/BigInteger;

.field public static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 7
    const-wide/16 v0, 0x0

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@8
    .line 8
    const-wide/16 v0, 0x1

    #@a
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@10
    .line 9
    const-wide/16 v0, 0x2

    #@12
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    #@18
    .line 10
    const-wide/16 v0, 0x3

    #@1a
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    #@20
    .line 11
    const-wide/16 v0, 0x4

    #@22
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    #@28
    .line 5
    return-void
.end method
