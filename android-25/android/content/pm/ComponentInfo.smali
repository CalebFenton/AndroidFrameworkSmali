.class public Landroid/content/pm/ComponentInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "ComponentInfo.java"


# instance fields
.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public descriptionRes:I

.field public directBootAware:Z

.field public enabled:Z

.field public encryptionAware:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public exported:Z

.field public processName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 79
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    #@4
    .line 58
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@7
    .line 66
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@9
    .line 73
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@b
    .line 77
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    #@d
    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ComponentInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/ComponentInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 83
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    #@4
    .line 58
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@7
    .line 66
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@9
    .line 73
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@b
    .line 77
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    #@d
    .line 84
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f
    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@11
    .line 85
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@15
    .line 86
    iget v0, p1, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@17
    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@19
    .line 87
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@1b
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@1d
    .line 88
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->exported:Z

    #@1f
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@21
    .line 89
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@23
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@25
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    #@27
    .line 82
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 205
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    #@5
    .line 58
    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@7
    .line 66
    iput-boolean v3, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@9
    .line 73
    iput-boolean v3, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@b
    .line 77
    iput-boolean v3, p0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    #@d
    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    move v0, v2

    #@14
    .line 207
    .local v0, "hasApplicationInfo":Z
    :goto_0
    if-eqz v0, :cond_0

    #@16
    .line 208
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    #@1e
    iput-object v1, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@20
    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@26
    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v1

    #@2a
    iput v1, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@2c
    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    move v1, v2

    #@33
    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@35
    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_3

    #@3b
    move v1, v2

    #@3c
    :goto_2
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@3e
    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_4

    #@44
    :goto_3
    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@46
    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    #@48
    .line 204
    return-void

    #@49
    .end local v0    # "hasApplicationInfo":Z
    :cond_1
    move v0, v3

    #@4a
    .line 206
    goto :goto_0

    #@4b
    .restart local v0    # "hasApplicationInfo":Z
    :cond_2
    move v1, v3

    #@4c
    .line 212
    goto :goto_1

    #@4d
    :cond_3
    move v1, v3

    #@4e
    .line 213
    goto :goto_2

    #@4f
    :cond_4
    move v2, v3

    #@50
    .line 214
    goto :goto_3
.end method


# virtual methods
.method protected dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    #@4
    .line 173
    return-void
.end method

.method dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 178
    and-int/lit8 v0, p3, 0x2

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 179
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "ApplicationInfo:"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1f
    .line 181
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "  "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    #@38
    .line 186
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    #@3b
    .line 177
    return-void

    #@3c
    .line 183
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    const-string/jumbo v1, "ApplicationInfo: null"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@53
    goto :goto_0
.end method

.method protected dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    #@3
    .line 163
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@9
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 166
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, "enabled="

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string/jumbo v1, " exported="

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 167
    const-string/jumbo v1, " directBootAware="

    #@37
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 167
    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@3d
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@48
    .line 168
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@4a
    if-eqz v0, :cond_1

    #@4c
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    const-string/jumbo v1, "description="

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    iget v1, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@69
    .line 161
    :cond_1
    return-void

    #@6a
    .line 164
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    const-string/jumbo v1, "processName="

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@87
    goto :goto_0
.end method

.method protected getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    return-object v0
.end method

.method public final getBannerResource()I
    .locals 1

    #@0
    .prologue
    .line 153
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

.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 158
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    #@6
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method public final getIconResource()I
    .locals 1

    #@0
    .prologue
    .line 131
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
    .line 142
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
    .line 120
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
    .line 229
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
    .line 222
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
    .line 237
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
    .line 93
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 94
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@6
    return-object v2

    #@7
    .line 96
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9
    .line 98
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 99
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@f
    iget v3, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    #@11
    invoke-virtual {p1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@14
    move-result-object v1

    #@15
    .line 100
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    #@17
    .line 101
    return-object v1

    #@18
    .line 104
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 105
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1e
    return-object v2

    #@1f
    .line 107
    :cond_2
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    #@21
    if-eqz v2, :cond_3

    #@23
    .line 108
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@25
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    #@27
    invoke-virtual {p1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@2a
    move-result-object v1

    #@2b
    .line 109
    .restart local v1    # "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    #@2d
    .line 110
    return-object v1

    #@2e
    .line 113
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
    .line 190
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 191
    and-int/lit8 v0, p2, 0x2

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 192
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 197
    :goto_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 198
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 199
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@18
    if-eqz v0, :cond_1

    #@1a
    move v0, v1

    #@1b
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 200
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    #@20
    if-eqz v0, :cond_2

    #@22
    move v0, v1

    #@23
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 201
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@28
    if-eqz v0, :cond_3

    #@2a
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 189
    return-void

    #@2e
    .line 194
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 195
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@33
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@36
    goto :goto_0

    #@37
    :cond_1
    move v0, v2

    #@38
    .line 199
    goto :goto_1

    #@39
    :cond_2
    move v0, v2

    #@3a
    .line 200
    goto :goto_2

    #@3b
    :cond_3
    move v1, v2

    #@3c
    .line 201
    goto :goto_3
.end method
