.class public final enum Landroid/net/wifi/WpsResult$Status;
.super Ljava/lang/Enum;
.source "WpsResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WpsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/WpsResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/WpsResult$Status;

.field public static final enum FAILURE:Landroid/net/wifi/WpsResult$Status;

.field public static final enum IN_PROGRESS:Landroid/net/wifi/WpsResult$Status;

.field public static final enum SUCCESS:Landroid/net/wifi/WpsResult$Status;


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
    .line 29
    new-instance v0, Landroid/net/wifi/WpsResult$Status;

    #@5
    const-string/jumbo v1, "SUCCESS"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WpsResult$Status;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    #@d
    .line 30
    new-instance v0, Landroid/net/wifi/WpsResult$Status;

    #@f
    const-string/jumbo v1, "FAILURE"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/net/wifi/WpsResult$Status;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@17
    .line 31
    new-instance v0, Landroid/net/wifi/WpsResult$Status;

    #@19
    const-string/jumbo v1, "IN_PROGRESS"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/net/wifi/WpsResult$Status;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Landroid/net/wifi/WpsResult$Status;->IN_PROGRESS:Landroid/net/wifi/WpsResult$Status;

    #@21
    .line 28
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/net/wifi/WpsResult$Status;

    #@24
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->IN_PROGRESS:Landroid/net/wifi/WpsResult$Status;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/net/wifi/WpsResult$Status;->$VALUES:[Landroid/net/wifi/WpsResult$Status;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/WpsResult$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    const-class v0, Landroid/net/wifi/WpsResult$Status;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/wifi/WpsResult$Status;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/net/wifi/WpsResult$Status;
    .locals 1

    #@0
    .prologue
    .line 28
    sget-object v0, Landroid/net/wifi/WpsResult$Status;->$VALUES:[Landroid/net/wifi/WpsResult$Status;

    #@2
    return-object v0
.end method
