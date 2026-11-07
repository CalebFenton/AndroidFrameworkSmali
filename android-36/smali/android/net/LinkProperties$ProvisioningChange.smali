.class public final enum Landroid/net/LinkProperties$ProvisioningChange;
.super Ljava/lang/Enum;
.source "LinkProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProvisioningChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/LinkProperties$ProvisioningChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum greylist GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum greylist LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum greylist STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum greylist STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/LinkProperties$ProvisioningChange;
    .registers 4

    .line 103
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    filled-new-array {v0, v1, v2, v3}, [Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 106
    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    const-string v1, "STILL_NOT_PROVISIONED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    .line 108
    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    const-string v1, "LOST_PROVISIONING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 110
    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    const-string v1, "GAINED_PROVISIONING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 112
    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    const-string v1, "STILL_PROVISIONED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    .line 103
    invoke-static {}, Landroid/net/LinkProperties$ProvisioningChange;->$values()[Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->$VALUES:[Landroid/net/LinkProperties$ProvisioningChange;

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

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/net/LinkProperties$ProvisioningChange;
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

    .line 103
    const-class v0, Landroid/net/LinkProperties$ProvisioningChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0
.end method

.method public static greylist values()[Landroid/net/LinkProperties$ProvisioningChange;
    .registers 1

    .line 103
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->$VALUES:[Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v0}, [Landroid/net/LinkProperties$ProvisioningChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0
.end method
