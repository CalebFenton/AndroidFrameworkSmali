.class public final enum Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;
.super Ljava/lang/Enum;
.source "IntentCreationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/selection/IntentCreationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OemUiUsageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

.field public static final enum blacklist OEM_UI_CONFIG_NOT_SPECIFIED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

.field public static final enum blacklist OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

.field public static final enum blacklist OEM_UI_CONFIG_SPECIFIED_FOUND_BUT_NOT_ENABLED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

.field public static final enum blacklist SUCCESS:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

.field public static final enum blacklist UNKNOWN:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;


# direct methods
.method private static synthetic blacklist $values()[Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;
    .registers 5

    .line 84
    sget-object v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->UNKNOWN:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    sget-object v1, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->SUCCESS:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    sget-object v2, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_NOT_SPECIFIED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    sget-object v3, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    sget-object v4, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_FOUND_BUT_NOT_ENABLED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 85
    new-instance v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->UNKNOWN:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    .line 88
    new-instance v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->SUCCESS:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    .line 90
    new-instance v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    const-string v1, "OEM_UI_CONFIG_NOT_SPECIFIED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_NOT_SPECIFIED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    .line 93
    new-instance v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    const-string v1, "OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    .line 95
    new-instance v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    const-string v1, "OEM_UI_CONFIG_SPECIFIED_FOUND_BUT_NOT_ENABLED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_FOUND_BUT_NOT_ENABLED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    .line 84
    invoke-static {}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->$values()[Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    move-result-object v0

    sput-object v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->$VALUES:[Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

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

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;
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

    .line 84
    const-class v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    return-object v0
.end method

.method public static blacklist values()[Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;
    .registers 1

    .line 84
    sget-object v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->$VALUES:[Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {v0}, [Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    return-object v0
.end method
