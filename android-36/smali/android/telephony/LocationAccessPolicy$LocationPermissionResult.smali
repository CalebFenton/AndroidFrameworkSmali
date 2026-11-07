.class public final enum Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
.super Ljava/lang/Enum;
.source "LocationAccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/LocationAccessPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationPermissionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

.field public static final enum blacklist ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

.field public static final enum blacklist DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

.field public static final enum blacklist DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;


# direct methods
.method private static synthetic blacklist $values()[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .registers 3

    .line 48
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    sget-object v2, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    filled-new-array {v0, v1, v2}, [Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const-string v1, "ALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    .line 54
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const-string v1, "DENIED_SOFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    .line 58
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const-string v1, "DENIED_HARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    .line 48
    invoke-static {}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->$values()[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    sput-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->$VALUES:[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
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
    const-class v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0
.end method

.method public static blacklist values()[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .registers 1

    .line 48
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->$VALUES:[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    invoke-virtual {v0}, [Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0
.end method
