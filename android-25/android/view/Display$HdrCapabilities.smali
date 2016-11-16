.class public final Landroid/view/Display$HdrCapabilities;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HdrCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$HdrCapabilities$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Display$HdrCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final HDR_TYPE_DOLBY_VISION:I = 0x1

.field public static final HDR_TYPE_HDR10:I = 0x2

.field public static final HDR_TYPE_HLG:I = 0x3

.field public static final INVALID_LUMINANCE:F = -1.0f


# instance fields
.field private mMaxAverageLuminance:F

.field private mMaxLuminance:F

.field private mMinLuminance:F

.field private mSupportedHdrTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1257
    new-instance v0, Landroid/view/Display$HdrCapabilities$1;

    #@2
    invoke-direct {v0}, Landroid/view/Display$HdrCapabilities$1;-><init>()V

    #@5
    sput-object v0, Landroid/view/Display$HdrCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1155
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    #@2
    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1182
    const/4 v0, 0x0

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@a
    .line 1183
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@c
    .line 1184
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@e
    .line 1185
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@10
    .line 1190
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    #@2
    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1182
    const/4 v0, 0x0

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@a
    .line 1183
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@c
    .line 1184
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@e
    .line 1185
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@10
    .line 1270
    invoke-virtual {p0, p1}, Landroid/view/Display$HdrCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    #@13
    .line 1269
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$HdrCapabilities;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/Display$HdrCapabilities;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>([IFFF)V
    .locals 2
    .param p1, "supportedHdrTypes"    # [I
    .param p2, "maxLuminance"    # F
    .param p3, "maxAverageLuminance"    # F
    .param p4, "minLuminance"    # F

    #@0
    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    #@2
    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1182
    const/4 v0, 0x0

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@a
    .line 1183
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@c
    .line 1184
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@e
    .line 1185
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@10
    .line 1198
    iput-object p1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@12
    .line 1199
    iput p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@14
    .line 1200
    iput p3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@16
    .line 1201
    iput p4, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@18
    .line 1197
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1300
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1232
    if-ne p0, p1, :cond_0

    #@4
    .line 1233
    return v1

    #@5
    .line 1236
    :cond_0
    instance-of v3, p1, Landroid/view/Display$HdrCapabilities;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 1237
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 1239
    check-cast v0, Landroid/view/Display$HdrCapabilities;

    #@d
    .line 1241
    .local v0, "that":Landroid/view/Display$HdrCapabilities;
    iget-object v3, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@f
    iget-object v4, v0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@11
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 1242
    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@19
    iget v4, v0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@1b
    cmpl-float v3, v3, v4

    #@1d
    if-nez v3, :cond_3

    #@1f
    .line 1243
    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@21
    iget v4, v0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@23
    cmpl-float v3, v3, v4

    #@25
    if-nez v3, :cond_3

    #@27
    .line 1244
    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@29
    iget v4, v0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@2b
    cmpl-float v3, v3, v4

    #@2d
    if-nez v3, :cond_2

    #@2f
    .line 1241
    :goto_0
    return v1

    #@30
    :cond_2
    move v1, v2

    #@31
    .line 1244
    goto :goto_0

    #@32
    :cond_3
    move v1, v2

    #@33
    .line 1241
    goto :goto_0
.end method

.method public getDesiredMaxAverageLuminance()F
    .locals 1

    #@0
    .prologue
    .line 1221
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@2
    return v0
.end method

.method public getDesiredMaxLuminance()F
    .locals 1

    #@0
    .prologue
    .line 1215
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@2
    return v0
.end method

.method public getDesiredMinLuminance()F
    .locals 1

    #@0
    .prologue
    .line 1227
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@2
    return v0
.end method

.method public getSupportedHdrTypes()[I
    .locals 1

    #@0
    .prologue
    .line 1209
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 1250
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    #@5
    move-result v1

    #@6
    add-int/lit16 v0, v1, 0x187

    #@8
    .line 1251
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x11

    #@a
    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@c
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@f
    move-result v2

    #@10
    add-int v0, v1, v2

    #@12
    .line 1252
    mul-int/lit8 v1, v0, 0x11

    #@14
    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@16
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@19
    move-result v2

    #@1a
    add-int v0, v1, v2

    #@1c
    .line 1253
    mul-int/lit8 v1, v0, 0x11

    #@1e
    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@20
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@23
    move-result v2

    #@24
    add-int v0, v1, v2

    #@26
    .line 1254
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 1278
    .local v1, "types":I
    new-array v2, v1, [I

    #@6
    iput-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@8
    .line 1279
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@b
    .line 1280
    iget-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v3

    #@11
    aput v3, v2, v0

    #@13
    .line 1279
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1282
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@19
    move-result v2

    #@1a
    iput v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@1c
    .line 1283
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@1f
    move-result v2

    #@20
    iput v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@22
    .line 1284
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@25
    move-result v2

    #@26
    iput v2, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@28
    .line 1276
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1289
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@2
    array-length v1, v1

    #@3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1290
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@9
    array-length v1, v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 1291
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@e
    aget v1, v1, v0

    #@10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1290
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1293
    :cond_0
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@1b
    .line 1294
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@1d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@20
    .line 1295
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@25
    .line 1288
    return-void
.end method
