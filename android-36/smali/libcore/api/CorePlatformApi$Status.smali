.class public final enum Llibcore/api/CorePlatformApi$Status;
.super Ljava/lang/Enum;
.source "CorePlatformApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/api/CorePlatformApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llibcore/api/CorePlatformApi$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Llibcore/api/CorePlatformApi$Status;

.field public static final enum blacklist LEGACY_ONLY:Llibcore/api/CorePlatformApi$Status;

.field public static final enum blacklist STABLE:Llibcore/api/CorePlatformApi$Status;


# direct methods
.method private static synthetic blacklist $values()[Llibcore/api/CorePlatformApi$Status;
    .registers 2

    .line 48
    sget-object v0, Llibcore/api/CorePlatformApi$Status;->STABLE:Llibcore/api/CorePlatformApi$Status;

    sget-object v1, Llibcore/api/CorePlatformApi$Status;->LEGACY_ONLY:Llibcore/api/CorePlatformApi$Status;

    filled-new-array {v0, v1}, [Llibcore/api/CorePlatformApi$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 55
    new-instance v0, Llibcore/api/CorePlatformApi$Status;

    const-string v1, "STABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llibcore/api/CorePlatformApi$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/api/CorePlatformApi$Status;->STABLE:Llibcore/api/CorePlatformApi$Status;

    .line 62
    new-instance v0, Llibcore/api/CorePlatformApi$Status;

    const-string v1, "LEGACY_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Llibcore/api/CorePlatformApi$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/api/CorePlatformApi$Status;->LEGACY_ONLY:Llibcore/api/CorePlatformApi$Status;

    .line 48
    invoke-static {}, Llibcore/api/CorePlatformApi$Status;->$values()[Llibcore/api/CorePlatformApi$Status;

    move-result-object v0

    sput-object v0, Llibcore/api/CorePlatformApi$Status;->$VALUES:[Llibcore/api/CorePlatformApi$Status;

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

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Llibcore/api/CorePlatformApi$Status;
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

    .line 48
    const-class v0, Llibcore/api/CorePlatformApi$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llibcore/api/CorePlatformApi$Status;

    return-object v0
.end method

.method public static blacklist values()[Llibcore/api/CorePlatformApi$Status;
    .registers 1

    .line 48
    sget-object v0, Llibcore/api/CorePlatformApi$Status;->$VALUES:[Llibcore/api/CorePlatformApi$Status;

    invoke-virtual {v0}, [Llibcore/api/CorePlatformApi$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llibcore/api/CorePlatformApi$Status;

    return-object v0
.end method
