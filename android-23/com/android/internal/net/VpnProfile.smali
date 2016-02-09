.class public Lcom/android/internal/net/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/VpnProfile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VpnProfile"

.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x5

.field public static final TYPE_PPTP:I


# instance fields
.field public dnsServers:Ljava/lang/String;

.field public ipsecCaCert:Ljava/lang/String;

.field public ipsecIdentifier:Ljava/lang/String;

.field public ipsecSecret:Ljava/lang/String;

.field public ipsecServerCert:Ljava/lang/String;

.field public ipsecUserCert:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public l2tpSecret:Ljava/lang/String;

.field public mppe:Z

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public routes:Ljava/lang/String;

.field public saveLogin:Z

.field public searchDomains:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 199
    new-instance v0, Lcom/android/internal/net/VpnProfile$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/net/VpnProfile$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 50
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    #@a
    .line 51
    iput v2, p0, Lcom/android/internal/net/VpnProfile;->type:I

    #@c
    .line 52
    const-string/jumbo v0, ""

    #@f
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@11
    .line 53
    const-string/jumbo v0, ""

    #@14
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@16
    .line 54
    const-string/jumbo v0, ""

    #@19
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@1b
    .line 55
    const-string/jumbo v0, ""

    #@1e
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@20
    .line 56
    const-string/jumbo v0, ""

    #@23
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    #@25
    .line 57
    const-string/jumbo v0, ""

    #@28
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    #@2a
    .line 58
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    #@2c
    .line 59
    const-string/jumbo v0, ""

    #@2f
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    #@31
    .line 60
    const-string/jumbo v0, ""

    #@34
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    #@36
    .line 61
    const-string/jumbo v0, ""

    #@39
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    #@3b
    .line 62
    const-string/jumbo v0, ""

    #@3e
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@40
    .line 63
    const-string/jumbo v0, ""

    #@43
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    #@45
    .line 64
    const-string/jumbo v0, ""

    #@48
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    #@4a
    .line 67
    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    #@4c
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    #@52
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    #@58
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v0

    #@5c
    iput v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    #@5e
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@64
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@6a
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@70
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@76
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    #@7c
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    #@82
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@85
    move-result v0

    #@86
    if-eqz v0, :cond_0

    #@88
    move v0, v1

    #@89
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    #@8b
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    #@91
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    #@97
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    #@9d
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@a3
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    #@a9
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ac
    move-result-object v0

    #@ad
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    #@af
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b2
    move-result v0

    #@b3
    if-eqz v0, :cond_1

    #@b5
    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    #@b7
    .line 73
    return-void

    #@b8
    :cond_0
    move v0, v2

    #@b9
    .line 83
    goto :goto_0

    #@ba
    :cond_1
    move v1, v2

    #@bb
    .line 90
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 50
    const-string/jumbo v0, ""

    #@7
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    #@9
    .line 51
    iput v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    #@b
    .line 52
    const-string/jumbo v0, ""

    #@e
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@10
    .line 53
    const-string/jumbo v0, ""

    #@13
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@15
    .line 54
    const-string/jumbo v0, ""

    #@18
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@1a
    .line 55
    const-string/jumbo v0, ""

    #@1d
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@1f
    .line 56
    const-string/jumbo v0, ""

    #@22
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    #@24
    .line 57
    const-string/jumbo v0, ""

    #@27
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    #@29
    .line 58
    const/4 v0, 0x1

    #@2a
    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    #@2c
    .line 59
    const-string/jumbo v0, ""

    #@2f
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    #@31
    .line 60
    const-string/jumbo v0, ""

    #@34
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    #@36
    .line 61
    const-string/jumbo v0, ""

    #@39
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    #@3b
    .line 62
    const-string/jumbo v0, ""

    #@3e
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@40
    .line 63
    const-string/jumbo v0, ""

    #@43
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    #@45
    .line 64
    const-string/jumbo v0, ""

    #@48
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    #@4a
    .line 67
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    #@4c
    .line 70
    iput-object p1, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    #@4e
    .line 69
    return-void
.end method

