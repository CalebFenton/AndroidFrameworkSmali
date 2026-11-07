.class public final enum Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;
.super Ljava/lang/Enum;
.source "ProtoLogToolInjected.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/common/ProtoLogToolInjected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

.field public static final enum blacklist CACHE_UPDATER:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

.field public static final enum blacklist LEGACY_OUTPUT_FILE_PATH:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

.field public static final enum blacklist LEGACY_VIEWER_CONFIG_PATH:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

.field public static final enum blacklist LOG_GROUPS:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

.field public static final enum blacklist VIEWER_CONFIG_PATH:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;
    .registers 5

    .line 25
    sget-object v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->VIEWER_CONFIG_PATH:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    sget-object v1, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->LEGACY_OUTPUT_FILE_PATH:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    sget-object v2, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->LEGACY_VIEWER_CONFIG_PATH:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    sget-object v3, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->LOG_GROUPS:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    sget-object v4, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->CACHE_UPDATER:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    const-string v1, "VIEWER_CONFIG_PATH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->VIEWER_CONFIG_PATH:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    .line 27
    new-instance v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    const-string v1, "LEGACY_OUTPUT_FILE_PATH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->LEGACY_OUTPUT_FILE_PATH:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    .line 28
    new-instance v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    const-string v1, "LEGACY_VIEWER_CONFIG_PATH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->LEGACY_VIEWER_CONFIG_PATH:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    .line 29
    new-instance v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    const-string v1, "LOG_GROUPS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->LOG_GROUPS:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    .line 30
    new-instance v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    const-string v1, "CACHE_UPDATER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->CACHE_UPDATER:Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    .line 25
    invoke-static {}, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->$values()[Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    move-result-object v0

    sput-object v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->$VALUES:[Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;
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

    .line 25
    const-class v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->$VALUES:[Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    invoke-virtual {v0}, [Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;

    return-object v0
.end method
