.class final Landroid/app/Instrumentation$ActivityWaiter;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityWaiter"
.end annotation


# instance fields
.field public greylist-max-o activity:Landroid/app/Activity;

.field public final greylist-max-o intent:Landroid/content/Intent;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Intent;)V
    .registers 2
    .param p1, "_intent"    # Landroid/content/Intent;

    .line 2639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2640
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 2641
    return-void
.end method
