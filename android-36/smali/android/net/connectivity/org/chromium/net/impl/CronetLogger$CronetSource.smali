.class public final enum Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;
.super Ljava/lang/Enum;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CronetSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum blacklist CRONET_SOURCE_FAKE:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum blacklist CRONET_SOURCE_FALLBACK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum blacklist CRONET_SOURCE_PLATFORM:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum blacklist CRONET_SOURCE_PLAY_SERVICES:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum blacklist CRONET_SOURCE_STATICALLY_LINKED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

.field public static final enum blacklist CRONET_SOURCE_UNSPECIFIED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;
    .registers 6

    .line 17
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_UNSPECIFIED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_STATICALLY_LINKED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLAY_SERVICES:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FALLBACK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    sget-object v4, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLATFORM:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    sget-object v5, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FAKE:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    filled-new-array/range {v0 .. v5}, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 19
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_UNSPECIFIED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 21
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_STATICALLY_LINKED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_STATICALLY_LINKED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 23
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_PLAY_SERVICES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLAY_SERVICES:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 25
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_FALLBACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FALLBACK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 27
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_PLATFORM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLATFORM:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 29
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    const-string v1, "CRONET_SOURCE_FAKE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FAKE:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 17
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->$values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->$VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;
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

    .line 17
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;
    .registers 1

    .line 17
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->$VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-virtual {v0}, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    return-object v0
.end method
