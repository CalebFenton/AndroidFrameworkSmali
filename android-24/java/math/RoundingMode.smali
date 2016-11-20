.class public final enum Ljava/math/RoundingMode;
.super Ljava/lang/Enum;
.source "RoundingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/math/RoundingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/math/RoundingMode;

.field public static final enum CEILING:Ljava/math/RoundingMode;

.field public static final enum DOWN:Ljava/math/RoundingMode;

.field public static final enum FLOOR:Ljava/math/RoundingMode;

.field public static final enum HALF_DOWN:Ljava/math/RoundingMode;

.field public static final enum HALF_EVEN:Ljava/math/RoundingMode;

.field public static final enum HALF_UP:Ljava/math/RoundingMode;

.field public static final enum UNNECESSARY:Ljava/math/RoundingMode;

.field public static final enum UP:Ljava/math/RoundingMode;


# instance fields
.field private final bigDecimalRM:I


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
    .line 26
    new-instance v0, Ljava/math/RoundingMode;

    #@7
    const-string/jumbo v1, "UP"

    #@a
    invoke-direct {v0, v1, v4, v4}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    #@d
    .line 32
    sput-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    #@f
    .line 34
    new-instance v0, Ljava/math/RoundingMode;

    #@11
    const-string/jumbo v1, "DOWN"

    #@14
    invoke-direct {v0, v1, v5, v5}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    #@17
    .line 39
    sput-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    #@19
    .line 41
    new-instance v0, Ljava/math/RoundingMode;

    #@1b
    const-string/jumbo v1, "CEILING"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    #@21
    .line 48
    sput-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    #@23
    .line 50
    new-instance v0, Ljava/math/RoundingMode;

    #@25
    const-string/jumbo v1, "FLOOR"

    #@28
    invoke-direct {v0, v1, v7, v7}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    #@2b
    .line 57
    sput-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    #@2d
    .line 59
    new-instance v0, Ljava/math/RoundingMode;

    #@2f
    const-string/jumbo v1, "HALF_UP"

    #@32
    invoke-direct {v0, v1, v8, v8}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    #@35
    .line 63
    sput-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    #@37
    .line 65
    new-instance v0, Ljava/math/RoundingMode;

    #@39
    const-string/jumbo v1, "HALF_DOWN"

    #@3c
    const/4 v2, 0x5

    #@3d
    .line 69
    const/4 v3, 0x5

    #@3e
    .line 65
    invoke-direct {v0, v1, v2, v3}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    #@41
    .line 69
    sput-object v0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    #@43
    .line 71
    new-instance v0, Ljava/math/RoundingMode;

    #@45
    const-string/jumbo v1, "HALF_EVEN"

    #@48
    const/4 v2, 0x6

    #@49
    .line 75
    const/4 v3, 0x6

    #@4a
    .line 71
    invoke-direct {v0, v1, v2, v3}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    #@4d
    .line 75
    sput-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@4f
    .line 77
    new-instance v0, Ljava/math/RoundingMode;

    #@51
    const-string/jumbo v1, "UNNECESSARY"

    #@54
    const/4 v2, 0x7

    #@55
    .line 82
    const/4 v3, 0x7

    #@56
    .line 77
    invoke-direct {v0, v1, v2, v3}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    #@59
    .line 82
    sput-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    #@5b
    .line 24
    const/16 v0, 0x8

    #@5d
    new-array v0, v0, [Ljava/math/RoundingMode;

    #@5f
    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    #@61
    aput-object v1, v0, v4

    #@63
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    #@65
    aput-object v1, v0, v5

    #@67
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    #@69
    aput-object v1, v0, v6

    #@6b
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    #@6d
    aput-object v1, v0, v7

    #@6f
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    #@71
    aput-object v1, v0, v8

    #@73
    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    #@75
    const/4 v2, 0x5

    #@76
    aput-object v1, v0, v2

    #@78
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@7a
    const/4 v2, 0x6

    #@7b
    aput-object v1, v0, v2

    #@7d
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    #@7f
    const/4 v2, 0x7

    #@80
    aput-object v1, v0, v2

    #@82
    sput-object v0, Ljava/math/RoundingMode;->$VALUES:[Ljava/math/RoundingMode;

    #@84
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "rm"    # I

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 89
    iput p3, p0, Ljava/math/RoundingMode;->bigDecimalRM:I

    #@5
    .line 88
    return-void
.end method

.method public static valueOf(I)Ljava/math/RoundingMode;
    .locals 2
    .param p0, "mode"    # I

    #@0
    .prologue
    .line 101
    packed-switch p0, :pswitch_data_0

    #@3
    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Invalid rounding mode"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 103
    :pswitch_0
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    #@e
    return-object v0

    #@f
    .line 105
    :pswitch_1
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    #@11
    return-object v0

    #@12
    .line 107
    :pswitch_2
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    #@14
    return-object v0

    #@15
    .line 109
    :pswitch_3
    sget-object v0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    #@17
    return-object v0

    #@18
    .line 111
    :pswitch_4
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@1a
    return-object v0

    #@1b
    .line 113
    :pswitch_5
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    #@1d
    return-object v0

    #@1e
    .line 115
    :pswitch_6
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    #@20
    return-object v0

    #@21
    .line 117
    :pswitch_7
    sget-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    #@23
    return-object v0

    #@24
    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/math/RoundingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 24
    const-class v0, Ljava/math/RoundingMode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/math/RoundingMode;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/math/RoundingMode;
    .locals 1

    #@0
    .prologue
    .line 24
    sget-object v0, Ljava/math/RoundingMode;->$VALUES:[Ljava/math/RoundingMode;

    #@2
    return-object v0
.end method
