.class public final Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$ContentObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Observer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer$TriggerContentData;
    }
.end annotation


# static fields
.field public static final blacklist TRIGGERS:J = 0x20b00000002L

.field public static final blacklist USER_ID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto$ContentObserverController;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/job/StateControllerProto$ContentObserverController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
