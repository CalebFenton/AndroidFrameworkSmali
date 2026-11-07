.class public Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;
.super Ljava/lang/Object;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderWrapper"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getCallingUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 423
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method
