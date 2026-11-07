.class public final enum Ljava/math/RoundingMode;
.super Ljava/lang/Enum;
.source "RoundingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/math/RoundingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/math/RoundingMode;

.field public static final enum whitelist test-api CEILING:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api DOWN:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api FLOOR:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api HALF_DOWN:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api HALF_EVEN:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api HALF_UP:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api UNNECESSARY:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api UP:Ljava/math/RoundingMode;


# instance fields
.field final blacklist oldMode:I


# direct methods
.method private static synthetic blacklist $values()[Ljava/math/RoundingMode;
    .registers 8

    .line 104
    sget-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    sget-object v5, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    sget-object v7, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    filled-new-array/range {v0 .. v7}, [Ljava/math/RoundingMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 134
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 164
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "DOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 195
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "CEILING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 226
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "FLOOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 259
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "HALF_UP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 289
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "HALF_DOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 328
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "HALF_EVEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 356
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "UNNECESSARY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 104
    invoke-static {}, Ljava/math/RoundingMode;->$values()[Ljava/math/RoundingMode;

    move-result-object v0

    sput-object v0, Ljava/math/RoundingMode;->$VALUES:[Ljava/math/RoundingMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "oldMode"    # I
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

    .line 367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 368
    iput p3, p0, Ljava/math/RoundingMode;->oldMode:I

    .line 369
    return-void
.end method

.method public static whitelist test-api valueOf(I)Ljava/math/RoundingMode;
    .registers 3
    .param p0, "rm"    # I

    .line 380
    packed-switch p0, :pswitch_data_24

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :pswitch_b
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    goto :goto_22

    .line 387
    :pswitch_e
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_22

    .line 386
    :pswitch_11
    sget-object v0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    goto :goto_22

    .line 385
    :pswitch_14
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    goto :goto_22

    .line 384
    :pswitch_17
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    goto :goto_22

    .line 383
    :pswitch_1a
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    goto :goto_22

    .line 382
    :pswitch_1d
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    goto :goto_22

    .line 381
    :pswitch_20
    sget-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 380
    :goto_22
    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/math/RoundingMode;
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

    .line 104
    const-class v0, Ljava/math/RoundingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/math/RoundingMode;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/math/RoundingMode;
    .registers 1

    .line 104
    sget-object v0, Ljava/math/RoundingMode;->$VALUES:[Ljava/math/RoundingMode;

    invoke-virtual {v0}, [Ljava/math/RoundingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/math/RoundingMode;

    return-object v0
.end method
