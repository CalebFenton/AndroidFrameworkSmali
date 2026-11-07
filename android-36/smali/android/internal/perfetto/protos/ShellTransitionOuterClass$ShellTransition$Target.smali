.class public final Landroid/internal/perfetto/protos/ShellTransitionOuterClass$ShellTransition$Target;
.super Ljava/lang/Object;
.source "ShellTransitionOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/ShellTransitionOuterClass$ShellTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Target"
.end annotation


# static fields
.field public static final blacklist FLAGS:J = 0x10500000004L

.field public static final blacklist LAYER_ID:J = 0x10500000002L

.field public static final blacklist MODE:J = 0x10500000001L

.field public static final blacklist WINDOW_ID:J = 0x10500000003L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/ShellTransitionOuterClass$ShellTransition;)V
    .registers 2
    .param p1, "this$1"    # Landroid/internal/perfetto/protos/ShellTransitionOuterClass$ShellTransition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
