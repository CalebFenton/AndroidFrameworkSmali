.class public Landroid/net/NetworkTemplate;
.super Ljava/lang/Object;
.source "NetworkTemplate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkTemplate$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_USAGE_NETWORK_TYPES:[I

.field public static final MATCH_BLUETOOTH:I = 0x8

.field public static final MATCH_ETHERNET:I = 0x5

.field public static final MATCH_MOBILE_3G_LOWER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_MOBILE_4G:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_MOBILE_ALL:I = 0x1

.field public static final MATCH_MOBILE_WILDCARD:I = 0x6

.field public static final MATCH_WIFI:I = 0x4

.field public static final MATCH_WIFI_WILDCARD:I = 0x7

.field private static sForceAllNetworkTypes:Z


# instance fields
.field private final mMatchRule:I

.field private final mMatchSubscriberIds:[Ljava/lang/String;

.field private final mNetworkId:Ljava/lang/String;

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 68
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 69
    const v1, 0x107000f

    #@7
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    #@d
    .line 72
    const/4 v0, 0x0

    #@e
    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    #@10
    .line 434
    new-instance v0, Landroid/net/NetworkTemplate$1;

    #@12
    invoke-direct {v0}, Landroid/net/NetworkTemplate$1;-><init>()V

    #@15
    sput-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17
    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "networkId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p2, v0, v1

    #@6
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 165
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "matchSubscriberIds"    # [Ljava/lang/String;
    .param p4, "networkId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 171
    iput p1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    #@5
    .line 172
    iput-object p2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    #@7
    .line 173
    iput-object p3, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    #@9
    .line 174
    iput-object p4, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    #@b
    .line 170
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    #@9
    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    #@f
    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    #@15
    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    #@1b
    .line 177
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/NetworkTemplate;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static buildTemplateBluetooth()Landroid/net/NetworkTemplate;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 147
    new-instance v0, Landroid/net/NetworkTemplate;

    #@3
    const/16 v1, 0x8

    #@5
    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method public static buildTemplateEthernet()Landroid/net/NetworkTemplate;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 139
    new-instance v0, Landroid/net/NetworkTemplate;

    #@3
    const/4 v1, 0x5

    #@4
    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method public static buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "subscriberId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 93
    new-instance v0, Landroid/net/NetworkTemplate;

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method public static buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "subscriberId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 102
    new-instance v0, Landroid/net/NetworkTemplate;

    #@2
    const/4 v1, 0x3

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method public static buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    new-instance v0, Landroid/net/NetworkTemplate;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method public static buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 110
    new-instance v0, Landroid/net/NetworkTemplate;

    #@3
    const/4 v1, 0x6

    #@4
    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method public static buildTemplateWifi()Landroid/net/NetworkTemplate;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 123
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "networkId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    new-instance v0, Landroid/net/NetworkTemplate;

    #@2
    const/4 v1, 0x4

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, v2, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method public static buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 118
    new-instance v0, Landroid/net/NetworkTemplate;

    #@3
    const/4 v1, 0x7

    #@4
    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method private static ensureSubtypeAvailable()V
    .locals 2

    #@0
    .prologue
    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    .line 409
    const-string/jumbo v1, "Unable to enforce 3G_LOWER template on combined data."

    #@5
    .line 408
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public static forceAllNetworkTypes()V
    .locals 1

    #@0
    .prologue
    .line 76
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    #@3
    .line 75
    return-void
.end method

.method private static getMatchRuleName(I)Ljava/lang/String;
    .locals 1
    .param p0, "matchRule"    # I

    #@0
    .prologue
    .line 384
    packed-switch p0, :pswitch_data_0

    #@3
    .line 402
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 386
    :pswitch_0
    const-string/jumbo v0, "MOBILE_3G_LOWER"

    #@a
    return-object v0

    #@b
    .line 388
    :pswitch_1
    const-string/jumbo v0, "MOBILE_4G"

    #@e
    return-object v0

    #@f
    .line 390
    :pswitch_2
    const-string/jumbo v0, "MOBILE_ALL"

    #@12
    return-object v0

    #@13
    .line 392
    :pswitch_3
    const-string/jumbo v0, "WIFI"

    #@16
    return-object v0

    #@17
    .line 394
    :pswitch_4
    const-string/jumbo v0, "ETHERNET"

    #@1a
    return-object v0

    #@1b
    .line 396
    :pswitch_5
    const-string/jumbo v0, "MOBILE_WILDCARD"

    #@1e
    return-object v0

    #@1f
    .line 398
    :pswitch_6
    const-string/jumbo v0, "WIFI_WILDCARD"

    #@22
    return-object v0

    #@23
    .line 400
    :pswitch_7
    const-string/jumbo v0, "BLUETOOTH"

    #@26
    return-object v0

    #@27
    .line 384
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private matchesBluetooth(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    .line 377
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    #@2
    const/4 v1, 0x7

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 378
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 380
    :cond_0
    const/4 v0, 0x0

    #@8
    return v0
.end method

.method private matchesEthernet(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    .line 349
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    #@2
    const/16 v1, 0x9

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 350
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 352
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method private matchesMobile(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    .line 285
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    #@2
    const/4 v2, 0x6

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 287
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 289
    :cond_0
    sget-boolean v1, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    #@9
    if-nez v1, :cond_1

    #@b
    .line 290
    sget-object v1, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    #@d
    iget v2, p1, Landroid/net/NetworkIdentity;->mType:I

    #@f
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@12
    move-result v0

    #@13
    .line 291
    :goto_0
    if-eqz v0, :cond_2

    #@15
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    #@17
    iget-object v2, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@19
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    :goto_1
    return v1

    #@1e
    .line 289
    :cond_1
    const/4 v0, 0x1

    #@1f
    .local v0, "matchesType":Z
    goto :goto_0

    #@20
    .line 291
    .end local v0    # "matchesType":Z
    :cond_2
    const/4 v1, 0x0

    #@21
    goto :goto_1
.end method

.method private matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 300
    invoke-static {}, Landroid/net/NetworkTemplate;->ensureSubtypeAvailable()V

    #@4
    .line 301
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    #@6
    const/4 v1, 0x6

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 302
    return v2

    #@a
    .line 303
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 304
    iget v0, p1, Landroid/net/NetworkIdentity;->mSubType:I

    #@12
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    #@15
    move-result v0

    #@16
    packed-switch v0, :pswitch_data_0

    #@19
    .line 311
    :cond_1
    return v2

    #@1a
    .line 308
    :pswitch_0
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobile4g(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 319
    invoke-static {}, Landroid/net/NetworkTemplate;->ensureSubtypeAvailable()V

    #@4
    .line 320
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    #@6
    const/4 v1, 0x6

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 322
    return v2

    #@a
    .line 323
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 324
    iget v0, p1, Landroid/net/NetworkIdentity;->mSubType:I

    #@12
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    #@15
    move-result v0

    #@16
    packed-switch v0, :pswitch_data_0

    #@19
    .line 329
    :cond_1
    const/4 v0, 0x0

    #@1a
    return v0

    #@1b
    .line 326
    :pswitch_0
    return v2

    #@1c
    .line 324
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 356
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    #@3
    const/4 v2, 0x6

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 357
    return v0

    #@7
    .line 359
    :cond_0
    sget-boolean v1, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    #@9
    if-nez v1, :cond_1

    #@b
    sget-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    #@d
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    #@f
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@12
    move-result v0

    #@13
    :cond_1
    return v0
.end method

.method private matchesWifi(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    .line 336
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 341
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 339
    :pswitch_0
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    #@9
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p1, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@f
    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 338
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 1
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    .line 364
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 369
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 367
    :sswitch_0
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 364
    nop

    #@a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public static normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "merged"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    #@8
    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 427
    new-instance v0, Landroid/net/NetworkTemplate;

    #@10
    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    #@12
    const/4 v2, 0x0

    #@13
    aget-object v2, p1, v2

    #@15
    .line 428
    iget-object v3, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    #@17
    .line 427
    invoke-direct {v0, v1, v2, p1, v3}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    return-object v0

    #@1b
    .line 430
    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 194
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 222
    instance-of v2, p1, Landroid/net/NetworkTemplate;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 223
    check-cast v0, Landroid/net/NetworkTemplate;

    #@8
    .line 224
    .local v0, "other":Landroid/net/NetworkTemplate;
    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    #@a
    iget v3, v0, Landroid/net/NetworkTemplate;->mMatchRule:I

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 225
    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    #@10
    iget-object v3, v0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    #@12
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    .line 224
    if-eqz v2, :cond_0

    #@18
    .line 226
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    #@1a
    iget-object v2, v0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    #@1c
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    .line 224
    :cond_0
    return v1

    #@21
    .line 228
    .end local v0    # "other":Landroid/net/NetworkTemplate;
    :cond_1
    return v1
.end method

.method public getMatchRule()I
    .locals 1

    #@0
    .prologue
    .line 244
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    #@2
    return v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 217
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public isMatchRuleMobile()Z
    .locals 1

    #@0
    .prologue
    .line 232
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 239
    :pswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 237
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 232
    nop

    #@a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public matches(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    .line 259
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "unknown network template"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 261
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 263
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 265
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile4g(Landroid/net/NetworkIdentity;)Z

    #@1b
    move-result v0

    #@1c
    return v0

    #@1d
    .line 267
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifi(Landroid/net/NetworkIdentity;)Z

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 269
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesEthernet(Landroid/net/NetworkIdentity;)Z

    #@25
    move-result v0

    #@26
    return v0

    #@27
    .line 271
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z

    #@2a
    move-result v0

    #@2b
    return v0

    #@2c
    .line 273
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z

    #@2f
    move-result v0

    #@30
    return v0

    #@31
    .line 275
    :pswitch_7
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesBluetooth(Landroid/net/NetworkIdentity;)Z

    #@34
    move-result v0

    #@35
    return v0

    #@36
    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "NetworkTemplate: "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 200
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "matchRule="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    #@11
    invoke-static {v2}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 201
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 202
    const-string/jumbo v1, ", subscriberId="

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 203
    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    #@25
    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 205
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 206
    const-string/jumbo v1, ", matchSubscriberIds="

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 207
    iget-object v2, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    #@39
    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 209
    :cond_1
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    #@46
    if-eqz v1, :cond_2

    #@48
    .line 210
    const-string/jumbo v1, ", networkId="

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    iget-object v2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 212
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 186
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 187
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 188
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    .line 189
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 185
    return-void
.end method
