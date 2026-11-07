.class public interface abstract Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;
.super Ljava/lang/Object;
.source "SafetyCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSafetyCenterDataChangedListener"
.end annotation


# virtual methods
.method public whitelist onError(Landroid/safetycenter/SafetyCenterErrorDetails;)V
    .registers 2
    .param p1, "errorDetails"    # Landroid/safetycenter/SafetyCenterErrorDetails;

    .line 310
    return-void
.end method

.method public abstract whitelist onSafetyCenterDataChanged(Landroid/safetycenter/SafetyCenterData;)V
.end method
