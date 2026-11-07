.class Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;
.super Ljava/lang/Object;
.source "SaRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/SaRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IkeSaRecordConfig"
.end annotation


# instance fields
.field public final blacklist encryptionKeyLength:I

.field public final blacklist initSpi:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

.field public final blacklist integrityKeyLength:I

.field public final blacklist isLocalInit:Z

.field public final blacklist prf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

.field public final blacklist respSpi:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

.field public final blacklist saLifetimeAlarmScheduler:Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;IIZLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V
    .registers 8
    .param p1, "initSpi"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .param p2, "respSpi"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .param p3, "prf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p4, "integrityKeyLength"    # I
    .param p5, "encryptionKeyLength"    # I
    .param p6, "isLocalInit"    # Z
    .param p7, "saLifetimeAlarmScheduler"    # Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->initSpi:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 964
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->respSpi:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 965
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->prf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    .line 966
    iput p4, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->integrityKeyLength:I

    .line 967
    iput p5, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->encryptionKeyLength:I

    .line 968
    iput-boolean p6, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->isLocalInit:Z

    .line 969
    iput-object p7, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->saLifetimeAlarmScheduler:Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    .line 970
    return-void
.end method
