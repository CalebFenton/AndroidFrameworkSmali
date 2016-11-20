.class public Landroid/content/pm/PackageInfoLite;
.super Ljava/lang/Object;
.source "PackageInfoLite.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInfoLite$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageInfoLite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseRevisionCode:I

.field public installLocation:I

.field public multiArch:Z

.field public packageName:Ljava/lang/String;

.field public recommendedInstallLocation:I

.field public splitNames:[Ljava/lang/String;

.field public splitRevisionCodes:[I

.field public verifiers:[Landroid/content/pm/VerifierInfo;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 100
    new-instance v0, Landroid/content/pm/PackageInfoLite$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PackageInfoLite$1;-><init>()V

    #@5
    .line 99
    sput-object v0, Landroid/content/pm/PackageInfoLite;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    #@a
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    #@10
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    #@16
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    #@1c
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    #@22
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    iput v1, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@28
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v1

    #@2c
    iput v1, p0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    #@2e
    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_0

    #@34
    const/4 v1, 0x1

    #@35
    :goto_0
    iput-boolean v1, p0, Landroid/content/pm/PackageInfoLite;->multiArch:Z

    #@37
    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    .line 121
    .local v0, "verifiersLength":I
    if-nez v0, :cond_1

    #@3d
    .line 122
    new-array v1, v2, [Landroid/content/pm/VerifierInfo;

    #@3f
    iput-object v1, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    #@41
    .line 110
    :goto_1
    return-void

    #@42
    .end local v0    # "verifiersLength":I
    :cond_0
    move v1, v2

    #@43
    .line 118
    goto :goto_0

    #@44
    .line 124
    .restart local v0    # "verifiersLength":I
    :cond_1
    new-array v1, v0, [Landroid/content/pm/VerifierInfo;

    #@46
    iput-object v1, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    #@48
    .line 125
    iget-object v1, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    #@4a
    sget-object v2, Landroid/content/pm/VerifierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    #@4f
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageInfoLite;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/PackageInfoLite;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 78
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PackageInfoLite{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 73
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 74
    const-string/jumbo v1, " "

    #@1b
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 74
    iget-object v1, p0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    #@21
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 74
    const-string/jumbo v1, "}"

    #@28
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6
    .line 83
    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@b
    .line 84
    iget v0, p0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 85
    iget v0, p0, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 86
    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1a
    .line 87
    iget v0, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 88
    iget v0, p0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 89
    iget-boolean v0, p0, Landroid/content/pm/PackageInfoLite;->multiArch:Z

    #@26
    if-eqz v0, :cond_1

    #@28
    const/4 v0, 0x1

    #@29
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 91
    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    #@2e
    if-eqz v0, :cond_0

    #@30
    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    #@32
    array-length v0, v0

    #@33
    if-nez v0, :cond_2

    #@35
    .line 92
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 81
    :goto_1
    return-void

    #@39
    :cond_1
    move v0, v1

    #@3a
    .line 89
    goto :goto_0

    #@3b
    .line 94
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    #@3d
    array-length v0, v0

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 95
    iget-object v0, p0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    #@43
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@46
    goto :goto_1
.end method
