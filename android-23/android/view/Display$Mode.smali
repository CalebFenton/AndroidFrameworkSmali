.class public final Landroid/view/Display$Mode;
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
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$Mode$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/view/Display$Mode;


# instance fields
.field private final mHeight:I

.field private final mModeId:I

.field private final mRefreshRate:F

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 919
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Landroid/view/Display$Mode;

    #@3
    sput-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    #@5
    .line 1045
    new-instance v0, Landroid/view/Display$Mode$1;

    #@7
    invoke-direct {v0}, Landroid/view/Display$Mode$1;-><init>()V

    #@a
    .line 1044
    sput-object v0, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c
    .line 915
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F

    #@0
    .prologue
    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 930
    iput p1, p0, Landroid/view/Display$Mode;->mModeId:I

    #@5
    .line 931
    iput p2, p0, Landroid/view/Display$Mode;->mWidth:I

    #@7
    .line 932
    iput p3, p0, Landroid/view/Display$Mode;->mHeight:I

    #@9
    .line 933
    iput p4, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    #@b
    .line 929
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@f
    move-result v3

    #@10
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIIF)V

    #@13
    .line 1031
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$Mode;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/Display$Mode;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1028
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 995
    if-ne p0, p1, :cond_0

    #@3
    .line 996
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 998
    :cond_0
    instance-of v2, p1, Landroid/view/Display$Mode;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 999
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 1001
    check-cast v0, Landroid/view/Display$Mode;

    #@d
    .line 1002
    .local v0, "that":Landroid/view/Display$Mode;
    iget v2, p0, Landroid/view/Display$Mode;->mModeId:I

    #@f
    iget v3, v0, Landroid/view/Display$Mode;->mModeId:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    iget v1, v0, Landroid/view/Display$Mode;->mWidth:I

    #@15
    iget v2, v0, Landroid/view/Display$Mode;->mHeight:I

    #@17
    iget v3, v0, Landroid/view/Display$Mode;->mRefreshRate:F

    #@19
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/Display$Mode;->matches(IIF)Z

    #@1c
    move-result v1

    #@1d
    :cond_2
    return v1
.end method

.method public getModeId()I
    .locals 1

    #@0
    .prologue
    .line 940
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    #@2
    return v0
.end method

.method public getPhysicalHeight()I
    .locals 1

    #@0
    .prologue
    .line 972
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    #@2
    return v0
.end method

.method public getPhysicalWidth()I
    .locals 1

    #@0
    .prologue
    .line 956
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    #@2
    return v0
.end method

.method public getRefreshRate()F
    .locals 1

    #@0
    .prologue
    .line 979
    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 1008
    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    #@2
    add-int/lit8 v0, v1, 0x11

    #@4
    .line 1009
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x11

    #@6
    iget v2, p0, Landroid/view/Display$Mode;->mWidth:I

    #@8
    add-int v0, v1, v2

    #@a
    .line 1010
    mul-int/lit8 v1, v0, 0x11

    #@c
    iget v2, p0, Landroid/view/Display$Mode;->mHeight:I

    #@e
    add-int v0, v1, v2

    #@10
    .line 1011
    mul-int/lit8 v1, v0, 0x11

    #@12
    iget v2, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    #@14
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@17
    move-result v2

    #@18
    add-int v0, v1, v2

    #@1a
    .line 1012
    return v0
.end method

.method public matches(IIF)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 988
    iget v1, p0, Landroid/view/Display$Mode;->mWidth:I

    #@3
    if-ne v1, p1, :cond_0

    #@5
    .line 989
    iget v1, p0, Landroid/view/Display$Mode;->mHeight:I

    #@7
    if-ne v1, p2, :cond_0

    #@9
    .line 990
    iget v1, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    #@b
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@e
    move-result v1

    #@f
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@12
    move-result v2

    #@13
    if-ne v1, v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 988
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 1018
    const-string/jumbo v1, "id="

    #@b
    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    .line 1018
    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    #@11
    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    .line 1019
    const-string/jumbo v1, ", width="

    #@18
    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 1019
    iget v1, p0, Landroid/view/Display$Mode;->mWidth:I

    #@1e
    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 1020
    const-string/jumbo v1, ", height="

    #@25
    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 1020
    iget v1, p0, Landroid/view/Display$Mode;->mHeight:I

    #@2b
    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 1021
    const-string/jumbo v1, ", fps="

    #@32
    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 1021
    iget v1, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    #@38
    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 1022
    const-string/jumbo v1, "}"

    #@3f
    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 1037
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1038
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1039
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1040
    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    .line 1036
    return-void
.end method
