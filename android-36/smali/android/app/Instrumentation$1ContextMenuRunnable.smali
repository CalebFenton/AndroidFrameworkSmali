.class Landroid/app/Instrumentation$1ContextMenuRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Instrumentation;->invokeContextMenuAction(Landroid/app/Activity;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContextMenuRunnable"
.end annotation


# instance fields
.field private final blacklist activity:Landroid/app/Activity;

.field private final blacklist flags:I

.field private final blacklist identifier:I

.field blacklist returnValue:Z


# direct methods
.method public constructor blacklist <init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V
    .registers 5
    .param p1, "this$0"    # Landroid/app/Instrumentation;
    .param p2, "_activity"    # Landroid/app/Activity;
    .param p3, "_identifier"    # I
    .param p4, "_flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1122
    iput-object p2, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->activity:Landroid/app/Activity;

    .line 1123
    iput p3, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->identifier:I

    .line 1124
    iput p4, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->flags:I

    .line 1125
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1128
    iget-object v0, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1129
    .local v0, "win":Landroid/view/Window;
    iget v1, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->identifier:I

    iget v2, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->performContextMenuIdentifierAction(II)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    .line 1132
    return-void
.end method
