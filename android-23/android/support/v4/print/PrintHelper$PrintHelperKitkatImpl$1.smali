.class Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;
    .param p2, "val$callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    #@0
    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;

    #@2
    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$1;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$1;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    #@2
    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    #@5
    .line 200
    return-void
.end method
