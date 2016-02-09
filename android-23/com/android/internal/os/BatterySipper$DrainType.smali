.class public final enum Lcom/android/internal/os/BatterySipper$DrainType;
.super Ljava/lang/Enum;
.source "BatterySipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatterySipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/os/BatterySipper$DrainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum APP:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum CELL:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum USER:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum WIFI:Lcom/android/internal/os/BatterySipper$DrainType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 76
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@7
    const-string/jumbo v1, "IDLE"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    #@f
    .line 77
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@11
    const-string/jumbo v1, "CELL"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    #@19
    .line 78
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@1b
    const-string/jumbo v1, "PHONE"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    #@23
    .line 79
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@25
    const-string/jumbo v1, "WIFI"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    #@2d
    .line 80
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@2f
    const-string/jumbo v1, "BLUETOOTH"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    #@37
    .line 81
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@39
    const-string/jumbo v1, "FLASHLIGHT"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    #@42
    .line 82
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@44
    const-string/jumbo v1, "SCREEN"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    #@4d
    .line 83
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@4f
    const-string/jumbo v1, "APP"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    #@58
    .line 84
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@5a
    const-string/jumbo v1, "USER"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    #@64
    .line 85
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@66
    const-string/jumbo v1, "UNACCOUNTED"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    #@70
    .line 86
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@72
    const-string/jumbo v1, "OVERCOUNTED"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    #@7c
    .line 87
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@7e
    const-string/jumbo v1, "CAMERA"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    #@86
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    #@88
    .line 75
    const/16 v0, 0xc

    #@8a
    new-array v0, v0, [Lcom/android/internal/os/BatterySipper$DrainType;

    #@8c
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    #@8e
    aput-object v1, v0, v3

    #@90
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    #@92
    aput-object v1, v0, v4

    #@94
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    #@96
    aput-object v1, v0, v5

    #@98
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    #@9a
    aput-object v1, v0, v6

    #@9c
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    #@9e
    aput-object v1, v0, v7

    #@a0
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    #@a2
    const/4 v2, 0x5

    #@a3
    aput-object v1, v0, v2

    #@a5
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    #@a7
    const/4 v2, 0x6

    #@a8
    aput-object v1, v0, v2

    #@aa
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    #@ac
    const/4 v2, 0x7

    #@ad
    aput-object v1, v0, v2

    #@af
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    #@b1
    const/16 v2, 0x8

    #@b3
    aput-object v1, v0, v2

    #@b5
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    #@b7
    const/16 v2, 0x9

    #@b9
    aput-object v1, v0, v2

    #@bb
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    #@bd
    const/16 v2, 0xa

    #@bf
    aput-object v1, v0, v2

    #@c1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    #@c3
    const/16 v2, 0xb

    #@c5
    aput-object v1, v0, v2

    #@c7
    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->$VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

    #@c9
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/os/BatterySipper$DrainType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    const-class v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatterySipper$DrainType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/os/BatterySipper$DrainType;
    .locals 1

    #@0
    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->$VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

    #@2
    return-object v0
.end method
