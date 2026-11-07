.class public Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;
.super Ljava/lang/Object;
.source "TraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityInfo"
.end annotation


# instance fields
.field public blacklist mActivityName:Ljava/lang/String;

.field public blacklist mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/connectivity/org/chromium/base/TraceEvent$ViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "activityName"    # Ljava/lang/String;

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;->mActivityName:Ljava/lang/String;

    .line 767
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x7d

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$ActivityInfo;->mViews:Ljava/util/ArrayList;

    .line 768
    return-void
.end method
