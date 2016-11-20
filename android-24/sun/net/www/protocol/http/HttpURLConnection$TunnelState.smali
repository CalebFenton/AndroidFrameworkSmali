.class public final enum Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;
.super Ljava/lang/Enum;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TunnelState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

.field public static final enum NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

.field public static final enum SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

.field public static final enum TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;


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
    .line 354
    new-instance v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@5
    const-string/jumbo v1, "NONE"

    #@8
    invoke-direct {v0, v1, v2}, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;-><init>(Ljava/lang/String;I)V

    #@b
    .line 355
    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@d
    .line 357
    new-instance v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@f
    const-string/jumbo v1, "SETUP"

    #@12
    invoke-direct {v0, v1, v3}, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;-><init>(Ljava/lang/String;I)V

    #@15
    .line 358
    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@17
    .line 360
    new-instance v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@19
    const-string/jumbo v1, "TUNNELING"

    #@1c
    invoke-direct {v0, v1, v4}, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 361
    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@21
    .line 353
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@24
    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->$VALUES:[Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 353
    const-class v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;
    .locals 1

    #@0
    .prologue
    .line 353
    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->$VALUES:[Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@2
    return-object v0
.end method
