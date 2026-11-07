.class public final Lcom/android/server/am/AppTimeTrackerProto$PackageTime;
.super Ljava/lang/Object;
.source "AppTimeTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppTimeTrackerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageTime"
.end annotation


# static fields
.field public static final blacklist DURATION_MS:J = 0x10300000002L

.field public static final blacklist PACKAGE:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/AppTimeTrackerProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/AppTimeTrackerProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