.method public static decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    #@0
    .prologue
    const/4 v10, 0x5

    #@1
    const/16 v9, 0xe

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v8, 0x0

    #@6
    .line 116
    if-nez p0, :cond_0

    #@8
    .line 117
    return-object v8

    #@9
    .line 120
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    #@b
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@d
    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@10
    const-string/jumbo v6, "\u0000"

    #@13
    const/4 v7, -0x1

    #@14
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 122
    .local v2, "values":[Ljava/lang/String;
    array-length v5, v2

    #@19
    if-lt v5, v9, :cond_1

    #@1b
    array-length v5, v2

    #@1c
    const/16 v6, 0xf

    #@1e
    if-le v5, v6, :cond_2

    #@20
    .line 123
    :cond_1
    return-object v8

    #@21
    .line 126
    :cond_2
    new-instance v1, Lcom/android/internal/net/VpnProfile;

    #@23
    invoke-direct {v1, p0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    #@26
    .line 127
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    const/4 v5, 0x0

    #@27
    aget-object v5, v2, v5

    #@29
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    #@2b
    .line 128
    const/4 v5, 0x1

    #@2c
    aget-object v5, v2, v5

    #@2e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@35
    move-result v5

    #@36
    iput v5, v1, Lcom/android/internal/net/VpnProfile;->type:I

    #@38
    .line 129
    iget v5, v1, Lcom/android/internal/net/VpnProfile;->type:I

    #@3a
    if-ltz v5, :cond_3

    #@3c
    iget v5, v1, Lcom/android/internal/net/VpnProfile;->type:I

    #@3e
    if-le v5, v10, :cond_4

    #@40
    .line 130
    :cond_3
    return-object v8

    #@41
    .line 132
    :cond_4
    const/4 v5, 0x2

    #@42
    aget-object v5, v2, v5

    #@44
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@46
    .line 133
    const/4 v5, 0x3

    #@47
    aget-object v5, v2, v5

    #@49
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@4b
    .line 134
    const/4 v5, 0x4

    #@4c
    aget-object v5, v2, v5

    #@4e
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@50
    .line 135
    const/4 v5, 0x5

    #@51
    aget-object v5, v2, v5

    #@53
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@55
    .line 136
    const/4 v5, 0x6

    #@56
    aget-object v5, v2, v5

    #@58
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    #@5a
    .line 137
    const/4 v5, 0x7

    #@5b
    aget-object v5, v2, v5

    #@5d
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    #@5f
    .line 138
    const/16 v5, 0x8

    #@61
    aget-object v5, v2, v5

    #@63
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@6a
    move-result v5

    #@6b
    iput-boolean v5, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    #@6d
    .line 139
    const/16 v5, 0x9

    #@6f
    aget-object v5, v2, v5

    #@71
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    #@73
    .line 140
    const/16 v5, 0xa

    #@75
    aget-object v5, v2, v5

    #@77
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    #@79
    .line 141
    const/16 v5, 0xb

    #@7b
    aget-object v5, v2, v5

    #@7d
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    #@7f
    .line 142
    const/16 v5, 0xc

    #@81
    aget-object v5, v2, v5

    #@83
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@85
    .line 143
    const/16 v5, 0xd

    #@87
    aget-object v5, v2, v5

    #@89
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    #@8b
    .line 144
    array-length v5, v2

    #@8c
    if-le v5, v9, :cond_6

    #@8e
    const/16 v5, 0xe

    #@90
    aget-object v5, v2, v5

    #@92
    :goto_0
    iput-object v5, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    #@94
    .line 146
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@96
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@99
    move-result v5

    #@9a
    if-eqz v5, :cond_5

    #@9c
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@9e
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@a1
    move-result v5

    #@a2
    if-eqz v5, :cond_5

    #@a4
    move v3, v4

    #@a5
    :cond_5
    iput-boolean v3, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    #@a7
    .line 147
    return-object v1

    #@a8
    .line 144
    :cond_6
    const-string/jumbo v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@ab
    goto :goto_0

    #@ac
    .line 148
    .end local v1    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@ad
    .line 151
    .local v0, "e":Ljava/lang/Exception;
    return-object v8
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 213
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public encode()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 156
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Lcom/android/internal/net/VpnProfile;->type:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    #@20
    if-eqz v1, :cond_0

    #@22
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@24
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    #@2d
    if-eqz v1, :cond_1

    #@2f
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@31
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@58
    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@97
    move-result-object v1

    #@98
    return-object v1

    #@99
    .line 158
    :cond_0
    const-string/jumbo v1, ""

    #@9c
    goto :goto_0

    #@9d
    .line 159
    :cond_1
    const-string/jumbo v1, ""

    #@a0
    goto :goto_1
.end method

.method public isValidLockdownProfile()Z
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@3
    invoke-static {v2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@6
    .line 182
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@8
    const-string/jumbo v4, " +"

    #@b
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    array-length v5, v4

    #@10
    move v2, v3

    #@11
    :goto_0
    if-ge v2, v5, :cond_0

    #@13
    aget-object v0, v4, v2

    #@15
    .line 183
    .local v0, "dnsServer":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@17
    invoke-static {v6}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@1a
    .line 182
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 185
    .end local v0    # "dnsServer":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@1f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 186
    const-string/jumbo v2, "VpnProfile"

    #@28
    const-string/jumbo v4, "DNS required"

    #@2b
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 187
    return v3

    #@2f
    .line 191
    :cond_1
    const/4 v2, 0x1

    #@30
    return v2

    #@31
    .line 193
    :catch_0
    move-exception v1

    #@32
    .line 194
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "VpnProfile"

    #@35
    const-string/jumbo v4, "Invalid address"

    #@38
    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 195
    return v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 95
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 96
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 97
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 98
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 99
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 100
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 101
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    #@22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 102
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a
    .line 103
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    #@2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 104
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    #@31
    if-eqz v0, :cond_0

    #@33
    move v0, v1

    #@34
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 105
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 106
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@41
    .line 107
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@46
    .line 108
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    #@48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4b
    .line 109
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    #@4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@50
    .line 110
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    #@52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@55
    .line 111
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    #@57
    if-eqz v0, :cond_1

    #@59
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 94
    return-void

    #@5d
    :cond_0
    move v0, v2

    #@5e
    .line 104
    goto :goto_0

    #@5f
    :cond_1
    move v1, v2

    #@60
    .line 111
    goto :goto_1
.end method
