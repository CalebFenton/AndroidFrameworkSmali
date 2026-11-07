.class public final Lcom/android/server/am/ServiceRecordProto$Foreground;
.super Ljava/lang/Object;
.source "ServiceRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ServiceRecordProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Foreground"
.end annotation


# static fields
.field public static final blacklist FOREGROUND_SERVICE_TYPE:J = 0x10500000003L

.field public static final blacklist ID:J = 0x10500000001L

.field public static final blacklist NOTIFICATION:J = 0x10b00000002L


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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
