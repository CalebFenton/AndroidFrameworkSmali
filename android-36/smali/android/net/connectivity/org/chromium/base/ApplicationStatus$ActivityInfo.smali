.class Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/ApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityInfo"
.end annotation


# instance fields
.field private blacklist mListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStatus:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x6

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->mStatus:I

    .line 50
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->mListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/ApplicationStatus-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getListeners()Landroid/net/connectivity/org/chromium/base/ObserverList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->mListeners:Landroid/net/connectivity/org/chromium/base/ObserverList;

    return-object v0
.end method

.method public blacklist getStatus()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->mStatus:I

    return v0
.end method

.method public blacklist setStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 64
    iput p1, p0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityInfo;->mStatus:I

    .line 65
    return-void
.end method
