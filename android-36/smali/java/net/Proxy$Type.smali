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
        "Ljava/lang/Enum<",
        "Ljava/net/Proxy$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/net/Proxy$Type;

.field public static final enum whitelist test-api DIRECT:Ljava/net/Proxy$Type;

.field public static final enum whitelist test-api HTTP:Ljava/net/Proxy$Type;

.field public static final enum whitelist test-api SOCKS:Ljava/net/Proxy$Type;


# direct methods
.method private static synthetic blacklist $values()[Ljava/net/Proxy$Type;
    .registers 3

    .line 45
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    filled-new-array {v0, v1, v2}, [Ljava/net/Proxy$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Ljava/net/Proxy$Type;

    const-string v1, "DIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 53
    new-instance v0, Ljava/net/Proxy$Type;

    const-string v1, "HTTP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 57
    new-instance v0, Ljava/net/Proxy$Type;

    const-string v1, "SOCKS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 45
    invoke-static {}, Ljava/net/Proxy$Type;->$values()[Ljava/net/Proxy$Type;

    move-result-object v0

    sput-object v0, Ljava/net/Proxy$Type;->$VALUES:[Ljava/net/Proxy$Type;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/net/Proxy$Type;
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

    .line 45
    const-class v0, Ljava/net/Proxy$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy$Type;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/net/Proxy$Type;
    .registers 1

    .line 45
    sget-object v0, Ljava/net/Proxy$Type;->$VALUES:[Ljava/net/Proxy$Type;

    invoke-virtual {v0}, [Ljava/net/Proxy$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Proxy$Type;

    return-object v0
.end method
