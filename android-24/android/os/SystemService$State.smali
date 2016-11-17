.class public final enum Landroid/os/SystemService$State;
.super Ljava/lang/Enum;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/SystemService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/SystemService$State;

.field public static final enum RESTARTING:Landroid/os/SystemService$State;

.field public static final enum RUNNING:Landroid/os/SystemService$State;

.field public static final enum STOPPED:Landroid/os/SystemService$State;

.field public static final enum STOPPING:Landroid/os/SystemService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 37
    new-instance v0, Landroid/os/SystemService$State;

    #@6
    const-string/jumbo v1, "RUNNING"

    #@9
    const-string/jumbo v2, "running"

    #@c
    invoke-direct {v0, v1, v3, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@f
    sput-object v0, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    #@11
    .line 38
    new-instance v0, Landroid/os/SystemService$State;

    #@13
    const-string/jumbo v1, "STOPPING"

    #@16
    const-string/jumbo v2, "stopping"

    #@19
    invoke-direct {v0, v1, v4, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1c
    sput-object v0, Landroid/os/SystemService$State;->STOPPING:Landroid/os/SystemService$State;

    #@1e
    .line 39
    new-instance v0, Landroid/os/SystemService$State;

    #@20
    const-string/jumbo v1, "STOPPED"

    #@23
    const-string/jumbo v2, "stopped"

    #@26
    invoke-direct {v0, v1, v5, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@29
    sput-object v0, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    #@2b
    .line 40
    new-instance v0, Landroid/os/SystemService$State;

    #@2d
    const-string/jumbo v1, "RESTARTING"

    #@30
    const-string/jumbo v2, "restarting"

    #@33
    invoke-direct {v0, v1, v6, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@36
    sput-object v0, Landroid/os/SystemService$State;->RESTARTING:Landroid/os/SystemService$State;

    #@38
    .line 36
    const/4 v0, 0x4

    #@39
    new-array v0, v0, [Landroid/os/SystemService$State;

    #@3b
    sget-object v1, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    #@3d
    aput-object v1, v0, v3

    #@3f
    sget-object v1, Landroid/os/SystemService$State;->STOPPING:Landroid/os/SystemService$State;

    #@41
    aput-object v1, v0, v4

    #@43
    sget-object v1, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    #@45
    aput-object v1, v0, v5

    #@47
    sget-object v1, Landroid/os/SystemService$State;->RESTARTING:Landroid/os/SystemService$State;

    #@49
    aput-object v1, v0, v6

    #@4b
    sput-object v0, Landroid/os/SystemService$State;->$VALUES:[Landroid/os/SystemService$State;

    #@4d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "state"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 43
    invoke-static {}, Landroid/os/SystemService;->-get1()Ljava/util/HashMap;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/SystemService$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    const-class v0, Landroid/os/SystemService$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/SystemService$State;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/os/SystemService$State;
    .locals 1

    #@0
    .prologue
    .line 36
    sget-object v0, Landroid/os/SystemService$State;->$VALUES:[Landroid/os/SystemService$State;

    #@2
    return-object v0
.end method
