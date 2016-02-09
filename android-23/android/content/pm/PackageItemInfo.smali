.class public Landroid/content/pm/PackageItemInfo;
.super Ljava/lang/Object;
.source "PackageItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageItemInfo$DisplayNameComparator;
    }
.end annotation


# instance fields
.field public banner:I

.field public icon:I

.field public labelRes:I

.field public logo:I

.field public metaData:Landroid/os/Bundle;

.field public name:Ljava/lang/String;

.field public nonLocalizedLabel:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public showUserIcon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    const/16 v0, -0x2710

    #@5
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@7
    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageItemInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/PackageItemInfo;

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@7
    .line 103
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@13
    .line 104
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@15
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@17
    .line 105
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@19
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@1b
    .line 106
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1d
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1f
    .line 107
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@21
    if-eqz v0, :cond_1

    #@23
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@25
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@2f
    .line 108
    :cond_1
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    #@31
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    #@33
    .line 109
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->banner:I

    #@35
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@37
    .line 110
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    #@39
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    #@3b
    .line 111
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@3d
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@3f
    .line 112
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@41
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@43
    .line 101
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@9
    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@f
    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@15
    .line 319
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@17
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/CharSequence;

    #@1d
    .line 318
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1f
    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    #@25
    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    #@2b
    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@31
    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@37
    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@3d
    .line 314
    return-void
.end method


# virtual methods
.method protected dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 298
    return-void
.end method

.method protected dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "name="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@21
    .line 289
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    const-string/jumbo v1, "packageName="

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3e
    .line 290
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@40
    if-nez v0, :cond_1

    #@42
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@44
    if-eqz v0, :cond_3

    #@46
    .line 291
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    const-string/jumbo v1, "labelRes=0x"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@58
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 292
    const-string/jumbo v1, " nonLocalizedLabel="

    #@63
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 292
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@69
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 293
    const-string/jumbo v1, " icon=0x"

    #@70
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 293
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    #@76
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    .line 294
    const-string/jumbo v1, " banner=0x"

    #@81
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    .line 294
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@87
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@96
    .line 285
    :cond_2
    return-void

    #@97
    .line 290
    :cond_3
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    #@99
    if-nez v0, :cond_1

    #@9b
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@9d
    if-eqz v0, :cond_2

    #@9f
    goto :goto_0
.end method

.method protected getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    #@0
    .prologue
    .line 336
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 187
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 188
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@6
    iget v2, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@8
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    .line 189
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@12
    .line 190
    return-object v0

    #@13
    .line 193
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method protected loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 223
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 259
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 127
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 128
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@6
    return-object v1

    #@7
    .line 130
    :cond_0
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 131
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@d
    iget v2, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@f
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@16
    move-result-object v0

    #@17
    .line 132
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    #@19
    .line 133
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    return-object v1

    #@22
    .line 136
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 137
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@28
    return-object v1

    #@29
    .line 139
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@2b
    return-object v1
.end method

.method public loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 238
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 239
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@6
    iget v2, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    #@8
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    .line 240
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@12
    .line 241
    return-object v0

    #@13
    .line 244
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 276
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 277
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@7
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    .line 278
    .local v0, "resid":I
    if-eqz v0, :cond_0

    #@d
    .line 279
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@f
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 282
    .end local v0    # "resid":I
    :cond_0
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 304
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 305
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 306
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@11
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@14
    .line 307
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 308
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 309
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@23
    .line 310
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 311
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 302
    return-void
.end method
