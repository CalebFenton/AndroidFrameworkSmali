.class public final Lcom/android/server/notification/NotificationHistoryProto;
.super Ljava/lang/Object;
.source "NotificationHistoryProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationHistoryProto$Notification;,
        Lcom/android/server/notification/NotificationHistoryProto$StringPool;
    }
.end annotation


# static fields
.field public static final blacklist MAJOR_VERSION:J = 0x10500000002L

.field public static final blacklist NOTIFICATION:J = 0x20b00000003L

.field public static final blacklist STRING_POOL:J = 0x10b00000001L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
