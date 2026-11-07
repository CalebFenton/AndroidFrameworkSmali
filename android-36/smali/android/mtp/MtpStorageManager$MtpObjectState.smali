.class final enum Landroid/mtp/MtpStorageManager$MtpObjectState;
.super Ljava/lang/Enum;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MtpObjectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/mtp/MtpStorageManager$MtpObjectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;


# direct methods
.method private static synthetic blacklist $values()[Landroid/mtp/MtpStorageManager$MtpObjectState;
    .registers 6

    .line 118
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    sget-object v2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    sget-object v3, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    sget-object v4, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

    sget-object v5, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    filled-new-array/range {v0 .. v5}, [Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 119
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 120
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "FROZEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 121
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "FROZEN_ADDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 122
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "FROZEN_REMOVED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 123
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "FROZEN_ONESHOT_ADD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 124
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "FROZEN_ONESHOT_DEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 118
    invoke-static {}, Landroid/mtp/MtpStorageManager$MtpObjectState;->$values()[Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->$VALUES:[Landroid/mtp/MtpStorageManager$MtpObjectState;

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

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObjectState;
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

    .line 118
    const-class v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/mtp/MtpStorageManager$MtpObjectState;
    .registers 1

    .line 118
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->$VALUES:[Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-virtual {v0}, [Landroid/mtp/MtpStorageManager$MtpObjectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-object v0
.end method
