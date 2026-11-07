.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field public static blacklist RC_COLOR:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    const/16 v0, 0x3e

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->RC_COLOR:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createColor(IIII)I
    .registers 6
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "a"    # I

    .line 73
    shl-int/lit8 v0, p3, 0x18

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public blacklist getDefaultColor(J)I
    .registers 9
    .param p1, "color"    # J

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->isRCColor(J)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_c

    .line 55
    shr-long v0, p1, v1

    long-to-int v0, v0

    return v0

    .line 57
    :cond_c
    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_19

    .line 58
    shr-long v0, p1, v1

    long-to-int v0, v0

    return v0

    .line 60
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getID(J)I
    .registers 6
    .param p1, "color"    # J

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->isRCColor(J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 42
    const-wide/16 v0, -0x100

    and-long/2addr v0, p1

    const/16 v2, 0x8

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 44
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method blacklist isRCColor(J)Z
    .registers 7
    .param p1, "color"    # J

    .line 37
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x3e

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method blacklist packRCColor(II)J
    .registers 9
    .param p1, "defaultARGB"    # I
    .param p2, "id"    # I

    .line 32
    int-to-long v0, p1

    .line 33
    .local v0, "l":J
    const/16 v2, 0x20

    shl-long v2, v0, v2

    shl-int/lit8 v4, p2, 0x8

    int-to-long v4, v4

    or-long/2addr v2, v4

    sget v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ColorUtils;->RC_COLOR:I

    int-to-long v4, v4

    or-long/2addr v2, v4

    return-wide v2
.end method
