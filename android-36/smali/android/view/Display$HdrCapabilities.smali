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
        Landroid/view/Display$HdrCapabilities$HdrType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Display$HdrCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HDR_TYPES:[I

.field public static final whitelist HDR_TYPE_DOLBY_VISION:I = 0x1

.field public static final whitelist HDR_TYPE_HDR10:I = 0x2

.field public static final whitelist HDR_TYPE_HDR10_PLUS:I = 0x4

.field public static final whitelist HDR_TYPE_HLG:I = 0x3

.field public static final whitelist HDR_TYPE_INVALID:I = -0x1

.field public static final whitelist INVALID_LUMINANCE:F = -1.0f


# instance fields
.field private greylist-max-o mMaxAverageLuminance:F

.field private greylist-max-o mMaxLuminance:F

.field private greylist-max-o mMinLuminance:F

.field private greylist-max-o mSupportedHdrTypes:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMaxAverageLuminance(Landroid/view/Display$HdrCapabilities;)F
    .registers 1

    iget p0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxLuminance(Landroid/view/Display$HdrCapabilities;)F
    .registers 1

    iget p0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinLuminance(Landroid/view/Display$HdrCapabilities;)F
    .registers 1

    iget p0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 2830
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/view/Display$HdrCapabilities;->HDR_TYPES:[I

    .line 2930
    new-instance v0, Landroid/view/Display$HdrCapabilities$1;

    invoke-direct {v0}, Landroid/view/Display$HdrCapabilities$1;-><init>()V

    sput-object v0, Landroid/view/Display$HdrCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 2856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2848
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2849
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2850
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2851
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2857
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2848
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2849
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2850
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2851
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2943
    invoke-virtual {p0, p1}, Landroid/view/Display$HdrCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 2944
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/Display-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/Display$HdrCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-r <init>([IFFF)V
    .registers 6
    .param p1, "supportedHdrTypes"    # [I
    .param p2, "maxLuminance"    # F
    .param p3, "maxAverageLuminance"    # F
    .param p4, "minLuminance"    # F

    .line 2864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2848
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2849
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2850
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2851
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2865
    iput-object p1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2866
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 2867
    iput p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2868
    iput p3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2869
    iput p4, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2870
    return-void
.end method

.method public static blacklist hdrTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "hdrType"    # I

    .line 2990
    packed-switch p0, :pswitch_data_12

    .line 3000
    const-string v0, "HDR_TYPE_INVALID"

    return-object v0

    .line 2998
    :pswitch_6
    const-string v0, "HDR_TYPE_HDR10_PLUS"

    return-object v0

    .line 2996
    :pswitch_9
    const-string v0, "HDR_TYPE_HLG"

    return-object v0

    .line 2994
    :pswitch_c
    const-string v0, "HDR_TYPE_HDR10"

    return-object v0

    .line 2992
    :pswitch_f
    const-string v0, "HDR_TYPE_DOLBY_VISION"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2973
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 2905
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2906
    return v0

    .line 2909
    :cond_4
    instance-of v1, p1, Landroid/view/Display$HdrCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2910
    return v2

    .line 2912
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/view/Display$HdrCapabilities;

    .line 2914
    .local v1, "that":Landroid/view/Display$HdrCapabilities;
    iget-object v3, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    iget-object v4, v1, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_30

    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    iget v4, v1, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_30

    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    iget v4, v1, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_30

    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    iget v4, v1, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    return v0
.end method

.method public whitelist getDesiredMaxAverageLuminance()F
    .registers 2

    .line 2894
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    return v0
.end method

.method public whitelist getDesiredMaxLuminance()F
    .registers 2

    .line 2888
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    return v0
.end method

.method public whitelist getDesiredMinLuminance()F
    .registers 2

    .line 2900
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    return v0
.end method

.method public whitelist getSupportedHdrTypes()[I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2882
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2922
    const/16 v0, 0x17

    .line 2923
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2924
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2925
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 2926
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2927
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2950
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2951
    .local v0, "types":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2952
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_16

    .line 2953
    iget-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 2952
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2955
    .end local v1    # "i":I
    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2956
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2957
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2958
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HdrCapabilities{mSupportedHdrTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2979
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxLuminance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxAverageLuminance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinLuminance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2978
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2962
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2963
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 2964
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2963
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2966
    .end local v0    # "i":I
    :cond_16
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2967
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2968
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2969
    return-void
.end method
