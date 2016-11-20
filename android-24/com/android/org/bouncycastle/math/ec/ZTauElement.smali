.class Lcom/android/org/bouncycastle/math/ec/ZTauElement;
.super Ljava/lang/Object;
.source "ZTauElement.java"


# instance fields
.field public final u:Ljava/math/BigInteger;

.field public final v:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "u"    # Ljava/math/BigInteger;
    .param p2, "v"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    #@5
    .line 35
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    #@7
    .line 32
    return-void
.end method
