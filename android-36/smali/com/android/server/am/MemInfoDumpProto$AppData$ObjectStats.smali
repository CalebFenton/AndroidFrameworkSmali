.class public final Lcom/android/server/am/MemInfoDumpProto$AppData$ObjectStats;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto$AppData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ObjectStats"
.end annotation


# static fields
.field public static final blacklist ACTIVITY_INSTANCE_COUNT:J = 0x10500000004L

.field public static final blacklist APP_CONTEXT_INSTANCE_COUNT:J = 0x10500000003L

.field public static final blacklist BINDER_OBJECT_DEATH_COUNT:J = 0x1050000000bL

.field public static final blacklist GLOBAL_ASSET_COUNT:J = 0x10500000005L

.field public static final blacklist GLOBAL_ASSET_MANAGER_COUNT:J = 0x10500000006L

.field public static final blacklist LOCAL_BINDER_OBJECT_COUNT:J = 0x10500000007L

.field public static final blacklist OPEN_SSL_SOCKET_COUNT:J = 0x1050000000cL

.field public static final blacklist PARCEL_COUNT:J = 0x1050000000aL

.field public static final blacklist PARCEL_MEMORY_KB:J = 0x10300000009L

.field public static final blacklist PROXY_BINDER_OBJECT_COUNT:J = 0x10500000008L

.field public static final blacklist VIEW_INSTANCE_COUNT:J = 0x10500000001L

.field public static final blacklist VIEW_ROOT_INSTANCE_COUNT:J = 0x10500000002L

.field public static final blacklist WEBVIEW_INSTANCE_COUNT:J = 0x1050000000dL


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/MemInfoDumpProto$AppData;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/am/MemInfoDumpProto$AppData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
