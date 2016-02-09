.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModelEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B

.field public final soundModelHandle:I

.field public final status:I


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1045
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent$1;-><init>()V

    #@5
    .line 1044
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1030
    return-void
.end method

.method constructor <init>(II[B)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "data"    # [B

    #@0
    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1039
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    #@5
    .line 1040
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    #@7
    .line 1041
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    #@9
    .line 1038
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1056
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 1057
    .local v2, "status":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    .line 1058
    .local v1, "soundModelHandle":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    #@b
    move-result-object v0

    #@c
    .line 1059
    .local v0, "data":[B
    new-instance v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    #@e
    invoke-direct {v3, v2, v1, v0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;-><init>(II[B)V

    #@11
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1064
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1086
    if-ne p0, p1, :cond_0

    #@4
    .line 1087
    return v4

    #@5
    .line 1088
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 1089
    return v3

    #@8
    .line 1090
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 1091
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 1092
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    #@16
    .line 1093
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    #@18
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    #@1a
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_3

    #@20
    .line 1094
    return v3

    #@21
    .line 1095
    :cond_3
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    #@23
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    #@25
    if-eq v1, v2, :cond_4

    #@27
    .line 1096
    return v3

    #@28
    .line 1097
    :cond_4
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    #@2a
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    #@2c
    if-eq v1, v2, :cond_5

    #@2e
    .line 1098
    return v3

    #@2f
    .line 1099
    :cond_5
    return v4
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 1076
    const/16 v0, 0x1f

    #@2
    .line 1078
    .local v0, "prime":I
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    #@4
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@7
    move-result v2

    #@8
    add-int/lit8 v1, v2, 0x1f

    #@a
    .line 1079
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@c
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    #@e
    add-int v1, v2, v3

    #@10
    .line 1080
    mul-int/lit8 v2, v1, 0x1f

    #@12
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    #@14
    add-int v1, v2, v3

    #@16
    .line 1081
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SoundModelEvent [status="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", soundModelHandle="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 1105
    const-string/jumbo v1, ", data="

    #@22
    .line 1104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 1105
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    #@28
    if-nez v0, :cond_0

    #@2a
    const/4 v0, 0x0

    #@2b
    .line 1104
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 1105
    const-string/jumbo v1, "]"

    #@32
    .line 1104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0

    #@3b
    .line 1105
    :cond_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    #@3d
    array-length v0, v0

    #@3e
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1069
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1070
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1071
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    #@f
    .line 1068
    return-void
.end method
