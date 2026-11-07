.class Landroid/widget/ActivityChooserView$5;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ActivityChooserView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ActivityChooserView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 294
    iput-object p1, p0, Landroid/widget/ActivityChooserView$5;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .registers 2

    .line 297
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 298
    iget-object v0, p0, Landroid/widget/ActivityChooserView$5;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$mupdateAppearance(Landroid/widget/ActivityChooserView;)V

    .line 299
    return-void
.end method
