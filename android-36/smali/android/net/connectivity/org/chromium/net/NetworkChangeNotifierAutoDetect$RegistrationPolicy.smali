.class public abstract Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RegistrationPolicy"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mNotifier:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 903
    const-class v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist destroy()V
.end method

.method protected blacklist init(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .registers 2
    .param p1, "notifier"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 923
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->mNotifier:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 924
    return-void
.end method

.method protected final blacklist register()V
    .registers 2

    .line 908
    nop

    .line 909
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->mNotifier:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->register()V

    .line 910
    return-void
.end method

.method protected final blacklist unregister()V
    .registers 2

    .line 914
    nop

    .line 915
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->mNotifier:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->unregister()V

    .line 916
    return-void
.end method
