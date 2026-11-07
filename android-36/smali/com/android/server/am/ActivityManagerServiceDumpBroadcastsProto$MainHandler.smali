.class public final Lcom/android/server/am/ActivityManagerServiceDumpBroadcastsProto$MainHandler;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpBroadcastsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpBroadcastsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MainHandler"
.end annotation


# static fields
.field public static final blacklist HANDLER:J = 0x10900000001L

.field public static final blacklist LOOPER:J = 0x10b00000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ActivityManagerServiceDumpBroadcastsProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceDumpBroadcastsProto;
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
