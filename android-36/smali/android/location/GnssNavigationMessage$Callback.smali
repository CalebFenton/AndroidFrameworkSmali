.class public abstract Landroid/location/GnssNavigationMessage$Callback;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssNavigationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessage$Callback$GnssNavigationMessageStatus;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_LOCATION_DISABLED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_NOT_SUPPORTED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_READY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .registers 2
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 161
    return-void
.end method

.method public whitelist onStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    return-void
.end method
