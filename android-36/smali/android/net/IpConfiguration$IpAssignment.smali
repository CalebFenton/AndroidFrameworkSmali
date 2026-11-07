.class public final enum Landroid/net/IpConfiguration$IpAssignment;
.super Ljava/lang/Enum;
.source "IpConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpAssignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/IpConfiguration$IpAssignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/IpConfiguration$IpAssignment;

.field public static final enum whitelist DHCP:Landroid/net/IpConfiguration$IpAssignment;

.field public static final enum whitelist STATIC:Landroid/net/IpConfiguration$IpAssignment;

.field public static final enum whitelist UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/IpConfiguration$IpAssignment;
    .registers 3

    .line 40
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    filled-new-array {v0, v1, v2}, [Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 45
    new-instance v0, Landroid/net/IpConfiguration$IpAssignment;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/IpConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    .line 47
    new-instance v0, Landroid/net/IpConfiguration$IpAssignment;

    const-string v1, "DHCP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/IpConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 50
    new-instance v0, Landroid/net/IpConfiguration$IpAssignment;

    const-string v1, "UNASSIGNED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/IpConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    .line 40
    invoke-static {}, Landroid/net/IpConfiguration$IpAssignment;->$values()[Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    sput-object v0, Landroid/net/IpConfiguration$IpAssignment;->$VALUES:[Landroid/net/IpConfiguration$IpAssignment;

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

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;
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

    .line 40
    const-class v0, Landroid/net/IpConfiguration$IpAssignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/IpConfiguration$IpAssignment;

    return-object v0
.end method

.method public static whitelist values()[Landroid/net/IpConfiguration$IpAssignment;
    .registers 1

    .line 40
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->$VALUES:[Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0}, [Landroid/net/IpConfiguration$IpAssignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/IpConfiguration$IpAssignment;

    return-object v0
.end method
