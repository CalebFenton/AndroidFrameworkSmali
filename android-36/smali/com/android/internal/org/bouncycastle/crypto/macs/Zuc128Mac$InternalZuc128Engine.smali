.class Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;
.super Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;
.source "Zuc128Mac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalZuc128Engine"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist createKeyStreamWord()I
    .registers 2

    .line 244
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->makeKeyStreamWord()I

    move-result v0

    return v0
.end method
