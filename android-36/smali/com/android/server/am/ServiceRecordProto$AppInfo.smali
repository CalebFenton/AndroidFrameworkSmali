.class public final Lcom/android/server/am/ServiceRecordProto$AppInfo;
.super Ljava/lang/Object;
.source "ServiceRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ServiceRecordProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppInfo"
.end annotation


# static fields
.field public static final blacklist BASE_DIR:J = 0x10900000001L

.field public static final blacklist DATA_DIR:J = 0x10900000003L

.field public static final blacklist RES_DIR:J = 0x10900000002L

.field public static final blacklist TARGET_SDK_VERSION:J = 0x10500000004L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ServiceRecordProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecordProto;
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
