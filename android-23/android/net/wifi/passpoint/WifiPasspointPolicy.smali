.class public Landroid/net/wifi/passpoint/WifiPasspointPolicy;
.super Ljava/lang/Object;
.source "WifiPasspointPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointPolicy$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME_SP:I = 0x0

.field public static final ROAMING_PARTNER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PasspointPolicy"

.field public static final UNRESTRICTED:I = 0x2


# instance fields
.field private final ENTERPRISE_PHASE2_MSCHAP:Ljava/lang/String;

.field private final ENTERPRISE_PHASE2_MSCHAPV2:Ljava/lang/String;

.field private final INT_ANONYMOUS_IDENTITY:Ljava/lang/String;

.field private final INT_CA_CERT:Ljava/lang/String;

.field private final INT_CLIENT_CERT:Ljava/lang/String;

.field private final INT_EAP:Ljava/lang/String;

.field private final INT_ENTERPRISEFIELD_NAME:Ljava/lang/String;

.field private final INT_IDENTITY:Ljava/lang/String;

.field private final INT_PASSWORD:Ljava/lang/String;

.field private final INT_PHASE2:Ljava/lang/String;

.field private final INT_PRIVATE_KEY:Ljava/lang/String;

.field private final INT_SIM_SLOT:Ljava/lang/String;

.field private final ISO8601DATEFORMAT:Ljava/lang/String;

.field private mBssid:Ljava/lang/String;

.field private mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

.field private mCredentialPriority:I

.field private mIsHomeSp:Z

.field private mName:Ljava/lang/String;

.field private mRestriction:I

.field private mRoamingPriority:I

