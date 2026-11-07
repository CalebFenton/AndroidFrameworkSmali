.class public final Landroid/timezone/TelephonyLookup;
.super Ljava/lang/Object;
.source "TelephonyLookup.java"


# static fields
.field private static blacklist sInstance:Landroid/timezone/TelephonyLookup;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/TelephonyLookup;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/timezone/TelephonyLookup;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/i18n/timezone/TelephonyLookup;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/i18n/timezone/TelephonyLookup;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/TelephonyLookup;

    iput-object v0, p0, Landroid/timezone/TelephonyLookup;->mDelegate:Lcom/android/i18n/timezone/TelephonyLookup;

    .line 56
    return-void
.end method

.method public static blacklist getInstance()Landroid/timezone/TelephonyLookup;
    .registers 3

    .line 42
    sget-object v0, Landroid/timezone/TelephonyLookup;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Landroid/timezone/TelephonyLookup;->sInstance:Landroid/timezone/TelephonyLookup;

    if-nez v1, :cond_12

    .line 44
    new-instance v1, Landroid/timezone/TelephonyLookup;

    .line 45
    invoke-static {}, Lcom/android/i18n/timezone/TelephonyLookup;->getInstance()Lcom/android/i18n/timezone/TelephonyLookup;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/timezone/TelephonyLookup;-><init>(Lcom/android/i18n/timezone/TelephonyLookup;)V

    sput-object v1, Landroid/timezone/TelephonyLookup;->sInstance:Landroid/timezone/TelephonyLookup;

    .line 47
    :cond_12
    sget-object v1, Landroid/timezone/TelephonyLookup;->sInstance:Landroid/timezone/TelephonyLookup;

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public blacklist getTelephonyNetworkFinder()Landroid/timezone/TelephonyNetworkFinder;
    .registers 3

    .line 64
    iget-object v0, p0, Landroid/timezone/TelephonyLookup;->mDelegate:Lcom/android/i18n/timezone/TelephonyLookup;

    .line 65
    invoke-virtual {v0}, Lcom/android/i18n/timezone/TelephonyLookup;->getTelephonyNetworkFinder()Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    move-result-object v0

    .line 66
    .local v0, "telephonyNetworkFinderDelegate":Lcom/android/i18n/timezone/TelephonyNetworkFinder;
    if-eqz v0, :cond_e

    .line 67
    new-instance v1, Landroid/timezone/TelephonyNetworkFinder;

    invoke-direct {v1, v0}, Landroid/timezone/TelephonyNetworkFinder;-><init>(Lcom/android/i18n/timezone/TelephonyNetworkFinder;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 66
    :goto_f
    return-object v1
.end method
