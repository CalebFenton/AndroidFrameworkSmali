.class public final Landroid/internal/perfetto/protos/ShellTransitionOuterClass$ShellHandlerMappings;
.super Ljava/lang/Object;
.source "ShellTransitionOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/ShellTransitionOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShellHandlerMappings"
.end annotation


# static fields
.field public static final blacklist MAPPING:J = 0x20b00000001L


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

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
