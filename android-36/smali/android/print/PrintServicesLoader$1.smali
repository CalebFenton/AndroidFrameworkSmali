.class Landroid/print/PrintServicesLoader$1;
.super Ljava/lang/Object;
.source "PrintServicesLoader.java"

# interfaces
.implements Landroid/print/PrintManager$PrintServicesChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PrintServicesLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/print/PrintServicesLoader;


# direct methods
.method constructor blacklist <init>(Landroid/print/PrintServicesLoader;)V
    .registers 2
    .param p1, "this$0"    # Landroid/print/PrintServicesLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Landroid/print/PrintServicesLoader$1;->this$0:Landroid/print/PrintServicesLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPrintServicesChanged()V
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/print/PrintServicesLoader$1;->this$0:Landroid/print/PrintServicesLoader;

    invoke-static {v0}, Landroid/print/PrintServicesLoader;->-$$Nest$mqueueNewResult(Landroid/print/PrintServicesLoader;)V

    .line 83
    return-void
.end method
