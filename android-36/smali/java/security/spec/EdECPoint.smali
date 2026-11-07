.class public final Ljava/security/spec/EdECPoint;
.super Ljava/lang/Object;
.source "EdECPoint.java"


# instance fields
.field private final blacklist xOdd:Z

.field private final blacklist y:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(ZLjava/math/BigInteger;)V
    .registers 4
    .param p1, "xOdd"    # Z
    .param p2, "y"    # Ljava/math/BigInteger;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "y must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iput-boolean p1, p0, Ljava/security/spec/EdECPoint;->xOdd:Z

    .line 66
    iput-object p2, p0, Ljava/security/spec/EdECPoint;->y:Ljava/math/BigInteger;

    .line 67
    return-void
.end method


# virtual methods
.method public whitelist test-api getY()Ljava/math/BigInteger;
    .registers 2

    .line 84
    iget-object v0, p0, Ljava/security/spec/EdECPoint;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api isXOdd()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Ljava/security/spec/EdECPoint;->xOdd:Z

    return v0
.end method
