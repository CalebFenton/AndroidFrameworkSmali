.class public final enum Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;
.super Ljava/lang/Enum;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Author"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

.field public static final enum blacklist API:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

.field public static final enum blacklist IMPL:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;
    .registers 2

    .line 67
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->API:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->IMPL:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    filled-new-array {v0, v1}, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 68
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    const-string v1, "API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->API:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    .line 69
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    const-string v1, "IMPL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->IMPL:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    .line 67
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->$values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->$VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

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

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;
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

    .line 67
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;
    .registers 1

    .line 67
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->$VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    invoke-virtual {v0}, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    return-object v0
.end method
