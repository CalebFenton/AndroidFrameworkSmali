.class Lcom/android/internal/telephony/cat/DeviceIdentities;
.super Lcom/android/internal/telephony/cat/ValueObject;
.source "CommandDetails.java"


# instance fields
.field public destinationId:I

.field public sourceId:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ValueObject;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getTag()Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1

    #@0
    .prologue
    .line 99
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2
    return-object v0
.end method
