.class public final enum Landroid/icu/impl/number/CompactData$CompactType;
.super Ljava/lang/Enum;
.source "CompactData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/CompactData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompactType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/CompactData$CompactType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/number/CompactData$CompactType;

.field public static final enum blacklist CURRENCY:Landroid/icu/impl/number/CompactData$CompactType;

.field public static final enum blacklist DECIMAL:Landroid/icu/impl/number/CompactData$CompactType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/number/CompactData$CompactType;
    .registers 2

    .line 29
    sget-object v0, Landroid/icu/impl/number/CompactData$CompactType;->DECIMAL:Landroid/icu/impl/number/CompactData$CompactType;

    sget-object v1, Landroid/icu/impl/number/CompactData$CompactType;->CURRENCY:Landroid/icu/impl/number/CompactData$CompactType;

    filled-new-array {v0, v1}, [Landroid/icu/impl/number/CompactData$CompactType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Landroid/icu/impl/number/CompactData$CompactType;

    const-string v1, "DECIMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/CompactData$CompactType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/CompactData$CompactType;->DECIMAL:Landroid/icu/impl/number/CompactData$CompactType;

    new-instance v0, Landroid/icu/impl/number/CompactData$CompactType;

    const-string v1, "CURRENCY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/CompactData$CompactType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/CompactData$CompactType;->CURRENCY:Landroid/icu/impl/number/CompactData$CompactType;

    .line 29
    invoke-static {}, Landroid/icu/impl/number/CompactData$CompactType;->$values()[Landroid/icu/impl/number/CompactData$CompactType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/CompactData$CompactType;->$VALUES:[Landroid/icu/impl/number/CompactData$CompactType;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/number/CompactData$CompactType;
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

    .line 29
    const-class v0, Landroid/icu/impl/number/CompactData$CompactType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/CompactData$CompactType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/number/CompactData$CompactType;
    .registers 1

    .line 29
    sget-object v0, Landroid/icu/impl/number/CompactData$CompactType;->$VALUES:[Landroid/icu/impl/number/CompactData$CompactType;

    invoke-virtual {v0}, [Landroid/icu/impl/number/CompactData$CompactType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/CompactData$CompactType;

    return-object v0
.end method
