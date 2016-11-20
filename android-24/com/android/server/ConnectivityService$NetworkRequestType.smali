.class final enum Lcom/android/server/ConnectivityService$NetworkRequestType;
.super Ljava/lang/Enum;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NetworkRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ConnectivityService$NetworkRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ConnectivityService$NetworkRequestType;

.field public static final enum LISTEN:Lcom/android/server/ConnectivityService$NetworkRequestType;

.field public static final enum REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

.field public static final enum TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 3817
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@5
    const-string/jumbo v1, "LISTEN"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$NetworkRequestType;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/server/ConnectivityService$NetworkRequestType;->LISTEN:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@d
    .line 3818
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@f
    const-string/jumbo v1, "TRACK_DEFAULT"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/server/ConnectivityService$NetworkRequestType;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/server/ConnectivityService$NetworkRequestType;->TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@17
    .line 3819
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@19
    const-string/jumbo v1, "REQUEST"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService$NetworkRequestType;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@21
    .line 3816
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@24
    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->LISTEN:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/server/ConnectivityService$NetworkRequestType;->$VALUES:[Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 3816
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3816
    const-class v0, Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/ConnectivityService$NetworkRequestType;
    .locals 1

    #@0
    .prologue
    .line 3816
    sget-object v0, Lcom/android/server/ConnectivityService$NetworkRequestType;->$VALUES:[Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@2
    return-object v0
.end method
