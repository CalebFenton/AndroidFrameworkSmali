.class Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;
.super Ljava/lang/Object;
.source "PresPublishTriggerType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 103
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresPublishTriggerType-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    .registers 3
    .param p1, "size"    # I

    .line 108
    new-array v0, p1, [Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;->newArray(I)[Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    move-result-object p1

    return-object p1
.end method
