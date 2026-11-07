.class Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$SingletonHolder;
.super Ljava/lang/Object;
.source "NetworkStackBpfNetMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final blacklist sInstance:Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;-><init>(Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps-IA;)V

    sput-object v0, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps$SingletonHolder;->sInstance:Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
