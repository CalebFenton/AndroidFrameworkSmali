.class Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;
.super Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;
.source "Zuc256Mac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalZuc256Engine"
.end annotation


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "pLength"    # I

    .line 268
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(I)V

    .line 269
    return-void
.end method


# virtual methods
.method blacklist createKeyStreamWord()I
    .registers 2

    .line 273
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->makeKeyStreamWord()I

    move-result v0

    return v0
.end method
