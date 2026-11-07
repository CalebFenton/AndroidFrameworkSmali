.class Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
.super Ljava/lang/Object;
.source "ZTauElement.java"


# instance fields
.field public final blacklist u:Ljava/math/BigInteger;

.field public final blacklist v:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "u"    # Ljava/math/BigInteger;
    .param p2, "v"    # Ljava/math/BigInteger;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 36
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 37
    return-void
.end method
