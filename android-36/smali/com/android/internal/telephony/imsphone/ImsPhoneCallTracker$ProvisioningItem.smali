.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProvisioningItem"
.end annotation


# instance fields
.field final blacklist mItem:I

.field final blacklist mValue:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3

    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;->mItem:I

    .line 1253
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;->mValue:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1257
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;->mItem:I

    .line 1258
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ProvisioningItem;->mValue:Ljava/lang/Object;

    return-void
.end method
