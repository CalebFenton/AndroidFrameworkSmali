.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsFeatureStatusCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Lcom/android/ims/internal/IImsFeatureStatusCallback;

.field private blacklist mFeatureType:I

.field private blacklist mSlotId:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFeatureType(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mFeatureType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotId(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mSlotId:I

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceController;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mCallback:Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 327
    iput p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mSlotId:I

    .line 328
    iput p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mFeatureType:I

    return-void
.end method


# virtual methods
.method public blacklist getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->mCallback:Lcom/android/ims/internal/IImsFeatureStatusCallback;

    return-object p0
.end method
