.class public Lcom/android/internal/org/bouncycastle/util/Characters;
.super Ljava/lang/Object;
.source "Characters.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist valueOf(C)Ljava/lang/Character;
    .registers 2
    .param p0, "c"    # C

    .line 11
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method
