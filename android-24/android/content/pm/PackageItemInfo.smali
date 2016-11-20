.class public Landroid/content/pm/PackageItemInfo;
.super Ljava/lang/Object;
.source "PackageItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageItemInfo$DisplayNameComparator;
    }
.end annotation


# static fields
.field public static final DUMP_FLAG_ALL:I = 0x3

.field public static final DUMP_FLAG_APPLICATION:I = 0x2

.field public static final DUMP_FLAG_DETAILS:I = 0x1

.field private static final MAX_LABEL_SIZE_PX:F = 500.0f


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
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    const/16 v0, -0x2710

    #@5
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@7
    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageItemInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/PackageItemInfo;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 110
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@7
    .line 111
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
    .line 112
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@15
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@17
    .line 113
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@19
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@1b
    .line 114
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1d
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1f
    .line 115
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
    .line 116
    :cond_1
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    #@31
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    #@33
    .line 117
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->banner:I

    #@35
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@37
    .line 118
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    #@39
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    #@3b
    .line 119
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@3d
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@3f
    .line 120
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@41
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@43
    .line 109
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@9
    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@f
    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@15
    .line 398
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@17
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/CharSequence;

    #@1d
    .line 397
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1f
    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    #@25
    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    #@2b
    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@31
    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@37
    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@3d
    .line 393
    return-void
.end method


# virtual methods
.method protected dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 377
    return-void
.end method

.method protected dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 366
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
    .line 368
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
    .line 369
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@40
    if-nez v0, :cond_1

    #@42
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@44
    if-eqz v0, :cond_3

    #@46
    .line 370
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
    .line 371
    const-string/jumbo v1, " nonLocalizedLabel="

    #@63
    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 371
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@69
    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 372
    const-string/jumbo v1, " icon=0x"

    #@70
    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 372
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    #@76
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    .line 373
    const-string/jumbo v1, " banner=0x"

    #@81
    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    .line 373
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@87
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 370
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
    .line 364
    :cond_2
    return-void

    #@97
    .line 369
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
    .line 415
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 251
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 252
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
    .line 253
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@12
    .line 254
    return-object v0

    #@13
    .line 257
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
    .line 287
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 272
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
    .line 323
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 219
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
    .line 135
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 136
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@6
    return-object v1

    #@7
    .line 138
    :cond_0
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 139
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
    .line 140
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    #@19
    .line 141
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
    .line 144
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 145
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@28
    return-object v1

    #@29
    .line 147
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
    .line 302
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 303
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
    .line 304
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@12
    .line 305
    return-object v0

    #@13
    .line 308
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 169
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@4
    move-result-object v7

    #@5
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 171
    .local v1, "label":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    #@c
    move-result-object v7

    #@d
    invoke-interface {v7}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 176
    .local v3, "labelStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    .line 177
    .local v2, "labelLength":I
    const/4 v4, 0x0

    #@16
    .line 178
    .local v4, "offset":I
    :goto_0
    if-ge v4, v2, :cond_1

    #@18
    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/String;->codePointAt(I)I

    #@1b
    move-result v0

    #@1c
    .line 180
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    #@1f
    move-result v6

    #@20
    .line 181
    .local v6, "type":I
    const/16 v7, 0xd

    #@22
    if-eq v6, v7, :cond_0

    #@24
    .line 182
    const/16 v7, 0xf

    #@26
    if-ne v6, v7, :cond_2

    #@28
    .line 184
    :cond_0
    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 195
    .end local v0    # "codePoint":I
    .end local v6    # "type":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 196
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_4

    #@36
    .line 197
    iget-object v7, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@38
    return-object v7

    #@39
    .line 183
    .restart local v0    # "codePoint":I
    .restart local v6    # "type":I
    :cond_2
    const/16 v7, 0xe

    #@3b
    if-eq v6, v7, :cond_0

    #@3d
    .line 188
    const/16 v7, 0xc

    #@3f
    if-ne v6, v7, :cond_3

    #@41
    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    const-string/jumbo v8, " "

    #@51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    .line 190
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@58
    move-result v8

    #@59
    .line 189
    add-int/2addr v8, v4

    #@5a
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    .line 192
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@69
    move-result v7

    #@6a
    add-int/2addr v4, v7

    #@6b
    goto :goto_0

    #@6c
    .line 199
    .end local v0    # "codePoint":I
    .end local v6    # "type":I
    :cond_4
    new-instance v5, Landroid/text/TextPaint;

    #@6e
    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    #@71
    .line 200
    .local v5, "paint":Landroid/text/TextPaint;
    const/high16 v7, 0x42280000    # 42.0f

    #@73
    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    #@76
    .line 203
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@78
    .line 202
    const/high16 v8, 0x43fa0000    # 500.0f

    #@7a
    invoke-static {v3, v5, v8, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    #@7d
    move-result-object v7

    #@7e
    return-object v7
.end method

.method public loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 236
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
    .line 340
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 341
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@7
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    .line 342
    .local v0, "resid":I
    if-eqz v0, :cond_0

    #@d
    .line 343
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
    .line 346
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
    .line 382
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 383
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 384
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 385
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@11
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@14
    .line 386
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 387
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 388
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@23
    .line 389
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 390
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 381
    return-void
.end method
