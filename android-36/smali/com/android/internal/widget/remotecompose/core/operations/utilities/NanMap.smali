.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;
.super Ljava/lang/Object;
.source "NanMap.java"


# static fields
.field public static final blacklist CLOSE:I = 0x300005

.field public static final blacklist CLOSE_NAN:F

.field public static final blacklist CONIC:I = 0x300003

.field public static final blacklist CONIC_NAN:F

.field public static final blacklist CUBIC:I = 0x300004

.field public static final blacklist CUBIC_NAN:F

.field public static final blacklist DONE:I = 0x300006

.field public static final blacklist DONE_NAN:F

.field public static final blacklist ID_REGION_ARRAY:I = 0x200000

.field public static final blacklist ID_REGION_MASK:I = 0x700000

.field public static final blacklist LINE:I = 0x300001

.field public static final blacklist LINE_NAN:F

.field public static final blacklist MOVE:I = 0x300000

.field public static final blacklist MOVE_NAN:F

.field public static final blacklist QUADRATIC:I = 0x300002

.field public static final blacklist QUADRATIC_NAN:F

.field public static final blacklist START_ARRAY:I = 0x20002a

.field public static final blacklist START_VAR:I = 0x10002a

.field public static final blacklist TYPE_ARRAY:I = 0x2

.field public static final blacklist TYPE_OPERATION:I = 0x3

.field public static final blacklist TYPE_SYSTEM:I = 0x0

.field public static final blacklist TYPE_VARIABLE:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    const/high16 v0, 0x300000

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->MOVE_NAN:F

    .line 37
    const v0, 0x300001

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->LINE_NAN:F

    .line 38
    const v0, 0x300002

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->QUADRATIC_NAN:F

    .line 39
    const v0, 0x300003

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->CONIC_NAN:F

    .line 40
    const v0, 0x300004

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->CUBIC_NAN:F

    .line 41
    const v0, 0x300005

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->CLOSE_NAN:F

    .line 42
    const v0, 0x300006

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->DONE_NAN:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asNan(I)F
    .registers 2
    .param p0, "v"    # I

    .line 111
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    or-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static blacklist fromNaN(F)I
    .registers 3
    .param p0, "v"    # F

    .line 100
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 101
    .local v0, "b":I
    const v1, 0x7fffff

    and-int/2addr v1, v0

    return v1
.end method

.method public static blacklist isDataVariable(F)Z
    .registers 3
    .param p0, "value"    # F

    .line 71
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->fromNaN(F)I

    move-result v0

    shr-int/lit8 v0, v0, 0x14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static blacklist isNormalVariable(F)Z
    .registers 3
    .param p0, "value"    # F

    .line 61
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->fromNaN(F)I

    move-result v0

    shr-int/lit8 v0, v0, 0x14

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public static blacklist isOperationVariable(F)Z
    .registers 3
    .param p0, "value"    # F

    .line 81
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->fromNaN(F)I

    move-result v0

    shr-int/lit8 v0, v0, 0x14

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static blacklist isSystemVariable(F)Z
    .registers 2
    .param p0, "value"    # F

    .line 51
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->fromNaN(F)I

    move-result v0

    shr-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
