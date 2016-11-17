.class public final enum Landroid/net/NetworkInfo$State;
.super Ljava/lang/Enum;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/NetworkInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/NetworkInfo$State;

.field public static final enum CONNECTED:Landroid/net/NetworkInfo$State;

.field public static final enum CONNECTING:Landroid/net/NetworkInfo$State;

.field public static final enum DISCONNECTED:Landroid/net/NetworkInfo$State;

.field public static final enum DISCONNECTING:Landroid/net/NetworkInfo$State;

.field public static final enum SUSPENDED:Landroid/net/NetworkInfo$State;

.field public static final enum UNKNOWN:Landroid/net/NetworkInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 52
    new-instance v0, Landroid/net/NetworkInfo$State;

    #@7
    const-string/jumbo v1, "CONNECTING"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    #@f
    new-instance v0, Landroid/net/NetworkInfo$State;

    #@11
    const-string/jumbo v1, "CONNECTED"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    #@19
    new-instance v0, Landroid/net/NetworkInfo$State;

    #@1b
    const-string/jumbo v1, "SUSPENDED"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@23
    new-instance v0, Landroid/net/NetworkInfo$State;

    #@25
    const-string/jumbo v1, "DISCONNECTING"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    #@2d
    new-instance v0, Landroid/net/NetworkInfo$State;

    #@2f
    const-string/jumbo v1, "DISCONNECTED"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@37
    new-instance v0, Landroid/net/NetworkInfo$State;

    #@39
    const-string/jumbo v1, "UNKNOWN"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$State;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    #@42
    .line 51
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Landroid/net/NetworkInfo$State;

    #@45
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Landroid/net/NetworkInfo$State;->$VALUES:[Landroid/net/NetworkInfo$State;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    const-class v0, Landroid/net/NetworkInfo$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/NetworkInfo$State;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/net/NetworkInfo$State;
    .locals 1

    #@0
    .prologue
    .line 51
    sget-object v0, Landroid/net/NetworkInfo$State;->$VALUES:[Landroid/net/NetworkInfo$State;

    #@2
    return-object v0
.end method
