.class public final enum Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;
.super Ljava/lang/Enum;
.source "LSTMBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/breakiter/LSTMBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LSTMClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

.field public static final enum blacklist BEGIN:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

.field public static final enum blacklist END:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

.field public static final enum blacklist INSIDE:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

.field public static final enum blacklist SINGLE:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;
    .registers 4

    .line 45
    sget-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->BEGIN:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    sget-object v1, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->INSIDE:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    sget-object v2, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->END:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    sget-object v3, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->SINGLE:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    const-string v1, "BEGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->BEGIN:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    .line 47
    new-instance v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    const-string v1, "INSIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->INSIDE:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    .line 48
    new-instance v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    const-string v1, "END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->END:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    .line 49
    new-instance v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    const-string v1, "SINGLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->SINGLE:Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    .line 45
    invoke-static {}, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->$values()[Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->$VALUES:[Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;
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

    .line 45
    const-class v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;
    .registers 1

    .line 45
    sget-object v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->$VALUES:[Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    invoke-virtual {v0}, [Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMClass;

    return-object v0
.end method
