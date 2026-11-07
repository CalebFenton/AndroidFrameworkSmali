.class public final Landroid/net/wifi/hotspot2/pps/UpdateParameter;
.super Ljava/lang/Object;
.source "UpdateParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o CERTIFICATE_SHA256_BYTES:I = 0x20

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/UpdateParameter;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_PASSWORD_BYTES:I = 0xff

.field private static final greylist-max-o MAX_URI_BYTES:I = 0x3ff

.field private static final greylist-max-o MAX_URL_BYTES:I = 0x3ff

.field private static final greylist-max-o MAX_USERNAME_BYTES:I = 0x3f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UpdateParameter"

.field public static final greylist-max-o UPDATE_CHECK_INTERVAL_NEVER:J = 0xffffffffL

.field public static final greylist-max-o UPDATE_METHOD_OMADM:Ljava/lang/String; = "OMA-DM-ClientInitiated"

.field public static final blacklist UPDATE_METHOD_SPP:Ljava/lang/String; = "SPP-ClientInitiated"

.field public static final greylist-max-o UPDATE_RESTRICTION_HOMESP:Ljava/lang/String; = "HomeSP"

.field public static final greylist-max-o UPDATE_RESTRICTION_ROAMING_PARTNER:Ljava/lang/String; = "RoamingPartner"

.field public static final greylist-max-o UPDATE_RESTRICTION_UNRESTRICTED:Ljava/lang/String; = "Unrestricted"


# instance fields
.field private greylist-max-o mBase64EncodedPassword:Ljava/lang/String;

.field private blacklist mCaCertificate:Ljava/security/cert/X509Certificate;

.field private greylist-max-o mRestriction:Ljava/lang/String;

.field private greylist-max-o mServerUri:Ljava/lang/String;

.field private greylist-max-o mTrustRootCertSha256Fingerprint:[B

.field private greylist-max-o mTrustRootCertUrl:Ljava/lang/String;

.field private greylist-max-o mUpdateIntervalInMinutes:J

.field private greylist-max-o mUpdateMethod:Ljava/lang/String;

.field private greylist-max-o mUsername:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 381
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 210
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 218
    if-nez p1, :cond_19

    .line 219
    return-void

    .line 221
    :cond_19
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 222
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 224
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 225
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 226
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 228
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    if-eqz v0, :cond_44

    .line 229
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 232
    :cond_44
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    .line 233
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 255
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 256
    return v0

    .line 258
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 259
    return v2

    .line 261
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 263
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_66

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 264
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 265
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 266
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 267
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 268
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 269
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 270
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    .line 272
    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->isX509CertificateEquals(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_66

    goto :goto_67

    :cond_66
    move v0, v2

    .line 263
    :goto_67
    return v0
.end method

.method public greylist-max-o getBase64EncodedPassword()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCaCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public greylist-max-o getRestriction()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getServerUri()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTrustRootCertSha256Fingerprint()[B
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    return-object v0
.end method

.method public greylist-max-o getTrustRootCertUrl()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getUpdateIntervalInMinutes()J
    .registers 3

    .line 99
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    return-wide v0
.end method

.method public greylist-max-o getUpdateMethod()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getUsername()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 277
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iget-object v8, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 279
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    filled-new-array/range {v2 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 277
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o setBase64EncodedPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public blacklist setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "caCertificate"    # Ljava/security/cert/X509Certificate;

    .line 194
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    .line 195
    return-void
.end method

.method public greylist-max-o setRestriction(Ljava/lang/String;)V
    .registers 2
    .param p1, "restriction"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public greylist-max-o setServerUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "serverUri"    # Ljava/lang/String;

    .line 131
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public greylist-max-o setTrustRootCertSha256Fingerprint([B)V
    .registers 2
    .param p1, "fingerprint"    # [B

    .line 176
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 177
    return-void
.end method

.method public greylist-max-o setTrustRootCertUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "trustRootCertUrl"    # Ljava/lang/String;

    .line 165
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public greylist-max-o setUpdateIntervalInMinutes(J)V
    .registers 3
    .param p1, "updateIntervalInMinutes"    # J

    .line 96
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 97
    return-void
.end method

.method public greylist-max-o setUpdateMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "updateMethod"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public greylist-max-o setUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "UpdateInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, "UpdateMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "Restriction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, "ServerURI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, "Username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "TrustRootCertURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o validate()Z
    .registers 8

    .line 301
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    const-string v1, "UpdateParameter"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 302
    const-string v0, "Update interval not specified"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v2

    .line 306
    :cond_11
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    const-wide v5, 0xffffffffL

    cmp-long v0, v3, v5

    const/4 v3, 0x1

    if-nez v0, :cond_1e

    .line 307
    return v3

    .line 310
    :cond_1e
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    const-string v4, "OMA-DM-ClientInitiated"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 311
    const-string v4, "SPP-ClientInitiated"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown update method: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v2

    .line 316
    :cond_4b
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    const-string v4, "HomeSP"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 317
    const-string v4, "RoamingPartner"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 318
    const-string v4, "Unrestricted"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown restriction: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return v2

    .line 323
    :cond_82
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 324
    const-string v0, "Missing update server URI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v2

    .line 327
    :cond_90
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v4, 0x3ff

    if-le v0, v4, :cond_bd

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI bytes exceeded the max: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 329
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v2

    .line 333
    :cond_bd
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "Missing username"

    if-eqz v0, :cond_cb

    .line 334
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return v2

    .line 337
    :cond_cb
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v6, 0x3f

    if-le v0, v6, :cond_f8

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Username bytes exceeded the max: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return v2

    .line 343
    :cond_f8
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 344
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return v2

    .line 347
    :cond_104
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v5, 0xff

    if-le v0, v5, :cond_131

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password bytes exceeded the max: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 349
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v2

    .line 353
    :cond_131
    :try_start_131
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_136
    .catch Ljava/lang/IllegalArgumentException; {:try_start_131 .. :try_end_136} :catch_19c

    .line 357
    nop

    .line 359
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 360
    const-string v0, "Missing trust root certificate URL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return v2

    .line 363
    :cond_145
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v4, :cond_170

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trust root cert URL bytes exceeded the max: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 365
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return v2

    .line 369
    :cond_170
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    if-nez v0, :cond_17a

    .line 370
    const-string v0, "Missing trust root certificate SHA-256 fingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return v2

    .line 373
    :cond_17a
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    array-length v0, v0

    const/16 v4, 0x20

    if-eq v0, v4, :cond_19b

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect size of trust root certificate SHA-256 fingerprint: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v2

    .line 378
    :cond_19b
    return v3

    .line 354
    :catch_19c
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid encoding for password: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 242
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 243
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 250
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 251
    return-void
.end method
