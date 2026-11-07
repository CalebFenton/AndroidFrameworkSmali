.class final Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierAppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AssociatedAppInfo"
.end annotation


# instance fields
.field public final blacklist addedInSdk:I

.field public final blacklist appInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;I)V
    .registers 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "addedInSdk"    # I

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 469
    iput p2, p0, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    .line 470
    return-void
.end method
