.class Lcom/android/server/wifi/WifiInjector$LazyHolder;
.super Ljava/lang/Object;
.source "WifiInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/android/server/wifi/WifiInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 28
    new-instance v0, Lcom/android/server/wifi/WifiInjector;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiInjector;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/wifi/WifiInjector$LazyHolder;->sInstance:Lcom/android/server/wifi/WifiInjector;

    #@7
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
