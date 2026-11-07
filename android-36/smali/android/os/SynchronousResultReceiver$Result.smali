.class public Landroid/os/SynchronousResultReceiver$Result;
.super Ljava/lang/Object;
.source "SynchronousResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SynchronousResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public greylist-max-o bundle:Landroid/os/Bundle;

.field public greylist-max-o resultCode:I


# direct methods
.method public constructor greylist-max-o <init>(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "resultCode"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Landroid/os/SynchronousResultReceiver$Result;->resultCode:I

    .line 41
    iput-object p2, p0, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    .line 42
    return-void
.end method
