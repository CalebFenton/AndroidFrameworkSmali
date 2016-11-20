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

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 116
    new-instance v0, Landroid/content/pm/FeatureInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/FeatureInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/FeatureInfo;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@7
    .line 84
    iget v0, p1, Landroid/content/pm/FeatureInfo;->version:I

    #@9
    iput v0, p0, Landroid/content/pm/FeatureInfo;->version:I

    #@b
    .line 85
    iget v0, p1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@d
    iput v0, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@f
    .line 86
    iget v0, p1, Landroid/content/pm/FeatureInfo;->flags:I

    #@11
    iput v0, p0, Landroid/content/pm/FeatureInfo;->flags:I

    #@13
    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@9
    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/content/pm/FeatureInfo;->version:I

    #@f
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@15
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/content/pm/FeatureInfo;->flags:I

    #@1b
    .line 127
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
    .line 105
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGlEsVersion()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 141
    iget v2, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@2
    const/high16 v3, -0x10000

    #@4
    and-int/2addr v2, v3

    #@5
    shr-int/lit8 v0, v2, 0x10

    #@7
    .line 142
    .local v0, "major":I
    iget v2, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@9
    const v3, 0xffff

    #@c
    and-int v1, v2, v3

    #@e
    .line 143
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
    .line 91
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 92
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
    .line 93
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@13
    move-result v1

    #@14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 94
    const-string/jumbo v1, " "

    #@1f
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 94
    iget-object v1, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@25
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 94
    const-string/jumbo v1, " v="

    #@2c
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 94
    iget v1, p0, Landroid/content/pm/FeatureInfo;->version:I

    #@32
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 94
    const-string/jumbo v1, " fl=0x"

    #@39
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 94
    iget v1, p0, Landroid/content/pm/FeatureInfo;->flags:I

    #@3f
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 94
    const-string/jumbo v1, "}"

    #@4a
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    return-object v0

    #@53
    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v1, "FeatureInfo{"

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 97
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@62
    move-result v1

    #@63
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    .line 98
    const-string/jumbo v1, " glEsVers="

    #@6e
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    .line 98
    invoke-virtual {p0}, Landroid/content/pm/FeatureInfo;->getGlEsVersion()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 99
    const-string/jumbo v1, " fl=0x"

    #@7d
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 99
    iget v1, p0, Landroid/content/pm/FeatureInfo;->flags:I

    #@83
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 99
    const-string/jumbo v1, "}"

    #@8e
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v0

    #@96
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 111
    iget v0, p0, Landroid/content/pm/FeatureInfo;->version:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 112
    iget v0, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 113
    iget v0, p0, Landroid/content/pm/FeatureInfo;->flags:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 109
    return-void
.end method