.field private mSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 373
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointPolicy$1;-><init>()V

    #@5
    .line 372
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/passpoint/WifiPasspointCredential;IZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "bssid"    # Ljava/lang/String;
    .param p4, "pc"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .param p5, "restriction"    # I
    .param p6, "ishomesp"    # Z

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    const-string/jumbo v0, "private_key"

    #@6
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_PRIVATE_KEY:Ljava/lang/String;

    #@8
    .line 53
    const-string/jumbo v0, "phase2"

    #@b
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_PHASE2:Ljava/lang/String;

    #@d
    .line 54
    const-string/jumbo v0, "password"

    #@10
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_PASSWORD:Ljava/lang/String;

    #@12
    .line 55
    const-string/jumbo v0, "identity"

    #@15
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_IDENTITY:Ljava/lang/String;

    #@17
    .line 56
    const-string/jumbo v0, "eap"

    #@1a
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_EAP:Ljava/lang/String;

    #@1c
    .line 57
    const-string/jumbo v0, "client_cert"

    #@1f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_CLIENT_CERT:Ljava/lang/String;

    #@21
    .line 58
    const-string/jumbo v0, "ca_cert"

    #@24
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_CA_CERT:Ljava/lang/String;

    #@26
    .line 59
    const-string/jumbo v0, "anonymous_identity"

    #@29
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_ANONYMOUS_IDENTITY:Ljava/lang/String;

    #@2b
    .line 60
    const-string/jumbo v0, "sim_slot"

    #@2e
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_SIM_SLOT:Ljava/lang/String;

    #@30
    .line 61
    const-string/jumbo v0, "android.net.wifi.WifiConfiguration$EnterpriseField"

    #@33
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_ENTERPRISEFIELD_NAME:Ljava/lang/String;

    #@35
    .line 62
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    #@38
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->ISO8601DATEFORMAT:Ljava/lang/String;

    #@3a
    .line 63
    const-string/jumbo v0, "auth=MSCHAPV2"

    #@3d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->ENTERPRISE_PHASE2_MSCHAPV2:Ljava/lang/String;

    #@3f
    .line 64
    const-string/jumbo v0, "auth=MSCHAP"

    #@42
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->ENTERPRISE_PHASE2_MSCHAP:Ljava/lang/String;

    #@44
    .line 70
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@46
    .line 71
    if-eqz p4, :cond_0

    #@48
    .line 72
    invoke-virtual {p4}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getPriority()I

    #@4b
    move-result v0

    #@4c
    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    #@4e
    .line 75
    :cond_0
    const/16 v0, 0x80

    #@50
    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    #@52
    .line 76
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    #@54
    .line 77
    iput-object p4, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@56
    .line 78
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    #@58
    .line 79
    iput p5, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRestriction:I

    #@5a
    .line 80
    iput-boolean p6, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    #@5c
    .line 69
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/net/wifi/passpoint/WifiPasspointPolicy;)I
    .locals 6
    .param p1, "another"    # Landroid/net/wifi/passpoint/WifiPasspointPolicy;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 282
    const-string/jumbo v0, "PasspointPolicy"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "this:"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 283
    const-string/jumbo v0, "PasspointPolicy"

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "another:"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 285
    if-nez p1, :cond_0

    #@39
    .line 286
    return v4

    #@3a
    .line 287
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    #@3c
    if-eqz v0, :cond_1

    #@3e
    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->isHomeSp()Z

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_1

    #@44
    .line 289
    const-string/jumbo v0, "PasspointPolicy"

    #@47
    const-string/jumbo v1, "compare HomeSP  first, this is HomeSP, another isn\'t"

    #@4a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 290
    return v4

    #@4e
    .line 291
    :cond_1
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    #@50
    if-eqz v0, :cond_5

    #@52
    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->isHomeSp()Z

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_5

    #@58
    .line 292
    const-string/jumbo v0, "PasspointPolicy"

    #@5b
    const-string/jumbo v1, "both HomeSP"

    #@5e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 294
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    #@63
    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->getCredentialPriority()I

    #@66
    move-result v1

    #@67
    if-ge v0, v1, :cond_2

    #@69
    .line 295
    const-string/jumbo v0, "PasspointPolicy"

    #@6c
    const-string/jumbo v1, "this priority is higher"

    #@6f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 296
    return v4

    #@73
    .line 297
    :cond_2
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    #@75
    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->getCredentialPriority()I

    #@78
    move-result v1

    #@79
    if-ne v0, v1, :cond_4

    #@7b
    .line 298
    const-string/jumbo v0, "PasspointPolicy"

    #@7e
    const-string/jumbo v1, "both priorities equal"

    #@81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 300
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@86
    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@8b
    move-result v0

    #@8c
    if-eqz v0, :cond_3

    #@8e
    .line 301
    const-string/jumbo v0, "PasspointPolicy"

    #@91
    new-instance v1, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v2, "compare mName return:"

    #@99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v1

    #@9d
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@9f
    iget-object v3, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@a1
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@a4
    move-result v2

    #@a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    .line 302
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@b2
    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b7
    move-result v0

    #@b8
    return v0

    #@b9
    .line 309
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@bb
    if-eqz v0, :cond_9

    #@bd
    iget-object v0, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@bf
    if-eqz v0, :cond_9

    #@c1
    .line 310
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@c3
    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@c5
    invoke-virtual {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I

    #@c8
    move-result v0

    #@c9
    if-eqz v0, :cond_9

    #@cb
    .line 311
    const-string/jumbo v0, "PasspointPolicy"

    #@ce
    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v2, "compare mCredential return:"

    #@d6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v1

    #@da
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@dc
    iget-object v3, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@de
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@e1
    move-result v2

    #@e2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v1

    #@e6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    .line 311
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    .line 313
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@ef
    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@f1
    invoke-virtual {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I

    #@f4
    move-result v0

    #@f5
    return v0

    #@f6
    .line 317
    :cond_4
    return v5

    #@f7
    .line 319
    :cond_5
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    #@f9
    if-nez v0, :cond_9

    #@fb
    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->isHomeSp()Z

    #@fe
    move-result v0

    #@ff
    if-nez v0, :cond_9

    #@101
    .line 320
    const-string/jumbo v0, "PasspointPolicy"

    #@104
    const-string/jumbo v1, "both RoamingSp"

    #@107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10a
    .line 322
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    #@10c
    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->getRoamingPriority()I

    #@10f
    move-result v1

    #@110
    if-ge v0, v1, :cond_6

    #@112
    .line 323
    const-string/jumbo v0, "PasspointPolicy"

    #@115
    const-string/jumbo v1, "this priority is higher"

    #@118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11b
    .line 324
    return v4

    #@11c
    .line 325
    :cond_6
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    #@11e
    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->getRoamingPriority()I

    #@121
    move-result v1

    #@122
    if-ne v0, v1, :cond_8

    #@124
    .line 326
    const-string/jumbo v0, "PasspointPolicy"

    #@127
    const-string/jumbo v1, "both priorities equal"

    #@12a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12d
    .line 328
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@12f
    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@131
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@134
    move-result v0

    #@135
    if-eqz v0, :cond_7

    #@137
    .line 329
    const-string/jumbo v0, "PasspointPolicy"

    #@13a
    new-instance v1, Ljava/lang/StringBuilder;

    #@13c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13f
    const-string/jumbo v2, "compare mName return:"

    #@142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v1

    #@146
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@148
    iget-object v3, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@14a
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@14d
    move-result v2

    #@14e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@151
    move-result-object v1

    #@152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v1

    #@156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@159
    .line 330
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@15b
    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@15d
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@160
    move-result v0

    #@161
    return v0

    #@162
    .line 333
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@164
    if-eqz v0, :cond_9

    #@166
    iget-object v0, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@168
    if-eqz v0, :cond_9

    #@16a
    .line 334
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@16c
    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@16e
    invoke-virtual {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I

    #@171
    move-result v0

    #@172
    if-eqz v0, :cond_9

    #@174
    .line 335
    const-string/jumbo v0, "PasspointPolicy"

    #@177
    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    #@179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17c
    const-string/jumbo v2, "compare mCredential return:"

    #@17f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v1

    #@183
    .line 337
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@185
    iget-object v3, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@187
    invoke-virtual {v2, v3}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I

    #@18a
    move-result v2

    #@18b
    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v1

    #@18f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@192
    move-result-object v1

    #@193
    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@196
    .line 338
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@198
    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@19a
    invoke-virtual {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I

    #@19d
    move-result v0

    #@19e
    return v0

    #@19f
    .line 342
    :cond_8
    return v5

    #@1a0
    .line 346
    :cond_9
    const-string/jumbo v0, "PasspointPolicy"

    #@1a3
    const-string/jumbo v1, "both policies equal"

    #@1a6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a9
    .line 347
    return v3
.end method

.method public createWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 31

    #@0
    .prologue
    .line 145
    new-instance v25, Landroid/net/wifi/WifiConfiguration;

    #@2
    invoke-direct/range {v25 .. v25}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@5
    .line 146
    .local v25, "wfg":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@7
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    #@9
    move-object/from16 v26, v0

    #@b
    if-eqz v26, :cond_0

    #@d
    .line 147
    const-string/jumbo v26, "PasspointPolicy"

    #@10
    new-instance v27, Ljava/lang/StringBuilder;

    #@12
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v28, "create bssid:"

    #@18
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v27

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    #@20
    move-object/from16 v28, v0

    #@22
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v27

    #@26
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v27

    #@2a
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 148
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    #@31
    move-object/from16 v26, v0

    #@33
    move-object/from16 v0, v26

    #@35
    move-object/from16 v1, v25

    #@37
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@39
    .line 151
    :cond_0
    move-object/from16 v0, p0

    #@3b
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    #@3d
    move-object/from16 v26, v0

    #@3f
    if-eqz v26, :cond_1

    #@41
    .line 152
    const-string/jumbo v26, "PasspointPolicy"

    #@44
    new-instance v27, Ljava/lang/StringBuilder;

    #@46
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v28, "create ssid:"

    #@4c
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v27

    #@50
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    #@54
    move-object/from16 v28, v0

    #@56
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v27

    #@5a
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v27

    #@5e
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 153
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    #@65
    move-object/from16 v26, v0

    #@67
    move-object/from16 v0, v26

    #@69
    move-object/from16 v1, v25

    #@6b
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@6d
    .line 159
    :cond_1
    const/16 v26, 0x2

    #@6f
    move/from16 v0, v26

    #@71
    move-object/from16 v1, v25

    #@73
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    #@75
    .line 160
    move-object/from16 v0, v25

    #@77
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@79
    move-object/from16 v26, v0

    #@7b
    invoke-virtual/range {v26 .. v26}, Ljava/util/BitSet;->clear()V

    #@7e
    .line 161
    move-object/from16 v0, v25

    #@80
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@82
    move-object/from16 v26, v0

    #@84
    const/16 v27, 0x2

    #@86
    invoke-virtual/range {v26 .. v27}, Ljava/util/BitSet;->set(I)V

    #@89
    .line 162
    move-object/from16 v0, v25

    #@8b
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@8d
    move-object/from16 v26, v0

    #@8f
    const/16 v27, 0x3

    #@91
    invoke-virtual/range {v26 .. v27}, Ljava/util/BitSet;->set(I)V

    #@94
    .line 165
    move-object/from16 v0, v25

    #@96
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@98
    move-object/from16 v26, v0

    #@9a
    invoke-virtual/range {v26 .. v26}, Ljava/util/BitSet;->clear()V

    #@9d
    .line 166
    move-object/from16 v0, v25

    #@9f
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@a1
    move-object/from16 v26, v0

    #@a3
    const/16 v27, 0x2

    #@a5
    invoke-virtual/range {v26 .. v27}, Ljava/util/BitSet;->set(I)V

    #@a8
    .line 167
    move-object/from16 v0, v25

    #@aa
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@ac
    move-object/from16 v26, v0

    #@ae
    const/16 v27, 0x1

    #@b0
    invoke-virtual/range {v26 .. v27}, Ljava/util/BitSet;->set(I)V

    #@b3
    .line 170
    move-object/from16 v0, v25

    #@b5
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@b7
    move-object/from16 v26, v0

    #@b9
    invoke-virtual/range {v26 .. v26}, Ljava/util/BitSet;->clear()V

    #@bc
    .line 171
    move-object/from16 v0, v25

    #@be
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@c0
    move-object/from16 v26, v0

    #@c2
    const/16 v27, 0x1

    #@c4
    invoke-virtual/range {v26 .. v27}, Ljava/util/BitSet;->set(I)V

    #@c7
    .line 172
    move-object/from16 v0, v25

    #@c9
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@cb
    move-object/from16 v26, v0

    #@cd
    const/16 v27, 0x0

    #@cf
    invoke-virtual/range {v26 .. v27}, Ljava/util/BitSet;->set(I)V

    #@d2
    .line 174
    const-class v26, Landroid/net/wifi/WifiConfiguration;

    #@d4
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    #@d7
    move-result-object v11

    #@d8
    .line 175
    .local v11, "enterpriseFieldArray":[Ljava/lang/Class;
    const/4 v12, 0x0

    #@d9
    .line 178
    .local v12, "enterpriseFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v26, 0x0

    #@db
    array-length v0, v11

    #@dc
    move/from16 v27, v0

    #@de
    :goto_0
    move/from16 v0, v26

    #@e0
    move/from16 v1, v27

    #@e2
    if-ge v0, v1, :cond_2

    #@e4
    aget-object v16, v11, v26

    #@e6
    .line 179
    .local v16, "myClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e9
    move-result-object v28

    #@ea
    const-string/jumbo v29, "android.net.wifi.WifiConfiguration$EnterpriseField"

    #@ed
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f0
    move-result v28

    #@f1
    if-eqz v28, :cond_4

    #@f3
    .line 180
    move-object/from16 v12, v16

    #@f5
    .line 184
    .end local v12    # "enterpriseFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "myClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string/jumbo v26, "PasspointPolicy"

    #@f8
    new-instance v27, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v28, "class chosen "

    #@100
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v27

    #@104
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@107
    move-result-object v28

    #@108
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v27

    #@10c
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v27

    #@110
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    .line 187
    const/4 v3, 0x0

    #@114
    .local v3, "anonymousId":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    #@115
    .local v4, "caCert":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    #@116
    .line 188
    .local v6, "clientCert":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    #@117
    .local v9, "eap":Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    #@118
    .local v14, "identity":Ljava/lang/reflect/Field;
    const/16 v17, 0x0

    #@11a
    .line 189
    .local v17, "password":Ljava/lang/reflect/Field;
    const/16 v18, 0x0

    #@11c
    .local v18, "phase2":Ljava/lang/reflect/Field;
    const/16 v19, 0x0

    #@11e
    .line 191
    .local v19, "privateKey":Ljava/lang/reflect/Field;
    const-class v26, Landroid/net/wifi/WifiConfiguration;

    #@120
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@123
    move-result-object v13

    #@124
    .line 194
    .local v13, "fields":[Ljava/lang/reflect/Field;
    const/16 v26, 0x0

    #@126
    array-length v0, v13

    #@127
    move/from16 v27, v0

    #@129
    .end local v3    # "anonymousId":Ljava/lang/reflect/Field;
    .end local v4    # "caCert":Ljava/lang/reflect/Field;
    .end local v6    # "clientCert":Ljava/lang/reflect/Field;
    .end local v9    # "eap":Ljava/lang/reflect/Field;
    .end local v14    # "identity":Ljava/lang/reflect/Field;
    .end local v17    # "password":Ljava/lang/reflect/Field;
    .end local v18    # "phase2":Ljava/lang/reflect/Field;
    .end local v19    # "privateKey":Ljava/lang/reflect/Field;
    :goto_1
    move/from16 v0, v26

    #@12b
    move/from16 v1, v27

    #@12d
    if-ge v0, v1, :cond_c

    #@12f
    aget-object v23, v13, v26

    #@131
    .line 195
    .local v23, "tempField":Ljava/lang/reflect/Field;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@134
    move-result-object v28

    #@135
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@138
    move-result-object v28

    #@139
    const-string/jumbo v29, "anonymous_identity"

    #@13c
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13f
    move-result v28

    #@140
    if-eqz v28, :cond_5

    #@142
    .line 196
    move-object/from16 v3, v23

    #@144
    .line 197
    .local v3, "anonymousId":Ljava/lang/reflect/Field;
    const-string/jumbo v28, "PasspointPolicy"

    #@147
    new-instance v29, Ljava/lang/StringBuilder;

    #@149
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v30, "field "

    #@14f
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v29

    #@153
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@156
    move-result-object v30

    #@157
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v29

    #@15b
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15e
    move-result-object v29

    #@15f
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@162
    .line 194
    .end local v3    # "anonymousId":Ljava/lang/reflect/Field;
    :cond_3
    :goto_2
    add-int/lit8 v26, v26, 0x1

    #@164
    goto :goto_1

    #@165
    .line 178
    .end local v13    # "fields":[Ljava/lang/reflect/Field;
    .end local v23    # "tempField":Ljava/lang/reflect/Field;
    .restart local v12    # "enterpriseFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "myClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    add-int/lit8 v26, v26, 0x1

    #@167
    goto/16 :goto_0

    #@169
    .line 198
    .end local v12    # "enterpriseFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "myClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "fields":[Ljava/lang/reflect/Field;
    .restart local v23    # "tempField":Ljava/lang/reflect/Field;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@16c
    move-result-object v28

    #@16d
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@170
    move-result-object v28

    #@171
    const-string/jumbo v29, "ca_cert"

    #@174
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@177
    move-result v28

    #@178
    if-eqz v28, :cond_6

    #@17a
    .line 199
    move-object/from16 v4, v23

    #@17c
    .local v4, "caCert":Ljava/lang/reflect/Field;
    goto :goto_2

    #@17d
    .line 200
    .end local v4    # "caCert":Ljava/lang/reflect/Field;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@180
    move-result-object v28

    #@181
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@184
    move-result-object v28

    #@185
    const-string/jumbo v29, "client_cert"

    #@188
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18b
    move-result v28

    #@18c
    if-eqz v28, :cond_7

    #@18e
    .line 201
    move-object/from16 v6, v23

    #@190
    .line 202
    .local v6, "clientCert":Ljava/lang/reflect/Field;
    const-string/jumbo v28, "PasspointPolicy"

    #@193
    new-instance v29, Ljava/lang/StringBuilder;

    #@195
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    const-string/jumbo v30, "field "

    #@19b
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v29

    #@19f
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@1a2
    move-result-object v30

    #@1a3
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v29

    #@1a7
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v29

    #@1ab
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1ae
    goto :goto_2

    #@1af
    .line 203
    .end local v6    # "clientCert":Ljava/lang/reflect/Field;
    :cond_7
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@1b2
    move-result-object v28

    #@1b3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1b6
    move-result-object v28

    #@1b7
    const-string/jumbo v29, "eap"

    #@1ba
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bd
    move-result v28

    #@1be
    if-eqz v28, :cond_8

    #@1c0
    .line 204
    move-object/from16 v9, v23

    #@1c2
    .line 205
    .local v9, "eap":Ljava/lang/reflect/Field;
    const-string/jumbo v28, "PasspointPolicy"

    #@1c5
    new-instance v29, Ljava/lang/StringBuilder;

    #@1c7
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@1ca
    const-string/jumbo v30, "field "

    #@1cd
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v29

    #@1d1
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@1d4
    move-result-object v30

    #@1d5
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v29

    #@1d9
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v29

    #@1dd
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e0
    goto :goto_2

    #@1e1
    .line 206
    .end local v9    # "eap":Ljava/lang/reflect/Field;
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@1e4
    move-result-object v28

    #@1e5
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1e8
    move-result-object v28

    #@1e9
    const-string/jumbo v29, "identity"

    #@1ec
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ef
    move-result v28

    #@1f0
    if-eqz v28, :cond_9

    #@1f2
    .line 207
    move-object/from16 v14, v23

    #@1f4
    .line 208
    .local v14, "identity":Ljava/lang/reflect/Field;
    const-string/jumbo v28, "PasspointPolicy"

    #@1f7
    new-instance v29, Ljava/lang/StringBuilder;

    #@1f9
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@1fc
    const-string/jumbo v30, "field "

    #@1ff
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v29

    #@203
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@206
    move-result-object v30

    #@207
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v29

    #@20b
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v29

    #@20f
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@212
    goto/16 :goto_2

    #@214
    .line 209
    .end local v14    # "identity":Ljava/lang/reflect/Field;
    :cond_9
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@217
    move-result-object v28

    #@218
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@21b
    move-result-object v28

    #@21c
    const-string/jumbo v29, "password"

    #@21f
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@222
    move-result v28

    #@223
    if-eqz v28, :cond_a

    #@225
    .line 210
    move-object/from16 v17, v23

    #@227
    .line 211
    .local v17, "password":Ljava/lang/reflect/Field;
    const-string/jumbo v28, "PasspointPolicy"

    #@22a
    new-instance v29, Ljava/lang/StringBuilder;

    #@22c
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@22f
    const-string/jumbo v30, "field "

    #@232
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v29

    #@236
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@239
    move-result-object v30

    #@23a
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v29

    #@23e
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@241
    move-result-object v29

    #@242
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@245
    goto/16 :goto_2

    #@247
    .line 212
    .end local v17    # "password":Ljava/lang/reflect/Field;
    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@24a
    move-result-object v28

    #@24b
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@24e
    move-result-object v28

    #@24f
    const-string/jumbo v29, "phase2"

    #@252
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@255
    move-result v28

    #@256
    if-eqz v28, :cond_b

    #@258
    .line 213
    move-object/from16 v18, v23

    #@25a
    .line 214
    .local v18, "phase2":Ljava/lang/reflect/Field;
    const-string/jumbo v28, "PasspointPolicy"

    #@25d
    new-instance v29, Ljava/lang/StringBuilder;

    #@25f
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@262
    const-string/jumbo v30, "field "

    #@265
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v29

    #@269
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@26c
    move-result-object v30

    #@26d
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@270
    move-result-object v29

    #@271
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@274
    move-result-object v29

    #@275
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@278
    goto/16 :goto_2

    #@27a
    .line 216
    .end local v18    # "phase2":Ljava/lang/reflect/Field;
    :cond_b
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@27d
    move-result-object v28

    #@27e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@281
    move-result-object v28

    #@282
    const-string/jumbo v29, "private_key"

    #@285
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@288
    move-result v28

    #@289
    if-eqz v28, :cond_3

    #@28b
    .line 217
    move-object/from16 v19, v23

    #@28d
    .local v19, "privateKey":Ljava/lang/reflect/Field;
    goto/16 :goto_2

    #@28f
    .line 222
    .end local v19    # "privateKey":Ljava/lang/reflect/Field;
    .end local v23    # "tempField":Ljava/lang/reflect/Field;
    :cond_c
    const/16 v22, 0x0

    #@291
    .line 224
    .local v22, "setValue":Ljava/lang/reflect/Method;
    invoke-virtual {v12}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    #@294
    move-result-object v27

    #@295
    const/16 v26, 0x0

    #@297
    move-object/from16 v0, v27

    #@299
    array-length v0, v0

    #@29a
    move/from16 v28, v0

    #@29c
    :goto_3
    move/from16 v0, v26

    #@29e
    move/from16 v1, v28

    #@2a0
    if-ge v0, v1, :cond_d

    #@2a2
    aget-object v15, v27, v26

    #@2a4
    .line 225
    .local v15, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@2a7
    move-result-object v29

    #@2a8
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2ab
    move-result-object v29

    #@2ac
    const-string/jumbo v30, "setValue"

    #@2af
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b2
    move-result v29

    #@2b3
    if-eqz v29, :cond_11

    #@2b5
    .line 226
    const-string/jumbo v26, "PasspointPolicy"

    #@2b8
    new-instance v27, Ljava/lang/StringBuilder;

    #@2ba
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@2bd
    const-string/jumbo v28, "method "

    #@2c0
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c3
    move-result-object v27

    #@2c4
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@2c7
    move-result-object v28

    #@2c8
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cb
    move-result-object v27

    #@2cc
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cf
    move-result-object v27

    #@2d0
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d3
    .line 227
    move-object/from16 v22, v15

    #@2d5
    .line 234
    .end local v15    # "m":Ljava/lang/reflect/Method;
    .end local v22    # "setValue":Ljava/lang/reflect/Method;
    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    #@2d7
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@2d9
    move-object/from16 v26, v0

    #@2db
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getType()Ljava/lang/String;

    #@2de
    move-result-object v10

    #@2df
    .line 235
    .local v10, "eapmethod":Ljava/lang/String;
    const-string/jumbo v26, "PasspointPolicy"

    #@2e2
    new-instance v27, Ljava/lang/StringBuilder;

    #@2e4
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@2e7
    const-string/jumbo v28, "eapmethod:"

    #@2ea
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ed
    move-result-object v27

    #@2ee
    move-object/from16 v0, v27

    #@2f0
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f3
    move-result-object v27

    #@2f4
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f7
    move-result-object v27

    #@2f8
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2fb
    .line 236
    move-object/from16 v0, v25

    #@2fd
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@300
    move-result-object v26

    #@301
    const/16 v27, 0x1

    #@303
    move/from16 v0, v27

    #@305
    new-array v0, v0, [Ljava/lang/Object;

    #@307
    move-object/from16 v27, v0

    #@309
    const/16 v28, 0x0

    #@30b
    aput-object v10, v27, v28

    #@30d
    move-object/from16 v0, v22

    #@30f
    move-object/from16 v1, v26

    #@311
    move-object/from16 v2, v27

    #@313
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@316
    .line 239
    const-string/jumbo v26, "TTLS"

    #@319
    move-object/from16 v0, v26

    #@31b
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31e
    move-result v26

    #@31f
    if-eqz v26, :cond_e

    #@321
    .line 240
    move-object/from16 v0, v18

    #@323
    move-object/from16 v1, v25

    #@325
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@328
    move-result-object v26

    #@329
    const/16 v27, 0x1

    #@32b
    move/from16 v0, v27

    #@32d
    new-array v0, v0, [Ljava/lang/Object;

    #@32f
    move-object/from16 v27, v0

    #@331
    const-string/jumbo v28, "auth=MSCHAPV2"

    #@334
    const/16 v29, 0x0

    #@336
    aput-object v28, v27, v29

    #@338
    move-object/from16 v0, v22

    #@33a
    move-object/from16 v1, v26

    #@33c
    move-object/from16 v2, v27

    #@33e
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@341
    .line 241
    move-object/from16 v0, v25

    #@343
    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@346
    move-result-object v26

    #@347
    const/16 v27, 0x1

    #@349
    move/from16 v0, v27

    #@34b
    new-array v0, v0, [Ljava/lang/Object;

    #@34d
    move-object/from16 v27, v0

    #@34f
    move-object/from16 v0, p0

    #@351
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@353
    move-object/from16 v28, v0

    #@355
    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getUserName()Ljava/lang/String;

    #@358
    move-result-object v28

    #@359
    const/16 v29, 0x0

    #@35b
    aput-object v28, v27, v29

    #@35d
    move-object/from16 v0, v22

    #@35f
    move-object/from16 v1, v26

    #@361
    move-object/from16 v2, v27

    #@363
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@366
    .line 242
    move-object/from16 v0, v17

    #@368
    move-object/from16 v1, v25

    #@36a
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36d
    move-result-object v26

    #@36e
    const/16 v27, 0x1

    #@370
    move/from16 v0, v27

    #@372
    new-array v0, v0, [Ljava/lang/Object;

    #@374
    move-object/from16 v27, v0

    #@376
    move-object/from16 v0, p0

    #@378
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@37a
    move-object/from16 v28, v0

    #@37c
    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getPassword()Ljava/lang/String;

    #@37f
    move-result-object v28

    #@380
    const/16 v29, 0x0

    #@382
    aput-object v28, v27, v29

    #@384
    move-object/from16 v0, v22

    #@386
    move-object/from16 v1, v26

    #@388
    move-object/from16 v2, v27

    #@38a
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@38d
    .line 243
    move-object/from16 v0, v25

    #@38f
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@392
    move-result-object v26

    #@393
    const/16 v27, 0x1

    #@395
    move/from16 v0, v27

    #@397
    new-array v0, v0, [Ljava/lang/Object;

    #@399
    move-object/from16 v27, v0

    #@39b
    new-instance v28, Ljava/lang/StringBuilder;

    #@39d
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@3a0
    const-string/jumbo v29, "anonymous@"

    #@3a3
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a6
    move-result-object v28

    #@3a7
    move-object/from16 v0, p0

    #@3a9
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@3ab
    move-object/from16 v29, v0

    #@3ad
    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getRealm()Ljava/lang/String;

    #@3b0
    move-result-object v29

    #@3b1
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b4
    move-result-object v28

    #@3b5
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b8
    move-result-object v28

    #@3b9
    const/16 v29, 0x0

    #@3bb
    aput-object v28, v27, v29

    #@3bd
    move-object/from16 v0, v22

    #@3bf
    move-object/from16 v1, v26

    #@3c1
    move-object/from16 v2, v27

    #@3c3
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@3c6
    .line 247
    :cond_e
    const/4 v5, 0x0

    #@3c7
    .line 248
    .local v5, "cacertificate":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c9
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@3cb
    move-object/from16 v26, v0

    #@3cd
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getCaRootCertPath()Ljava/lang/String;

    #@3d0
    move-result-object v21

    #@3d1
    .line 249
    .local v21, "rootCA":Ljava/lang/String;
    if-nez v21, :cond_12

    #@3d3
    .line 250
    const/4 v5, 0x0

    #@3d4
    .line 254
    .end local v5    # "cacertificate":Ljava/lang/String;
    :goto_4
    const-string/jumbo v26, "PasspointPolicy"

    #@3d7
    new-instance v27, Ljava/lang/StringBuilder;

    #@3d9
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@3dc
    const-string/jumbo v28, "cacertificate:"

    #@3df
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e2
    move-result-object v27

    #@3e3
    move-object/from16 v0, v27

    #@3e5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e8
    move-result-object v27

    #@3e9
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ec
    move-result-object v27

    #@3ed
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f0
    .line 255
    move-object/from16 v0, v25

    #@3f2
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f5
    move-result-object v26

    #@3f6
    const/16 v27, 0x1

    #@3f8
    move/from16 v0, v27

    #@3fa
    new-array v0, v0, [Ljava/lang/Object;

    #@3fc
    move-object/from16 v27, v0

    #@3fe
    const/16 v28, 0x0

    #@400
    aput-object v5, v27, v28

    #@402
    move-object/from16 v0, v22

    #@404
    move-object/from16 v1, v26

    #@406
    move-object/from16 v2, v27

    #@408
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@40b
    .line 258
    const-string/jumbo v26, "TLS"

    #@40e
    move-object/from16 v0, v26

    #@410
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@413
    move-result v26

    #@414
    if-eqz v26, :cond_10

    #@416
    .line 259
    const/16 v24, 0x0

    #@418
    .line 260
    .local v24, "usercertificate":Ljava/lang/String;
    const/16 v20, 0x0

    #@41a
    .line 261
    .local v20, "privatekey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@41c
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@41e
    move-object/from16 v26, v0

    #@420
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getClientCertPath()Ljava/lang/String;

    #@423
    move-result-object v7

    #@424
    .line 262
    .local v7, "clientCertPath":Ljava/lang/String;
    if-eqz v7, :cond_f

    #@426
    .line 263
    new-instance v26, Ljava/lang/StringBuilder;

    #@428
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@42b
    const-string/jumbo v27, "keystore://WIFI_HS20USRPKEY_"

    #@42e
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@431
    move-result-object v26

    #@432
    move-object/from16 v0, v26

    #@434
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@437
    move-result-object v26

    #@438
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43b
    move-result-object v20

    #@43c
    .line 264
    .local v20, "privatekey":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    #@43e
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@441
    const-string/jumbo v27, "keystore://WIFI_HS20USRCERT_"

    #@444
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@447
    move-result-object v26

    #@448
    move-object/from16 v0, v26

    #@44a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44d
    move-result-object v26

    #@44e
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@451
    move-result-object v24

    #@452
    .line 266
    .end local v20    # "privatekey":Ljava/lang/String;
    .end local v24    # "usercertificate":Ljava/lang/String;
    :cond_f
    const-string/jumbo v26, "PasspointPolicy"

    #@455
    new-instance v27, Ljava/lang/StringBuilder;

    #@457
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@45a
    const-string/jumbo v28, "privatekey:"

    #@45d
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@460
    move-result-object v27

    #@461
    move-object/from16 v0, v27

    #@463
    move-object/from16 v1, v20

    #@465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@468
    move-result-object v27

    #@469
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46c
    move-result-object v27

    #@46d
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@470
    .line 267
    const-string/jumbo v26, "PasspointPolicy"

    #@473
    new-instance v27, Ljava/lang/StringBuilder;

    #@475
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@478
    const-string/jumbo v28, "usercertificate:"

    #@47b
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47e
    move-result-object v27

    #@47f
    move-object/from16 v0, v27

    #@481
    move-object/from16 v1, v24

    #@483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@486
    move-result-object v27

    #@487
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48a
    move-result-object v27

    #@48b
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48e
    .line 268
    if-eqz v20, :cond_10

    #@490
    if-eqz v24, :cond_10

    #@492
    .line 269
    move-object/from16 v0, v19

    #@494
    move-object/from16 v1, v25

    #@496
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@499
    move-result-object v26

    #@49a
    const/16 v27, 0x1

    #@49c
    move/from16 v0, v27

    #@49e
    new-array v0, v0, [Ljava/lang/Object;

    #@4a0
    move-object/from16 v27, v0

    #@4a2
    const/16 v28, 0x0

    #@4a4
    aput-object v20, v27, v28

    #@4a6
    move-object/from16 v0, v22

    #@4a8
    move-object/from16 v1, v26

    #@4aa
    move-object/from16 v2, v27

    #@4ac
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@4af
    .line 270
    move-object/from16 v0, v25

    #@4b1
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b4
    move-result-object v26

    #@4b5
    const/16 v27, 0x1

    #@4b7
    move/from16 v0, v27

    #@4b9
    new-array v0, v0, [Ljava/lang/Object;

    #@4bb
    move-object/from16 v27, v0

    #@4bd
    const/16 v28, 0x0

    #@4bf
    aput-object v24, v27, v28

    #@4c1
    move-object/from16 v0, v22

    #@4c3
    move-object/from16 v1, v26

    #@4c5
    move-object/from16 v2, v27

    #@4c7
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@4ca
    .line 277
    .end local v7    # "clientCertPath":Ljava/lang/String;
    .end local v10    # "eapmethod":Ljava/lang/String;
    .end local v21    # "rootCA":Ljava/lang/String;
    :cond_10
    :goto_5
    return-object v25

    #@4cb
    .line 224
    .restart local v15    # "m":Ljava/lang/reflect/Method;
    .restart local v22    # "setValue":Ljava/lang/reflect/Method;
    :cond_11
    add-int/lit8 v26, v26, 0x1

    #@4cd
    goto/16 :goto_3

    #@4cf
    .line 252
    .end local v15    # "m":Ljava/lang/reflect/Method;
    .end local v22    # "setValue":Ljava/lang/reflect/Method;
    .restart local v5    # "cacertificate":Ljava/lang/String;
    .restart local v10    # "eapmethod":Ljava/lang/String;
    .restart local v21    # "rootCA":Ljava/lang/String;
    :cond_12
    new-instance v26, Ljava/lang/StringBuilder;

    #@4d1
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@4d4
    const-string/jumbo v27, "keystore://WIFI_HS20CACERT_"

    #@4d7
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4da
    move-result-object v26

    #@4db
    move-object/from16 v0, v26

    #@4dd
    move-object/from16 v1, v21

    #@4df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e2
    move-result-object v26

    #@4e3
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4e6
    move-result-object v5

    #@4e7
    .local v5, "cacertificate":Ljava/lang/String;
    goto/16 :goto_4

    #@4e9
    .line 273
    .end local v5    # "cacertificate":Ljava/lang/String;
    .end local v10    # "eapmethod":Ljava/lang/String;
    .end local v21    # "rootCA":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@4ea
    .line 274
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "PasspointPolicy"

    #@4ed
    new-instance v27, Ljava/lang/StringBuilder;

    #@4ef
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@4f2
    const-string/jumbo v28, "createWifiConfiguration err:"

    #@4f5
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f8
    move-result-object v27

    #@4f9
    move-object/from16 v0, v27

    #@4fb
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4fe
    move-result-object v27

    #@4ff
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@502
    move-result-object v27

    #@503
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@506
    goto :goto_5
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 362
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCredential()Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@2
    return-object v0
.end method

.method public getCredentialPriority()I
    .locals 1

    #@0
    .prologue
    .line 137
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    #@2
    return v0
.end method

.method public getRestriction()I
    .locals 1

    #@0
    .prologue
    .line 103
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRestriction:I

    #@2
    return v0
.end method

.method public getRoamingPriority()I
    .locals 1

    #@0
    .prologue
    .line 141
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    #@2
    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isHomeSp()Z
    .locals 1

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    #@2
    return v0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    #@2
    .line 88
    return-void
.end method

.method public setCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)V
    .locals 0
    .param p1, "newCredential"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@0
    .prologue
    .line 118
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@2
    .line 117
    return-void
.end method

.method public setCredentialPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    #@0
    .prologue
    .line 128
    iput p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    #@2
    .line 127
    return-void
.end method

.method public setHomeSp(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 108
    iput-boolean p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    #@2
    .line 107
    return-void
.end method

.method public setRestriction(I)V
    .locals 0
    .param p1, "r"    # I

    #@0
    .prologue
    .line 98
    iput p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRestriction:I

    #@2
    .line 97
    return-void
.end method

.method public setRoamingPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    #@0
    .prologue
    .line 133
    iput p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    #@2
    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PasspointPolicy: name="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " CredentialPriority="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 354
    const-string/jumbo v1, " mRoamingPriority"

    #@22
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 354
    iget v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    #@28
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 355
    const-string/jumbo v1, " ssid="

    #@2f
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 355
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    #@35
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 355
    const-string/jumbo v1, " restriction="

    #@3c
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 355
    iget v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRestriction:I

    #@42
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 356
    const-string/jumbo v1, " ishomesp="

    #@49
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 356
    iget-boolean v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    #@4f
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 356
    const-string/jumbo v1, " Credential="

    #@56
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 356
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@5c
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 367
    return-void
.end method
