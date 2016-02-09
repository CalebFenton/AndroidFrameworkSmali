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


# static fields
.field public static final RSN:I = 0x1

.field public static final WPA:I = 0x0

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "proto"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 105
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "WPA"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "RSN"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    sput-object v0, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    #@11
    .line 95
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
