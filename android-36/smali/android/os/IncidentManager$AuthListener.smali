.class public Landroid/os/IncidentManager$AuthListener;
.super Ljava/lang/Object;
.source "IncidentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthListener"
.end annotation


# instance fields
.field blacklist mBinder:Landroid/os/IIncidentAuthListener$Stub;

.field blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Landroid/os/IncidentManager$AuthListener$1;

    invoke-direct {v0, p0}, Landroid/os/IncidentManager$AuthListener$1;-><init>(Landroid/os/IncidentManager$AuthListener;)V

    iput-object v0, p0, Landroid/os/IncidentManager$AuthListener;->mBinder:Landroid/os/IIncidentAuthListener$Stub;

    return-void
.end method


# virtual methods
.method public whitelist onReportApproved()V
    .registers 1

    .line 426
    return-void
.end method

.method public whitelist onReportDenied()V
    .registers 1

    .line 432
    return-void
.end method
