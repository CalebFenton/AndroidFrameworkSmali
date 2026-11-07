.class public Landroid/view/SearchEvent;
.super Ljava/lang/Object;
.source "SearchEvent.java"


# instance fields
.field private greylist-max-o mInputDevice:Landroid/view/InputDevice;


# direct methods
.method public constructor whitelist <init>(Landroid/view/InputDevice;)V
    .registers 2
    .param p1, "inputDevice"    # Landroid/view/InputDevice;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/view/SearchEvent;->mInputDevice:Landroid/view/InputDevice;

    .line 29
    return-void
.end method


# virtual methods
.method public whitelist getInputDevice()Landroid/view/InputDevice;
    .registers 2

    .line 36
    iget-object v0, p0, Landroid/view/SearchEvent;->mInputDevice:Landroid/view/InputDevice;

    return-object v0
.end method
