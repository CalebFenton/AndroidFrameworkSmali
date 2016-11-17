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
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/LinkProperties$ProvisioningChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

.field public static final enum STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 92
    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    #@6
    const-string/jumbo v1, "STILL_NOT_PROVISIONED"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    #@e
    .line 93
    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    #@10
    const-string/jumbo v1, "LOST_PROVISIONING"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@18
    .line 94
    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    #@1a
    const-string/jumbo v1, "GAINED_PROVISIONING"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@22
    .line 95
    new-instance v0, Landroid/net/LinkProperties$ProvisioningChange;

    #@24
    const-string/jumbo v1, "STILL_PROVISIONED"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/net/LinkProperties$ProvisioningChange;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    #@2c
    .line 91
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/net/LinkProperties$ProvisioningChange;

    #@2f
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/net/LinkProperties$ProvisioningChange;->$VALUES:[Landroid/net/LinkProperties$ProvisioningChange;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    const-class v0, Landroid/net/LinkProperties$ProvisioningChange;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/LinkProperties$ProvisioningChange;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/net/LinkProperties$ProvisioningChange;
    .locals 1

    #@0
    .prologue
    .line 91
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->$VALUES:[Landroid/net/LinkProperties$ProvisioningChange;

    #@2
    return-object v0
.end method
