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
        "Ljava/lang/Enum<",
        "Lsun/util/logging/PlatformLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist ALL:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist CONFIG:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist FINE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist FINER:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist FINEST:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist INFO:Lsun/util/logging/PlatformLogger$Level;

.field private static final blacklist LEVEL_VALUES:[I

.field public static final enum blacklist OFF:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist SEVERE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist WARNING:Lsun/util/logging/PlatformLogger$Level;


# instance fields
.field blacklist javaLevel:Ljava/lang/Object;


# direct methods
.method private static synthetic blacklist $values()[Lsun/util/logging/PlatformLogger$Level;
    .registers 9

    .line 103
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    sget-object v6, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    sget-object v7, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    filled-new-array/range {v0 .. v8}, [Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 106
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    .line 107
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "FINEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    .line 108
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "FINER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    .line 109
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "FINE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    .line 110
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "CONFIG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    .line 111
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    .line 112
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "WARNING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    .line 113
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "SEVERE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    .line 114
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "OFF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    .line 103
    invoke-static {}, Lsun/util/logging/PlatformLogger$Level;->$values()[Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    .line 125
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->LEVEL_VALUES:[I

    return-void

    nop

    :array_6c
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

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist valueOf(I)Lsun/util/logging/PlatformLogger$Level;
    .registers 4
    .param p0, "level"    # I

    .line 136
    sparse-switch p0, :sswitch_data_38

    .line 151
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->LEVEL_VALUES:[I

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->LEVEL_VALUES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p0}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 152
    .local v0, "i":I
    invoke-static {}, Lsun/util/logging/PlatformLogger$Level;->values()[Lsun/util/logging/PlatformLogger$Level;

    move-result-object v1

    if-ltz v0, :cond_32

    move v2, v0

    goto :goto_35

    .line 146
    .end local v0    # "i":I
    :sswitch_17
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 145
    :sswitch_1a
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 143
    :sswitch_1d
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 142
    :sswitch_20
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 144
    :sswitch_23
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 140
    :sswitch_26
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 141
    :sswitch_29
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 139
    :sswitch_2c
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 147
    :sswitch_2f
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 152
    .restart local v0    # "i":I
    :cond_32
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_35
    aget-object v1, v1, v2

    return-object v1

    :sswitch_data_38
    .sparse-switch
        -0x80000000 -> :sswitch_2f
        0x12c -> :sswitch_2c
        0x190 -> :sswitch_29
        0x1f4 -> :sswitch_26
        0x2bc -> :sswitch_23
        0x320 -> :sswitch_20
        0x384 -> :sswitch_1d
        0x3e8 -> :sswitch_1a
        0x7fffffff -> :sswitch_17
    .end sparse-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/util/logging/PlatformLogger$Level;
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

    .line 103
    const-class v0, Lsun/util/logging/PlatformLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method public static blacklist values()[Lsun/util/logging/PlatformLogger$Level;
    .registers 1

    .line 103
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0}, [Lsun/util/logging/PlatformLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method


# virtual methods
.method public blacklist intValue()I
    .registers 3

    .line 132
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->LEVEL_VALUES:[I

    invoke-virtual {p0}, Lsun/util/logging/PlatformLogger$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method
