.class final enum Landroid/net/nsd/NsdManager$ServiceValidationType;
.super Ljava/lang/Enum;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ServiceValidationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/nsd/NsdManager$ServiceValidationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/nsd/NsdManager$ServiceValidationType;

.field public static final enum blacklist HAS_SERVICE:Landroid/net/nsd/NsdManager$ServiceValidationType;

.field public static final enum blacklist HAS_SERVICE_ZERO_PORT:Landroid/net/nsd/NsdManager$ServiceValidationType;

.field public static final enum blacklist NO_SERVICE:Landroid/net/nsd/NsdManager$ServiceValidationType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/nsd/NsdManager$ServiceValidationType;
    .registers 3

    .line 1750
    sget-object v0, Landroid/net/nsd/NsdManager$ServiceValidationType;->NO_SERVICE:Landroid/net/nsd/NsdManager$ServiceValidationType;

    sget-object v1, Landroid/net/nsd/NsdManager$ServiceValidationType;->HAS_SERVICE:Landroid/net/nsd/NsdManager$ServiceValidationType;

    sget-object v2, Landroid/net/nsd/NsdManager$ServiceValidationType;->HAS_SERVICE_ZERO_PORT:Landroid/net/nsd/NsdManager$ServiceValidationType;

    filled-new-array {v0, v1, v2}, [Landroid/net/nsd/NsdManager$ServiceValidationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1751
    new-instance v0, Landroid/net/nsd/NsdManager$ServiceValidationType;

    const-string v1, "NO_SERVICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/nsd/NsdManager$ServiceValidationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/nsd/NsdManager$ServiceValidationType;->NO_SERVICE:Landroid/net/nsd/NsdManager$ServiceValidationType;

    .line 1752
    new-instance v0, Landroid/net/nsd/NsdManager$ServiceValidationType;

    const-string v1, "HAS_SERVICE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/nsd/NsdManager$ServiceValidationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/nsd/NsdManager$ServiceValidationType;->HAS_SERVICE:Landroid/net/nsd/NsdManager$ServiceValidationType;

    .line 1753
    new-instance v0, Landroid/net/nsd/NsdManager$ServiceValidationType;

    const-string v1, "HAS_SERVICE_ZERO_PORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/nsd/NsdManager$ServiceValidationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/nsd/NsdManager$ServiceValidationType;->HAS_SERVICE_ZERO_PORT:Landroid/net/nsd/NsdManager$ServiceValidationType;

    .line 1750
    invoke-static {}, Landroid/net/nsd/NsdManager$ServiceValidationType;->$values()[Landroid/net/nsd/NsdManager$ServiceValidationType;

    move-result-object v0

    sput-object v0, Landroid/net/nsd/NsdManager$ServiceValidationType;->$VALUES:[Landroid/net/nsd/NsdManager$ServiceValidationType;

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

    .line 1750
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/nsd/NsdManager$ServiceValidationType;
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

    .line 1750
    const-class v0, Landroid/net/nsd/NsdManager$ServiceValidationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager$ServiceValidationType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/nsd/NsdManager$ServiceValidationType;
    .registers 1

    .line 1750
    sget-object v0, Landroid/net/nsd/NsdManager$ServiceValidationType;->$VALUES:[Landroid/net/nsd/NsdManager$ServiceValidationType;

    invoke-virtual {v0}, [Landroid/net/nsd/NsdManager$ServiceValidationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/nsd/NsdManager$ServiceValidationType;

    return-object v0
.end method
