.class public final Landroid/internal/perfetto/protos/Windowmanager$WindowManagerTraceEntry;
.super Ljava/lang/Object;
.source "Windowmanager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowManagerTraceEntry"
.end annotation


# static fields
.field public static final blacklist ELAPSED_REALTIME_NANOS:J = 0x10600000001L

.field public static final blacklist WHERE:J = 0x10900000002L

.field public static final blacklist WINDOW_MANAGER_SERVICE:J = 0x10b00000003L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Windowmanager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/perfetto/protos/Windowmanager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
