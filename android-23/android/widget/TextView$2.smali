.class Landroid/widget/TextView$2;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->compressText(F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 6782
    iput-object p1, p0, Landroid/widget/TextView$2;->this$0:Landroid/widget/TextView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 6784
    iget-object v0, p0, Landroid/widget/TextView$2;->this$0:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    #@5
    .line 6783
    return-void
.end method
