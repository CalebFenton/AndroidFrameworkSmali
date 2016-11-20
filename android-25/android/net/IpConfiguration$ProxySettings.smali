.class public final enum Landroid/net/IpConfiguration$ProxySettings;
.super Ljava/lang/Enum;
.source "IpConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProxySettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/IpConfiguration$ProxySettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/IpConfiguration$ProxySettings;

.field public static final enum NONE:Landroid/net/IpConfiguration$ProxySettings;

.field public static final enum PAC:Landroid/net/IpConfiguration$ProxySettings;

.field public static final enum STATIC:Landroid/net/IpConfiguration$ProxySettings;

.field public static final enum UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;


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
    .line 48
    new-instance v0, Landroid/net/IpConfiguration$ProxySettings;

    #@6
    const-string/jumbo v1, "NONE"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/net/IpConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    #@c
    .line 50
    sput-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@e
    .line 51
    new-instance v0, Landroid/net/IpConfiguration$ProxySettings;

    #@10
    const-string/jumbo v1, "STATIC"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/net/IpConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    #@16
    .line 53
    sput-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    #@18
    .line 54
    new-instance v0, Landroid/net/IpConfiguration$ProxySettings;

    #@1a
    const-string/jumbo v1, "UNASSIGNED"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/net/IpConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    #@20
    .line 56
    sput-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    #@22
    .line 57
    new-instance v0, Landroid/net/IpConfiguration$ProxySettings;

    #@24
    const-string/jumbo v1, "PAC"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/net/IpConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 59
    sput-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    #@2c
    .line 47
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/net/IpConfiguration$ProxySettings;

    #@2f
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/net/IpConfiguration$ProxySettings;->$VALUES:[Landroid/net/IpConfiguration$ProxySettings;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    const-class v0, Landroid/net/IpConfiguration$ProxySettings;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/IpConfiguration$ProxySettings;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/net/IpConfiguration$ProxySettings;
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->$VALUES:[Landroid/net/IpConfiguration$ProxySettings;

    #@2
    return-object v0
.end method
