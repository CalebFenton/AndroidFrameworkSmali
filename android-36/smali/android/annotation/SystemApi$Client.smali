.class public final enum Landroid/annotation/SystemApi$Client;
.super Ljava/lang/Enum;
.source "SystemApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Client"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/annotation/SystemApi$Client;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/annotation/SystemApi$Client;

.field public static final enum blacklist MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;

.field public static final enum blacklist PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;

.field public static final enum blacklist SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;


# direct methods
.method private static synthetic blacklist $values()[Landroid/annotation/SystemApi$Client;
    .registers 3

    .line 44
    sget-object v0, Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;

    sget-object v1, Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;

    sget-object v2, Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;

    filled-new-array {v0, v1, v2}, [Landroid/annotation/SystemApi$Client;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Landroid/annotation/SystemApi$Client;

    const-string v1, "PRIVILEGED_APPS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/annotation/SystemApi$Client;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;

    .line 57
    new-instance v0, Landroid/annotation/SystemApi$Client;

    const-string v1, "MODULE_LIBRARIES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/annotation/SystemApi$Client;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;

    .line 64
    new-instance v0, Landroid/annotation/SystemApi$Client;

    const-string v1, "SYSTEM_SERVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/annotation/SystemApi$Client;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;

    .line 44
    invoke-static {}, Landroid/annotation/SystemApi$Client;->$values()[Landroid/annotation/SystemApi$Client;

    move-result-object v0

    sput-object v0, Landroid/annotation/SystemApi$Client;->$VALUES:[Landroid/annotation/SystemApi$Client;

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

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/annotation/SystemApi$Client;
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

    .line 44
    const-class v0, Landroid/annotation/SystemApi$Client;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/SystemApi$Client;

    return-object v0
.end method

.method public static blacklist values()[Landroid/annotation/SystemApi$Client;
    .registers 1

    .line 44
    sget-object v0, Landroid/annotation/SystemApi$Client;->$VALUES:[Landroid/annotation/SystemApi$Client;

    invoke-virtual {v0}, [Landroid/annotation/SystemApi$Client;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/SystemApi$Client;

    return-object v0
.end method
