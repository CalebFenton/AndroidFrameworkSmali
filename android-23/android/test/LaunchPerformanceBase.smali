.class public Landroid/test/LaunchPerformanceBase;
.super Landroid/app/Instrumentation;
.source "LaunchPerformanceBase.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "Launch Performance"


# instance fields
.field protected mIntent:Landroid/content/Intent;

.field protected mResults:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    #@3
    .line 37
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    iput-object v0, p0, Landroid/test/LaunchPerformanceBase;->mResults:Landroid/os/Bundle;

    #@a
    .line 38
    new-instance v0, Landroid/content/Intent;

    #@c
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@f
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    iput-object v0, p0, Landroid/test/LaunchPerformanceBase;->mIntent:Landroid/content/Intent;

    #@14
    .line 39
    iget-object v0, p0, Landroid/test/LaunchPerformanceBase;->mIntent:Landroid/content/Intent;

    #@16
    const/high16 v1, 0x10000000

    #@18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@1b
    .line 40
    invoke-virtual {p0}, Landroid/test/LaunchPerformanceBase;->setAutomaticPerformanceSnapshots()V

    #@1e
    .line 36
    return-void
.end method


# virtual methods
.method protected LaunchApp()V
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Landroid/test/LaunchPerformanceBase;->mIntent:Landroid/content/Intent;

    #@2
    invoke-virtual {p0, v0}, Landroid/test/LaunchPerformanceBase;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    #@5
    .line 50
    invoke-virtual {p0}, Landroid/test/LaunchPerformanceBase;->waitForIdleSync()V

    #@8
    .line 48
    return-void
.end method
