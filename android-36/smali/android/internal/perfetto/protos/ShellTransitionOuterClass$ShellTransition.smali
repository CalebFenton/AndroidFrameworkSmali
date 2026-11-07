.class public final Landroid/internal/perfetto/protos/ShellTransitionOuterClass$ShellTransition;
.super Ljava/lang/Object;
.source "ShellTransitionOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/ShellTransitionOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShellTransition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/perfetto/protos/ShellTransitionOuterClass$ShellTransition$Target;
    }
.end annotation


# static fields
.field public static final blacklist CREATE_TIME_NS:J = 0x10300000002L

.field public static final blacklist DISPATCH_TIME_NS:J = 0x10300000004L

.field public static final blacklist FINISH_TIME_NS:J = 0x10300000009L

.field public static final blacklist FINISH_TRANSACTION_ID:J = 0x1040000000bL

.field public static final blacklist FLAGS:J = 0x10500000010L

.field public static final blacklist HANDLER:J = 0x1050000000cL

.field public static final blacklist ID:J = 0x10500000001L

.field public static final blacklist MERGE_REQUEST_TIME_NS:J = 0x10300000006L

.field public static final blacklist MERGE_TARGET:J = 0x1050000000fL

.field public static final blacklist MERGE_TIME_NS:J = 0x10300000005L

.field public static final blacklist SEND_TIME_NS:J = 0x10300000003L

.field public static final blacklist SHELL_ABORT_TIME_NS:J = 0x10300000007L

.field public static final blacklist STARTING_WINDOW_REMOVE_TIME_NS:J = 0x10300000011L

.field public static final blacklist START_TRANSACTION_ID:J = 0x1040000000aL

.field public static final blacklist TARGETS:J = 0x20b0000000eL

.field public static final blacklist TYPE:J = 0x1050000000dL

.field public static final blacklist WM_ABORT_TIME_NS:J = 0x10300000008L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/ShellTransitionOuterClass;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/perfetto/protos/ShellTransitionOuterClass;
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
