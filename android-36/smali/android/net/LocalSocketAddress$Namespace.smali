.class public final enum Landroid/net/LocalSocketAddress$Namespace;
.super Ljava/lang/Enum;
.source "LocalSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Namespace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/LocalSocketAddress$Namespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/LocalSocketAddress$Namespace;

.field public static final enum whitelist ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

.field public static final enum whitelist FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

.field public static final enum whitelist RESERVED:Landroid/net/LocalSocketAddress$Namespace;


# instance fields
.field private greylist-max-o id:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/LocalSocketAddress$Namespace;
    .registers 3

    .line 32
    sget-object v0, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    filled-new-array {v0, v1, v2}, [Landroid/net/LocalSocketAddress$Namespace;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Landroid/net/LocalSocketAddress$Namespace;

    const-string v1, "ABSTRACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/net/LocalSocketAddress$Namespace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    .line 39
    new-instance v0, Landroid/net/LocalSocketAddress$Namespace;

    const-string v1, "RESERVED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/net/LocalSocketAddress$Namespace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 43
    new-instance v0, Landroid/net/LocalSocketAddress$Namespace;

    const-string v1, "FILESYSTEM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/net/LocalSocketAddress$Namespace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    .line 32
    invoke-static {}, Landroid/net/LocalSocketAddress$Namespace;->$values()[Landroid/net/LocalSocketAddress$Namespace;

    move-result-object v0

    sput-object v0, Landroid/net/LocalSocketAddress$Namespace;->$VALUES:[Landroid/net/LocalSocketAddress$Namespace;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Landroid/net/LocalSocketAddress$Namespace;->id:I

    .line 49
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/net/LocalSocketAddress$Namespace;
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

    .line 32
    const-class v0, Landroid/net/LocalSocketAddress$Namespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/LocalSocketAddress$Namespace;

    return-object v0
.end method

.method public static whitelist values()[Landroid/net/LocalSocketAddress$Namespace;
    .registers 1

    .line 32
    sget-object v0, Landroid/net/LocalSocketAddress$Namespace;->$VALUES:[Landroid/net/LocalSocketAddress$Namespace;

    invoke-virtual {v0}, [Landroid/net/LocalSocketAddress$Namespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/LocalSocketAddress$Namespace;

    return-object v0
.end method


# virtual methods
.method greylist-max-o getId()I
    .registers 2

    .line 55
    iget v0, p0, Landroid/net/LocalSocketAddress$Namespace;->id:I

    return v0
.end method
