.class public final Landroid/os/AppBackgroundRestrictionsInfo$BindServiceEventsTrackerInfo;
.super Ljava/lang/Object;
.source "AppBackgroundRestrictionsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AppBackgroundRestrictionsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BindServiceEventsTrackerInfo"
.end annotation


# static fields
.field public static final blacklist BIND_SERVICE_REQUESTS:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Landroid/os/AppBackgroundRestrictionsInfo;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/AppBackgroundRestrictionsInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
