.class public final Landroid/hardware/camera2/params/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/OutputConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OutputConfiguration"


# instance fields
.field private final mRotation:I

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 131
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/params/OutputConfiguration$1;-><init>()V

    #@5
    .line 130
    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    .line 104
    .local v0, "rotation":I
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/view/Surface;

    #@f
    .line 105
    .local v1, "surface":Landroid/view/Surface;
    const-string/jumbo v2, "Surface must not be null"

    #@12
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 106
    const-string/jumbo v2, "Rotation constant"

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x3

    #@1a
    invoke-static {v0, v3, v4, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@1d
    .line 107
    iput-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@1f
    .line 108
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@21
    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    const-string/jumbo v0, "Surface must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 70
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@b
    .line 71
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@e
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;I)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "rotation"    # I

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 93
    const-string/jumbo v0, "Surface must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 94
    const-string/jumbo v0, "Rotation constant"

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x3

    #@e
    invoke-static {p2, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@11
    .line 95
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@13
    .line 96
    iput p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@15
    .line 92
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 151
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 173
    if-nez p1, :cond_0

    #@4
    .line 174
    return v2

    #@5
    .line 175
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 176
    return v1

    #@8
    .line 177
    :cond_1
    instance-of v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;

    #@a
    if-eqz v3, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 178
    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    #@f
    .line 179
    .local v0, "other":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@11
    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@13
    if-ne v3, v4, :cond_2

    #@15
    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@17
    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@19
    if-ne v3, v4, :cond_2

    #@1b
    :goto_0
    return v1

    #@1c
    :cond_2
    move v1, v2

    #@1d
    goto :goto_0

    #@1e
    .line 181
    .end local v0    # "other":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_3
    return v2
.end method

.method public getRotation()I
    .locals 1

    #@0
    .prologue
    .line 127
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@2
    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 189
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@5
    invoke-virtual {v1}, Landroid/view/Surface;->hashCode()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    aput v1, v0, v2

    #@c
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@e
    const/4 v2, 0x1

    #@f
    aput v1, v0, v2

    #@11
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 156
    if-nez p1, :cond_0

    #@2
    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "dest must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 159
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 160
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    #@12
    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 155
    return-void
.end method
