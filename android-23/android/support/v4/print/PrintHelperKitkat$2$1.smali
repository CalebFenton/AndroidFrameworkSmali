.class Landroid/support/v4/print/PrintHelperKitkat$2$1;
.super Landroid/os/AsyncTask;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat$2;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/print/PrintHelperKitkat$2;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$imageFile:Landroid/net/Uri;

.field final synthetic val$jobName:Ljava/lang/String;

.field final synthetic val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic val$newPrintAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$oldPrintAttributes:Landroid/print/PrintAttributes;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat$2;Landroid/os/CancellationSignal;Landroid/net/Uri;Ljava/lang/String;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/print/PrintHelperKitkat$2;
    .param p2, "val$cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "val$imageFile"    # Landroid/net/Uri;
    .param p4, "val$jobName"    # Ljava/lang/String;
    .param p5, "val$newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p6, "val$oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p7, "val$layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    #@0
    .prologue
    .line 345
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$2;

    #@2
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    #@4
    iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$imageFile:Landroid/net/Uri;

    #@6
    iput-object p4, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$jobName:Ljava/lang/String;

    #@8
    iput-object p5, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    #@a
    iput-object p6, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    #@c
    iput-object p7, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    #@e
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "uris"    # [Landroid/net/Uri;

    #@0
    .prologue
    .line 363
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$2;

    #@2
    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@4
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$imageFile:Landroid/net/Uri;

    #@6
    const/16 v3, 0xdac

    #@8
    invoke-static {v1, v2, v3}, Landroid/support/v4/print/PrintHelperKitkat;->-wrap1(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 364
    :catch_0
    move-exception v0

    #@e
    .line 367
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "uris"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 361
    check-cast p1, [Landroid/net/Uri;

    #@2
    .end local p1    # "uris":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelperKitkat$2$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    #@2
    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    #@5
    .line 393
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$2;

    #@7
    const/4 v1, 0x0

    #@8
    iput-object v1, v0, Landroid/support/v4/print/PrintHelperKitkat$2;->mLoadBitmap:Landroid/os/AsyncTask;

    #@a
    .line 390
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 390
    check-cast p1, Landroid/graphics/Bitmap;

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelperKitkat$2$1;->onCancelled(Landroid/graphics/Bitmap;)V

    #@5
    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 372
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    #@5
    .line 373
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$2;

    #@7
    iput-object p1, v2, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    #@9
    .line 374
    if-eqz p1, :cond_1

    #@b
    .line 375
    new-instance v2, Landroid/print/PrintDocumentInfo$Builder;

    #@d
    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$jobName:Ljava/lang/String;

    #@f
    invoke-direct {v2, v3}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v2, v5}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v5}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    #@1d
    move-result-object v1

    #@1e
    .line 379
    .local v1, "info":Landroid/print/PrintDocumentInfo;
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    #@20
    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    #@22
    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    const/4 v0, 0x0

    #@29
    .line 381
    .local v0, "changed":Z
    :goto_0
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    #@2b
    invoke-virtual {v2, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    #@2e
    .line 386
    .end local v0    # "changed":Z
    .end local v1    # "info":Landroid/print/PrintDocumentInfo;
    :goto_1
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$2;

    #@30
    iput-object v4, v2, Landroid/support/v4/print/PrintHelperKitkat$2;->mLoadBitmap:Landroid/os/AsyncTask;

    #@32
    .line 371
    return-void

    #@33
    .line 379
    .restart local v1    # "info":Landroid/print/PrintDocumentInfo;
    :cond_0
    const/4 v0, 0x1

    #@34
    .restart local v0    # "changed":Z
    goto :goto_0

    #@35
    .line 384
    .end local v0    # "changed":Z
    .end local v1    # "info":Landroid/print/PrintDocumentInfo;
    :cond_1
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    #@37
    invoke-virtual {v2, v4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    #@3a
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "bitmap"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 371
    check-cast p1, Landroid/graphics/Bitmap;

    #@2
    .end local p1    # "bitmap":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelperKitkat$2$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    #@5
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    #@2
    .line 351
    new-instance v1, Landroid/support/v4/print/PrintHelperKitkat$2$1$1;

    #@4
    invoke-direct {v1, p0}, Landroid/support/v4/print/PrintHelperKitkat$2$1$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat$2$1;)V

    #@7
    .line 350
    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@a
    .line 348
    return-void
.end method
