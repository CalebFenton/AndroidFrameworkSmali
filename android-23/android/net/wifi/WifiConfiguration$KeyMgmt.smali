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


# static fields
.field public static final IEEE8021X:I = 0x3

.field public static final NONE:I = 0x0

.field public static final WPA2_PSK:I = 0x4

.field public static final WPA_EAP:I = 0x2

.field public static final WPA_PSK:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "key_mgmt"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 88
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "NONE"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "WPA_PSK"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "WPA_EAP"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "IEEE8021X"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 89
    const-string/jumbo v1, "WPA2_PSK"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 88
    sput-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@23
    .line 67
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
