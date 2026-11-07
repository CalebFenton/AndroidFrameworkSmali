.class public final enum Lcom/android/internal/annotations/CacheModifier;
.super Ljava/lang/Enum;
.source "CacheModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/annotations/CacheModifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/annotations/CacheModifier;

.field public static final enum blacklist STATIC:Lcom/android/internal/annotations/CacheModifier;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/annotations/CacheModifier;
    .registers 1

    .line 19
    sget-object v0, Lcom/android/internal/annotations/CacheModifier;->STATIC:Lcom/android/internal/annotations/CacheModifier;

    filled-new-array {v0}, [Lcom/android/internal/annotations/CacheModifier;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lcom/android/internal/annotations/CacheModifier;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/annotations/CacheModifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/annotations/CacheModifier;->STATIC:Lcom/android/internal/annotations/CacheModifier;

    .line 19
    invoke-static {}, Lcom/android/internal/annotations/CacheModifier;->$values()[Lcom/android/internal/annotations/CacheModifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/annotations/CacheModifier;->$VALUES:[Lcom/android/internal/annotations/CacheModifier;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/annotations/CacheModifier;
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

    .line 19
    const-class v0, Lcom/android/internal/annotations/CacheModifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/annotations/CacheModifier;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/annotations/CacheModifier;
    .registers 1

    .line 19
    sget-object v0, Lcom/android/internal/annotations/CacheModifier;->$VALUES:[Lcom/android/internal/annotations/CacheModifier;

    invoke-virtual {v0}, [Lcom/android/internal/annotations/CacheModifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/annotations/CacheModifier;

    return-object v0
.end method
