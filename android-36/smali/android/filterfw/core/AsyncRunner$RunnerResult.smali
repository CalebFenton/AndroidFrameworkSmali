.class Landroid/filterfw/core/AsyncRunner$RunnerResult;
.super Ljava/lang/Object;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/AsyncRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnerResult"
.end annotation


# instance fields
.field public greylist-max-o exception:Ljava/lang/Exception;

.field public greylist-max-o status:I


# direct methods
.method private constructor blacklist <init>(Landroid/filterfw/core/AsyncRunner;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;)V

    return-void
.end method
