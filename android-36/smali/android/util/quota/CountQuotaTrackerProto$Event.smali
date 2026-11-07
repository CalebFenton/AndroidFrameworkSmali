.class public final Landroid/util/quota/CountQuotaTrackerProto$Event;
.super Ljava/lang/Object;
.source "CountQuotaTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/quota/CountQuotaTrackerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Event"
.end annotation


# static fields
.field public static final blacklist TIMESTAMP_ELAPSED:J = 0x10300000001L


# direct methods
.method public constructor blacklist <init>(Landroid/util/quota/CountQuotaTrackerProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/util/quota/CountQuotaTrackerProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
