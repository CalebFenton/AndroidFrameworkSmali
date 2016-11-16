.class public final enum Ljava/lang/ProcessBuilder$Redirect$Type;
.super Ljava/lang/Enum;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessBuilder$Redirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/lang/ProcessBuilder$Redirect$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum INHERIT:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum PIPE:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum READ:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 401
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    #@7
    const-string/jumbo v1, "PIPE"

    #@a
    invoke-direct {v0, v1, v2}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    #@d
    .line 404
    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->PIPE:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@f
    .line 406
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    #@11
    const-string/jumbo v1, "INHERIT"

    #@14
    invoke-direct {v0, v1, v3}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    #@17
    .line 409
    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->INHERIT:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@19
    .line 411
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    #@1b
    const-string/jumbo v1, "READ"

    #@1e
    invoke-direct {v0, v1, v4}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    #@21
    .line 415
    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@23
    .line 417
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    #@25
    const-string/jumbo v1, "WRITE"

    #@28
    invoke-direct {v0, v1, v5}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 421
    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@2d
    .line 423
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    #@2f
    const-string/jumbo v1, "APPEND"

    #@32
    invoke-direct {v0, v1, v6}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    #@35
    .line 427
    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@37
    .line 400
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Ljava/lang/ProcessBuilder$Redirect$Type;

    #@3a
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->PIPE:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->INHERIT:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->$VALUES:[Ljava/lang/ProcessBuilder$Redirect$Type;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/ProcessBuilder$Redirect$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 400
    const-class v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/lang/ProcessBuilder$Redirect$Type;
    .locals 1

    #@0
    .prologue
    .line 400
    sget-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->$VALUES:[Ljava/lang/ProcessBuilder$Redirect$Type;

    #@2
    return-object v0
.end method
