.class public abstract Landroid/net/eap/EapSessionConfig$EapUiccConfig;
.super Landroid/net/eap/EapSessionConfig$EapMethodConfig;
.source "EapSessionConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/eap/EapSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EapUiccConfig"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final blacklist APP_TYPE_KEY:Ljava/lang/String; = "apptype"

.field protected static final blacklist SUB_ID_KEY:Ljava/lang/String; = "subId"


# instance fields
.field private final blacklist mApptype:I

.field private final blacklist mSubId:I


# direct methods
.method private constructor blacklist <init>(III)V
    .registers 4
    .param p1, "methodType"    # I
    .param p2, "subId"    # I
    .param p3, "apptype"    # I

    .line 550
    invoke-direct {p0, p1}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;-><init>(I)V

    .line 551
    iput p2, p0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mSubId:I

    .line 552
    iput p3, p0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mApptype:I

    .line 553
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/net/eap/EapSessionConfig-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;-><init>(III)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 603
    invoke-super {p0, p1}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    instance-of v0, p1, Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    if-nez v0, :cond_c

    goto :goto_1d

    .line 607
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    .line 609
    .local v0, "other":Landroid/net/eap/EapSessionConfig$EapUiccConfig;
    iget v2, p0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mSubId:I

    iget v3, v0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mSubId:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mApptype:I

    iget v3, v0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mApptype:I

    if-ne v2, v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    .line 604
    .end local v0    # "other":Landroid/net/eap/EapSessionConfig$EapUiccConfig;
    :cond_1d
    :goto_1d
    return v1
.end method

.method public whitelist getAppType()I
    .registers 2

    .line 585
    iget v0, p0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mApptype:I

    return v0
.end method

.method public whitelist getSubId()I
    .registers 2

    .line 576
    iget v0, p0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mSubId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 597
    invoke-super {p0}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mApptype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEapOnlySafeMethod()Z
    .registers 2

    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 563
    invoke-super {p0}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 564
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "subId"

    iget v2, p0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 565
    const-string v1, "apptype"

    iget v2, p0, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->mApptype:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 567
    return-object v0
.end method
