.class public final Landroid/content/pm/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mApexModuleName:Ljava/lang/String;

.field private blacklist mApkInApexPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHidden:Z

.field private blacklist mName:Ljava/lang/CharSequence;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 194
    new-instance v0, Landroid/content/pm/ModuleInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ModuleInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ModuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ModuleInfo;)V
    .registers 3
    .param p1, "orig"    # Landroid/content/pm/ModuleInfo;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    .line 72
    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    .line 73
    iget-boolean v0, p1, Landroid/content/pm/ModuleInfo;->mHidden:Z

    iput-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    .line 74
    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 76
    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    .line 78
    :cond_1f
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    .line 192
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ModuleInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ModuleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 165
    instance-of v0, p1, Landroid/content/pm/ModuleInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 166
    return v1

    .line 168
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ModuleInfo;

    .line 169
    .local v0, "other":Landroid/content/pm/ModuleInfo;
    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    .line 170
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    .line 171
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    iget-object v3, v0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    .line 172
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    iget-boolean v3, v0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    if-ne v2, v3, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    nop

    .line 169
    :goto_3a
    return v1
.end method

.method public blacklist getApexModuleName()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getApkInApexPackageNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    if-nez v0, :cond_9

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 137
    :cond_9
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 156
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 157
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 158
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 159
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 160
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    return v1
.end method

.method public whitelist isHidden()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    return v0
.end method

.method public blacklist setApexModuleName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;
    .registers 2
    .param p1, "apexModuleName"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public blacklist setApkInApexPackageNames(Ljava/util/Collection;)Landroid/content/pm/ModuleInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/ModuleInfo;"
        }
    .end annotation

    .line 126
    .local p1, "apkInApexPackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    .line 128
    return-object p0
.end method

.method public blacklist setHidden(Z)Landroid/content/pm/ModuleInfo;
    .registers 2
    .param p1, "hidden"    # Z

    .line 104
    iput-boolean p1, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    .line 105
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/CharSequence;)Landroid/content/pm/ModuleInfo;
    .registers 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 82
    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    .line 83
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 178
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 181
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mApkInApexPackageNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 184
    return-void
.end method
