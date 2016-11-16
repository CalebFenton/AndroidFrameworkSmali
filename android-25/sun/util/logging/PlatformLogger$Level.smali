.class public final enum Lsun/util/logging/PlatformLogger$Level;
.super Ljava/lang/Enum;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/util/logging/PlatformLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/util/logging/PlatformLogger$Level;

.field public static final enum ALL:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum CONFIG:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINER:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINEST:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum INFO:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum OFF:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum SEVERE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum WARNING:Lsun/util/logging/PlatformLogger$Level;

.field private static final levelValues:[I


# instance fields
.field javaLevel:Ljava/lang/Object;


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
    .line 108
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    #@7
    const-string/jumbo v1, "ALL"

    #@a
    invoke-direct {v0, v1, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    #@d
    .line 110
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    #@f
    .line 111
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    #@11
    const-string/jumbo v1, "FINEST"

    #@14
    invoke-direct {v0, v1, v4}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    #@19
    .line 112
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    #@1b
    const-string/jumbo v1, "FINER"

    #@1e
    invoke-direct {v0, v1, v5}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    #@23
    .line 113
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    #@25
    const-string/jumbo v1, "FINE"

    #@28
    invoke-direct {v0, v1, v6}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    #@2d
    .line 114
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    #@2f
    const-string/jumbo v1, "CONFIG"

    #@32
    invoke-direct {v0, v1, v7}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    #@37
    .line 115
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    #@39
    const-string/jumbo v1, "INFO"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    #@42
    .line 116
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    #@44
    const-string/jumbo v1, "WARNING"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    #@4d
    .line 117
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    #@4f
    const-string/jumbo v1, "SEVERE"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    #@58
    .line 118
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    #@5a
    const-string/jumbo v1, "OFF"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    #@64
    .line 107
    const/16 v0, 0x9

    #@66
    new-array v0, v0, [Lsun/util/logging/PlatformLogger$Level;

    #@68
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    #@6a
    aput-object v1, v0, v3

    #@6c
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    #@6e
    aput-object v1, v0, v4

    #@70
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    #@72
    aput-object v1, v0, v5

    #@74
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    #@76
    aput-object v1, v0, v6

    #@78
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    #@7a
    aput-object v1, v0, v7

    #@7c
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    #@7e
    const/4 v2, 0x5

    #@7f
    aput-object v1, v0, v2

    #@81
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    #@83
    const/4 v2, 0x6

    #@84
    aput-object v1, v0, v2

    #@86
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    #@88
    const/4 v2, 0x7

    #@89
    aput-object v1, v0, v2

    #@8b
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    #@8d
    const/16 v2, 0x8

    #@8f
    aput-object v1, v0, v2

    #@91
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    #@93
    .line 129
    const/16 v0, 0x9

    #@95
    new-array v0, v0, [I

    #@97
    fill-array-data v0, :array_0

    #@9a
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    #@9c
    .line 107
    return-void

    #@9d
    .line 129
    nop

    #@9e
    :array_0
    .array-data 4
        -0x80000000
        0x12c
        0x190
        0x1f4
        0x2bc
        0x320
        0x384
        0x3e8
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static valueOf(I)Lsun/util/logging/PlatformLogger$Level;
    .locals 4
    .param p0, "level"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 140
    sparse-switch p0, :sswitch_data_0

    #@4
    .line 155
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    #@6
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    #@8
    array-length v2, v2

    #@9
    add-int/lit8 v2, v2, -0x2

    #@b
    invoke-static {v1, v3, v2, p0}, Ljava/util/Arrays;->binarySearch([IIII)I

    #@e
    move-result v0

    #@f
    .line 156
    .local v0, "i":I
    invoke-static {}, Lsun/util/logging/PlatformLogger$Level;->values()[Lsun/util/logging/PlatformLogger$Level;

    #@12
    move-result-object v1

    #@13
    if-ltz v0, :cond_0

    #@15
    .end local v0    # "i":I
    :goto_0
    aget-object v1, v1, v0

    #@17
    return-object v1

    #@18
    .line 143
    :sswitch_0
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    #@1a
    return-object v1

    #@1b
    .line 144
    :sswitch_1
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    #@1d
    return-object v1

    #@1e
    .line 145
    :sswitch_2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    #@20
    return-object v1

    #@21
    .line 146
    :sswitch_3
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    #@23
    return-object v1

    #@24
    .line 147
    :sswitch_4
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    #@26
    return-object v1

    #@27
    .line 148
    :sswitch_5
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    #@29
    return-object v1

    #@2a
    .line 149
    :sswitch_6
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    #@2c
    return-object v1

    #@2d
    .line 150
    :sswitch_7
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    #@2f
    return-object v1

    #@30
    .line 151
    :sswitch_8
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    #@32
    return-object v1

    #@33
    .line 156
    .restart local v0    # "i":I
    :cond_0
    neg-int v2, v0

    #@34
    add-int/lit8 v0, v2, -0x1

    #@36
    goto :goto_0

    #@37
    .line 140
    nop

    #@38
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_8
        0x12c -> :sswitch_0
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_1
        0x2bc -> :sswitch_5
        0x320 -> :sswitch_3
        0x384 -> :sswitch_4
        0x3e8 -> :sswitch_6
        0x7fffffff -> :sswitch_7
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/util/logging/PlatformLogger$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    const-class v0, Lsun/util/logging/PlatformLogger$Level;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/util/logging/PlatformLogger$Level;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/util/logging/PlatformLogger$Level;
    .locals 1

    #@0
    .prologue
    .line 107
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    #@2
    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 136
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    #@2
    invoke-virtual {p0}, Lsun/util/logging/PlatformLogger$Level;->ordinal()I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method
