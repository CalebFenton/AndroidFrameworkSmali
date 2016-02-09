.class public Landroid/content/pm/FeatureInfo;
.super Ljava/lang/Object;
.source "FeatureInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/FeatureInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_REQUIRED:I = 0x1

.field public static final GL_ES_VERSION_UNDEFINED:I


# instance fields
.field public flags:I

.field public name:Ljava/lang/String;

.field public reqGlEsVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 90
    new-instance v0, Landroid/content/pm/FeatureInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo$1;-><init>()V

    #@5
    .line 89
    sput-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/FeatureInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/FeatureInfo;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@7
    .line 62
    iget v0, p1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@9
    iput v0, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@b
    .line 63
    iget v0, p1, Landroid/content/pm/FeatureInfo;->flags:I

    #@d
    iput v0, p0, Landroid/content/pm/FeatureInfo;->flags:I

    #@f
    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@9
    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@f
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/content/pm/FeatureInfo;->flags:I

    #@15
    .line 99
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/FeatureInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/FeatureInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGlEsVersion()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 112
    iget v2, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@2
    const/high16 v3, -0x10000

    #@4
    and-int/2addr v2, v3

    #@5
    shr-int/lit8 v0, v2, 0x10

    #@7
    .line 113
    .local v0, "major":I
    iget v2, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@9
    const v3, 0xffff

    #@c
    and-int v1, v2, v3

    #@e
    .line 114
    .local v1, "minor":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, "."

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "FeatureInfo{"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 69
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@13
    move-result v1

    #@14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 70
    const-string/jumbo v1, " "

    #@1f
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 70
    iget-object v1, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@25
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 70
    const-string/jumbo v1, " fl=0x"

    #@2c
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 70
    iget v1, p0, Landroid/content/pm/FeatureInfo;->flags:I

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 70
    const-string/jumbo v1, "}"

    #@3d
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    return-object v0

    #@46
    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v1, "FeatureInfo{"

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 73
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@55
    move-result v1

    #@56
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 74
    const-string/jumbo v1, " glEsVers="

    #@61
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    .line 74
    invoke-virtual {p0}, Landroid/content/pm/FeatureInfo;->getGlEsVersion()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 75
    const-string/jumbo v1, " fl=0x"

    #@70
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 75
    iget v1, p0, Landroid/content/pm/FeatureInfo;->flags:I

    #@76
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    .line 75
    const-string/jumbo v1, "}"

    #@81
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 85
    iget v0, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 86
    iget v0, p0, Landroid/content/pm/FeatureInfo;->flags:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 83
    return-void
.end method
