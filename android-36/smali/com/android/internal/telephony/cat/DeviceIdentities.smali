.class Lcom/android/internal/telephony/cat/DeviceIdentities;
.super Lcom/android/internal/telephony/cat/ValueObject;
.source "CommandDetails.java"


# instance fields
.field public greylist-max-r destinationId:I

.field public blacklist sourceId:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ValueObject;-><init>()V

    return-void
.end method
