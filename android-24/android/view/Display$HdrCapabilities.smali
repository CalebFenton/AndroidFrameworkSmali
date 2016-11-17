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
    .line 1208
    new-instance v0, Landroid/view/Display$HdrCapabilities$1;

    #@2
    invoke-direct {v0}, Landroid/view/Display$HdrCapabilities$1;-><init>()V

    #@5
    sput-object v0, Landroid/view/Display$HdrCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1133
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    #@2
    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1160
    const/4 v0, 0x0

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@a
    .line 1161
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@c
    .line 1162
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@e
    .line 1163
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@10
    .line 1168
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    #@2
    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1160
    const/4 v0, 0x0

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@a
    .line 1161
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@c
    .line 1162
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@e
    .line 1163
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@10
    .line 1221
    invoke-virtual {p0, p1}, Landroid/view/Display$HdrCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    #@13
    .line 1220
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
    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1160
    const/4 v0, 0x0

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@a
    .line 1161
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@c
    .line 1162
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@e
    .line 1163
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@10
    .line 1176
    iput-object p1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@12
    .line 1177
    iput p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@14
    .line 1178
    iput p3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@16
    .line 1179
    iput p4, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@18
    .line 1175
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1251
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDesiredMaxAverageLuminance()F
    .locals 1

    #@0
    .prologue
    .line 1199
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@2
    return v0
.end method

.method public getDesiredMaxLuminance()F
    .locals 1

    #@0
    .prologue
    .line 1193
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@2
    return v0
.end method

.method public getDesiredMinLuminance()F
    .locals 1

    #@0
    .prologue
    .line 1205
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@2
    return v0
.end method

.method public getSupportedHdrTypes()[I
    .locals 1

    #@0
    .prologue
    .line 1187
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@2
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 1229
    .local v1, "types":I
    new-array v2, v1, [I

    #@6
    iput-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@8
    .line 1230
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@b
    .line 1231
    iget-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v3

    #@11
    aput v3, v2, v0

    #@13
    .line 1230
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1233
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@19
    move-result v2

    #@1a
    iput v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@1c
    .line 1234
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@1f
    move-result v2

    #@20
    iput v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@22
    .line 1235
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@25
    move-result v2

    #@26
    iput v2, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@28
    .line 1227
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1240
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@2
    array-length v1, v1

    #@3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1241
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
    .line 1242
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    #@e
    aget v1, v1, v0

    #@10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1241
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1244
    :cond_0
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    #@18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@1b
    .line 1245
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    #@1d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@20
    .line 1246
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    #@22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@25
    .line 1239
    return-void
.end method
