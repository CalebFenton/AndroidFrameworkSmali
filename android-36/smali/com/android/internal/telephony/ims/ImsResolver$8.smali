.class Lcom/android/internal/telephony/ims/ImsResolver$8;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist create(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .registers 6

    .line 435
    new-instance p0, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/ims/ImsServiceController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist getServiceInterface()Ljava/lang/String;
    .registers 1

    .line 428
    const-string p0, "android.telephony.ims.ImsService"

    return-object p0
.end method
