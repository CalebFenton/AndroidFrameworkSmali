.class public Landroid/net/wifi/WifiConfiguration$Protocol;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$Protocol$ProtocolScheme;
    }
.end annotation


# static fields
.field public static final greylist-max-o OSEN:I = 0x2

.field public static final whitelist RSN:I = 0x1

.field public static final whitelist WAPI:I = 0x3

.field public static final whitelist WPA:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist strings:[Ljava/lang/String;

.field public static final whitelist varName:Ljava/lang/String; = "proto"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 273
    const-string v0, "OSEN"

    const-string v1, "WAPI"

    const-string v2, "WPA"

    const-string v3, "RSN"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
