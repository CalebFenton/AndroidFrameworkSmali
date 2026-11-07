.class public abstract Landroid/print/PrintDocumentAdapter;
.super Ljava/lang/Object;
.source "PrintDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintDocumentAdapter$LayoutResultCallback;,
        Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_PRINT_PREVIEW:Ljava/lang/String; = "EXTRA_PRINT_PREVIEW"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFinish()V
    .registers 1

    .line 252
    return-void
.end method

.method public abstract whitelist onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end method

.method public whitelist onStart()V
    .registers 1

    .line 130
    return-void
.end method

.method public abstract whitelist onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end method
