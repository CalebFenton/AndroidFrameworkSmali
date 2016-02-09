.class public Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSubscriptionsChangedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;,
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;
    }
.end annotation


# instance fields
.field callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 350
    new-instance v0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;

    #@5
    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@8
    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mHandler:Landroid/os/Handler;

    #@a
    .line 372
    new-instance v0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;

    #@c
    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@f
    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@11
    .line 349
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 381
    const-string/jumbo v0, "SubscriptionManager"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 380
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    #@0
    .prologue
    .line 364
    return-void
.end method
