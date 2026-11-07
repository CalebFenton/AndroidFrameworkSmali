.class public final Landroid/view/SurfaceControl$RefreshRateRange;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRateRange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLOAT_TOLERANCE:F = 0.01f

.field public static final blacklist TAG:Ljava/lang/String; = "RefreshRateRange"


# instance fields
.field public blacklist max:F

.field public blacklist min:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2223
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRange$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl$RefreshRateRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .registers 6
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 2155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2156
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_21

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_21

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v1, p2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_15

    goto :goto_21

    .line 2162
    :cond_15
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1c

    .line 2164
    move v0, p1

    .line 2165
    .local v0, "t":F
    move p1, p2

    .line 2166
    move p2, v0

    .line 2168
    .end local v0    # "t":F
    :cond_1c
    iput p1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 2169
    iput p2, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 2170
    return-void

    .line 2157
    :cond_21
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong values for min and max when initializing RefreshRateRange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RefreshRateRange"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iput v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iput v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 2160
    return-void
.end method


# virtual methods
.method public blacklist copyFrom(Landroid/view/SurfaceControl$RefreshRateRange;)V
    .registers 3
    .param p1, "other"    # Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2203
    iget v0, p1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iput v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 2204
    iget v0, p1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iput v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 2205
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2220
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 2177
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2178
    return v0

    .line 2181
    :cond_4
    instance-of v1, p1, Landroid/view/SurfaceControl$RefreshRateRange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2182
    return v2

    .line 2185
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2186
    .local v1, "refreshRateRange":Landroid/view/SurfaceControl$RefreshRateRange;
    iget v3, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v4, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1e

    iget v3, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iget v4, v1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 2191
    iget v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2214
    iget v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2215
    iget v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2216
    return-void
.end method
