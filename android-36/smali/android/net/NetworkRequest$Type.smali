.class public final enum Landroid/net/NetworkRequest$Type;
.super Ljava/lang/Enum;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/NetworkRequest$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/NetworkRequest$Type;

.field public static final enum greylist-max-o BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

.field public static final enum greylist-max-o LISTEN:Landroid/net/NetworkRequest$Type;

.field public static final enum blacklist LISTEN_FOR_BEST:Landroid/net/NetworkRequest$Type;

.field public static final enum greylist-max-o NONE:Landroid/net/NetworkRequest$Type;

.field public static final enum greylist-max-o REQUEST:Landroid/net/NetworkRequest$Type;

.field public static final enum blacklist RESERVATION:Landroid/net/NetworkRequest$Type;

.field public static final enum greylist-max-o TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

.field public static final enum blacklist TRACK_SYSTEM_DEFAULT:Landroid/net/NetworkRequest$Type;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/NetworkRequest$Type;
    .registers 8

    .line 235
    sget-object v0, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    sget-object v2, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    sget-object v3, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    sget-object v4, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    sget-object v5, Landroid/net/NetworkRequest$Type;->TRACK_SYSTEM_DEFAULT:Landroid/net/NetworkRequest$Type;

    sget-object v6, Landroid/net/NetworkRequest$Type;->LISTEN_FOR_BEST:Landroid/net/NetworkRequest$Type;

    sget-object v7, Landroid/net/NetworkRequest$Type;->RESERVATION:Landroid/net/NetworkRequest$Type;

    filled-new-array/range {v0 .. v7}, [Landroid/net/NetworkRequest$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 236
    new-instance v0, Landroid/net/NetworkRequest$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    .line 237
    new-instance v0, Landroid/net/NetworkRequest$Type;

    const-string v1, "LISTEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    .line 238
    new-instance v0, Landroid/net/NetworkRequest$Type;

    const-string v1, "TRACK_DEFAULT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    .line 239
    new-instance v0, Landroid/net/NetworkRequest$Type;

    const-string v1, "REQUEST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    .line 240
    new-instance v0, Landroid/net/NetworkRequest$Type;

    const-string v1, "BACKGROUND_REQUEST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    .line 241
    new-instance v0, Landroid/net/NetworkRequest$Type;

    const-string v1, "TRACK_SYSTEM_DEFAULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkRequest$Type;->TRACK_SYSTEM_DEFAULT:Landroid/net/NetworkRequest$Type;

    .line 242
    new-instance v0, Landroid/net/NetworkRequest$Type;

    const-string v1, "LISTEN_FOR_BEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkRequest$Type;->LISTEN_FOR_BEST:Landroid/net/NetworkRequest$Type;

    .line 243
    new-instance v0, Landroid/net/NetworkRequest$Type;

    const-string v1, "RESERVATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkRequest$Type;->RESERVATION:Landroid/net/NetworkRequest$Type;

    .line 235
    invoke-static {}, Landroid/net/NetworkRequest$Type;->$values()[Landroid/net/NetworkRequest$Type;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkRequest$Type;->$VALUES:[Landroid/net/NetworkRequest$Type;

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

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/net/NetworkRequest$Type;
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

    .line 235
    const-class v0, Landroid/net/NetworkRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest$Type;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/net/NetworkRequest$Type;
    .registers 1

    .line 235
    sget-object v0, Landroid/net/NetworkRequest$Type;->$VALUES:[Landroid/net/NetworkRequest$Type;

    invoke-virtual {v0}, [Landroid/net/NetworkRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkRequest$Type;

    return-object v0
.end method
