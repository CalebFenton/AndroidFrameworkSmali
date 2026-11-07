.class public final Lcom/android/server/notification/NotificationHistoryProto$Notification$Icon;
.super Ljava/lang/Object;
.source "NotificationHistoryProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryProto$Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Icon"
.end annotation


# static fields
.field public static final blacklist IMAGE_BITMAP_FILENAME:J = 0x10900000002L

.field public static final blacklist IMAGE_DATA:J = 0x10c00000005L

.field public static final blacklist IMAGE_DATA_LENGTH:J = 0x10500000006L

.field public static final blacklist IMAGE_DATA_OFFSET:J = 0x10500000007L

.field public static final blacklist IMAGE_RESOURCE_ID:J = 0x10500000003L

.field public static final blacklist IMAGE_RESOURCE_ID_PACKAGE:J = 0x10900000004L

.field public static final blacklist IMAGE_TYPE:J = 0x10e00000001L

.field public static final blacklist IMAGE_URI:J = 0x10900000008L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/notification/NotificationHistoryProto$Notification;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationHistoryProto$Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
