.class public final enum Landroid/icu/impl/CacheValue$Strength;
.super Ljava/lang/Enum;
.source "CacheValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CacheValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/CacheValue$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/CacheValue$Strength;

.field public static final enum blacklist SOFT:Landroid/icu/impl/CacheValue$Strength;

.field public static final enum blacklist STRONG:Landroid/icu/impl/CacheValue$Strength;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/CacheValue$Strength;
    .registers 2

    .line 42
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    sget-object v1, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    filled-new-array {v0, v1}, [Landroid/icu/impl/CacheValue$Strength;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Landroid/icu/impl/CacheValue$Strength;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CacheValue$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    .line 52
    new-instance v0, Landroid/icu/impl/CacheValue$Strength;

    const-string v1, "SOFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CacheValue$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    .line 42
    invoke-static {}, Landroid/icu/impl/CacheValue$Strength;->$values()[Landroid/icu/impl/CacheValue$Strength;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/CacheValue$Strength;->$VALUES:[Landroid/icu/impl/CacheValue$Strength;

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

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/CacheValue$Strength;
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

    .line 42
    const-class v0, Landroid/icu/impl/CacheValue$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/CacheValue$Strength;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/CacheValue$Strength;
    .registers 1

    .line 42
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->$VALUES:[Landroid/icu/impl/CacheValue$Strength;

    invoke-virtual {v0}, [Landroid/icu/impl/CacheValue$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/CacheValue$Strength;

    return-object v0
.end method
