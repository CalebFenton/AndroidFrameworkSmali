.class public final Landroid/telephony/AvailableNetworkInfo$Builder;
.super Ljava/lang/Object;
.source "AvailableNetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AvailableNetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMccMncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPriority:I

.field private blacklist mRadioAccessSpecifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSubId:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "subId"    # I

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mSubId:I

    .line 277
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mPriority:I

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mMccMncs:Ljava/util/ArrayList;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    .line 290
    iput p1, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mSubId:I

    .line 291
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/AvailableNetworkInfo;
    .registers 10

    .line 346
    iget v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mSubId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1a

    .line 350
    new-instance v2, Landroid/telephony/AvailableNetworkInfo;

    iget v3, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mSubId:I

    iget v4, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mPriority:I

    iget-object v5, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mMccMncs:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/telephony/AvailableNetworkInfo;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/telephony/AvailableNetworkInfo-IA;)V

    return-object v2

    .line 347
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A valid subId must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMccMncs(Ljava/util/List;)Landroid/telephony/AvailableNetworkInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/AvailableNetworkInfo$Builder;"
        }
    .end annotation

    .line 317
    .local p1, "mccMncs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "A non-null List of mccmncs must be set. An empty List is still accepted. Please read documentation in AvailableNetworkInfo to see consequences of an empty List."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mMccMncs:Ljava/util/ArrayList;

    .line 321
    return-object p0
.end method

.method public whitelist setPriority(I)Landroid/telephony/AvailableNetworkInfo$Builder;
    .registers 4
    .param p1, "priority"    # I

    .line 301
    const/4 v0, 0x3

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    .line 305
    iput p1, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mPriority:I

    .line 306
    return-object p0

    .line 303
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A valid priority must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRadioAccessSpecifiers(Ljava/util/List;)Landroid/telephony/AvailableNetworkInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;)",
            "Landroid/telephony/AvailableNetworkInfo$Builder;"
        }
    .end annotation

    .line 334
    .local p1, "radioAccessSpecifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    const-string v0, "A non-null List of RadioAccessSpecifiers must be set. An empty List is still accepted. Please read documentation in AvailableNetworkInfo to see consequences of an empty List."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    .line 339
    return-object p0
.end method
