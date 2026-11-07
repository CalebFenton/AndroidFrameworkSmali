.class public final enum Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;
.super Ljava/lang/Enum;
.source "LSTMBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/breakiter/LSTMBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmbeddingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

.field public static final enum blacklist CODE_POINTS:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

.field public static final enum blacklist GRAPHEME_CLUSTER:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

.field public static final enum blacklist UNKNOWN:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;
    .registers 3

    .line 36
    sget-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->UNKNOWN:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    sget-object v1, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->CODE_POINTS:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    sget-object v2, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->GRAPHEME_CLUSTER:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    filled-new-array {v0, v1, v2}, [Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 37
    new-instance v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->UNKNOWN:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    .line 38
    new-instance v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    const-string v1, "CODE_POINTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->CODE_POINTS:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    .line 39
    new-instance v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    const-string v1, "GRAPHEME_CLUSTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->GRAPHEME_CLUSTER:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    .line 36
    invoke-static {}, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->$values()[Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->$VALUES:[Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    const-class v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;
    .registers 1

    .line 36
    sget-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->$VALUES:[Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    invoke-virtual {v0}, [Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    return-object v0
.end method
