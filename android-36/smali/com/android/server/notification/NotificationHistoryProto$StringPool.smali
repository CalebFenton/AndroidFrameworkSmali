.class public final Lcom/android/server/notification/NotificationHistoryProto$StringPool;
.super Ljava/lang/Object;
.source "NotificationHistoryProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StringPool"
.end annotation


# static fields
.field public static final blacklist SIZE:J = 0x10500000001L

.field public static final blacklist STRINGS:J = 0x20900000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/notification/NotificationHistoryProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationHistoryProto;
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
