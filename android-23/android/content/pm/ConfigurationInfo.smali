.class public Landroid/content/pm/ConfigurationInfo;
.super Ljava/lang/Object;
.source "ConfigurationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ConfigurationInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GL_ES_VERSION_UNDEFINED:I = 0x0

.field public static final INPUT_FEATURE_FIVE_WAY_NAV:I = 0x2

.field public static final INPUT_FEATURE_HARD_KEYBOARD:I = 0x1


# instance fields
.field public reqGlEsVersion:I

.field public reqInputFeatures:I

.field public reqKeyboardType:I

.field public reqNavigation:I

.field public reqTouchScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 117
    new-instance v0, Landroid/content/pm/ConfigurationInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo$1;-><init>()V

    #@5
    .line 116
    sput-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@6
    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ConfigurationInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ConfigurationInfo;

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@6
    .line 87
    iget v0, p1, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    #@8
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    #@a
    .line 88
    iget v0, p1, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    #@c
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    #@e
    .line 89
    iget v0, p1, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    #@10
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    #@12
    .line 90
    iget v0, p1, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@14
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@16
    .line 91
    iget v0, p1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    #@18
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    #@1a
    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@6
    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    #@c
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    #@12
    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    #@18
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@1e
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    #@24
    .line 126
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ConfigurationInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ConfigurationInfo;-><init>(Landroid/os/Parcel;)V

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
    iget v2, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    #@2
    const/high16 v3, -0x10000

    #@4
    and-int/2addr v2, v3

    #@5
    shr-int/lit8 v0, v2, 0x10

    #@7
    .line 142
    .local v0, "major":I
    iget v2, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

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
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ConfigurationInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 96
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 97
    const-string/jumbo v1, " touchscreen = "

    #@1b
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 97
    iget v1, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    #@21
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 98
    const-string/jumbo v1, " inputMethod = "

    #@28
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 98
    iget v1, p0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    #@2e
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 99
    const-string/jumbo v1, " navigation = "

    #@35
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 99
    iget v1, p0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    #@3b
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 100
    const-string/jumbo v1, " reqInputFeatures = "

    #@42
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 100
    iget v1, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@48
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 101
    const-string/jumbo v1, " reqGlEsVersion = "

    #@4f
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 101
    iget v1, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    #@55
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 101
    const-string/jumbo v1, "}"

    #@5c
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 110
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 111
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 112
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 113
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 108
    return-void
.end method
