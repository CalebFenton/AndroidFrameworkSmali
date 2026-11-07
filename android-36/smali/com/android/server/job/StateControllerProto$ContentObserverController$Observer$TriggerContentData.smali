.class public final Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TriggerContentData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData$JobInstance;
    }
.end annotation


# static fields
.field public static final blacklist FLAGS:J = 0x10500000002L

.field public static final blacklist JOBS:J = 0x20b00000003L

.field public static final blacklist URI:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer;)V
    .registers 2
    .param p1, "this$2"    # Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
