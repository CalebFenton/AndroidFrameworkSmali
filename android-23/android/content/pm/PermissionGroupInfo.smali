.class public Landroid/content/pm/PermissionGroupInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "PermissionGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PermissionGroupInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_PERSONAL_INFO:I = 0x1


# instance fields
.field public descriptionRes:I

.field public flags:I

.field public nonLocalizedDescription:Ljava/lang/CharSequence;

.field public priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 115
    new-instance v0, Landroid/content/pm/PermissionGroupInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PermissionGroupInfo$1;-><init>()V

    #@5
    .line 114
    sput-object v0, Landroid/content/pm/PermissionGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionGroupInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/PermissionGroupInfo;

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    #@3
    .line 66
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    #@5
    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    #@7
    .line 67
    iget-object v0, p1, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@9
    iput-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@b
    .line 68
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    #@d
    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    #@f
    .line 69
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@11
    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@13
    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    #@9
    .line 127
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@b
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/CharSequence;

    #@11
    iput-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@13
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    #@19
    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@1f
    .line 124
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PermissionGroupInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 84
    iget-object v1, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 85
    iget-object v1, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@7
    return-object v1

    #@8
    .line 87
    :cond_0
    iget v1, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 88
    iget-object v1, p0, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    #@e
    iget v2, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    #@10
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@13
    move-result-object v0

    #@14
    .line 89
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    #@16
    .line 90
    return-object v0

    #@17
    .line 93
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PermissionGroupInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 98
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 99
    const-string/jumbo v1, " "

    #@1b
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 99
    iget-object v1, p0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    #@21
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 99
    const-string/jumbo v1, " flgs=0x"

    #@28
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 99
    iget v1, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    #@2e
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 99
    const-string/jumbo v1, "}"

    #@39
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 108
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 109
    iget-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@a
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@d
    .line 110
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 111
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 106
    return-void
.end method
