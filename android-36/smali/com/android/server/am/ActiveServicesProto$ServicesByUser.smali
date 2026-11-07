.class public final Lcom/android/server/am/ActiveServicesProto$ServicesByUser;
.super Ljava/lang/Object;
.source "ActiveServicesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServicesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServicesByUser"
.end annotation


# static fields
.field public static final blacklist SERVICE_RECORDS:J = 0x20b00000002L

.field public static final blacklist USER_ID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ActiveServicesProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServicesProto;
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
