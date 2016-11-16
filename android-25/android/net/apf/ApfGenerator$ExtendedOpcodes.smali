.class final enum Landroid/net/apf/ApfGenerator$ExtendedOpcodes;
.super Ljava/lang/Enum;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ExtendedOpcodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/apf/ApfGenerator$ExtendedOpcodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum LDM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum MOVE:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum NEG:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum NOT:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum STM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

.field public static final enum SWAP:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 72
    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@7
    const-string/jumbo v1, "LDM"

    #@a
    invoke-direct {v0, v1, v4, v4}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    #@d
    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->LDM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@f
    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@11
    const-string/jumbo v1, "STM"

    #@14
    .line 73
    const/16 v2, 0x10

    #@16
    .line 72
    invoke-direct {v0, v1, v5, v2}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    #@19
    .line 73
    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->STM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@1b
    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@1d
    const-string/jumbo v1, "NOT"

    #@20
    .line 74
    const/16 v2, 0x20

    #@22
    .line 73
    invoke-direct {v0, v1, v6, v2}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    #@25
    .line 74
    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NOT:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@27
    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@29
    const-string/jumbo v1, "NEG"

    #@2c
    .line 75
    const/16 v2, 0x21

    #@2e
    .line 74
    invoke-direct {v0, v1, v7, v2}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    #@31
    .line 75
    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NEG:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@33
    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@35
    const-string/jumbo v1, "SWAP"

    #@38
    .line 76
    const/16 v2, 0x22

    #@3a
    .line 75
    invoke-direct {v0, v1, v8, v2}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    #@3d
    .line 76
    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->SWAP:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@3f
    new-instance v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@41
    const-string/jumbo v1, "MOVE"

    #@44
    const/4 v2, 0x5

    #@45
    .line 77
    const/16 v3, 0x23

    #@47
    .line 76
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;-><init>(Ljava/lang/String;II)V

    #@4a
    .line 77
    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->MOVE:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@4c
    .line 71
    const/4 v0, 0x6

    #@4d
    new-array v0, v0, [Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@4f
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->LDM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@51
    aput-object v1, v0, v4

    #@53
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->STM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@55
    aput-object v1, v0, v5

    #@57
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NOT:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@59
    aput-object v1, v0, v6

    #@5b
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NEG:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@5d
    aput-object v1, v0, v7

    #@5f
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->SWAP:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@61
    aput-object v1, v0, v8

    #@63
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->MOVE:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@65
    const/4 v2, 0x5

    #@66
    aput-object v1, v0, v2

    #@68
    sput-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->$VALUES:[Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@6a
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 82
    iput p3, p0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    #@5
    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/apf/ApfGenerator$ExtendedOpcodes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    const-class v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/net/apf/ApfGenerator$ExtendedOpcodes;
    .locals 1

    #@0
    .prologue
    .line 71
    sget-object v0, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->$VALUES:[Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@2
    return-object v0
.end method
