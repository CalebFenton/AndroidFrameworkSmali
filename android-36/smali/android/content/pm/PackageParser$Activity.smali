.class public final Landroid/content/pm/PackageParser$Activity;
.super Landroid/content/pm/PackageParser$Component;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$Component<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final greylist info:Landroid/content/pm/ActivityInfo;

.field private greylist-max-o mHasMaxAspectRatio:Z

.field private blacklist mHasMinAspectRatio:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhasMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;)Z
    .registers 1

    invoke-direct {p0}, Landroid/content/pm/PackageParser$Activity;->hasMaxAspectRatio()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasMinAspectRatio(Landroid/content/pm/PackageParser$Activity;)Z
    .registers 1

    invoke-direct {p0}, Landroid/content/pm/PackageParser$Activity;->hasMinAspectRatio()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Activity;->setMaxAspectRatio(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetMinAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Activity;->setMinAspectRatio(F)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 8220
    new-instance v0, Landroid/content/pm/PackageParser$Activity$1;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$Activity$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser$Activity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V
    .registers 6
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;

    .line 8132
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 8133
    iput-object p3, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 8134
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8135
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V
    .registers 5
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParseComponentArgs;
    .param p2, "_info"    # Landroid/content/pm/ActivityInfo;

    .line 8138
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ComponentInfo;)V

    .line 8139
    iput-object p2, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 8140
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8141
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 8205
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/os/Parcel;)V

    .line 8206
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 8207
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$Activity;->mHasMaxAspectRatio:Z

    .line 8208
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$Activity;->mHasMinAspectRatio:Z

    .line 8210
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 8211
    .local v1, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    iput-object p0, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 8212
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v2

    iget v3, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 8213
    .end local v1    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    goto :goto_25

    .line 8215
    :cond_40
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 8216
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 8218
    :cond_52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/PackageParser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o hasMaxAspectRatio()Z
    .registers 2

    .line 8123
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Activity;->mHasMaxAspectRatio:Z

    return v0
.end method

.method private blacklist hasMinAspectRatio()Z
    .registers 2

    .line 8127
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Activity;->mHasMinAspectRatio:Z

    return v0
.end method

.method private greylist-max-o setMaxAspectRatio(F)V
    .registers 4
    .param p1, "maxAspectRatio"    # F

    .line 8150
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_23

    .line 8156
    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1b

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1b

    .line 8158
    return-void

    .line 8161
    :cond_1b
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 8162
    iput-boolean v1, p0, Landroid/content/pm/PackageParser$Activity;->mHasMaxAspectRatio:Z

    .line 8163
    return-void

    .line 8153
    :cond_23
    :goto_23
    return-void
.end method

.method private blacklist setMinAspectRatio(F)V
    .registers 4
    .param p1, "minAspectRatio"    # F

    .line 8166
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_23

    .line 8172
    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1b

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1b

    .line 8174
    return-void

    .line 8177
    :cond_1b
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 8178
    iput-boolean v1, p0, Landroid/content/pm/PackageParser$Activity;->mHasMinAspectRatio:Z

    .line 8179
    return-void

    .line 8169
    :cond_23
    :goto_23
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 8193
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 8144
    invoke-super {p0, p1}, Landroid/content/pm/PackageParser$Component;->setPackageName(Ljava/lang/String;)V

    .line 8145
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 8146
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 8182
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8183
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Activity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8184
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8185
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8186
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser$Activity;->appendComponentShortName(Ljava/lang/StringBuilder;)V

    .line 8187
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 8198
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8199
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    or-int/lit8 v1, p2, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 8200
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Activity;->mHasMaxAspectRatio:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8201
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Activity;->mHasMinAspectRatio:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8202
    return-void
.end method
