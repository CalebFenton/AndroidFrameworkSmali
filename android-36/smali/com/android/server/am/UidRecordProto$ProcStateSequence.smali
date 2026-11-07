.class public final Lcom/android/server/am/UidRecordProto$ProcStateSequence;
.super Ljava/lang/Object;
.source "UidRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UidRecordProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProcStateSequence"
.end annotation


# static fields
.field public static final blacklist CURURENT:J = 0x10300000001L

.field public static final blacklist LAST_DISPATCHED:J = 0x10300000003L

.field public static final blacklist LAST_NETWORK_UPDATED:J = 0x10300000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/UidRecordProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/UidRecordProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
