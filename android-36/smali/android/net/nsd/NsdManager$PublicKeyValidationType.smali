.class final enum Landroid/net/nsd/NsdManager$PublicKeyValidationType;
.super Ljava/lang/Enum;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PublicKeyValidationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/nsd/NsdManager$PublicKeyValidationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/nsd/NsdManager$PublicKeyValidationType;

.field public static final enum blacklist HAS_KEY:Landroid/net/nsd/NsdManager$PublicKeyValidationType;

.field public static final enum blacklist NO_KEY:Landroid/net/nsd/NsdManager$PublicKeyValidationType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/nsd/NsdManager$PublicKeyValidationType;
    .registers 2

    .line 1762
    sget-object v0, Landroid/net/nsd/NsdManager$PublicKeyValidationType;->NO_KEY:Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    sget-object v1, Landroid/net/nsd/NsdManager$PublicKeyValidationType;->HAS_KEY:Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    filled-new-array {v0, v1}, [Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1763
    new-instance v0, Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    const-string v1, "NO_KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/nsd/NsdManager$PublicKeyValidationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/nsd/NsdManager$PublicKeyValidationType;->NO_KEY:Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    .line 1764
    new-instance v0, Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    const-string v1, "HAS_KEY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/nsd/NsdManager$PublicKeyValidationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/nsd/NsdManager$PublicKeyValidationType;->HAS_KEY:Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    .line 1762
    invoke-static {}, Landroid/net/nsd/NsdManager$PublicKeyValidationType;->$values()[Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    move-result-object v0

    sput-object v0, Landroid/net/nsd/NsdManager$PublicKeyValidationType;->$VALUES:[Landroid/net/nsd/NsdManager$PublicKeyValidationType;

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

    .line 1762
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/nsd/NsdManager$PublicKeyValidationType;
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

    .line 1762
    const-class v0, Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/nsd/NsdManager$PublicKeyValidationType;
    .registers 1

    .line 1762
    sget-object v0, Landroid/net/nsd/NsdManager$PublicKeyValidationType;->$VALUES:[Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    invoke-virtual {v0}, [Landroid/net/nsd/NsdManager$PublicKeyValidationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    return-object v0
.end method
