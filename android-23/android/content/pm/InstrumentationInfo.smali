.class public Landroid/content/pm/InstrumentationInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "InstrumentationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/InstrumentationInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dataDir:Ljava/lang/String;

.field public functionalTest:Z

.field public handleProfiling:Z

.field public nativeLibraryDir:Ljava/lang/String;

.field public publicSourceDir:Ljava/lang/String;

.field public sourceDir:Ljava/lang/String;

.field public splitPublicSourceDirs:[Ljava/lang/String;

.field public splitSourceDirs:[Ljava/lang/String;

.field public targetPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 116
    new-instance v0, Landroid/content/pm/InstrumentationInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/InstrumentationInfo$1;-><init>()V

    #@5
    .line 115
    sput-object v0, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/InstrumentationInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/InstrumentationInfo;

    #@0
    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    #@3
    .line 85
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@7
    .line 86
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    #@b
    .line 87
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    #@d
    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    #@f
    .line 88
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    #@11
    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    #@13
    .line 89
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@15
    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@17
    .line 90
    iget-boolean v0, p1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    #@19
    iput-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    #@1b
    .line 91
    iget-boolean v0, p1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    #@1d
    iput-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    #@1f
    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 126
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    #@5
    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@b
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    #@11
    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    #@17
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    #@1d
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@23
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    move v0, v1

    #@2a
    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    #@2c
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_1

    #@32
    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    #@34
    .line 125
    return-void

    #@35
    :cond_0
    move v0, v2

    #@36
    .line 132
    goto :goto_0

    #@37
    :cond_1
    move v1, v2

    #@38
    .line 133
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/InstrumentationInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    return v0
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
    const-string/jumbo v1, "InstrumentationInfo{"

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
    const-string/jumbo v1, " "

    #@1b
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 97
    iget-object v1, p0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    #@21
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 97
    const-string/jumbo v1, "}"

    #@28
    .line 95
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
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 105
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 106
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 107
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 108
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 109
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 110
    iget-object v0, p0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 111
    iget-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    #@20
    if-nez v0, :cond_0

    #@22
    move v0, v1

    #@23
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 112
    iget-boolean v0, p0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    #@28
    if-nez v0, :cond_1

    #@2a
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 104
    return-void

    #@2e
    :cond_0
    move v0, v2

    #@2f
    .line 111
    goto :goto_0

    #@30
    :cond_1
    move v1, v2

    #@31
    .line 112
    goto :goto_1
.end method
