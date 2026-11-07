.class final enum Landroid/net/nsd/NsdManager$HostValidationType;
.super Ljava/lang/Enum;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HostValidationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/nsd/NsdManager$HostValidationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/nsd/NsdManager$HostValidationType;

.field public static final enum blacklist CUSTOM_HOST:Landroid/net/nsd/NsdManager$HostValidationType;

.field public static final enum blacklist CUSTOM_HOST_NO_ADDRESS:Landroid/net/nsd/NsdManager$HostValidationType;

.field public static final enum blacklist DEFAULT_HOST:Landroid/net/nsd/NsdManager$HostValidationType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/nsd/NsdManager$HostValidationType;
    .registers 3

    .line 1756
    sget-object v0, Landroid/net/nsd/NsdManager$HostValidationType;->DEFAULT_HOST:Landroid/net/nsd/NsdManager$HostValidationType;

    sget-object v1, Landroid/net/nsd/NsdManager$HostValidationType;->CUSTOM_HOST:Landroid/net/nsd/NsdManager$HostValidationType;

    sget-object v2, Landroid/net/nsd/NsdManager$HostValidationType;->CUSTOM_HOST_NO_ADDRESS:Landroid/net/nsd/NsdManager$HostValidationType;

    filled-new-array {v0, v1, v2}, [Landroid/net/nsd/NsdManager$HostValidationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1757
    new-instance v0, Landroid/net/nsd/NsdManager$HostValidationType;

    const-string v1, "DEFAULT_HOST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/nsd/NsdManager$HostValidationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/nsd/NsdManager$HostValidationType;->DEFAULT_HOST:Landroid/net/nsd/NsdManager$HostValidationType;

    .line 1758
    new-instance v0, Landroid/net/nsd/NsdManager$HostValidationType;

    const-string v1, "CUSTOM_HOST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/nsd/NsdManager$HostValidationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/nsd/NsdManager$HostValidationType;->CUSTOM_HOST:Landroid/net/nsd/NsdManager$HostValidationType;

    .line 1759
    new-instance v0, Landroid/net/nsd/NsdManager$HostValidationType;

    const-string v1, "CUSTOM_HOST_NO_ADDRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/nsd/NsdManager$HostValidationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/nsd/NsdManager$HostValidationType;->CUSTOM_HOST_NO_ADDRESS:Landroid/net/nsd/NsdManager$HostValidationType;

    .line 1756
    invoke-static {}, Landroid/net/nsd/NsdManager$HostValidationType;->$values()[Landroid/net/nsd/NsdManager$HostValidationType;

    move-result-object v0

    sput-object v0, Landroid/net/nsd/NsdManager$HostValidationType;->$VALUES:[Landroid/net/nsd/NsdManager$HostValidationType;

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

    .line 1756
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/nsd/NsdManager$HostValidationType;
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

    .line 1756
    const-class v0, Landroid/net/nsd/NsdManager$HostValidationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager$HostValidationType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/nsd/NsdManager$HostValidationType;
    .registers 1

    .line 1756
    sget-object v0, Landroid/net/nsd/NsdManager$HostValidationType;->$VALUES:[Landroid/net/nsd/NsdManager$HostValidationType;

    invoke-virtual {v0}, [Landroid/net/nsd/NsdManager$HostValidationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/nsd/NsdManager$HostValidationType;

    return-object v0
.end method
