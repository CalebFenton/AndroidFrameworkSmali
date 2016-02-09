.class public Landroid/content/pm/ComponentInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "ComponentInfo.java"


# instance fields
.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public descriptionRes:I

.field public enabled:Z

.field public exported:Z

.field public processName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    #@3
    .line 56
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@6
    .line 64
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@9
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ComponentInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ComponentInfo;

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    #@3
    .line 56
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@6
    .line 64
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@9
    .line 71
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b
    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d
    .line 72
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@f
    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@11
    .line 73
    iget v0, p1, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@13
    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@15
    .line 74
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@17
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@19
    .line 75
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->exported:Z

    #@1b
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@1d
    .line 69
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 171
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    #@5
    .line 56
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@7
    .line 64
    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@9
    .line 172
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@11
    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@13
    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@19
    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@1f
    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_0

    #@25
    move v0, v1

    #@26
    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@28
    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@30
    .line 170
    return-void

    #@31
    :cond_0
    move v0, v2

    #@32
    .line 175
    goto :goto_0

    #@33
    :cond_1
    move v1, v2

    #@34
    .line 176
    goto :goto_1
.end method


# virtual methods
.method protected dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "ApplicationInfo:"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1b
    .line 154
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, "  "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@34
    .line 158
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    #@37
    .line 151
    return-void

    #@38
    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    const-string/jumbo v1, "ApplicationInfo: null"

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@4f
    goto :goto_0
.end method

.method protected dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    #@3
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, "enabled="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, " exported="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 145
    const-string/jumbo v1, " processName="

    #@29
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 145
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@2f
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3a
    .line 146
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@3c
    if-eqz v0, :cond_0

    #@3e
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    const-string/jumbo v1, "description="

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    iget v1, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@5b
    .line 142
    :cond_0
    return-void
.end method

.method protected getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    return-object v0
.end method

.method public final getBannerResource()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Landroid/content/pm/ComponentInfo;->banner:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/content/pm/ComponentInfo;->banner:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    #@b
    goto :goto_0
.end method

.method public final getIconResource()I
    .locals 1

    #@0
    .prologue
    .line 117
    iget v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    #@b
    goto :goto_0
.end method

.method public final getLogoResource()I
    .locals 1

    #@0
    .prologue
    .line 128
    iget v0, p0, Landroid/content/pm/ComponentInfo;->logo:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/content/pm/ComponentInfo;->logo:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    #@b
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method protected loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 79
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 80
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@6
    return-object v2

    #@7
    .line 82
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9
    .line 84
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 85
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@f
    iget v3, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    #@11
    invoke-virtual {p1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@14
    move-result-object v1

    #@15
    .line 86
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    #@17
    .line 87
    return-object v1

    #@18
    .line 90
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 91
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1e
    return-object v2

    #@1f
    .line 93
    :cond_2
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    #@21
    if-eqz v2, :cond_3

    #@23
    .line 94
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@25
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    #@27
    invoke-virtual {p1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@2a
    move-result-object v1

    #@2b
    .line 95
    .restart local v1    # "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    #@2d
    .line 96
    return-object v1

    #@2e
    .line 99
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_3
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    #@30
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 162
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 163
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@a
    .line 164
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 165
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 166
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    move v0, v1

    #@19
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 167
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@1e
    if-eqz v0, :cond_1

    #@20
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 161
    return-void

    #@24
    :cond_0
    move v0, v2

    #@25
    .line 166
    goto :goto_0

    #@26
    :cond_1
    move v1, v2

    #@27
    .line 167
    goto :goto_1
.end method
