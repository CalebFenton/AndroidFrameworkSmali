.class public Landroid/test/mock/MockDialogInterface;
.super Ljava/lang/Object;
.source "MockDialogInterface.java"

# interfaces
.implements Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    #@0
    .prologue
    .line 14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public dismiss()V
    .locals 2

    #@0
    .prologue
    .line 18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
