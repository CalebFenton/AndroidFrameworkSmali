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
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/LocalSocketAddress$Namespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/LocalSocketAddress$Namespace;

.field public static final enum ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

.field public static final enum FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

.field public static final enum RESERVED:Landroid/net/LocalSocketAddress$Namespace;


# instance fields
.field private id:I


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
    .line 33
    new-instance v0, Landroid/net/LocalSocketAddress$Namespace;

    #@5
    const-string/jumbo v1, "ABSTRACT"

    #@8
    invoke-direct {v0, v1, v2, v2}, Landroid/net/LocalSocketAddress$Namespace;-><init>(Ljava/lang/String;II)V

    #@b
    .line 34
    sput-object v0, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    #@d
    .line 35
    new-instance v0, Landroid/net/LocalSocketAddress$Namespace;

    #@f
    const-string/jumbo v1, "RESERVED"

    #@12
    invoke-direct {v0, v1, v3, v3}, Landroid/net/LocalSocketAddress$Namespace;-><init>(Ljava/lang/String;II)V

    #@15
    .line 39
    sput-object v0, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@17
    .line 40
    new-instance v0, Landroid/net/LocalSocketAddress$Namespace;

    #@19
    const-string/jumbo v1, "FILESYSTEM"

    #@1c
    invoke-direct {v0, v1, v4, v4}, Landroid/net/LocalSocketAddress$Namespace;-><init>(Ljava/lang/String;II)V

    #@1f
    .line 43
    sput-object v0, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    #@21
    .line 32
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/net/LocalSocketAddress$Namespace;

    #@24
    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/net/LocalSocketAddress$Namespace;->$VALUES:[Landroid/net/LocalSocketAddress$Namespace;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 48
    iput p3, p0, Landroid/net/LocalSocketAddress$Namespace;->id:I

    #@5
    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/LocalSocketAddress$Namespace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 32
    const-class v0, Landroid/net/LocalSocketAddress$Namespace;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/LocalSocketAddress$Namespace;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/net/LocalSocketAddress$Namespace;
    .locals 1

    #@0
    .prologue
    .line 32
    sget-object v0, Landroid/net/LocalSocketAddress$Namespace;->$VALUES:[Landroid/net/LocalSocketAddress$Namespace;

    #@2
    return-object v0
.end method


# virtual methods
.method getId()I
    .locals 1

    #@0
    .prologue
    .line 55
    iget v0, p0, Landroid/net/LocalSocketAddress$Namespace;->id:I

    #@2
    return v0
.end method
