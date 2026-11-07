.class public Landroid/net/wifi/WifiConfiguration$KeyMgmt;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyMgmt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$KeyMgmt$KeyMgmtScheme;
    }
.end annotation


# static fields
.field public static final whitelist DPP:I = 0x11

.field public static final whitelist FILS_SHA256:I = 0xf

.field public static final whitelist FILS_SHA384:I = 0x10

.field public static final whitelist FT_EAP:I = 0x7

.field public static final whitelist FT_PSK:I = 0x6

.field public static final whitelist IEEE8021X:I = 0x3

.field public static final whitelist NONE:I = 0x0

.field public static final whitelist OSEN:I = 0x5

.field public static final whitelist OWE:I = 0x9

.field public static final whitelist SAE:I = 0x8

.field public static final whitelist SUITE_B_192:I = 0xa

.field public static final whitelist WAPI_CERT:I = 0xe

.field public static final whitelist WAPI_PSK:I = 0xd

.field public static final whitelist WPA2_PSK:I = 0x4

.field public static final whitelist WPA_EAP:I = 0x2

.field public static final whitelist WPA_EAP_SHA256:I = 0xc

.field public static final whitelist WPA_PSK:I = 0x1

.field public static final whitelist WPA_PSK_SHA256:I = 0xb

.field public static final whitelist strings:[Ljava/lang/String;

.field public static final whitelist varName:Ljava/lang/String; = "key_mgmt"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 19

    .line 237
    const-string v17, "FILS_SHA384"

    const-string v18, "DPP"

    const-string v1, "NONE"

    const-string v2, "WPA_PSK"

    const-string v3, "WPA_EAP"

    const-string v4, "IEEE8021X"

    const-string v5, "WPA2_PSK"

    const-string v6, "OSEN"

    const-string v7, "FT_PSK"

    const-string v8, "FT_EAP"

    const-string v9, "SAE"

    const-string v10, "OWE"

    const-string v11, "SUITE_B_192"

    const-string v12, "WPA_PSK_SHA256"

    const-string v13, "WPA_EAP_SHA256"

    const-string v14, "WAPI_PSK"

    const-string v15, "WAPI_CERT"

    const-string v16, "FILS_SHA256"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
