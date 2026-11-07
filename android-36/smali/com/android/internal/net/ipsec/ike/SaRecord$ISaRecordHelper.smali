.class interface abstract Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;
.super Ljava/lang/Object;
.source "SaRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/SaRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ISaRecordHelper"
.end annotation


# virtual methods
.method public abstract blacklist makeChildSaRecord(Ljava/util/List;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;",
            ")",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist makeFirstIkeSaRecord(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract blacklist makeRekeyedIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
