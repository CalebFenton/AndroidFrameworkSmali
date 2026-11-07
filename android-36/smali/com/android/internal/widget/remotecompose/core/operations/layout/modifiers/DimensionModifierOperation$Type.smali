.class public final enum Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;
.super Ljava/lang/Enum;
.source "DimensionModifierOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

.field public static final enum blacklist EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

.field public static final enum blacklist EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

.field public static final enum blacklist FILL:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

.field public static final enum blacklist INTRINSIC_MAX:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

.field public static final enum blacklist INTRINSIC_MIN:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

.field public static final enum blacklist WEIGHT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

.field public static final enum blacklist WRAP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;
    .registers 7

    .line 30
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->FILL:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WRAP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WEIGHT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->INTRINSIC_MIN:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->INTRINSIC_MAX:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    filled-new-array/range {v0 .. v6}, [Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    const-string v1, "EXACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 32
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    const-string v1, "FILL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->FILL:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 33
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    const-string v1, "WRAP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WRAP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 34
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    const-string v1, "WEIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WEIGHT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 35
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    const-string v1, "INTRINSIC_MIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->INTRINSIC_MIN:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 36
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    const-string v1, "INTRINSIC_MAX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->INTRINSIC_MAX:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 37
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    const-string v1, "EXACT_DP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 30
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->$values()[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist fromInt(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;
    .registers 2
    .param p0, "value"    # I

    .line 41
    packed-switch p0, :pswitch_data_1c

    .line 57
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    return-object v0

    .line 55
    :pswitch_6
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    return-object v0

    .line 53
    :pswitch_9
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->INTRINSIC_MAX:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    return-object v0

    .line 51
    :pswitch_c
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->INTRINSIC_MIN:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    return-object v0

    .line 49
    :pswitch_f
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WEIGHT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    return-object v0

    .line 47
    :pswitch_12
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WRAP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    return-object v0

    .line 45
    :pswitch_15
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->FILL:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    return-object v0

    .line 43
    :pswitch_18
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;
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

    .line 30
    const-class v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-virtual {v0}, [Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    return-object v0
.end method
