.class Landroid/database/MergeCursor$1;
.super Landroid/database/DataSetObserver;
.source "MergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/MergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/database/MergeCursor;


# direct methods
.method constructor blacklist <init>(Landroid/database/MergeCursor;)V
    .registers 2
    .param p1, "this$0"    # Landroid/database/MergeCursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 28
    iput-object p1, p0, Landroid/database/MergeCursor$1;->this$0:Landroid/database/MergeCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .registers 3

    .line 34
    iget-object v0, p0, Landroid/database/MergeCursor$1;->this$0:Landroid/database/MergeCursor;

    const/4 v1, -0x1

    iput v1, v0, Landroid/database/MergeCursor;->mPos:I

    .line 35
    return-void
.end method

.method public whitelist onInvalidated()V
    .registers 3

    .line 39
    iget-object v0, p0, Landroid/database/MergeCursor$1;->this$0:Landroid/database/MergeCursor;

    const/4 v1, -0x1

    iput v1, v0, Landroid/database/MergeCursor;->mPos:I

    .line 40
    return-void
.end method
