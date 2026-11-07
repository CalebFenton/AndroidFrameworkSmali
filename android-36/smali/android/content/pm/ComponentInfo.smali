.class public Landroid/content/pm/ComponentInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "ComponentInfo.java"


# instance fields
.field public whitelist applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public whitelist attributionTags:[Ljava/lang/String;

.field public whitelist descriptionRes:I

.field public whitelist directBootAware:Z

.field public whitelist enabled:Z

.field public whitelist exported:Z

.field public whitelist processName:Ljava/lang/String;

.field public whitelist splitName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 106
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 109
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ComponentInfo;)V
    .registers 3
    .param p1, "orig"    # Landroid/content/pm/ComponentInfo;

    .line 112
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 106
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 113
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 114
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    .line 117
    iget v0, p1, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 118
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 119
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 120
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 121
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 247
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 106
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 248
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_35

    move v2, v0

    goto :goto_36

    :cond_35
    move v2, v1

    :goto_36
    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40

    move v2, v0

    goto :goto_41

    :cond_40
    move v2, v1

    :goto_41
    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    :goto_4b
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 256
    return-void
.end method


# virtual methods
.method protected whitelist dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method greylist-max-o dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V
    .registers 7
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpFlags"    # I

    .line 223
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_4d

    .line 224
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_37

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ApplicationInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_4d

    .line 228
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ApplicationInfo: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 231
    :cond_4d
    :goto_4d
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method protected whitelist dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 195
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 199
    :cond_2e
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "splitName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 202
    :cond_4f
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_9a

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "tags":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_66
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7a

    .line 206
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 209
    .end local v1    # "i":I
    :cond_7a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "attributionTags=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 211
    .end local v0    # "tags":Ljava/lang/StringBuilder;
    :cond_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " directBootAware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 213
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-eqz v0, :cond_ee

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 216
    :cond_ee
    return-void
.end method

.method public greylist-max-o getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 288
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final whitelist getBannerResource()I
    .registers 2

    .line 185
    iget v0, p0, Landroid/content/pm/ComponentInfo;->banner:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/content/pm/ComponentInfo;->banner:I

    goto :goto_b

    :cond_7
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    :goto_b
    return v0
.end method

.method public greylist-max-r getComponentName()Landroid/content/ComponentName;
    .registers 4

    .line 191
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final whitelist getIconResource()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    goto :goto_b

    :cond_7
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    :goto_b
    return v0
.end method

.method public final whitelist getLogoResource()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/content/pm/ComponentInfo;->logo:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/content/pm/ComponentInfo;->logo:I

    goto :goto_b

    :cond_7
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    :goto_b
    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected greylist-max-o loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 272
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 264
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 281
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 125
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 126
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0

    .line 128
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 130
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v1, :cond_18

    .line 131
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 132
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_18

    .line 133
    return-object v1

    .line 136
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_18
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1f

    .line 137
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v1

    .line 139
    :cond_1f
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v1, :cond_2e

    .line 140
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 141
    .restart local v1    # "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2e

    .line 142
    return-object v1

    .line 145
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_2e
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 235
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 236
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 237
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 240
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    return-void
.end method
