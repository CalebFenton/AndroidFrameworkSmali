.class public final enum Ljava/net/Proxy$Type;
.super Ljava/lang/Enum;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/net/Proxy$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/net/Proxy$Type;

.field public static final enum DIRECT:Ljava/net/Proxy$Type;

.field public static final enum HTTP:Ljava/net/Proxy$Type;

.field public static final enum SOCKS:Ljava/net/Proxy$Type;


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
    .line 161
    new-instance v0, Ljava/net/Proxy$Type;

    #@5
    const-string/jumbo v1, "DIRECT"

    #@8
    invoke-direct {v0, v1, v2}, Ljava/net/Proxy$Type;-><init>(Ljava/lang/String;I)V

    #@b
    .line 164
    sput-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@d
    .line 166
    new-instance v0, Ljava/net/Proxy$Type;

    #@f
    const-string/jumbo v1, "HTTP"

    #@12
    invoke-direct {v0, v1, v3}, Ljava/net/Proxy$Type;-><init>(Ljava/lang/String;I)V

    #@15
    .line 170
    sput-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@17
    .line 172
    new-instance v0, Ljava/net/Proxy$Type;

    #@19
    const-string/jumbo v1, "SOCKS"

    #@1c
    invoke-direct {v0, v1, v4}, Ljava/net/Proxy$Type;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 175
    sput-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@21
    .line 160
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Ljava/net/Proxy$Type;

    #@24
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Ljava/net/Proxy$Type;->$VALUES:[Ljava/net/Proxy$Type;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/net/Proxy$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    const-class v0, Ljava/net/Proxy$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/net/Proxy$Type;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/net/Proxy$Type;
    .locals 1

    #@0
    .prologue
    .line 160
    sget-object v0, Ljava/net/Proxy$Type;->$VALUES:[Ljava/net/Proxy$Type;

    #@2
    return-object v0
.end method
