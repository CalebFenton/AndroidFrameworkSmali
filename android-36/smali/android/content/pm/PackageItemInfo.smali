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
.field public static final blacklist DEFAULT_MAX_LABEL_SIZE_PX:F = 1000.0f

.field public static final greylist-max-o DUMP_FLAG_ALL:I = 0x3

.field public static final greylist-max-o DUMP_FLAG_APPLICATION:I = 0x2

.field public static final greylist-max-o DUMP_FLAG_DETAILS:I = 0x1

.field public static final greylist-max-o MAX_SAFE_LABEL_LENGTH:I = 0x3e8

.field public static final greylist SAFE_LABEL_FLAG_FIRST_LINE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist SAFE_LABEL_FLAG_SINGLE_LINE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist SAFE_LABEL_FLAG_TRIM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static volatile greylist-max-o sForceSafeLabels:Z


# instance fields
.field public whitelist banner:I

.field public whitelist icon:I

.field public whitelist isArchived:Z

.field public whitelist labelRes:I

.field public whitelist logo:I

.field public whitelist metaData:Landroid/os/Bundle;

.field public whitelist name:Ljava/lang/String;

.field public whitelist nonLocalizedLabel:Ljava/lang/CharSequence;

.field public whitelist packageName:Ljava/lang/String;

.field public greylist-max-o showUserIcon:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/pm/PackageItemInfo;->sForceSafeLabels:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/16 v0, -0x2710

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    .line 190
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/PackageItemInfo;)V
    .registers 3
    .param p1, "orig"    # Landroid/content/pm/PackageItemInfo;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 195
    :cond_13
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 196
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 197
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 198
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 199
    :cond_2f
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 200
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->banner:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 201
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 202
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 203
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    .line 204
    iget-boolean v0, p1, Landroid/content/pm/PackageItemInfo;->isArchived:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageItemInfo;->isArchived:Z

    .line 205
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 496
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 497
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageItemInfo;->isArchived:Z

    .line 504
    return-void
.end method

.method public static whitelist forceSafeLabels()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/pm/PackageItemInfo;->sForceSafeLabels:Z

    .line 120
    return-void
.end method


# virtual methods
.method protected whitelist dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 458
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpFlags"    # I

    .line 477
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 478
    .local v0, "token":J
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 479
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 481
    :cond_12
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 482
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 483
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_38

    .line 484
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 486
    :cond_38
    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 487
    const-wide v2, 0x10500000006L

    iget v4, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 488
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Landroid/content/pm/PackageItemInfo;->isArchived:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 489
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 490
    return-void
.end method

.method protected whitelist dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 444
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 447
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 448
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_4e

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_4e

    iget v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-nez v0, :cond_4e

    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    if-eqz v0, :cond_9b

    .line 449
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "labelRes=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nonLocalizedLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " icon=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 451
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " banner=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 452
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 454
    :cond_9b
    return-void
.end method

.method public greylist-max-o getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 325
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    if-eqz v0, :cond_13

    .line 326
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 327
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_13

    .line 328
    return-object v0

    .line 331
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_13
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 347
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 291
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 220
    sget-boolean v0, Landroid/content/pm/PackageItemInfo;->sForceSafeLabels:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 221
    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageItemInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 226
    :cond_18
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 379
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    if-eqz v0, :cond_13

    .line 380
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 381
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_13

    .line 382
    return-object v0

    .line 385
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_13
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageItemInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "ellipsizeDip"    # F
    .param p3, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 271
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1, p2, p3}, Landroid/text/TextUtils;->makeSafeForPresentation(Ljava/lang/String;IFI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 309
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 233
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 234
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0

    .line 236
    :cond_7
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v0, :cond_22

    .line 237
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 238
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_22

    .line 239
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 242
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_22
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 243
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    return-object v0

    .line 245
    :cond_29
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "name"    # Ljava/lang/String;

    .line 419
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_17

    .line 420
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 421
    .local v0, "resid":I
    if-eqz v0, :cond_17

    .line 422
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    return-object v1

    .line 425
    .end local v0    # "resid":I
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 461
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 463
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 465
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 468
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget-boolean v0, p0, Landroid/content/pm/PackageItemInfo;->isArchived:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 471
    return-void
.end method
