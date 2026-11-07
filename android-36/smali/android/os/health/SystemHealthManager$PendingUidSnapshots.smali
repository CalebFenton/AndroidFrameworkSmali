.class Landroid/os/health/SystemHealthManager$PendingUidSnapshots;
.super Ljava/lang/Object;
.source "SystemHealthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/SystemHealthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingUidSnapshots"
.end annotation


# instance fields
.field public blacklist resultReceiver:Landroid/os/SynchronousResultReceiver;

.field public blacklist uids:[I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/health/SystemHealthManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;-><init>()V

    return-void
.end method
