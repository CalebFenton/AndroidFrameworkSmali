.class public abstract Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.super Ljava/lang/Object;
.source "PrintDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WriteResultCallback"
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    return-void
.end method


# virtual methods
.method public whitelist onWriteCancelled()V
    .registers 1

    .line 296
    return-void
.end method

.method public whitelist onWriteFailed(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 289
    return-void
.end method

.method public whitelist onWriteFinished([Landroid/print/PageRange;)V
    .registers 2
    .param p1, "pages"    # [Landroid/print/PageRange;

    .line 279
    return-void
.end method
