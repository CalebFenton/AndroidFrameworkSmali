.class Landroid/net/connectivity/org/chromium/base/BuildInfo$Holder;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/BuildInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/net/connectivity/org/chromium/base/BuildInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/net/connectivity/org/chromium/base/BuildInfo;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/BuildInfo$Holder;->INSTANCE:Landroid/net/connectivity/org/chromium/base/BuildInfo;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 125
    new-instance v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/base/BuildInfo;-><init>(Landroid/net/connectivity/org/chromium/base/BuildInfo-IA;)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/BuildInfo$Holder;->INSTANCE:Landroid/net/connectivity/org/chromium/base/BuildInfo;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
