.class public final enum Ljava/net/Authenticator$RequestorType;
.super Ljava/lang/Enum;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/net/Authenticator$RequestorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/net/Authenticator$RequestorType;

.field public static final enum whitelist test-api PROXY:Ljava/net/Authenticator$RequestorType;

.field public static final enum whitelist test-api SERVER:Ljava/net/Authenticator$RequestorType;


# direct methods
.method private static synthetic blacklist $values()[Ljava/net/Authenticator$RequestorType;
    .registers 2

    .line 79
    sget-object v0, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    sget-object v1, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    filled-new-array {v0, v1}, [Ljava/net/Authenticator$RequestorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 83
    new-instance v0, Ljava/net/Authenticator$RequestorType;

    const-string v1, "PROXY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/Authenticator$RequestorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 87
    new-instance v0, Ljava/net/Authenticator$RequestorType;

    const-string v1, "SERVER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/net/Authenticator$RequestorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 79
    invoke-static {}, Ljava/net/Authenticator$RequestorType;->$values()[Ljava/net/Authenticator$RequestorType;

    move-result-object v0

    sput-object v0, Ljava/net/Authenticator$RequestorType;->$VALUES:[Ljava/net/Authenticator$RequestorType;

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

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/net/Authenticator$RequestorType;
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

    .line 79
    const-class v0, Ljava/net/Authenticator$RequestorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/net/Authenticator$RequestorType;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/net/Authenticator$RequestorType;
    .registers 1

    .line 79
    sget-object v0, Ljava/net/Authenticator$RequestorType;->$VALUES:[Ljava/net/Authenticator$RequestorType;

    invoke-virtual {v0}, [Ljava/net/Authenticator$RequestorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Authenticator$RequestorType;

    return-object v0
.end method
