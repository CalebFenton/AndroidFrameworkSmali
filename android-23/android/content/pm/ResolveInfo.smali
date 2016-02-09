.class public Landroid/content/pm/ResolveInfo;
.super Ljava/lang/Object;
.source "ResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ResolveInfo$DisplayNameComparator;,
        Landroid/content/pm/ResolveInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ResolveInfo"


# instance fields
.field public activityInfo:Landroid/content/pm/ActivityInfo;

.field public filter:Landroid/content/IntentFilter;

.field public handleAllWebDataURI:Z

.field public icon:I

.field public iconResourceId:I

.field public isDefault:Z

.field public labelRes:I

.field public match:I

.field public noResourceId:Z

.field public nonLocalizedLabel:Ljava/lang/CharSequence;

.field public preferredOrder:I

.field public priority:I

.field public providerInfo:Landroid/content/pm/ProviderInfo;

.field public resolvePackageName:Ljava/lang/String;

.field public serviceInfo:Landroid/content/pm/ServiceInfo;

.field public specificIndex:I

.field public system:Z

.field public targetUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 380
    new-instance v0, Landroid/content/pm/ResolveInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/ResolveInfo$1;-><init>()V

    #@5
    .line 379
    sput-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@6
    .line 293
    const/4 v0, -0x2

    #@7
    iput v0, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@9
    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@6
    .line 297
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@8
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@a
    .line 298
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@e
    .line 299
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@10
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@12
    .line 300
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@14
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@16
    .line 301
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    #@18
    iput v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    #@1a
    .line 302
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@1c
    iput v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@1e
    .line 303
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    #@20
    iput v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    #@22
    .line 304
    iget v0, p1, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@24
    iput v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@26
    .line 305
    iget v0, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@28
    iput v0, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@2a
    .line 306
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@2c
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@2e
    .line 307
    iget v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    #@30
    iput v0, p0, Landroid/content/pm/ResolveInfo;->icon:I

    #@32
    .line 308
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@34
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@36
    .line 309
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    #@38
    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    #@3a
    .line 310
    iget v0, p1, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@3c
    iput v0, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@3e
    .line 311
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->system:Z

    #@40
    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->system:Z

    #@42
    .line 312
    iget v0, p1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@44
    iput v0, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@46
    .line 313
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    #@48
    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    #@4a
    .line 296
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 96
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@9
    .line 390
    iput-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@b
    .line 391
    iput-object v3, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d
    .line 392
    iput-object v3, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@f
    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    packed-switch v0, :pswitch_data_0

    #@16
    .line 404
    const-string/jumbo v0, "ResolveInfo"

    #@19
    const-string/jumbo v3, "Missing ComponentInfo!"

    #@1c
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 407
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 408
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/content/IntentFilter;

    #@2d
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@2f
    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v0

    #@33
    iput v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    #@35
    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v0

    #@39
    iput v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@3b
    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    #@41
    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v0

    #@45
    iput v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@47
    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@4d
    .line 416
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@4f
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Ljava/lang/CharSequence;

    #@55
    .line 415
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@57
    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v0

    #@5b
    iput v0, p0, Landroid/content/pm/ResolveInfo;->icon:I

    #@5d
    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@63
    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v0

    #@67
    iput v0, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@69
    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_1

    #@6f
    move v0, v1

    #@70
    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->system:Z

    #@72
    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v0

    #@76
    if-eqz v0, :cond_2

    #@78
    move v0, v1

    #@79
    :goto_2
    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    #@7b
    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v0

    #@7f
    iput v0, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@81
    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_3

    #@87
    :goto_3
    iput-boolean v1, p0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    #@89
    .line 389
    return-void

    #@8a
    .line 395
    :pswitch_0
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8c
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8f
    move-result-object v0

    #@90
    check-cast v0, Landroid/content/pm/ActivityInfo;

    #@92
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@94
    goto :goto_0

    #@95
    .line 398
    :pswitch_1
    sget-object v0, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@97
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9a
    move-result-object v0

    #@9b
    check-cast v0, Landroid/content/pm/ServiceInfo;

    #@9d
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@9f
    goto :goto_0

    #@a0
    .line 401
    :pswitch_2
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a2
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a5
    move-result-object v0

    #@a6
    check-cast v0, Landroid/content/pm/ProviderInfo;

    #@a8
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@aa
    goto/16 :goto_0

    #@ac
    :cond_1
    move v0, v2

    #@ad
    .line 420
    goto :goto_1

    #@ae
    :cond_2
    move v0, v2

    #@af
    .line 421
    goto :goto_2

    #@b0
    :cond_3
    move v1, v2

    #@b1
    .line 423
    goto :goto_3

    #@b2
    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private getComponentInfo()Landroid/content/pm/ComponentInfo;
    .locals 2

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6
    return-object v0

    #@7
    .line 164
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@9
    if-eqz v0, :cond_1

    #@b
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d
    return-object v0

    #@e
    .line 165
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@10
    if-eqz v0, :cond_2

    #@12
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@14
    return-object v0

    #@15
    .line 166
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v1, "Missing ComponentInfo!"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 342
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "Filter:"

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
    .line 265
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

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
    invoke-virtual {v0, p1, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@34
    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    const-string/jumbo v1, "priority="

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    iget v1, p0, Landroid/content/pm/ResolveInfo;->priority:I

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 268
    const-string/jumbo v1, " preferredOrder="

    #@4d
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 268
    iget v1, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@53
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 269
    const-string/jumbo v1, " match=0x"

    #@5a
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 269
    iget v1, p0, Landroid/content/pm/ResolveInfo;->match:I

    #@60
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    .line 270
    const-string/jumbo v1, " specificIndex="

    #@6b
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    .line 270
    iget v1, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@71
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    .line 271
    const-string/jumbo v1, " isDefault="

    #@78
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    .line 271
    iget-boolean v1, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@7e
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v0

    #@86
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@89
    .line 272
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@8b
    if-eqz v0, :cond_1

    #@8d
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    const-string/jumbo v1, "resolvePackageName="

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@aa
    .line 275
    :cond_1
    iget v0, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@ac
    if-nez v0, :cond_2

    #@ae
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@b0
    if-eqz v0, :cond_5

    #@b2
    .line 276
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v0

    #@bb
    const-string/jumbo v1, "labelRes=0x"

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    iget v1, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@c4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v0

    #@cc
    .line 277
    const-string/jumbo v1, " nonLocalizedLabel="

    #@cf
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v0

    #@d3
    .line 277
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@d5
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v0

    #@d9
    .line 278
    const-string/jumbo v1, " icon=0x"

    #@dc
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v0

    #@e0
    .line 278
    iget v1, p0, Landroid/content/pm/ResolveInfo;->icon:I

    #@e2
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e5
    move-result-object v1

    #@e6
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v0

    #@ee
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@f1
    .line 280
    :cond_3
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@f3
    if-eqz v0, :cond_6

    #@f5
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v0

    #@fe
    const-string/jumbo v1, "ActivityInfo:"

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v0

    #@105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108
    move-result-object v0

    #@109
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@10c
    .line 282
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@10e
    new-instance v1, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v1

    #@117
    const-string/jumbo v2, "  "

    #@11a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v1

    #@11e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v1

    #@122
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@125
    .line 262
    :cond_4
    :goto_1
    return-void

    #@126
    .line 275
    :cond_5
    iget v0, p0, Landroid/content/pm/ResolveInfo;->icon:I

    #@128
    if-eqz v0, :cond_3

    #@12a
    goto :goto_0

    #@12b
    .line 283
    :cond_6
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@12d
    if-eqz v0, :cond_7

    #@12f
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    #@131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@134
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v0

    #@138
    const-string/jumbo v1, "ServiceInfo:"

    #@13b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v0

    #@13f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v0

    #@143
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@146
    .line 285
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@148
    new-instance v1, Ljava/lang/StringBuilder;

    #@14a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v1

    #@151
    const-string/jumbo v2, "  "

    #@154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v1

    #@158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v1

    #@15c
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@15f
    goto :goto_1

    #@160
    .line 286
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@162
    if-eqz v0, :cond_4

    #@164
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    #@166
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@169
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v0

    #@16d
    const-string/jumbo v1, "ProviderInfo:"

    #@170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v0

    #@174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v0

    #@178
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@17b
    .line 288
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@17d
    new-instance v1, Ljava/lang/StringBuilder;

    #@17f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@182
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v1

    #@186
    const-string/jumbo v2, "  "

    #@189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v1

    #@18d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v1

    #@191
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ProviderInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@194
    goto :goto_1
.end method

.method public final getIconResource()I
    .locals 1

    #@0
    .prologue
    .line 258
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getIconResourceInternal()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method final getIconResourceInternal()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 242
    iget v1, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@7
    return v1

    #@8
    .line 243
    :cond_0
    invoke-direct {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    #@b
    move-result-object v0

    #@c
    .line 244
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    if-eqz v0, :cond_1

    #@e
    .line 245
    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 247
    :cond_1
    return v2
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 218
    const/4 v2, 0x0

    #@2
    .line 219
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@4
    if-eqz v3, :cond_0

    #@6
    iget v3, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 220
    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@c
    iget v4, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@e
    invoke-virtual {p1, v3, v4, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v2

    #@12
    .line 222
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-direct {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    #@15
    move-result-object v1

    #@16
    .line 223
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    if-nez v2, :cond_1

    #@18
    iget v3, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 224
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1e
    .line 225
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@20
    iget v4, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@22
    invoke-virtual {p1, v3, v4, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v2

    #@26
    .line 227
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    if-eqz v2, :cond_2

    #@28
    .line 228
    new-instance v3, Landroid/os/UserHandle;

    #@2a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@2d
    move-result v4

    #@2e
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@31
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    #@34
    move-result-object v3

    #@35
    return-object v3

    #@36
    .line 230
    :cond_2
    invoke-virtual {v1, p1}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@39
    move-result-object v3

    #@3a
    return-object v3
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 181
    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 182
    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@7
    return-object v4

    #@8
    .line 185
    :cond_0
    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@a
    if-eqz v4, :cond_1

    #@c
    iget v4, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 186
    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@12
    iget v5, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@14
    invoke-virtual {p1, v4, v5, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@17
    move-result-object v3

    #@18
    .line 187
    .local v3, "label":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    #@1a
    .line 188
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    return-object v4

    #@23
    .line 191
    .end local v3    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-direct {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    #@26
    move-result-object v1

    #@27
    .line 192
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@29
    .line 193
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v4, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@2b
    if-eqz v4, :cond_2

    #@2d
    .line 194
    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@2f
    iget v5, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@31
    invoke-virtual {p1, v4, v5, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@34
    move-result-object v3

    #@35
    .line 195
    .restart local v3    # "label":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    #@37
    .line 196
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    return-object v4

    #@40
    .line 200
    .end local v3    # "label":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v1, p1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@43
    move-result-object v2

    #@44
    .line 202
    .local v2, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    #@46
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 203
    :cond_3
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 317
    invoke-direct {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    #@3
    move-result-object v0

    #@4
    .line 318
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    const/16 v2, 0x80

    #@8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@b
    .line 319
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "ResolveInfo{"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 320
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@14
    move-result v2

    #@15
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 321
    const/16 v2, 0x20

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 322
    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@23
    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    #@25
    invoke-static {v1, v2, v3}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 323
    iget v2, p0, Landroid/content/pm/ResolveInfo;->priority:I

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 324
    const-string/jumbo v2, " p="

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 325
    iget v2, p0, Landroid/content/pm/ResolveInfo;->priority:I

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    .line 327
    :cond_0
    iget v2, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@39
    if-eqz v2, :cond_1

    #@3b
    .line 328
    const-string/jumbo v2, " o="

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 329
    iget v2, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    .line 331
    :cond_1
    const-string/jumbo v2, " m=0x"

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 332
    iget v2, p0, Landroid/content/pm/ResolveInfo;->match:I

    #@4e
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 333
    iget v2, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@57
    const/4 v3, -0x2

    #@58
    if-eq v2, v3, :cond_2

    #@5a
    .line 334
    const-string/jumbo v2, " targetUserId="

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 335
    iget v2, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    .line 337
    :cond_2
    const/16 v2, 0x7d

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6a
    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
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
    .line 346
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 347
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 348
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@b
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 358
    :goto_0
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 359
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 360
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@17
    invoke-virtual {v0, p1, p2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 364
    :goto_1
    iget v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 365
    iget v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 366
    iget v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 367
    iget v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 368
    iget v0, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 369
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@35
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@38
    .line 370
    iget v0, p0, Landroid/content/pm/ResolveInfo;->icon:I

    #@3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 371
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@42
    .line 372
    iget v0, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@47
    .line 373
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->system:Z

    #@49
    if-eqz v0, :cond_4

    #@4b
    move v0, v1

    #@4c
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 374
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    #@51
    if-eqz v0, :cond_5

    #@53
    move v0, v1

    #@54
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    .line 375
    iget v0, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 376
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    #@5e
    if-eqz v0, :cond_6

    #@60
    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    .line 345
    return-void

    #@64
    .line 349
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@66
    if-eqz v0, :cond_1

    #@68
    .line 350
    const/4 v0, 0x2

    #@69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6c
    .line 351
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6e
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@71
    goto :goto_0

    #@72
    .line 352
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@74
    if-eqz v0, :cond_2

    #@76
    .line 353
    const/4 v0, 0x3

    #@77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    .line 354
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@7c
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@7f
    goto :goto_0

    #@80
    .line 356
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@83
    goto :goto_0

    #@84
    .line 362
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@87
    goto :goto_1

    #@88
    :cond_4
    move v0, v2

    #@89
    .line 373
    goto :goto_2

    #@8a
    :cond_5
    move v0, v2

    #@8b
    .line 374
    goto :goto_3

    #@8c
    :cond_6
    move v1, v2

    #@8d
    .line 376
    goto :goto_4
.end method
