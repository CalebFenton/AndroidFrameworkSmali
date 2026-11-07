.class public final Lcom/android/server/power/PowerManagerServiceDumpProto$ConstantsProto;
.super Ljava/lang/Object;
.source "PowerManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConstantsProto"
.end annotation


# static fields
.field public static final blacklist IS_NO_CACHED_WAKE_LOCKS:J = 0x10800000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/power/PowerManagerServiceDumpProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerServiceDumpProto;
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
