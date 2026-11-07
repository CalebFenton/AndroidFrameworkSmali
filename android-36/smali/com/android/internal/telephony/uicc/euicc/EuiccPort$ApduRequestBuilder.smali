.class interface abstract Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;
.super Ljava/lang/Object;
.source "EuiccPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/euicc/EuiccPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ApduRequestBuilder"
.end annotation


# virtual methods
.method public abstract blacklist build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation
.end method
