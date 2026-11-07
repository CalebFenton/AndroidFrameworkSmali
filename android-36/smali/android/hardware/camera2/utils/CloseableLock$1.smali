.class Landroid/hardware/camera2/utils/CloseableLock$1;
.super Ljava/lang/ThreadLocal;
.source "CloseableLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/CloseableLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/utils/CloseableLock;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/utils/CloseableLock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist initialValue()Ljava/lang/Integer;
    .registers 2

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 64
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/CloseableLock$1;->initialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
