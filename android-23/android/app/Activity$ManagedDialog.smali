.class Landroid/app/Activity$ManagedDialog;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagedDialog"
.end annotation


# instance fields
.field mArgs:Landroid/os/Bundle;

.field mDialog:Landroid/app/Dialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity$ManagedDialog;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/app/Activity$ManagedDialog;-><init>()V

    #@3
    return-void
.end method
