.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;
.super Ljava/lang/Object;
.source "IESKEMParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist recipientInfo:[B

.field private final blacklist usePointCompression:Z


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "recipientInfo"    # [B

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;-><init>([BZ)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>([BZ)V
    .registers 4
    .param p1, "recipientInfo"    # [B
    .param p2, "usePointCompression"    # Z

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;->recipientInfo:[B

    .line 41
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;->usePointCompression:Z

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist getRecipientInfo()[B
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;->recipientInfo:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasUsePointCompression()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;->usePointCompression:Z

    return v0
.end method
