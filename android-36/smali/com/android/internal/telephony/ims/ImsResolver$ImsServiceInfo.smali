.class public Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
.super Ljava/lang/Object;
.source "ImsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsServiceInfo"
.end annotation


# instance fields
.field public blacklist controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field public blacklist featureFromMetadata:Z

.field private final blacklist mSupportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist name:Landroid/content/ComponentName;

.field public final blacklist users:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/ComponentName;)V
    .registers 3

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    .line 208
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 209
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method blacklist addFeatureForAllSlots(II)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_10

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    new-instance v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-direct {v2, v0, p2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 232
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 233
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public blacklist getSupportedFeatures()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method blacklist replaceFeatures(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 220
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsServiceInfo] name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",featureFromMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    .line 250
    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$smprintFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
